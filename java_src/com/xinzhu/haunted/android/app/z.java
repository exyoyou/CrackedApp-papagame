package com.xinzhu.haunted.android.app;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class z {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88644b = "z";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88645c = com.xinzhu.haunted.d.b("android.app.PropertyInvalidatedCache");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88646d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88647e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f88648f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88649g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88650a;

    public z(Object obj) {
        this.f88650a = obj;
    }

    public static boolean a() {
        if (f88646d.get() != null) {
            return true;
        }
        if (f88647e) {
            return false;
        }
        androidx.lifecycle.i.a(f88646d, null, com.xinzhu.haunted.d.f(f88645c, "sCaches"));
        f88647e = true;
        return f88646d.get() != null;
    }

    public static Object d() {
        if (!a()) {
            return null;
        }
        try {
            return f88646d.get().get(null);
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
            f88646d.get().set(null, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean b() {
        if (f88648f.get() != null) {
            return true;
        }
        if (f88649g) {
            return false;
        }
        androidx.lifecycle.i.a(f88648f, null, com.xinzhu.haunted.d.g(f88645c, "disableInstance", new Object[0]));
        f88649g = true;
        return f88648f.get() != null;
    }

    public void c() {
        if (b()) {
            try {
                f88648f.get().invoke(this.f88650a, new Object[0]);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    private z() {
    }
}
