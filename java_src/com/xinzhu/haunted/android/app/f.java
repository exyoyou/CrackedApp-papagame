package com.xinzhu.haunted.android.app;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88318a = "f";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88319b = com.xinzhu.haunted.d.b("android.app.ActivityTaskManager");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Field> f88320c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f88321d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicReference<Method> f88322e = new AtomicReference<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f88323f = false;

    public static boolean a() {
        if (f88320c.get() != null) {
            return true;
        }
        if (f88321d) {
            return false;
        }
        androidx.lifecycle.i.a(f88320c, null, com.xinzhu.haunted.d.f(f88319b, "IActivityTaskManagerSingleton"));
        f88321d = true;
        return f88320c.get() != null;
    }

    public static boolean b() {
        if (f88322e.get() != null) {
            return true;
        }
        if (f88323f) {
            return false;
        }
        androidx.lifecycle.i.a(f88322e, null, com.xinzhu.haunted.d.g(f88319b, "getService", new Object[0]));
        f88323f = true;
        return f88322e.get() != null;
    }

    public static o c() {
        if (!b()) {
            return null;
        }
        try {
            return new o(f88322e.get().invoke(null, new Object[0]));
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
            return f88320c.get().get(null);
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
            f88320c.get().set(null, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
