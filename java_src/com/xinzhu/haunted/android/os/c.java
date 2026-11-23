package com.xinzhu.haunted.android.os;

import android.os.Environment;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88969a = "c";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88970b = com.xinzhu.haunted.d.a(Environment.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Field> f88971c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f88972d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicReference<Method> f88973e = new AtomicReference<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f88974f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static AtomicReference<Method> f88975g = new AtomicReference<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f88976h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static AtomicReference<Method> f88977i = new AtomicReference<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static boolean f88978j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static AtomicReference<Method> f88979k = new AtomicReference<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static boolean f88980l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static AtomicReference<Method> f88981m = new AtomicReference<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static boolean f88982n = false;

    public static boolean a() {
        if (f88971c.get() != null) {
            return true;
        }
        if (f88972d) {
            return false;
        }
        androidx.lifecycle.i.a(f88971c, null, com.xinzhu.haunted.d.f(f88970b, "STANDARD_DIRECTORIES"));
        f88972d = true;
        return f88971c.get() != null;
    }

    public static boolean b(String str) {
        if (f88973e.get() != null) {
            return true;
        }
        if (f88974f) {
            return false;
        }
        androidx.lifecycle.i.a(f88973e, null, com.xinzhu.haunted.d.g(f88970b, "getDataAppDirectory", String.class));
        f88974f = true;
        return f88973e.get() != null;
    }

    public static boolean c(int i10) {
        if (f88977i.get() != null) {
            return true;
        }
        if (f88978j) {
            return false;
        }
        androidx.lifecycle.i.a(f88977i, null, com.xinzhu.haunted.d.g(f88970b, "getDataSystemCeDirectory", Integer.TYPE));
        f88978j = true;
        return f88977i.get() != null;
    }

    public static boolean d(int i10) {
        if (f88975g.get() != null) {
            return true;
        }
        if (f88976h) {
            return false;
        }
        androidx.lifecycle.i.a(f88975g, null, com.xinzhu.haunted.d.g(f88970b, "getDataSystemDeDirectory", Integer.TYPE));
        f88976h = true;
        return f88975g.get() != null;
    }

    public static boolean e() {
        if (f88979k.get() != null) {
            return true;
        }
        if (f88980l) {
            return false;
        }
        androidx.lifecycle.i.a(f88979k, null, com.xinzhu.haunted.d.g(f88970b, "getDataSystemDirectory", new Object[0]));
        f88980l = true;
        return f88979k.get() != null;
    }

    public static boolean f(int i10) {
        if (f88981m.get() != null) {
            return true;
        }
        if (f88982n) {
            return false;
        }
        androidx.lifecycle.i.a(f88981m, null, com.xinzhu.haunted.d.g(f88970b, "getUserSystemDirectory", Integer.TYPE));
        f88982n = true;
        return f88981m.get() != null;
    }

    public static File g(String str) {
        if (!b(str)) {
            return null;
        }
        try {
            return (File) f88973e.get().invoke(null, str);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static File h(int i10) {
        if (!c(i10)) {
            return null;
        }
        try {
            return (File) f88977i.get().invoke(null, Integer.valueOf(i10));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static File i(int i10) {
        if (!d(i10)) {
            return null;
        }
        try {
            return (File) f88975g.get().invoke(null, Integer.valueOf(i10));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static File j() {
        if (!e()) {
            return null;
        }
        try {
            return (File) f88979k.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static File k(int i10) {
        if (!f(i10)) {
            return null;
        }
        try {
            return (File) f88981m.get().invoke(null, Integer.valueOf(i10));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static String[] l() {
        if (!a()) {
            return null;
        }
        try {
            return (String[]) f88971c.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean m(String[] strArr) {
        if (!a()) {
            return false;
        }
        try {
            f88971c.get().set(null, strArr);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
