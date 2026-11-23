package com.swift.sandhook.xposedcompat.methodgen;

import android.text.TextUtils;
import c8.a;
import c8.b;
import com.android.dx.Code;
import com.android.dx.DexMaker;
import com.android.dx.FieldId;
import com.android.dx.Local;
import com.android.dx.MethodId;
import com.android.dx.TypeId;
import com.swift.sandhook.SandHook;
import com.swift.sandhook.SandHookConfig;
import com.swift.sandhook.wrapper.HookWrapper;
import com.swift.sandhook.xposedcompat.hookstub.HookStubManager;
import com.swift.sandhook.xposedcompat.utils.DexMakerUtils;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class HookerDexMakerNew implements HookMaker {
    private static final String CLASS_DESC_PREFIX = "L";
    private static final String CLASS_NAME_PREFIX = "SandHookerNew";
    private static final String FIELD_NAME_BACKUP_METHOD = "backupMethod";
    private static final String FIELD_NAME_HOOK_INFO = "additionalHookInfo";
    private static final String FIELD_NAME_METHOD = "method";
    public static final String METHOD_NAME_BACKUP = "backup";
    public static final String METHOD_NAME_HOOK = "hook";
    private Class<?>[] mActualParameterTypes;
    private ClassLoader mAppClassLoader;
    private Method mBackupMethod;
    private FieldId<?, Method> mBackupMethodFieldId;
    private MethodId<?, ?> mBackupMethodId;
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
    private Class<?> mReturnType;
    private TypeId<?> mReturnTypeId;
    private MethodId<?, ?> mSandHookBridgeMethodId;
    public static final TypeId<Object[]> objArrayTypeId = TypeId.get(Object[].class);
    private static final TypeId<Member> memberTypeId = TypeId.get(Member.class);
    private static final TypeId<Method> methodTypeId = TypeId.get(Method.class);
    private static final TypeId<XposedBridge.AdditionalHookInfo> hookInfoTypeId = TypeId.get(XposedBridge.AdditionalHookInfo.class);

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
        generateHookMethod();
        generateBackupMethod();
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
        MethodId method = this.mHookerTypeId.getMethod(TypeId.VOID, "backup", new TypeId[0]);
        this.mBackupMethodId = method;
        this.mDexMaker.declare(method, 9).returnVoid();
    }

    private void generateFields() {
        this.mHookInfoFieldId = this.mHookerTypeId.getField(hookInfoTypeId, FIELD_NAME_HOOK_INFO);
        this.mMethodFieldId = this.mHookerTypeId.getField(memberTypeId, "method");
        this.mBackupMethodFieldId = this.mHookerTypeId.getField(methodTypeId, FIELD_NAME_BACKUP_METHOD);
        this.mDexMaker.declare(this.mHookInfoFieldId, 8, null);
        this.mDexMaker.declare(this.mMethodFieldId, 8, null);
        this.mDexMaker.declare(this.mBackupMethodFieldId, 8, null);
    }

    private void generateHookMethod() {
        int i10;
        this.mHookMethodId = this.mHookerTypeId.getMethod(this.mReturnTypeId, "hook", this.mParameterTypeIds);
        TypeId typeId = TypeId.get(HookStubManager.class);
        TypeId typeId2 = TypeId.get(Object.class);
        TypeId<Member> typeId3 = memberTypeId;
        TypeId<Method> typeId4 = methodTypeId;
        TypeId<XposedBridge.AdditionalHookInfo> typeId5 = hookInfoTypeId;
        this.mSandHookBridgeMethodId = typeId.getMethod(typeId2, "hookBridge", typeId3, typeId4, typeId5, TypeId.get(Object.class), TypeId.get(Object[].class));
        Code codeDeclare = this.mDexMaker.declare(this.mHookMethodId, 9);
        Local<?> localNewLocal = codeDeclare.newLocal(typeId3);
        Local<?> localNewLocal2 = codeDeclare.newLocal(typeId4);
        Local<?> localNewLocal3 = codeDeclare.newLocal(typeId5);
        TypeId<Object> typeId6 = TypeId.OBJECT;
        Local<?> localNewLocal4 = codeDeclare.newLocal(typeId6);
        Local<?> localNewLocal5 = codeDeclare.newLocal(objArrayTypeId);
        TypeId<Integer> typeId7 = TypeId.INT;
        Local<Integer> localNewLocal6 = codeDeclare.newLocal(typeId7);
        Local<Integer> localNewLocal7 = codeDeclare.newLocal(typeId7);
        Local<?> localNewLocal8 = codeDeclare.newLocal(typeId6);
        Local[] localArrCreateParameterLocals = createParameterLocals(codeDeclare);
        Map<TypeId, Local> mapCreateResultLocals = DexMakerUtils.createResultLocals(codeDeclare);
        codeDeclare.loadConstant(localNewLocal5, null);
        codeDeclare.loadConstant(localNewLocal7, 0);
        codeDeclare.sget(this.mMethodFieldId, localNewLocal);
        codeDeclare.sget(this.mBackupMethodFieldId, localNewLocal2);
        codeDeclare.sget(this.mHookInfoFieldId, localNewLocal3);
        int length = this.mParameterTypeIds.length;
        if (this.mIsStatic) {
            codeDeclare.loadConstant(localNewLocal4, null);
            i10 = 0;
        } else {
            codeDeclare.move(localNewLocal4, localArrCreateParameterLocals[0]);
            i10 = 1;
        }
        codeDeclare.loadConstant(localNewLocal6, Integer.valueOf(length - i10));
        codeDeclare.newArray(localNewLocal5, localNewLocal6);
        for (int i11 = i10; i11 < length; i11++) {
            DexMakerUtils.autoBoxIfNecessary(codeDeclare, localNewLocal8, localArrCreateParameterLocals[i11]);
            codeDeclare.loadConstant(localNewLocal7, Integer.valueOf(i11 - i10));
            codeDeclare.aput(localNewLocal5, localNewLocal7, localNewLocal8);
        }
        if (this.mReturnTypeId.equals(TypeId.VOID)) {
            codeDeclare.invokeStatic(this.mSandHookBridgeMethodId, null, localNewLocal, localNewLocal2, localNewLocal3, localNewLocal4, localNewLocal5);
            codeDeclare.returnVoid();
            return;
        }
        codeDeclare.invokeStatic(this.mSandHookBridgeMethodId, localNewLocal8, localNewLocal, localNewLocal2, localNewLocal3, localNewLocal4, localNewLocal5);
        Local local = mapCreateResultLocals.get(DexMakerUtils.getObjTypeIdIfPrimitive(this.mReturnTypeId));
        codeDeclare.cast(local, localNewLocal8);
        Local local2 = mapCreateResultLocals.get(this.mReturnTypeId);
        DexMakerUtils.autoUnboxIfNecessary(codeDeclare, local2, local, mapCreateResultLocals, true);
        codeDeclare.returnValue(local2);
    }

    private String getClassName(Member member) {
        return "SandHookerNew_" + DexMakerUtils.MD5(member.toString());
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
        this.mBackupMethod = this.mHookClass.getMethod("backup", new Class[0]);
        setup(this.mHookClass);
        return new HookWrapper.HookEntity(this.mMember, this.mHookMethod, this.mBackupMethod, false);
    }

    private void setup(Class cls) {
        XposedHelpers.setStaticObjectField(cls, "method", this.mMember);
        XposedHelpers.setStaticObjectField(cls, FIELD_NAME_BACKUP_METHOD, this.mBackupMethod);
        XposedHelpers.setStaticObjectField(cls, FIELD_NAME_HOOK_INFO, this.mHookInfo);
    }

    @Override // com.swift.sandhook.xposedcompat.methodgen.HookMaker
    public Method getBackupMethod() {
        return this.mBackupMethod;
    }

    @Override // com.swift.sandhook.xposedcompat.methodgen.HookMaker
    public Method getCallBackupMethod() {
        return this.mBackupMethod;
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
