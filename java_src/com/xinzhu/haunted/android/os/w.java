package com.xinzhu.haunted.android.os;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f89116a = "w";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f89117b = com.xinzhu.haunted.d.b("android.os.SystemProperties");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Method> f89118c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f89119d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicReference<Method> f89120e = new AtomicReference<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f89121f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static AtomicReference<Method> f89122g = new AtomicReference<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f89123h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static AtomicReference<Method> f89124i = new AtomicReference<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static boolean f89125j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static AtomicReference<Method> f89126k = new AtomicReference<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static boolean f89127l = false;

    public static boolean a(String str) {
        if (f89120e.get() != null) {
            return true;
        }
        if (f89121f) {
            return false;
        }
        androidx.lifecycle.i.a(f89120e, null, com.xinzhu.haunted.d.g(f89117b, "get", String.class));
        f89121f = true;
        return f89120e.get() != null;
    }

    public static boolean b(String str, String str2) {
        if (f89118c.get() != null) {
            return true;
        }
        if (f89119d) {
            return false;
        }
        androidx.lifecycle.i.a(f89118c, null, com.xinzhu.haunted.d.g(f89117b, "get", String.class, String.class));
        f89119d = true;
        return f89118c.get() != null;
    }

    public static boolean c(String str, int i10) {
        if (f89122g.get() != null) {
            return true;
        }
        if (f89123h) {
            return false;
        }
        androidx.lifecycle.i.a(f89122g, null, com.xinzhu.haunted.d.g(f89117b, "getInt", String.class, Integer.TYPE));
        f89123h = true;
        return f89122g.get() != null;
    }

    public static boolean d(String str, long j10) {
        if (f89124i.get() != null) {
            return true;
        }
        if (f89125j) {
            return false;
        }
        androidx.lifecycle.i.a(f89124i, null, com.xinzhu.haunted.d.g(f89117b, "getLong", String.class, Long.TYPE));
        f89125j = true;
        return f89124i.get() != null;
    }

    public static boolean e(String str) {
        if (f89126k.get() != null) {
            return true;
        }
        if (f89127l) {
            return false;
        }
        androidx.lifecycle.i.a(f89126k, null, com.xinzhu.haunted.d.g(f89117b, "isExist", String.class));
        f89127l = true;
        return f89126k.get() != null;
    }

    public static String f(String str) {
        if (!a(str)) {
            return null;
        }
        try {
            return (String) f89120e.get().invoke(null, str);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static String g(String str, String str2) {
        if (!b(str, str2)) {
            return null;
        }
        try {
            return (String) f89118c.get().invoke(null, str, str2);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static int h(String str, int i10) {
        if (!c(str, i10)) {
            return 0;
        }
        try {
            return ((Integer) f89122g.get().invoke(null, str, Integer.valueOf(i10))).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    public static long i(String str, long j10) {
        if (!d(str, j10)) {
            return 0L;
        }
        try {
            return ((Long) f89124i.get().invoke(null, str, Long.valueOf(j10))).longValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0L;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0L;
        }
    }

    public static boolean j(String str) {
        if (!e(str)) {
            return false;
        }
        try {
            return ((Boolean) f89126k.get().invoke(null, str)).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return false;
        }
    }
}
