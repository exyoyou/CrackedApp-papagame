package com.xinzhu.haunted.android.os;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f89145a = "z";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f89146b = com.xinzhu.haunted.d.b("android.os.UserManagerCache");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Field> f89147c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f89148d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicReference<Method> f89149e = new AtomicReference<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f89150f = false;

    public static boolean a() {
        if (f89147c.get() != null) {
            return true;
        }
        if (f89148d) {
            return false;
        }
        androidx.lifecycle.i.a(f89147c, null, com.xinzhu.haunted.d.f(f89146b, "sUserUnlockingOrUnlocked"));
        f89148d = true;
        return f89147c.get() != null;
    }

    public static boolean b() {
        if (f89149e.get() != null) {
            return true;
        }
        if (f89150f) {
            return false;
        }
        androidx.lifecycle.i.a(f89149e, null, com.xinzhu.haunted.d.g(f89146b, "invalidateUserUnlockingOrUnlocked", new Object[0]));
        f89150f = true;
        return f89149e.get() != null;
    }

    public static Object c() {
        if (!a()) {
            return null;
        }
        try {
            return f89147c.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void d() {
        if (b()) {
            try {
                f89149e.get().invoke(null, new Object[0]);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    public static boolean e(Object obj) {
        if (!a()) {
            return false;
        }
        try {
            f89147c.get().set(null, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
