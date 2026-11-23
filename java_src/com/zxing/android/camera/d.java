package com.zxing.android.camera;

import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f90455a = "d";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f90456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Method f90457c;

    static {
        Object objC = c();
        f90456b = objC;
        f90457c = d(objC);
    }

    private d() {
    }

    static void a() {
        h(false);
    }

    static void b() {
        h(true);
    }

    private static Object c() {
        Method methodG;
        Object objE;
        Class<?> clsF;
        Method methodG2;
        Class<?> clsF2 = f("android.os.ServiceManager");
        if (clsF2 == null || (methodG = g(clsF2, "getService", String.class)) == null || (objE = e(methodG, null, "hardware")) == null || (clsF = f("android.os.IHardwareService$Stub")) == null || (methodG2 = g(clsF, "asInterface", IBinder.class)) == null) {
            return null;
        }
        return e(methodG2, null, objE);
    }

    private static Method d(Object iHardwareService) {
        if (iHardwareService == null) {
            return null;
        }
        return g(iHardwareService.getClass(), "setFlashlightEnabled", Boolean.TYPE);
    }

    private static Object e(Method method, Object instance, Object... args) {
        try {
            return method.invoke(instance, args);
        } catch (IllegalAccessException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unexpected error while invoking ");
            sb2.append(method);
            return null;
        } catch (RuntimeException unused2) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Unexpected error while invoking ");
            sb3.append(method);
            return null;
        } catch (InvocationTargetException e10) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Unexpected error while invoking ");
            sb4.append(method);
            e10.getCause();
            return null;
        }
    }

    private static Class<?> f(String name) {
        try {
            return Class.forName(name);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (RuntimeException unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unexpected error while finding class ");
            sb2.append(name);
            return null;
        }
    }

    private static Method g(Class<?> clazz, String name, Class<?>... argClasses) {
        try {
            return clazz.getMethod(name, argClasses);
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (RuntimeException unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unexpected error while finding method ");
            sb2.append(name);
            return null;
        }
    }

    private static void h(boolean active) {
        Object obj = f90456b;
        if (obj != null) {
            e(f90457c, obj, Boolean.valueOf(active));
        }
    }
}
