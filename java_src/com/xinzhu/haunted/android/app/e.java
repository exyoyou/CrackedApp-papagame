package com.xinzhu.haunted.android.app;

import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88310a = "e";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88311b = com.xinzhu.haunted.d.b("android.app.ActivityManager");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Field> f88312c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f88313d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicReference<Method> f88314e = new AtomicReference<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f88315f = false;

    public static boolean a() {
        if (f88312c.get() != null) {
            return true;
        }
        if (f88313d) {
            return false;
        }
        androidx.lifecycle.i.a(f88312c, null, com.xinzhu.haunted.d.f(f88311b, "IActivityManagerSingleton"));
        f88313d = true;
        return f88312c.get() != null;
    }

    public static boolean b() {
        if (f88314e.get() != null) {
            return true;
        }
        if (f88315f) {
            return false;
        }
        androidx.lifecycle.i.a(f88314e, null, com.xinzhu.haunted.d.g(f88311b, "getService", new Object[0]));
        f88315f = true;
        return f88314e.get() != null;
    }

    public static IInterface c() {
        if (!b()) {
            return null;
        }
        try {
            return (IInterface) f88314e.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static Object d() {
        if (!a()) {
            return null;
        }
        try {
            return f88312c.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean e(Object obj) {
        if (!a()) {
            return false;
        }
        try {
            f88312c.get().set(null, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
