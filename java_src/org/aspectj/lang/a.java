package org.aspectj.lang;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class[] f95130a = new Class[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class[] f95131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Class[] f95132c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object[] f95133d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f95134e = "aspectOf";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f95135f = "hasAspect";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static /* synthetic */ Class f95136g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static /* synthetic */ Class f95137h;

    static {
        Class[] clsArr = new Class[1];
        Class clsF = f95136g;
        if (clsF == null) {
            clsF = f("java.lang.Object");
            f95136g = clsF;
        }
        clsArr[0] = clsF;
        f95131b = clsArr;
        Class[] clsArr2 = new Class[1];
        Class clsF2 = f95137h;
        if (clsF2 == null) {
            clsF2 = f("java.lang.Class");
            f95137h = clsF2;
        }
        clsArr2[0] = clsF2;
        f95132c = clsArr2;
        f95133d = new Object[0];
    }

    public static Object a(Class cls) throws NoAspectBoundException {
        try {
            return k(cls).invoke(null, f95133d);
        } catch (InvocationTargetException e10) {
            throw new NoAspectBoundException(cls.getName(), e10);
        } catch (Exception e11) {
            throw new NoAspectBoundException(cls.getName(), e11);
        }
    }

    public static Object b(Class cls, Class cls2) throws NoAspectBoundException {
        try {
            return i(cls).invoke(null, cls2);
        } catch (InvocationTargetException e10) {
            throw new NoAspectBoundException(cls.getName(), e10);
        } catch (Exception e11) {
            throw new NoAspectBoundException(cls.getName(), e11);
        }
    }

    public static Object c(Class cls, Object obj) throws NoAspectBoundException {
        try {
            return g(cls).invoke(null, obj);
        } catch (InvocationTargetException e10) {
            throw new NoAspectBoundException(cls.getName(), e10);
        } catch (Exception e11) {
            throw new NoAspectBoundException(cls.getName(), e11);
        }
    }

    private static Method d(Method method, Class cls) throws NoSuchMethodException {
        method.setAccessible(true);
        if (method.isAccessible() && Modifier.isPublic(method.getModifiers()) && Modifier.isStatic(method.getModifiers())) {
            return method;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(cls.getName());
        stringBuffer.append(".aspectOf(..) is not accessible public static");
        throw new NoSuchMethodException(stringBuffer.toString());
    }

    private static Method e(Method method, Class cls) throws NoSuchMethodException {
        method.setAccessible(true);
        if (method.isAccessible() && Modifier.isPublic(method.getModifiers()) && Modifier.isStatic(method.getModifiers())) {
            return method;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(cls.getName());
        stringBuffer.append(".hasAspect(..) is not accessible public static");
        throw new NoSuchMethodException(stringBuffer.toString());
    }

    static /* synthetic */ Class f(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    private static Method g(Class cls) throws NoSuchMethodException {
        return d(cls.getDeclaredMethod(f95134e, f95131b), cls);
    }

    private static Method h(Class cls) throws NoSuchMethodException {
        return e(cls.getDeclaredMethod(f95135f, f95131b), cls);
    }

    private static Method i(Class cls) throws NoSuchMethodException {
        return d(cls.getDeclaredMethod(f95134e, f95132c), cls);
    }

    private static Method j(Class cls) throws NoSuchMethodException {
        return e(cls.getDeclaredMethod(f95135f, f95132c), cls);
    }

    private static Method k(Class cls) throws NoSuchMethodException {
        return d(cls.getDeclaredMethod(f95134e, f95130a), cls);
    }

    private static Method l(Class cls) throws NoSuchMethodException {
        return e(cls.getDeclaredMethod(f95135f, f95130a), cls);
    }

    public static boolean m(Class cls) throws NoAspectBoundException {
        try {
            return ((Boolean) l(cls).invoke(null, f95133d)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean n(Class cls, Class cls2) throws NoAspectBoundException {
        try {
            return ((Boolean) j(cls).invoke(null, cls2)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean o(Class cls, Object obj) throws NoAspectBoundException {
        try {
            return ((Boolean) h(cls).invoke(null, obj)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }
}
