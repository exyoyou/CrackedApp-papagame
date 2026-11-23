package com.xinzhu.overmind.hiddenapibypass;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.kuaishou.weapon.p0.t;
import dalvik.system.VMRuntime;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Executable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi(28)
public final class HiddenApiBypass {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f89504a = "HiddenApiBypass";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Unsafe f89505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f89506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f89507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f89508e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f89509f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final long f89510g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final long f89511h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final long f89512i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final long f89513j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final long f89514k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final long f89515l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final long f89516m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final long f89517n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Set<String> f89518o = new HashSet();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    static final /* synthetic */ boolean f89519p = false;

    static {
        try {
            Unsafe unsafe = (Unsafe) Unsafe.class.getDeclaredMethod("getUnsafe", new Class[0]).invoke(null, new Object[0]);
            f89505b = unsafe;
            f89506c = unsafe.objectFieldOffset(Helper.Executable.class.getDeclaredField("artMethod"));
            f89507d = unsafe.objectFieldOffset(Helper.Executable.class.getDeclaredField("declaringClass"));
            long jObjectFieldOffset = unsafe.objectFieldOffset(Helper.MethodHandle.class.getDeclaredField("artFieldOrMethod"));
            f89508e = jObjectFieldOffset;
            f89509f = unsafe.objectFieldOffset(Helper.MethodHandleImpl.class.getDeclaredField(PapayPayDetialActivity_.INFO_EXTRA));
            long jObjectFieldOffset2 = unsafe.objectFieldOffset(Helper.Class.class.getDeclaredField("methods"));
            f89510g = jObjectFieldOffset2;
            long jObjectFieldOffset3 = unsafe.objectFieldOffset(Helper.Class.class.getDeclaredField("iFields"));
            f89511h = jObjectFieldOffset3;
            f89512i = unsafe.objectFieldOffset(Helper.Class.class.getDeclaredField("sFields"));
            f89513j = unsafe.objectFieldOffset(Helper.HandleInfo.class.getDeclaredField("member"));
            Method declaredMethod = Helper.NeverCall.class.getDeclaredMethod("a", new Class[0]);
            Method declaredMethod2 = Helper.NeverCall.class.getDeclaredMethod(t.f74887l, new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod2.setAccessible(true);
            MethodHandle methodHandleUnreflect = MethodHandles.lookup().unreflect(declaredMethod);
            MethodHandle methodHandleUnreflect2 = MethodHandles.lookup().unreflect(declaredMethod2);
            long j10 = unsafe.getLong(methodHandleUnreflect, jObjectFieldOffset);
            long j11 = unsafe.getLong(methodHandleUnreflect2, jObjectFieldOffset);
            long j12 = unsafe.getLong(Helper.NeverCall.class, jObjectFieldOffset2);
            long j13 = j11 - j10;
            f89514k = j13;
            f89515l = (j10 - j12) - j13;
            Field declaredField = Helper.NeverCall.class.getDeclaredField("i");
            Field declaredField2 = Helper.NeverCall.class.getDeclaredField("j");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            MethodHandle methodHandleUnreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
            MethodHandle methodHandleUnreflectGetter2 = MethodHandles.lookup().unreflectGetter(declaredField2);
            long j14 = unsafe.getLong(methodHandleUnreflectGetter, jObjectFieldOffset);
            long j15 = unsafe.getLong(methodHandleUnreflectGetter2, jObjectFieldOffset);
            long j16 = unsafe.getLong(Helper.NeverCall.class, jObjectFieldOffset3);
            f89516m = j15 - j14;
            f89517n = j14 - j16;
        } catch (ReflectiveOperationException e10) {
            throw new ExceptionInInitializerError(e10);
        }
    }

    @VisibleForTesting
    static boolean a(Class<?>[] clsArr, Object[] objArr) {
        if (clsArr.length != objArr.length) {
            return false;
        }
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            if (clsArr[i10].isPrimitive()) {
                Class<?> cls = clsArr[i10];
                if (cls == Integer.TYPE && !(objArr[i10] instanceof Integer)) {
                    return false;
                }
                if (cls == Byte.TYPE && !(objArr[i10] instanceof Byte)) {
                    return false;
                }
                if (cls == Character.TYPE && !(objArr[i10] instanceof Character)) {
                    return false;
                }
                if (cls == Boolean.TYPE && !(objArr[i10] instanceof Boolean)) {
                    return false;
                }
                if (cls == Double.TYPE && !(objArr[i10] instanceof Double)) {
                    return false;
                }
                if (cls == Float.TYPE && !(objArr[i10] instanceof Float)) {
                    return false;
                }
                if (cls == Long.TYPE && !(objArr[i10] instanceof Long)) {
                    return false;
                }
                if (cls == Short.TYPE && !(objArr[i10] instanceof Short)) {
                    return false;
                }
            } else {
                Object obj = objArr[i10];
                if (obj != null && !clsArr[i10].isInstance(obj)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean addHiddenApiExemptions(String... strArr) {
        Set<String> set = f89518o;
        set.addAll(Arrays.asList(strArr));
        String[] strArr2 = new String[set.size()];
        set.toArray(strArr2);
        return setHiddenApiExemptions(strArr2);
    }

    public static boolean clearHiddenApiExemptions() {
        f89518o.clear();
        return setHiddenApiExemptions(new String[0]);
    }

    @NonNull
    public static Constructor<?> getDeclaredConstructor(@NonNull Class<?> cls, @NonNull Class<?>... clsArr) throws NoSuchMethodException {
        Iterator<Executable> it2 = getDeclaredMethods(cls).iterator();
        while (it2.hasNext()) {
            Executable executableA = a.a(it2.next());
            if (executableA instanceof Constructor) {
                Class<?>[] parameterTypes = executableA.getParameterTypes();
                if (parameterTypes.length == clsArr.length) {
                    for (int i10 = 0; i10 < clsArr.length; i10++) {
                        if (clsArr[i10] == parameterTypes[i10]) {
                        }
                    }
                    return (Constructor) executableA;
                }
                continue;
            }
        }
        throw new NoSuchMethodException("Cannot find matching constructor");
    }

    @NonNull
    public static Method getDeclaredMethod(@NonNull Class<?> cls, @NonNull String str, @NonNull Class<?>... clsArr) throws NoSuchMethodException {
        Iterator<Executable> it2 = getDeclaredMethods(cls).iterator();
        while (it2.hasNext()) {
            Executable executableA = a.a(it2.next());
            if (executableA.getName().equals(str) && (executableA instanceof Method)) {
                Class<?>[] parameterTypes = executableA.getParameterTypes();
                if (parameterTypes.length == clsArr.length) {
                    for (int i10 = 0; i10 < clsArr.length; i10++) {
                        if (clsArr[i10] == parameterTypes[i10]) {
                        }
                    }
                    return (Method) executableA;
                }
                continue;
            }
        }
        throw new NoSuchMethodException("Cannot find matching method");
    }

    @NonNull
    public static List<Executable> getDeclaredMethods(@NonNull Class<?> cls) {
        ArrayList arrayList = new ArrayList();
        if (!cls.isPrimitive() && !cls.isArray()) {
            try {
                Method declaredMethod = Helper.NeverCall.class.getDeclaredMethod("a", new Class[0]);
                declaredMethod.setAccessible(true);
                MethodHandle methodHandleUnreflect = MethodHandles.lookup().unreflect(declaredMethod);
                Unsafe unsafe = f89505b;
                long j10 = unsafe.getLong(cls, f89510g);
                if (j10 == 0) {
                    return arrayList;
                }
                int i10 = unsafe.getInt(j10);
                for (int i11 = 0; i11 < i10; i11++) {
                    long j11 = (((long) i11) * f89514k) + j10 + f89515l;
                    Unsafe unsafe2 = f89505b;
                    unsafe2.putLong(methodHandleUnreflect, f89508e, j11);
                    unsafe2.putObject(methodHandleUnreflect, f89509f, null);
                    try {
                        MethodHandles.lookup().revealDirect(methodHandleUnreflect);
                    } catch (Throwable unused) {
                    }
                    Unsafe unsafe3 = f89505b;
                    arrayList.add(a.a(unsafe3.getObject(e.a(unsafe3.getObject(methodHandleUnreflect, f89509f)), f89513j)));
                }
            } catch (IllegalAccessException | NoSuchMethodException unused2) {
            }
        }
        return arrayList;
    }

    @NonNull
    public static List<Field> getInstanceFields(@NonNull Class<?> cls) {
        ArrayList arrayList = new ArrayList();
        if (!cls.isPrimitive() && !cls.isArray()) {
            try {
                Field declaredField = Helper.NeverCall.class.getDeclaredField("i");
                declaredField.setAccessible(true);
                MethodHandle methodHandleUnreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
                Unsafe unsafe = f89505b;
                long j10 = unsafe.getLong(cls, f89511h);
                if (j10 == 0) {
                    return arrayList;
                }
                int i10 = unsafe.getInt(j10);
                for (int i11 = 0; i11 < i10; i11++) {
                    long j11 = (((long) i11) * f89516m) + j10 + f89517n;
                    Unsafe unsafe2 = f89505b;
                    unsafe2.putLong(methodHandleUnreflectGetter, f89508e, j11);
                    unsafe2.putObject(methodHandleUnreflectGetter, f89509f, null);
                    try {
                        MethodHandles.lookup().revealDirect(methodHandleUnreflectGetter);
                    } catch (Throwable unused) {
                    }
                    Unsafe unsafe3 = f89505b;
                    arrayList.add((Field) unsafe3.getObject(e.a(unsafe3.getObject(methodHandleUnreflectGetter, f89509f)), f89513j));
                }
            } catch (IllegalAccessException | NoSuchFieldException unused2) {
            }
        }
        return arrayList;
    }

    @NonNull
    public static List<Field> getStaticFields(@NonNull Class<?> cls) {
        ArrayList arrayList = new ArrayList();
        if (!cls.isPrimitive() && !cls.isArray()) {
            try {
                Field declaredField = Helper.NeverCall.class.getDeclaredField("s");
                declaredField.setAccessible(true);
                MethodHandle methodHandleUnreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
                Unsafe unsafe = f89505b;
                long j10 = unsafe.getLong(cls, f89512i);
                if (j10 == 0) {
                    return arrayList;
                }
                int i10 = unsafe.getInt(j10);
                for (int i11 = 0; i11 < i10; i11++) {
                    long j11 = (((long) i11) * f89516m) + j10 + f89517n;
                    Unsafe unsafe2 = f89505b;
                    unsafe2.putLong(methodHandleUnreflectGetter, f89508e, j11);
                    unsafe2.putObject(methodHandleUnreflectGetter, f89509f, null);
                    try {
                        MethodHandles.lookup().revealDirect(methodHandleUnreflectGetter);
                    } catch (Throwable unused) {
                    }
                    Unsafe unsafe3 = f89505b;
                    arrayList.add((Field) unsafe3.getObject(e.a(unsafe3.getObject(methodHandleUnreflectGetter, f89509f)), f89513j));
                }
            } catch (IllegalAccessException | NoSuchFieldException unused2) {
            }
        }
        return arrayList;
    }

    public static Object invoke(@NonNull Class<?> cls, @Nullable Object obj, @NonNull String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        if (obj != null && !cls.isInstance(obj)) {
            throw new IllegalArgumentException("this object is not an instance of the given class");
        }
        Method declaredMethod = Helper.InvokeStub.class.getDeclaredMethod("invoke", Object[].class);
        declaredMethod.setAccessible(true);
        Unsafe unsafe = f89505b;
        long j10 = unsafe.getLong(cls, f89510g);
        if (j10 == 0) {
            throw new NoSuchMethodException("Cannot find matching method");
        }
        int i10 = unsafe.getInt(j10);
        for (int i11 = 0; i11 < i10; i11++) {
            f89505b.putLong(declaredMethod, f89506c, (((long) i11) * f89514k) + j10 + f89515l);
            if (str.equals(declaredMethod.getName()) && a(declaredMethod.getParameterTypes(), objArr)) {
                return declaredMethod.invoke(obj, objArr);
            }
        }
        throw new NoSuchMethodException("Cannot find matching method");
    }

    public static Object newInstance(@NonNull Class<?> cls, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        Method declaredMethod = Helper.InvokeStub.class.getDeclaredMethod("invoke", Object[].class);
        Constructor declaredConstructor = Helper.InvokeStub.class.getDeclaredConstructor(Object[].class);
        declaredConstructor.setAccessible(true);
        Unsafe unsafe = f89505b;
        long j10 = unsafe.getLong(cls, f89510g);
        if (j10 == 0) {
            throw new NoSuchMethodException("Cannot find matching constructor");
        }
        int i10 = unsafe.getInt(j10);
        for (int i11 = 0; i11 < i10; i11++) {
            long j11 = (((long) i11) * f89514k) + j10 + f89515l;
            Unsafe unsafe2 = f89505b;
            long j12 = f89506c;
            unsafe2.putLong(declaredMethod, j12, j11);
            if ("<init>".equals(declaredMethod.getName())) {
                unsafe2.putLong(declaredConstructor, j12, j11);
                unsafe2.putObject(declaredConstructor, f89507d, cls);
                if (a(declaredConstructor.getParameterTypes(), objArr)) {
                    return declaredConstructor.newInstance(objArr);
                }
            }
        }
        throw new NoSuchMethodException("Cannot find matching constructor");
    }

    public static boolean setHiddenApiExemptions(@NonNull String... strArr) {
        try {
            invoke(VMRuntime.class, invoke(VMRuntime.class, null, "getRuntime", new Object[0]), "setHiddenApiExemptions", strArr);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
