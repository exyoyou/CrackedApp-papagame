package com.xinzhu.haunted.android.app;

import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88299a = "d";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88300b = com.xinzhu.haunted.d.b("android.app.ActivityManagerNative");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Field> f88301c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f88302d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicReference<Method> f88303e = new AtomicReference<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f88304f = false;

    public static boolean a() {
        if (f88301c.get() != null) {
            return true;
        }
        if (f88302d) {
            return false;
        }
        androidx.lifecycle.i.a(f88301c, null, com.xinzhu.haunted.d.f(f88300b, "gDefault"));
        f88302d = true;
        return f88301c.get() != null;
    }

    public static boolean b() {
        if (f88303e.get() != null) {
            return true;
        }
        if (f88304f) {
            return false;
        }
        androidx.lifecycle.i.a(f88303e, null, com.xinzhu.haunted.d.g(f88300b, "getDefault", new Object[0]));
        f88304f = true;
        return f88303e.get() != null;
    }

    public static IInterface c() {
        if (!b()) {
            return null;
        }
        try {
            return (IInterface) f88303e.get().invoke(null, new Object[0]);
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
            return f88301c.get().get(null);
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
            f88301c.get().set(null, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
