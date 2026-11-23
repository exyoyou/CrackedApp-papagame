package com.xinzhu.haunted.android.app;

import android.app.NotificationManager;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88627a = "x";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88628b = com.xinzhu.haunted.d.a(NotificationManager.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Field> f88629c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f88630d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicReference<Method> f88631e = new AtomicReference<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f88632f = false;

    public static boolean a() {
        if (f88629c.get() != null) {
            return true;
        }
        if (f88630d) {
            return false;
        }
        androidx.lifecycle.i.a(f88629c, null, com.xinzhu.haunted.d.f(f88628b, "sService"));
        f88630d = true;
        return f88629c.get() != null;
    }

    public static boolean b() {
        if (f88631e.get() != null) {
            return true;
        }
        if (f88632f) {
            return false;
        }
        androidx.lifecycle.i.a(f88631e, null, com.xinzhu.haunted.d.g(f88628b, "getService", new Object[0]));
        f88632f = true;
        return f88631e.get() != null;
    }

    public static IInterface c() {
        if (!b()) {
            return null;
        }
        try {
            return (IInterface) f88631e.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static IInterface d() {
        if (!a()) {
            return null;
        }
        try {
            return (IInterface) f88629c.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean e(IInterface iInterface) {
        if (!a()) {
            return false;
        }
        try {
            f88629c.get().set(null, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
