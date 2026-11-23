package com.swift.sandhook.xposedcompat.hookstub;

import com.swift.sandhook.SandHook;
import com.swift.sandhook.SandHookMethodResolver;
import com.swift.sandhook.utils.ParamWrapper;
import com.swift.sandhook.wrapper.StubMethodsFactory;
import com.swift.sandhook.xposedcompat.XposedCompat;
import com.swift.sandhook.xposedcompat.utils.DexLog;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class HookStubManager {
    public static int ALL_STUB = 0;
    public static final int MAX_64_ARGS = 7;
    public static int MAX_STUB_ARGS;
    public static XposedBridge.AdditionalHookInfo[] additionalHookInfos;
    public static AtomicInteger[] curUseStubIndexes;
    public static boolean hasStubBackup;
    public static HookMethodEntity[] hookMethodEntities;
    public static volatile boolean is64Bit = SandHook.is64Bit();
    public static Member[] originMethods;
    public static int[] stubSizes;

    static class StubMethodsInfo {
        int args;
        Method backup;
        Method hook;
        int index;

        public StubMethodsInfo(int i10, int i11, Method method, Method method2) {
            this.args = i10;
            this.index = i11;
            this.hook = method;
            this.backup = method2;
        }
    }

    static {
        Class cls = is64Bit ? MethodHookerStubs64.class : MethodHookerStubs32.class;
        stubSizes = (int[]) XposedHelpers.getStaticObjectField(cls, "stubSizes");
        Boolean bool = (Boolean) XposedHelpers.getStaticObjectField(cls, "hasStubBackup");
        hasStubBackup = (bool == null || !bool.booleanValue() || XposedCompat.useNewCallBackup) ? false : true;
        int[] iArr = stubSizes;
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        int length = iArr.length - 1;
        MAX_STUB_ARGS = length;
        curUseStubIndexes = new AtomicInteger[length + 1];
        for (int i10 = 0; i10 < MAX_STUB_ARGS + 1; i10++) {
            curUseStubIndexes[i10] = new AtomicInteger(0);
            ALL_STUB += stubSizes[i10];
        }
        int i11 = ALL_STUB;
        originMethods = new Member[i11];
        hookMethodEntities = new HookMethodEntity[i11];
        additionalHookInfos = new XposedBridge.AdditionalHookInfo[i11];
    }

    public static final long callOrigin(HookMethodEntity hookMethodEntity, Member member, Object obj, Object[] objArr) throws Throwable {
        return hookMethodEntity.getResultAddress(SandHook.callOriginMethod(member, hookMethodEntity.backup, obj, objArr));
    }

    public static String getBackupMethodName(int i10) {
        return "stub_backup_" + i10;
    }

    public static String getCallOriginClassName(int i10, int i11) {
        return "call_origin_" + i10 + "_" + i11;
    }

    public static Method getCallOriginMethod(int i10, int i11) {
        Class cls = is64Bit ? MethodHookerStubs64.class : MethodHookerStubs32.class;
        try {
            return Class.forName((cls.getName() + "$") + getCallOriginClassName(i10, i11), true, cls.getClassLoader()).getDeclaredMethod("call", long[].class);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Class[] getFindMethodParTypes(boolean z10, int i10) {
        if (i10 == 0) {
            return null;
        }
        Class[] clsArr = new Class[i10];
        int i11 = 0;
        if (z10) {
            while (i11 < i10) {
                clsArr[i11] = Long.TYPE;
                i11++;
            }
        } else {
            while (i11 < i10) {
                clsArr[i11] = Integer.TYPE;
                i11++;
            }
        }
        return clsArr;
    }

    public static HookMethodEntity getHookMethodEntity(Member member, XposedBridge.AdditionalHookInfo additionalHookInfo) {
        Class<?> returnType;
        Class<?>[] parameterTypes;
        if (!support()) {
            return null;
        }
        boolean zIsStatic = Modifier.isStatic(member.getModifiers());
        if (member instanceof Method) {
            Method method = (Method) member;
            returnType = method.getReturnType();
            parameterTypes = method.getParameterTypes();
        } else {
            if (!(member instanceof Constructor)) {
                return null;
            }
            returnType = Void.TYPE;
            parameterTypes = ((Constructor) member).getParameterTypes();
        }
        if (!ParamWrapper.support(returnType)) {
            return null;
        }
        int length = !zIsStatic ? 1 : 0;
        if (parameterTypes != null) {
            length += parameterTypes.length;
            if (length > MAX_STUB_ARGS) {
                return null;
            }
            if (is64Bit && length > 7) {
                return null;
            }
            for (Class<?> cls : parameterTypes) {
                if (!ParamWrapper.support(cls)) {
                    return null;
                }
            }
        } else {
            parameterTypes = new Class[0];
        }
        synchronized (HookStubManager.class) {
            StubMethodsInfo stubMethodPair = getStubMethodPair(is64Bit, length);
            if (stubMethodPair == null) {
                return null;
            }
            HookMethodEntity hookMethodEntity = new HookMethodEntity(member, stubMethodPair.hook, stubMethodPair.backup);
            hookMethodEntity.retType = returnType;
            hookMethodEntity.parType = parameterTypes;
            if (!hasStubBackup || tryCompileAndResolveCallOriginMethod(hookMethodEntity.backup, stubMethodPair.args, stubMethodPair.index)) {
                int methodId = getMethodId(stubMethodPair.args, stubMethodPair.index);
                originMethods[methodId] = member;
                hookMethodEntities[methodId] = hookMethodEntity;
                additionalHookInfos[methodId] = additionalHookInfo;
                return hookMethodEntity;
            }
            DexLog.w("internal stub <" + hookMethodEntity.hook.getName() + "> call origin compile failure, skip use internal stub");
            return null;
        }
    }

    public static String getHookMethodName(int i10) {
        return "stub_hook_" + i10;
    }

    public static int getMatchStubArgsCount(int i10) {
        while (i10 <= MAX_STUB_ARGS) {
            if (curUseStubIndexes[i10].get() < stubSizes[i10]) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int getMethodId(int i10, int i11) {
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += stubSizes[i12];
        }
        return i11;
    }

    private static synchronized StubMethodsInfo getStubMethodPair(boolean z10, int i10) {
        int matchStubArgsCount = getMatchStubArgsCount(i10);
        if (matchStubArgsCount < 0) {
            return null;
        }
        int andIncrement = curUseStubIndexes[matchStubArgsCount].getAndIncrement();
        Class[] findMethodParTypes = getFindMethodParTypes(z10, matchStubArgsCount);
        try {
            if (z10) {
                Method declaredMethod = MethodHookerStubs64.class.getDeclaredMethod(getHookMethodName(andIncrement), findMethodParTypes);
                Method declaredMethod2 = hasStubBackup ? MethodHookerStubs64.class.getDeclaredMethod(getBackupMethodName(andIncrement), findMethodParTypes) : StubMethodsFactory.getStubMethod();
                if (declaredMethod != null && declaredMethod2 != null) {
                    return new StubMethodsInfo(matchStubArgsCount, andIncrement, declaredMethod, declaredMethod2);
                }
                return null;
            }
            Method declaredMethod3 = MethodHookerStubs32.class.getDeclaredMethod(getHookMethodName(andIncrement), findMethodParTypes);
            Method declaredMethod4 = hasStubBackup ? MethodHookerStubs32.class.getDeclaredMethod(getBackupMethodName(andIncrement), findMethodParTypes) : StubMethodsFactory.getStubMethod();
            if (declaredMethod3 != null && declaredMethod4 != null) {
                return new StubMethodsInfo(matchStubArgsCount, andIncrement, declaredMethod3, declaredMethod4);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean hasArgs(long... jArr) {
        return jArr != null && jArr.length > 0;
    }

    public static long hookBridge(int i10, CallOriginCallBack callOriginCallBack, long... jArr) throws Throwable {
        Object obj;
        Object[] args;
        Member member = originMethods[i10];
        HookMethodEntity hookMethodEntity = hookMethodEntities[i10];
        if (hasArgs(jArr)) {
            obj = hookMethodEntity.getThis(jArr[0]);
            args = hookMethodEntity.getArgs(jArr);
        } else {
            obj = null;
            args = null;
        }
        if (XposedBridge.disableHooks) {
            return hasStubBackup ? callOriginCallBack.call(jArr) : callOrigin(hookMethodEntity, member, obj, args);
        }
        DexLog.printMethodHookIn(member);
        Object[] snapshot = additionalHookInfos[i10].callbacks.getSnapshot();
        if (snapshot == null || snapshot.length == 0) {
            return hasStubBackup ? callOriginCallBack.call(jArr) : callOrigin(hookMethodEntity, member, obj, args);
        }
        XC_MethodHook.MethodHookParam methodHookParam = new XC_MethodHook.MethodHookParam();
        methodHookParam.method = member;
        methodHookParam.thisObject = obj;
        methodHookParam.args = args;
        int i11 = 0;
        do {
            try {
                ((XC_MethodHook) snapshot[i11]).callBeforeHookedMethod(methodHookParam);
                if (methodHookParam.returnEarly) {
                    i11++;
                    break;
                }
                i11++;
            } catch (Throwable unused) {
                methodHookParam.setResult(null);
                methodHookParam.returnEarly = false;
            }
        } while (i11 < snapshot.length);
        if (!methodHookParam.returnEarly) {
            try {
                if (hasStubBackup) {
                    methodHookParam.setResult(hookMethodEntity.getResult(callOriginCallBack.call(hookMethodEntity.getArgsAddress(jArr, methodHookParam.args))));
                } else {
                    methodHookParam.setResult(SandHook.callOriginMethod(member, hookMethodEntity.backup, obj, methodHookParam.args));
                }
            } catch (Throwable th) {
                XposedBridge.log(th);
                methodHookParam.setThrowable(th);
            }
        }
        int i12 = i11 - 1;
        do {
            Object result = methodHookParam.getResult();
            Throwable throwable = methodHookParam.getThrowable();
            try {
                ((XC_MethodHook) snapshot[i12]).callAfterHookedMethod(methodHookParam);
            } catch (Throwable th2) {
                XposedBridge.log(th2);
                if (throwable == null) {
                    methodHookParam.setResult(result);
                } else {
                    methodHookParam.setThrowable(throwable);
                }
            }
            i12--;
        } while (i12 >= 0);
        if (methodHookParam.hasThrowable()) {
            throw methodHookParam.getThrowable();
        }
        return hookMethodEntity.getResultAddress(methodHookParam.getResult());
    }

    public static boolean support() {
        return MAX_STUB_ARGS > 0 && SandHook.canGetObject() && SandHook.canGetObjectAddress();
    }

    public static boolean tryCompileAndResolveCallOriginMethod(Method method, int i10, int i11) {
        Method callOriginMethod = getCallOriginMethod(i10, i11);
        if (callOriginMethod == null) {
            return false;
        }
        SandHookMethodResolver.resolveMethod(callOriginMethod, method);
        return SandHook.compileMethod(callOriginMethod);
    }

    public static Object hookBridge(Member member, Method method, XposedBridge.AdditionalHookInfo additionalHookInfo, Object obj, Object... objArr) throws Throwable {
        if (XposedBridge.disableHooks) {
            return SandHook.callOriginMethod(member, method, obj, objArr);
        }
        DexLog.printMethodHookIn(member);
        Object[] snapshot = additionalHookInfo.callbacks.getSnapshot();
        if (snapshot != null && snapshot.length != 0) {
            XC_MethodHook.MethodHookParam methodHookParam = new XC_MethodHook.MethodHookParam();
            methodHookParam.method = member;
            methodHookParam.thisObject = obj;
            methodHookParam.args = objArr;
            int i10 = 0;
            do {
                try {
                    ((XC_MethodHook) snapshot[i10]).callBeforeHookedMethod(methodHookParam);
                    if (methodHookParam.returnEarly) {
                        i10++;
                        break;
                    }
                    i10++;
                } catch (Throwable unused) {
                    methodHookParam.setResult(null);
                    methodHookParam.returnEarly = false;
                }
            } while (i10 < snapshot.length);
            if (!methodHookParam.returnEarly) {
                try {
                    methodHookParam.setResult(SandHook.callOriginMethod(member, method, obj, methodHookParam.args));
                } catch (Throwable th) {
                    XposedBridge.log(th);
                    methodHookParam.setThrowable(th);
                }
            }
            int i11 = i10 - 1;
            do {
                Object result = methodHookParam.getResult();
                Throwable throwable = methodHookParam.getThrowable();
                try {
                    ((XC_MethodHook) snapshot[i11]).callAfterHookedMethod(methodHookParam);
                } catch (Throwable th2) {
                    XposedBridge.log(th2);
                    if (throwable == null) {
                        methodHookParam.setResult(result);
                    } else {
                        methodHookParam.setThrowable(throwable);
                    }
                }
                i11--;
            } while (i11 >= 0);
            if (!methodHookParam.hasThrowable()) {
                return methodHookParam.getResult();
            }
            throw methodHookParam.getThrowable();
        }
        return SandHook.callOriginMethod(member, method, obj, objArr);
    }
}
