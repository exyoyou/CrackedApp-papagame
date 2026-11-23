package com.swift.sandhook.xposedcompat.methodgen;

import android.text.TextUtils;
import c8.a;
import c8.b;
import com.alipay.sdk.packet.d;
import com.android.dx.BinaryOp;
import com.android.dx.Code;
import com.android.dx.Comparison;
import com.android.dx.DexMaker;
import com.android.dx.FieldId;
import com.android.dx.Label;
import com.android.dx.Local;
import com.android.dx.MethodId;
import com.android.dx.TypeId;
import com.swift.sandhook.SandHook;
import com.swift.sandhook.SandHookConfig;
import com.swift.sandhook.SandHookMethodResolver;
import com.swift.sandhook.wrapper.HookWrapper;
import com.swift.sandhook.xposedcompat.XposedCompat;
import com.swift.sandhook.xposedcompat.utils.DexLog;
import com.swift.sandhook.xposedcompat.utils.DexMakerUtils;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class HookerDexMaker implements HookMaker {
    private static final String CALLBACK_METHOD_NAME_AFTER = "callAfterHookedMethod";
    private static final String CALLBACK_METHOD_NAME_BEFORE = "callBeforeHookedMethod";
    private static final String CLASS_DESC_PREFIX = "L";
    private static final String CLASS_NAME_PREFIX = "SandHooker";
    private static final String FIELD_NAME_BACKUP_METHOD = "backupMethod";
    private static final String FIELD_NAME_HOOK_INFO = "additionalHookInfo";
    private static final String FIELD_NAME_METHOD = "method";
    public static final String METHOD_NAME_BACKUP = "backup";
    public static final String METHOD_NAME_CALL_BACKUP = "callBackup";
    public static final String METHOD_NAME_HOOK = "hook";
    public static final String METHOD_NAME_LOG = "printMethodHookIn";
    public static final String METHOD_NAME_SETUP = "setup";
    private static final String PARAMS_FIELD_NAME_ARGS = "args";
    private static final String PARAMS_FIELD_NAME_METHOD = "method";
    private static final String PARAMS_FIELD_NAME_THIS_OBJECT = "thisObject";
    private static final MethodId<XC_MethodHook, Void> callAfterCallbackMethodId;
    private static final MethodId<XC_MethodHook, Void> callBeforeCallbackMethodId;
    private static final TypeId<XC_MethodHook> callbackTypeId;
    private static final TypeId<XposedBridge.CopyOnWriteSortedSet> callbacksTypeId;
    private static final MethodId<XC_MethodHook.MethodHookParam, Object> getResultMethodId;
    private static final MethodId<XC_MethodHook.MethodHookParam, Throwable> getThrowableMethodId;
    private static final MethodId<XC_MethodHook.MethodHookParam, Boolean> hasThrowableMethodId;
    private static final TypeId<XposedBridge.AdditionalHookInfo> hookInfoTypeId;
    private static final MethodId<XposedBridge, Void> logThrowableMethodId;
    private static final TypeId<Member> memberTypeId;
    private static final TypeId<Method> methodTypeId;
    public static final TypeId<Object[]> objArrayTypeId = TypeId.get(Object[].class);
    private static final TypeId<XC_MethodHook.MethodHookParam> paramTypeId;
    private static final FieldId<XC_MethodHook.MethodHookParam, Boolean> returnEarlyFieldId;
    private static final MethodId<XC_MethodHook.MethodHookParam, Void> setResultMethodId;
    private static final MethodId<XC_MethodHook.MethodHookParam, Void> setThrowableMethodId;
    private static final TypeId<Throwable> throwableTypeId;
    private static final TypeId<XposedBridge> xposedBridgeTypeId;
    private Class<?>[] mActualParameterTypes;
    private ClassLoader mAppClassLoader;
    private Method mBackupMethod;
    private FieldId<?, Method> mBackupMethodFieldId;
    private MethodId<?, ?> mBackupMethodId;
    private Method mCallBackupMethod;
    private MethodId<?, ?> mCallBackupMethodId;
    private String mDexDirPath;
    private DexMaker mDexMaker;
    private boolean mHasThrowable;
    private Class<?> mHookClass;
    private XposedBridge.AdditionalHookInfo mHookInfo;
    private FieldId<?, XposedBridge.AdditionalHookInfo> mHookInfoFieldId;
    private Method mHookMethod;
    private MethodId<?, ?> mHookMethodId;
    private TypeId<?> mHookerTypeId;
    private boolean mIsStatic;
    private Member mMember;
    private FieldId<?, Member> mMethodFieldId;
    private TypeId<?>[] mParameterTypeIds;
    private MethodId<?, ?> mPrintLogMethodId;
    private Class<?> mReturnType;
    private TypeId<?> mReturnTypeId;
    private MethodId<?, ?> mSandHookCallOriginMethodId;

    static {
        TypeId<Throwable> typeId = TypeId.get(Throwable.class);
        throwableTypeId = typeId;
        memberTypeId = TypeId.get(Member.class);
        methodTypeId = TypeId.get(Method.class);
        TypeId<XC_MethodHook> typeId2 = TypeId.get(XC_MethodHook.class);
        callbackTypeId = typeId2;
        hookInfoTypeId = TypeId.get(XposedBridge.AdditionalHookInfo.class);
        callbacksTypeId = TypeId.get(XposedBridge.CopyOnWriteSortedSet.class);
        TypeId<XC_MethodHook.MethodHookParam> typeId3 = TypeId.get(XC_MethodHook.MethodHookParam.class);
        paramTypeId = typeId3;
        TypeId typeId4 = TypeId.VOID;
        TypeId<?> typeId5 = TypeId.OBJECT;
        setResultMethodId = typeId3.getMethod(typeId4, "setResult", typeId5);
        setThrowableMethodId = typeId3.getMethod(typeId4, "setThrowable", typeId);
        getResultMethodId = typeId3.getMethod(typeId5, "getResult", new TypeId[0]);
        getThrowableMethodId = typeId3.getMethod(typeId, "getThrowable", new TypeId[0]);
        TypeId typeId6 = TypeId.BOOLEAN;
        hasThrowableMethodId = typeId3.getMethod(typeId6, "hasThrowable", new TypeId[0]);
        callAfterCallbackMethodId = typeId2.getMethod(typeId4, CALLBACK_METHOD_NAME_AFTER, typeId3);
        callBeforeCallbackMethodId = typeId2.getMethod(typeId4, CALLBACK_METHOD_NAME_BEFORE, typeId3);
        returnEarlyFieldId = typeId3.getField(typeId6, "returnEarly");
        TypeId<XposedBridge> typeId7 = TypeId.get(XposedBridge.class);
        xposedBridgeTypeId = typeId7;
        logThrowableMethodId = typeId7.getMethod(typeId4, "log", typeId);
    }

    private Local[] createParameterLocals(Code code) {
        Local[] localArr = new Local[this.mParameterTypeIds.length];
        int i10 = 0;
        while (true) {
            TypeId<?>[] typeIdArr = this.mParameterTypeIds;
            if (i10 >= typeIdArr.length) {
                return localArr;
            }
            localArr[i10] = code.getParameter(i10, typeIdArr[i10]);
            i10++;
        }
    }

    private HookWrapper.HookEntity doMake(String str, String str2) throws Exception {
        ClassLoader classLoaderA;
        TypeId<?> typeId = TypeId.get(CLASS_DESC_PREFIX + str + ";");
        this.mHookerTypeId = typeId;
        this.mDexMaker.declare(typeId, str + ".generated", 1, TypeId.OBJECT, new TypeId[0]);
        generateFields();
        generateSetupMethod();
        if (XposedCompat.retryWhenCallOriginError) {
            generateBackupAndCallOriginCheckMethod();
        } else {
            generateBackupMethod();
        }
        generateCallBackupMethod();
        generateHookMethod();
        if (!TextUtils.isEmpty(this.mDexDirPath)) {
            try {
                classLoaderA = this.mDexMaker.generateAndLoad(this.mAppClassLoader, new File(this.mDexDirPath), str2);
            } catch (IOException unused) {
                if (SandHookConfig.SDK_INT >= 26) {
                    byte[] bArrGenerate = this.mDexMaker.generate();
                    b.a();
                    classLoaderA = a.a(ByteBuffer.wrap(bArrGenerate), this.mAppClassLoader);
                } else {
                    classLoaderA = null;
                }
            }
        } else {
            if (SandHookConfig.SDK_INT < 26) {
                throw new IllegalArgumentException("dexDirPath should not be empty!!!");
            }
            byte[] bArrGenerate2 = this.mDexMaker.generate();
            b.a();
            classLoaderA = a.a(ByteBuffer.wrap(bArrGenerate2), this.mAppClassLoader);
        }
        if (classLoaderA == null) {
            return null;
        }
        return loadHookerClass(classLoaderA, str);
    }

    private void generateBackupAndCallOriginCheckMethod() {
        int i10;
        this.mBackupMethodId = this.mHookerTypeId.getMethod(this.mReturnTypeId, "backup", this.mParameterTypeIds);
        TypeId typeId = TypeId.get(ErrorCatch.class);
        TypeId typeId2 = TypeId.get(Object.class);
        TypeId<Member> typeId3 = memberTypeId;
        TypeId<Method> typeId4 = methodTypeId;
        this.mSandHookCallOriginMethodId = typeId.getMethod(typeId2, "callOriginError", typeId3, typeId4, TypeId.get(Object.class), TypeId.get(Object[].class));
        MethodId method = TypeId.get(DexLog.class).getMethod(TypeId.get(Void.TYPE), "printCallOriginError", typeId4);
        Code codeDeclare = this.mDexMaker.declare(this.mBackupMethodId, 9);
        Local<?> localNewLocal = codeDeclare.newLocal(typeId3);
        Local<?> localNewLocal2 = codeDeclare.newLocal(typeId4);
        TypeId<Object> typeId5 = TypeId.OBJECT;
        Local<?> localNewLocal3 = codeDeclare.newLocal(typeId5);
        Local<?> localNewLocal4 = codeDeclare.newLocal(objArrayTypeId);
        TypeId<Integer> typeId6 = TypeId.INT;
        Local<Integer> localNewLocal5 = codeDeclare.newLocal(typeId6);
        Local<Integer> localNewLocal6 = codeDeclare.newLocal(typeId6);
        Local<?> localNewLocal7 = codeDeclare.newLocal(typeId5);
        Label label = new Label();
        Local[] localArrCreateParameterLocals = createParameterLocals(codeDeclare);
        Map<TypeId, Local> mapCreateResultLocals = DexMakerUtils.createResultLocals(codeDeclare);
        codeDeclare.addCatchClause(throwableTypeId, label);
        codeDeclare.sget(this.mMethodFieldId, localNewLocal);
        codeDeclare.invokeStatic(method, null, localNewLocal);
        codeDeclare.loadConstant(localNewLocal4, null);
        codeDeclare.loadConstant(localNewLocal6, 0);
        codeDeclare.sget(this.mBackupMethodFieldId, localNewLocal2);
        int length = this.mParameterTypeIds.length;
        if (this.mIsStatic) {
            codeDeclare.loadConstant(localNewLocal3, null);
            i10 = 0;
        } else {
            codeDeclare.move(localNewLocal3, localArrCreateParameterLocals[0]);
            i10 = 1;
        }
        codeDeclare.loadConstant(localNewLocal5, Integer.valueOf(length - i10));
        codeDeclare.newArray(localNewLocal4, localNewLocal5);
        for (int i11 = i10; i11 < length; i11++) {
            DexMakerUtils.autoBoxIfNecessary(codeDeclare, localNewLocal7, localArrCreateParameterLocals[i11]);
            codeDeclare.loadConstant(localNewLocal6, Integer.valueOf(i11 - i10));
            codeDeclare.aput(localNewLocal4, localNewLocal6, localNewLocal7);
        }
        TypeId<?> typeId7 = this.mReturnTypeId;
        TypeId<Void> typeId8 = TypeId.VOID;
        if (typeId7.equals(typeId8)) {
            codeDeclare.invokeStatic(this.mSandHookCallOriginMethodId, null, localNewLocal, localNewLocal2, localNewLocal3, localNewLocal4);
            codeDeclare.returnVoid();
        } else {
            codeDeclare.invokeStatic(this.mSandHookCallOriginMethodId, localNewLocal7, localNewLocal, localNewLocal2, localNewLocal3, localNewLocal4);
            Local local = mapCreateResultLocals.get(DexMakerUtils.getObjTypeIdIfPrimitive(this.mReturnTypeId));
            codeDeclare.cast(local, localNewLocal7);
            Local local2 = mapCreateResultLocals.get(this.mReturnTypeId);
            DexMakerUtils.autoUnboxIfNecessary(codeDeclare, local2, local, mapCreateResultLocals, true);
            codeDeclare.returnValue(local2);
        }
        codeDeclare.mark(label);
        if (this.mReturnTypeId.equals(typeId8)) {
            codeDeclare.returnVoid();
        } else {
            codeDeclare.returnValue(mapCreateResultLocals.get(this.mReturnTypeId));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void generateBackupMethod() {
        MethodId method = this.mHookerTypeId.getMethod(this.mReturnTypeId, "backup", this.mParameterTypeIds);
        this.mBackupMethodId = method;
        Code codeDeclare = this.mDexMaker.declare(method, 9);
        TypeId<Member> typeId = memberTypeId;
        Local<?> localNewLocal = codeDeclare.newLocal(typeId);
        Map<TypeId, Local> mapCreateResultLocals = DexMakerUtils.createResultLocals(codeDeclare);
        MethodId method2 = TypeId.get(DexLog.class).getMethod(TypeId.get(Void.TYPE), "printCallOriginError", typeId);
        Label label = new Label();
        codeDeclare.addCatchClause(throwableTypeId, label);
        codeDeclare.sget(this.mMethodFieldId, localNewLocal);
        codeDeclare.invokeStatic(method2, null, localNewLocal);
        codeDeclare.mark(label);
        if (this.mReturnTypeId.equals(TypeId.VOID)) {
            codeDeclare.returnVoid();
        } else {
            codeDeclare.returnValue(mapCreateResultLocals.get(this.mReturnTypeId));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void generateCallBackupMethod() {
        MethodId method = this.mHookerTypeId.getMethod(this.mReturnTypeId, METHOD_NAME_CALL_BACKUP, this.mParameterTypeIds);
        this.mCallBackupMethodId = method;
        Code codeDeclare = this.mDexMaker.declare(method, 9);
        TypeId<Member> typeId = memberTypeId;
        Local<?> localNewLocal = codeDeclare.newLocal(typeId);
        TypeId<Method> typeId2 = methodTypeId;
        Local<?> localNewLocal2 = codeDeclare.newLocal(typeId2);
        Local[] localArrCreateParameterLocals = createParameterLocals(codeDeclare);
        Map<TypeId, Local> mapCreateResultLocals = DexMakerUtils.createResultLocals(codeDeclare);
        codeDeclare.sget(this.mMethodFieldId, localNewLocal);
        codeDeclare.sget(this.mBackupMethodFieldId, localNewLocal2);
        codeDeclare.invokeStatic(TypeId.get(SandHook.class).getMethod(TypeId.get(Void.TYPE), "ensureBackupMethod", typeId, typeId2), null, localNewLocal, localNewLocal2);
        if (this.mReturnTypeId.equals(TypeId.VOID)) {
            codeDeclare.invokeStatic(this.mBackupMethodId, null, localArrCreateParameterLocals);
            codeDeclare.returnVoid();
        } else {
            Local local = mapCreateResultLocals.get(this.mReturnTypeId);
            codeDeclare.invokeStatic(this.mBackupMethodId, local, localArrCreateParameterLocals);
            codeDeclare.returnValue(local);
        }
    }

    private void generateFields() {
        this.mHookInfoFieldId = this.mHookerTypeId.getField(hookInfoTypeId, FIELD_NAME_HOOK_INFO);
        this.mMethodFieldId = this.mHookerTypeId.getField(memberTypeId, d.f7195s);
        this.mBackupMethodFieldId = this.mHookerTypeId.getField(methodTypeId, FIELD_NAME_BACKUP_METHOD);
        this.mDexMaker.declare(this.mHookInfoFieldId, 8, null);
        this.mDexMaker.declare(this.mMethodFieldId, 8, null);
        this.mDexMaker.declare(this.mBackupMethodFieldId, 8, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void generateHookMethod() {
        Local local;
        boolean z10;
        int i10;
        Map<TypeId, Local> map;
        this.mHookMethodId = this.mHookerTypeId.getMethod(this.mReturnTypeId, "hook", this.mParameterTypeIds);
        this.mPrintLogMethodId = TypeId.get(DexLog.class).getMethod(TypeId.get(Void.TYPE), METHOD_NAME_LOG, TypeId.get(Member.class));
        Code codeDeclare = this.mDexMaker.declare(this.mHookMethodId, 9);
        Label label = new Label();
        Label label2 = new Label();
        Label label3 = new Label();
        Label label4 = new Label();
        Label label5 = new Label();
        Label label6 = new Label();
        Label label7 = new Label();
        Label label8 = new Label();
        Label label9 = new Label();
        Label label10 = new Label();
        Label label11 = new Label();
        Label label12 = new Label();
        Label label13 = new Label();
        TypeId<Boolean> typeId = TypeId.BOOLEAN;
        Local<?> localNewLocal = codeDeclare.newLocal(typeId);
        TypeId<XposedBridge.AdditionalHookInfo> typeId2 = hookInfoTypeId;
        Local localNewLocal2 = codeDeclare.newLocal(typeId2);
        TypeId typeId3 = callbacksTypeId;
        Local localNewLocal3 = codeDeclare.newLocal(typeId3);
        TypeId<Object[]> typeId4 = objArrayTypeId;
        Local<?> localNewLocal4 = codeDeclare.newLocal(typeId4);
        TypeId<Integer> typeId5 = TypeId.INT;
        Local<Integer> localNewLocal5 = codeDeclare.newLocal(typeId5);
        TypeId<Object> typeId6 = TypeId.OBJECT;
        Local<?> localNewLocal6 = codeDeclare.newLocal(typeId6);
        Local<?> localNewLocal7 = codeDeclare.newLocal(callbackTypeId);
        Local<?> localNewLocal8 = codeDeclare.newLocal(typeId6);
        Local localNewLocal9 = codeDeclare.newLocal(typeId5);
        Local<?> localNewLocal10 = codeDeclare.newLocal(typeId6);
        TypeId<Throwable> typeId7 = throwableTypeId;
        Local<?> localNewLocal11 = codeDeclare.newLocal(typeId7);
        Local<?> localNewLocal12 = codeDeclare.newLocal(paramTypeId);
        Local<?> localNewLocal13 = codeDeclare.newLocal(memberTypeId);
        Local localNewLocal14 = codeDeclare.newLocal(typeId6);
        Local<?> localNewLocal15 = codeDeclare.newLocal(typeId4);
        Local<?> localNewLocal16 = codeDeclare.newLocal(typeId);
        Local<Integer> localNewLocal17 = codeDeclare.newLocal(typeId5);
        Local<Integer> localNewLocal18 = codeDeclare.newLocal(typeId5);
        Local<Integer> localNewLocal19 = codeDeclare.newLocal(typeId5);
        Local<?> localNewLocal20 = codeDeclare.newLocal(typeId6);
        Local<?> localNewLocal21 = codeDeclare.newLocal(typeId7);
        Local<?> localNewLocal22 = codeDeclare.newLocal(typeId);
        Local[] localArrCreateParameterLocals = createParameterLocals(codeDeclare);
        Map<TypeId, Local> mapCreateResultLocals = DexMakerUtils.createResultLocals(codeDeclare);
        codeDeclare.loadConstant(localNewLocal15, null);
        codeDeclare.loadConstant(localNewLocal18, 0);
        codeDeclare.loadConstant(localNewLocal9, 1);
        codeDeclare.loadConstant(localNewLocal5, 0);
        codeDeclare.loadConstant(localNewLocal10, null);
        codeDeclare.sget(this.mMethodFieldId, localNewLocal13);
        codeDeclare.invokeStatic(this.mPrintLogMethodId, null, localNewLocal13);
        codeDeclare.sget(xposedBridgeTypeId.getField(typeId, "disableHooks"), localNewLocal);
        codeDeclare.compareZ(Comparison.NE, label, localNewLocal);
        codeDeclare.sget(this.mHookInfoFieldId, localNewLocal2);
        codeDeclare.iget(typeId2.getField(typeId3, "callbacks"), localNewLocal3, localNewLocal2);
        int i11 = 0;
        codeDeclare.invokeVirtual(typeId3.getMethod((TypeId<R>) typeId4, "getSnapshot", new TypeId[0]), localNewLocal4, localNewLocal3, new Local[0]);
        codeDeclare.arrayLength(localNewLocal5, localNewLocal4);
        codeDeclare.compareZ(Comparison.EQ, label, localNewLocal5);
        int length = this.mParameterTypeIds.length;
        if (this.mIsStatic) {
            local = localNewLocal14;
            codeDeclare.loadConstant(local, null);
        } else {
            local = localNewLocal14;
            codeDeclare.move(local, localArrCreateParameterLocals[0]);
            i11 = 1;
        }
        codeDeclare.loadConstant(localNewLocal17, Integer.valueOf(length - i11));
        codeDeclare.newArray(localNewLocal15, localNewLocal17);
        int i12 = i11;
        while (i12 < length) {
            DexMakerUtils.autoBoxIfNecessary(codeDeclare, localNewLocal8, localArrCreateParameterLocals[i12]);
            codeDeclare.loadConstant(localNewLocal18, Integer.valueOf(i12 - i11));
            codeDeclare.aput(localNewLocal15, localNewLocal18, localNewLocal8);
            i12++;
            length = length;
        }
        TypeId<XC_MethodHook.MethodHookParam> typeId8 = paramTypeId;
        codeDeclare.newInstance(localNewLocal12, typeId8.getConstructor(new TypeId[0]), new Local[0]);
        codeDeclare.iput(typeId8.getField(memberTypeId, d.f7195s), localNewLocal12, localNewLocal13);
        codeDeclare.iput(typeId8.getField(TypeId.OBJECT, PARAMS_FIELD_NAME_THIS_OBJECT), localNewLocal12, local);
        codeDeclare.iput(typeId8.getField(objArrayTypeId, "args"), localNewLocal12, localNewLocal15);
        codeDeclare.loadConstant(localNewLocal19, 0);
        codeDeclare.mark(label6);
        TypeId<Throwable> typeId9 = throwableTypeId;
        codeDeclare.addCatchClause(typeId9, label3);
        codeDeclare.aget(localNewLocal6, localNewLocal4, localNewLocal19);
        codeDeclare.cast(localNewLocal7, localNewLocal6);
        codeDeclare.invokeVirtual(callBeforeCallbackMethodId, null, localNewLocal7, localNewLocal12);
        codeDeclare.jump(label4);
        codeDeclare.removeCatchClause(typeId9);
        codeDeclare.mark(label3);
        codeDeclare.moveException(localNewLocal11);
        codeDeclare.invokeStatic(logThrowableMethodId, null, localNewLocal11);
        codeDeclare.invokeVirtual(setResultMethodId, null, localNewLocal12, localNewLocal10);
        codeDeclare.loadConstant(localNewLocal16, Boolean.FALSE);
        FieldId<XC_MethodHook.MethodHookParam, Boolean> fieldId = returnEarlyFieldId;
        codeDeclare.iput(fieldId, localNewLocal12, localNewLocal16);
        codeDeclare.jump(label2);
        codeDeclare.mark(label4);
        codeDeclare.iget(fieldId, localNewLocal16, localNewLocal12);
        codeDeclare.compareZ(Comparison.EQ, label2, localNewLocal16);
        BinaryOp binaryOp = BinaryOp.ADD;
        codeDeclare.op(binaryOp, localNewLocal19, localNewLocal19, localNewLocal9);
        codeDeclare.jump(label5);
        codeDeclare.mark(label2);
        codeDeclare.op(binaryOp, localNewLocal19, localNewLocal19, localNewLocal9);
        codeDeclare.compare(Comparison.LT, label6, localNewLocal19, localNewLocal5);
        codeDeclare.mark(label5);
        codeDeclare.iget(fieldId, localNewLocal16, localNewLocal12);
        codeDeclare.compareZ(Comparison.NE, label9, localNewLocal16);
        codeDeclare.addCatchClause(typeId9, label8);
        int i13 = !this.mIsStatic ? 1 : 0;
        for (int i14 = i13; i14 < localArrCreateParameterLocals.length; i14++) {
            codeDeclare.loadConstant(localNewLocal18, Integer.valueOf(i14 - i13));
            codeDeclare.aget(localNewLocal8, localNewLocal15, localNewLocal18);
            DexMakerUtils.autoUnboxIfNecessary(codeDeclare, localArrCreateParameterLocals[i14], localNewLocal8, mapCreateResultLocals, true);
        }
        TypeId<?> typeId10 = this.mReturnTypeId;
        TypeId<Void> typeId11 = TypeId.VOID;
        if (typeId10.equals(typeId11)) {
            z10 = false;
            codeDeclare.invokeStatic(this.mBackupMethodId, null, localArrCreateParameterLocals);
            i10 = 0;
            codeDeclare.invokeVirtual(setResultMethodId, null, localNewLocal12, localNewLocal10);
        } else {
            z10 = false;
            i10 = 0;
            Local local2 = mapCreateResultLocals.get(this.mReturnTypeId);
            codeDeclare.invokeStatic(this.mBackupMethodId, local2, localArrCreateParameterLocals);
            DexMakerUtils.autoBoxIfNecessary(codeDeclare, localNewLocal8, local2);
            codeDeclare.invokeVirtual(setResultMethodId, null, localNewLocal12, localNewLocal8);
        }
        codeDeclare.jump(label9);
        TypeId<Throwable> typeId12 = throwableTypeId;
        codeDeclare.removeCatchClause(typeId12);
        codeDeclare.mark(label8);
        codeDeclare.moveException(localNewLocal11);
        MethodId<XC_MethodHook.MethodHookParam, Void> methodId = setThrowableMethodId;
        Local<?>[] localArr = new Local[1];
        localArr[i10] = localNewLocal11;
        codeDeclare.invokeVirtual(methodId, z10, localNewLocal12, localArr);
        codeDeclare.mark(label9);
        BinaryOp binaryOp2 = BinaryOp.SUBTRACT;
        codeDeclare.op(binaryOp2, localNewLocal19, localNewLocal19, localNewLocal9);
        codeDeclare.mark(label7);
        MethodId<XC_MethodHook.MethodHookParam, Object> methodId2 = getResultMethodId;
        codeDeclare.invokeVirtual(methodId2, localNewLocal20, localNewLocal12, new Local[i10]);
        MethodId<XC_MethodHook.MethodHookParam, Throwable> methodId3 = getThrowableMethodId;
        codeDeclare.invokeVirtual(methodId3, localNewLocal21, localNewLocal12, new Local[0]);
        codeDeclare.addCatchClause(typeId12, label10);
        codeDeclare.aget(localNewLocal6, localNewLocal4, localNewLocal19);
        codeDeclare.cast(localNewLocal7, localNewLocal6);
        codeDeclare.invokeVirtual(callAfterCallbackMethodId, null, localNewLocal7, localNewLocal12);
        codeDeclare.jump(label11);
        codeDeclare.removeCatchClause(typeId12);
        codeDeclare.mark(label10);
        codeDeclare.moveException(localNewLocal11);
        codeDeclare.invokeStatic(logThrowableMethodId, null, localNewLocal11);
        codeDeclare.compareZ(Comparison.EQ, label12, localNewLocal21);
        codeDeclare.invokeVirtual(methodId, null, localNewLocal12, localNewLocal21);
        codeDeclare.jump(label11);
        codeDeclare.mark(label12);
        codeDeclare.invokeVirtual(setResultMethodId, null, localNewLocal12, localNewLocal20);
        codeDeclare.mark(label11);
        codeDeclare.op(binaryOp2, localNewLocal19, localNewLocal19, localNewLocal9);
        codeDeclare.compareZ(Comparison.GE, label7, localNewLocal19);
        codeDeclare.invokeVirtual(hasThrowableMethodId, localNewLocal22, localNewLocal12, new Local[0]);
        codeDeclare.compareZ(Comparison.NE, label13, localNewLocal22);
        if (this.mReturnTypeId.equals(typeId11)) {
            codeDeclare.returnVoid();
            map = mapCreateResultLocals;
        } else {
            codeDeclare.invokeVirtual(methodId2, localNewLocal8, localNewLocal12, new Local[0]);
            map = mapCreateResultLocals;
            Local local3 = map.get(DexMakerUtils.getObjTypeIdIfPrimitive(this.mReturnTypeId));
            codeDeclare.cast(local3, localNewLocal8);
            Local local4 = map.get(this.mReturnTypeId);
            DexMakerUtils.autoUnboxIfNecessary(codeDeclare, local4, local3, map, true);
            codeDeclare.returnValue(local4);
        }
        codeDeclare.mark(label13);
        codeDeclare.invokeVirtual(methodId3, localNewLocal11, localNewLocal12, new Local[0]);
        codeDeclare.throwValue(localNewLocal11);
        codeDeclare.mark(label);
        if (this.mReturnTypeId.equals(typeId11)) {
            codeDeclare.invokeStatic(this.mBackupMethodId, null, localArrCreateParameterLocals);
            codeDeclare.returnVoid();
        } else {
            Local local5 = map.get(this.mReturnTypeId);
            codeDeclare.invokeStatic(this.mBackupMethodId, local5, localArrCreateParameterLocals);
            codeDeclare.returnValue(local5);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void generateSetupMethod() {
        TypeId<?> typeId = this.mHookerTypeId;
        TypeId typeId2 = TypeId.VOID;
        TypeId<Member> typeId3 = memberTypeId;
        TypeId<Method> typeId4 = methodTypeId;
        TypeId<XposedBridge.AdditionalHookInfo> typeId5 = hookInfoTypeId;
        Code codeDeclare = this.mDexMaker.declare(typeId.getMethod(typeId2, METHOD_NAME_SETUP, typeId3, typeId4, typeId5), 9);
        Local parameter = codeDeclare.getParameter(0, typeId3);
        Local parameter2 = codeDeclare.getParameter(1, typeId4);
        Local parameter3 = codeDeclare.getParameter(2, typeId5);
        codeDeclare.sput(this.mMethodFieldId, parameter);
        codeDeclare.sput(this.mBackupMethodFieldId, parameter2);
        codeDeclare.sput(this.mHookInfoFieldId, parameter3);
        codeDeclare.returnVoid();
    }

    private String getClassName(Member member) {
        return "SandHooker_" + DexMakerUtils.MD5(member.toString());
    }

    private static TypeId<?>[] getParameterTypeIds(Class<?>[] clsArr, boolean z10) {
        int i10;
        int length = clsArr.length;
        if (!z10) {
            length++;
        }
        TypeId<?>[] typeIdArr = new TypeId[length];
        if (z10) {
            i10 = 0;
        } else {
            typeIdArr[0] = TypeId.OBJECT;
            i10 = 1;
        }
        for (int i11 = 0; i11 < clsArr.length; i11++) {
            typeIdArr[i11 + i10] = TypeId.get(clsArr[i11]);
        }
        return typeIdArr;
    }

    private static Class<?>[] getParameterTypes(Class<?>[] clsArr, boolean z10) {
        if (z10) {
            return clsArr;
        }
        Class<?>[] clsArr2 = new Class[clsArr.length + 1];
        clsArr2[0] = Object.class;
        System.arraycopy(clsArr, 0, clsArr2, 1, clsArr.length);
        return clsArr2;
    }

    private HookWrapper.HookEntity loadHookerClass(ClassLoader classLoader, String str) throws Exception {
        Class<?> clsLoadClass = classLoader.loadClass(str);
        this.mHookClass = clsLoadClass;
        this.mHookMethod = clsLoadClass.getMethod("hook", this.mActualParameterTypes);
        this.mBackupMethod = this.mHookClass.getMethod("backup", this.mActualParameterTypes);
        Method method = this.mHookClass.getMethod(METHOD_NAME_CALL_BACKUP, this.mActualParameterTypes);
        this.mCallBackupMethod = method;
        SandHook.resolveStaticMethod(method);
        SandHookMethodResolver.resolveMethod(this.mCallBackupMethod, this.mBackupMethod);
        SandHook.compileMethod(this.mCallBackupMethod);
        this.mHookClass.getMethod(METHOD_NAME_SETUP, Member.class, Method.class, XposedBridge.AdditionalHookInfo.class).invoke(null, this.mMember, this.mBackupMethod, this.mHookInfo);
        return new HookWrapper.HookEntity(this.mMember, this.mHookMethod, this.mBackupMethod);
    }

    @Override // com.swift.sandhook.xposedcompat.methodgen.HookMaker
    public Method getBackupMethod() {
        return this.mBackupMethod;
    }

    @Override // com.swift.sandhook.xposedcompat.methodgen.HookMaker
    public Method getCallBackupMethod() {
        return this.mCallBackupMethod;
    }

    public Class getHookClass() {
        return this.mHookClass;
    }

    @Override // com.swift.sandhook.xposedcompat.methodgen.HookMaker
    public Method getHookMethod() {
        return this.mHookMethod;
    }

    @Override // com.swift.sandhook.xposedcompat.methodgen.HookMaker
    public void start(Member member, XposedBridge.AdditionalHookInfo additionalHookInfo, ClassLoader classLoader, String str) throws Exception {
        if (member instanceof Method) {
            Method method = (Method) member;
            this.mIsStatic = Modifier.isStatic(method.getModifiers());
            Class<?> returnType = method.getReturnType();
            this.mReturnType = returnType;
            if (returnType.equals(Void.class) || this.mReturnType.equals(Void.TYPE) || this.mReturnType.isPrimitive()) {
                this.mReturnTypeId = TypeId.get(this.mReturnType);
            } else {
                this.mReturnType = Object.class;
                this.mReturnTypeId = TypeId.OBJECT;
            }
            this.mParameterTypeIds = getParameterTypeIds(method.getParameterTypes(), this.mIsStatic);
            this.mActualParameterTypes = getParameterTypes(method.getParameterTypes(), this.mIsStatic);
            this.mHasThrowable = method.getExceptionTypes().length > 0;
        } else {
            if (!(member instanceof Constructor)) {
                if (member.getDeclaringClass().isInterface()) {
                    throw new IllegalArgumentException("Cannot hook interfaces: " + member.toString());
                }
                if (Modifier.isAbstract(member.getModifiers())) {
                    throw new IllegalArgumentException("Cannot hook abstract methods: " + member.toString());
                }
                throw new IllegalArgumentException("Only methods and constructors can be hooked: " + member.toString());
            }
            Constructor constructor = (Constructor) member;
            this.mIsStatic = false;
            this.mReturnType = Void.TYPE;
            this.mReturnTypeId = TypeId.VOID;
            this.mParameterTypeIds = getParameterTypeIds(constructor.getParameterTypes(), this.mIsStatic);
            this.mActualParameterTypes = getParameterTypes(constructor.getParameterTypes(), this.mIsStatic);
            this.mHasThrowable = constructor.getExceptionTypes().length > 0;
        }
        this.mMember = member;
        this.mHookInfo = additionalHookInfo;
        this.mDexDirPath = str;
        if (classLoader == null || classLoader.getClass().getName().equals("java.lang.BootClassLoader")) {
            this.mAppClassLoader = getClass().getClassLoader();
        } else {
            this.mAppClassLoader = classLoader;
        }
        this.mDexMaker = new DexMaker();
        String className = getClassName(this.mMember);
        String str2 = className + ".jar";
        HookWrapper.HookEntity hookEntityDoMake = null;
        try {
            ClassLoader classLoaderLoadClassDirect = this.mDexMaker.loadClassDirect(this.mAppClassLoader, new File(this.mDexDirPath), str2);
            if (classLoaderLoadClassDirect != null) {
                hookEntityDoMake = loadHookerClass(classLoaderLoadClassDirect, className);
            }
        } catch (Throwable unused) {
        }
        if (hookEntityDoMake == null) {
            hookEntityDoMake = doMake(className, str2);
        }
        SandHook.hook(hookEntityDoMake);
    }
}
