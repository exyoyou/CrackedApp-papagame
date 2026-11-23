package com.switfpass.pay.activity.zxing.camera;

import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f82597a = "e";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f82598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Method f82599c;

    static {
        Method methodB;
        Object objA;
        Class clsC;
        Method methodB2;
        Class clsC2 = c("android.os.ServiceManager");
        Object objA2 = (clsC2 == null || (methodB = b(clsC2, "getService", String.class)) == null || (objA = a(methodB, null, "hardware")) == null || (clsC = c("android.os.IHardwareService$Stub")) == null || (methodB2 = b(clsC, "asInterface", IBinder.class)) == null) ? null : a(methodB2, null, objA);
        f82598b = objA2;
        f82599c = objA2 != null ? b(objA2.getClass(), "setFlashlightEnabled", Boolean.TYPE) : null;
    }

    private e() {
    }

    private static Object a(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException unused) {
            new StringBuilder("Unexpected error while invoking ").append(method);
            return null;
        } catch (RuntimeException unused2) {
            new StringBuilder("Unexpected error while invoking ").append(method);
            return null;
        } catch (InvocationTargetException e10) {
            new StringBuilder("Unexpected error while invoking ").append(method);
            e10.getCause();
            return null;
        }
    }

    private static Method b(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (RuntimeException unused2) {
            new StringBuilder("Unexpected error while finding method ").append(str);
            return null;
        }
    }

    private static Class c(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (RuntimeException unused2) {
            new StringBuilder("Unexpected error while finding class ").append(str);
            return null;
        }
    }

    static void d() {
        Object obj = f82598b;
        if (obj != null) {
            a(f82599c, obj, Boolean.FALSE);
        }
    }
}
