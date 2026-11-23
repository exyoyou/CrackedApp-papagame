package com.xinzhu.haunted.android.os;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f89082a = "t";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f89083b = com.xinzhu.haunted.d.b("android.os.ServiceManager");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Field> f89084c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f89085d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicReference<Field> f89086e = new AtomicReference<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f89087f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static AtomicReference<Method> f89088g = new AtomicReference<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f89089h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static AtomicReference<Method> f89090i = new AtomicReference<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static boolean f89091j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static AtomicReference<Method> f89092k = new AtomicReference<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static boolean f89093l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static AtomicReference<Method> f89094m = new AtomicReference<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static boolean f89095n = false;

    public static IBinder a() {
        if (!d()) {
            return null;
        }
        try {
            return (IBinder) f89088g.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static boolean b() {
        if (f89084c.get() != null) {
            return true;
        }
        if (f89085d) {
            return false;
        }
        androidx.lifecycle.i.a(f89084c, null, com.xinzhu.haunted.d.f(f89083b, "sCache"));
        f89085d = true;
        return f89084c.get() != null;
    }

    public static boolean c() {
        if (f89086e.get() != null) {
            return true;
        }
        if (f89087f) {
            return false;
        }
        androidx.lifecycle.i.a(f89086e, null, com.xinzhu.haunted.d.f(f89083b, "sServiceManager"));
        f89087f = true;
        return f89086e.get() != null;
    }

    public static boolean d() {
        if (f89088g.get() != null) {
            return true;
        }
        if (f89089h) {
            return false;
        }
        androidx.lifecycle.i.a(f89088g, null, com.xinzhu.haunted.d.g(f89083b, "checkService", new Object[0]));
        f89089h = true;
        return f89088g.get() != null;
    }

    public static boolean e() {
        if (f89090i.get() != null) {
            return true;
        }
        if (f89091j) {
            return false;
        }
        androidx.lifecycle.i.a(f89090i, null, com.xinzhu.haunted.d.g(f89083b, "getIServiceManager", new Object[0]));
        f89091j = true;
        return f89090i.get() != null;
    }

    public static boolean f(String str) {
        if (f89092k.get() != null) {
            return true;
        }
        if (f89093l) {
            return false;
        }
        androidx.lifecycle.i.a(f89092k, null, com.xinzhu.haunted.d.g(f89083b, "getService", String.class));
        f89093l = true;
        return f89092k.get() != null;
    }

    public static boolean g(String str) {
        if (f89094m.get() != null) {
            return true;
        }
        if (f89095n) {
            return false;
        }
        androidx.lifecycle.i.a(f89094m, null, com.xinzhu.haunted.d.g(f89083b, "getServiceOrThrow", String.class));
        f89095n = true;
        return f89094m.get() != null;
    }

    public static IInterface h() {
        if (!e()) {
            return null;
        }
        try {
            return (IInterface) f89090i.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static IBinder i(String str) {
        if (!f(str)) {
            return null;
        }
        try {
            return (IBinder) f89092k.get().invoke(null, str);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static IBinder j(String str) {
        if (!g(str)) {
            return null;
        }
        try {
            return (IBinder) f89094m.get().invoke(null, str);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static Map<String, IBinder> k() {
        if (!b()) {
            return null;
        }
        try {
            return (Map) f89084c.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static IInterface l() {
        if (!c()) {
            return null;
        }
        try {
            return (IInterface) f89086e.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean m(Map<String, IBinder> map) {
        if (!b()) {
            return false;
        }
        try {
            f89084c.get().set(null, map);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean n(IInterface iInterface) {
        if (!c()) {
            return false;
        }
        try {
            f89086e.get().set(null, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
