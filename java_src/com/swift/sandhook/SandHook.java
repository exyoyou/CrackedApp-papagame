package com.swift.sandhook;

import com.swift.sandhook.annotation.HookMode;
import com.swift.sandhook.blacklist.HookBlackList;
import com.swift.sandhook.utils.ClassStatusUtils;
import com.swift.sandhook.utils.FileUtils;
import com.swift.sandhook.utils.ReflectionUtils;
import com.swift.sandhook.utils.Unsafe;
import com.swift.sandhook.wrapper.HookErrorException;
import com.swift.sandhook.wrapper.HookWrapper;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes3.dex */
public class SandHook {
    public static Class artMethodClass;
    private static HookModeCallBack hookModeCallBack;
    private static HookResultCallBack hookResultCallBack;
    public static Field nativePeerField;
    public static int testAccessFlag;
    public static Object testOffsetArtMethod1;
    public static Object testOffsetArtMethod2;
    public static Method testOffsetMethod1;
    public static Method testOffsetMethod2;
    static Map<Member, HookWrapper.HookEntity> globalHookEntityMap = new ConcurrentHashMap();
    static Map<Method, HookWrapper.HookEntity> globalBackupMap = new ConcurrentHashMap();

    @FunctionalInterface
    public interface HookModeCallBack {
        int hookMode(Member member);
    }

    @FunctionalInterface
    public interface HookResultCallBack {
        void hookResult(boolean z10, HookWrapper.HookEntity hookEntity);
    }

    static {
        init();
    }

    public static native void MakeInitializedClassVisibilyInitialized(long j10);

    public static void addHookClass(Class... clsArr) throws HookErrorException {
        HookWrapper.addHookClass(clsArr);
    }

    public static final Object callOriginByBackup(Method method, Object obj, Object... objArr) throws Throwable {
        HookWrapper.HookEntity hookEntity = globalBackupMap.get(method);
        if (hookEntity == null) {
            return null;
        }
        return callOriginMethod(hookEntity.backupIsStub, hookEntity.target, method, obj, objArr);
    }

    public static final Object callOriginMethod(Member member, Object obj, Object... objArr) throws Throwable {
        Method method;
        HookWrapper.HookEntity hookEntity = globalHookEntityMap.get(member);
        if (hookEntity == null || (method = hookEntity.backup) == null) {
            return null;
        }
        return callOriginMethod(hookEntity.backupIsStub, member, method, obj, objArr);
    }

    public static native boolean canGetObject();

    public static boolean canGetObjectAddress() {
        return Unsafe.support();
    }

    public static native boolean compileMethod(Member member);

    public static native boolean deCompileMethod(Member member, boolean z10);

    public static native boolean disableDex2oatInline(boolean z10);

    public static native boolean disableVMInline();

    public static final void ensureBackupMethod(Method method) {
        HookWrapper.HookEntity hookEntity;
        if (SandHookConfig.SDK_INT >= 24 && (hookEntity = globalBackupMap.get(method)) != null) {
            ensureDeclareClass(hookEntity.target, method);
        }
    }

    public static native void ensureDeclareClass(Member member, Method method);

    public static native void ensureMethodCached(Method method, Method method2);

    public static long getArtMethod(Member member) {
        return SandHookMethodResolver.getArtMethod(member);
    }

    private static Object[] getFakeArgs(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (parameterTypes == null || parameterTypes.length == 0) {
            return new Object[]{new Object()};
        }
        return null;
    }

    public static Field getField(Class cls, String str) throws NoSuchFieldException {
        while (cls != null && cls != Object.class) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (Exception unused) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchFieldException(str);
    }

    public static Object getJavaMethod(String str, String str2) {
        if (str == null) {
            return null;
        }
        try {
            return Class.forName(str).getDeclaredMethod(str2, new Class[0]);
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    public static Object getObject(long j10) {
        if (j10 == 0) {
            return null;
        }
        return getObjectNative(getThreadId(), j10);
    }

    public static long getObjectAddress(Object obj) {
        return Unsafe.getObjectAddress(obj);
    }

    public static native Object getObjectNative(long j10, long j11);

    public static long getThreadId() {
        Field field = nativePeerField;
        if (field == null) {
            return 0L;
        }
        try {
            return field.getType() == Integer.TYPE ? nativePeerField.getInt(Thread.currentThread()) : nativePeerField.getLong(Thread.currentThread());
        } catch (IllegalAccessException unused) {
            return 0L;
        }
    }

    public static boolean hasJavaArtMethod() {
        if (SandHookConfig.SDK_INT >= 26) {
            return false;
        }
        if (artMethodClass != null) {
            return true;
        }
        try {
            if (SandHookConfig.initClassLoader == null) {
                artMethodClass = Class.forName("java.lang.reflect.ArtMethod");
            } else {
                artMethodClass = Class.forName("java.lang.reflect.ArtMethod", true, SandHookConfig.initClassLoader);
            }
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static synchronized void hook(HookWrapper.HookEntity hookEntity) throws HookErrorException {
        int iHookMethod;
        try {
            if (hookEntity == null) {
                throw new HookErrorException("null hook entity");
            }
            Member member = hookEntity.target;
            Method method = hookEntity.hook;
            Method method2 = hookEntity.backup;
            if (member == null || method == null) {
                throw new HookErrorException("null input");
            }
            if (globalHookEntityMap.containsKey(member)) {
                throw new HookErrorException("method <" + hookEntity.target.toString() + "> has been hooked!");
            }
            if (HookBlackList.canNotHook(member)) {
                throw new HookErrorException("method <" + hookEntity.target.toString() + "> can not hook, because of in blacklist!");
            }
            if (SandHookConfig.delayHook && PendingHookHandler.canWork() && ClassStatusUtils.isStaticAndNoInited(hookEntity.target)) {
                PendingHookHandler.addPendingHook(hookEntity);
                return;
            }
            if (hookEntity.initClass) {
                resolveStaticMethod(member);
                MakeInitializedClassVisibilyInitialized(getThreadId());
            }
            resolveStaticMethod(method2);
            if (method2 != null && hookEntity.resolveDexCache) {
                SandHookMethodResolver.resolveMethod(method, method2);
            }
            if (member instanceof Method) {
                ((Method) member).setAccessible(true);
            }
            HookModeCallBack hookModeCallBack2 = hookModeCallBack;
            int iHookMode = hookModeCallBack2 != null ? hookModeCallBack2.hookMode(member) : 0;
            globalHookEntityMap.put(hookEntity.target, hookEntity);
            if (iHookMode != 0) {
                iHookMethod = hookMethod(member, method, method2, iHookMode);
            } else {
                HookMode hookMode = (HookMode) method.getAnnotation(HookMode.class);
                iHookMethod = hookMethod(member, method, method2, hookMode == null ? 0 : hookMode.value());
            }
            if (iHookMethod > 0 && method2 != null) {
                method2.setAccessible(true);
            }
            hookEntity.hookMode = iHookMethod;
            HookResultCallBack hookResultCallBack2 = hookResultCallBack;
            if (hookResultCallBack2 != null) {
                hookResultCallBack2.hookResult(iHookMethod > 0, hookEntity);
            }
            if (iHookMethod < 0) {
                globalHookEntityMap.remove(hookEntity.target);
                throw new HookErrorException("hook method <" + hookEntity.target.toString() + "> error in native!");
            }
            Method method3 = hookEntity.backup;
            if (method3 != null) {
                globalBackupMap.put(method3, hookEntity);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("method <");
            sb2.append(hookEntity.target.toString());
            sb2.append("> hook <");
            sb2.append(iHookMethod == 1 ? "inline" : "replacement");
            sb2.append("> success!");
            HookLog.d(sb2.toString());
        } catch (Throwable th) {
            throw th;
        }
    }

    private static native int hookMethod(Member member, Method method, Method method2, int i10);

    private static boolean init() {
        initTestOffset();
        initThreadPeer();
        SandHookMethodResolver.init();
        return initNative(SandHookConfig.SDK_INT, SandHookConfig.DEBUG);
    }

    public static native boolean initForPendingHook();

    private static native boolean initNative(int i10, boolean z10);

    private static void initTestAccessFlag() {
        try {
            if (hasJavaArtMethod()) {
                loadArtMethod();
                testAccessFlag = ((Integer) getField(artMethodClass, "accessFlags").get(testOffsetArtMethod1)).intValue();
            } else {
                testAccessFlag = ((Integer) getField(Method.class, "accessFlags").get(testOffsetMethod1)).intValue();
            }
        } catch (Exception unused) {
        }
    }

    private static void initTestOffset() {
        ArtMethodSizeTest.method1();
        ArtMethodSizeTest.method2();
        try {
            testOffsetMethod1 = ArtMethodSizeTest.class.getDeclaredMethod("method1", new Class[0]);
            testOffsetMethod2 = ArtMethodSizeTest.class.getDeclaredMethod("method2", new Class[0]);
            initTestAccessFlag();
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException("SandHook init error", e10);
        }
    }

    private static void initThreadPeer() {
        try {
            nativePeerField = getField(Thread.class, "nativePeer");
        } catch (NoSuchFieldException unused) {
        }
    }

    public static native boolean is64Bit();

    private static void loadArtMethod() {
        try {
            Field field = getField(Method.class, "artMethod");
            testOffsetArtMethod1 = field.get(testOffsetMethod1);
            testOffsetArtMethod2 = field.get(testOffsetMethod2);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
        } catch (NoSuchFieldException e11) {
            e11.printStackTrace();
        }
    }

    public static boolean passApiCheck() {
        return ReflectionUtils.passApiCheck();
    }

    public static boolean resolveStaticMethod(Member member) {
        if (member == null) {
            return true;
        }
        try {
            if ((member instanceof Method) && Modifier.isStatic(member.getModifiers())) {
                ((Method) member).setAccessible(true);
                ((Method) member).invoke(new Object(), getFakeArgs((Method) member));
            }
        } catch (ExceptionInInitializerError unused) {
            return false;
        } catch (Throwable unused2) {
        }
        return true;
    }

    public static native void setHookMode(int i10);

    public static void setHookModeCallBack(HookModeCallBack hookModeCallBack2) {
        hookModeCallBack = hookModeCallBack2;
    }

    public static void setHookResultCallBack(HookResultCallBack hookResultCallBack2) {
        hookResultCallBack = hookResultCallBack2;
    }

    public static native void setInlineSafeCheck(boolean z10);

    public static native boolean setNativeEntry(Member member, Member member2, long j10);

    public static native void skipAllSafeCheck(boolean z10);

    public static boolean tryDisableProfile(String str) {
        if (SandHookConfig.SDK_INT < 24) {
            return false;
        }
        try {
            File file = new File("/data/misc/profiles/cur/" + SandHookConfig.curUser + e.F0 + str + "/primary.prof");
            if (!file.getParentFile().exists()) {
                return false;
            }
            try {
                file.delete();
                file.createNewFile();
            } catch (Throwable unused) {
            }
            FileUtils.chmod(file.getAbsolutePath(), 256);
            return true;
        } catch (Throwable unused2) {
            return false;
        }
    }

    public static void addHookClass(ClassLoader classLoader, Class... clsArr) throws HookErrorException {
        HookWrapper.addHookClass(classLoader, (Class<?>[]) clsArr);
    }

    public static final Object callOriginMethod(Member member, Method method, Object obj, Object[] objArr) throws Throwable {
        return callOriginMethod(true, member, method, obj, objArr);
    }

    public static final Object callOriginMethod(boolean z10, Member member, Method method, Object obj, Object[] objArr) throws Throwable {
        if (!z10 && SandHookConfig.SDK_INT >= 24) {
            member.getDeclaringClass();
            ensureDeclareClass(member, method);
        }
        if (Modifier.isStatic(member.getModifiers())) {
            try {
                return method.invoke(null, objArr);
            } catch (InvocationTargetException e10) {
                if (e10.getCause() != null) {
                    throw e10.getCause();
                }
                throw e10;
            }
        }
        try {
            return method.invoke(obj, objArr);
        } catch (InvocationTargetException e11) {
            if (e11.getCause() != null) {
                throw e11.getCause();
            }
            throw e11;
        }
    }
}
