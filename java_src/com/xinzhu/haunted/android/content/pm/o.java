package com.xinzhu.haunted.android.content.pm;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88855b = "o";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88856c = com.xinzhu.haunted.d.b("android.content.pm.ParceledListSlice");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f88857d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88858e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f88859f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88860g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Constructor> f88861h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f88862i = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88863a;

    public o(Object obj) {
        this.f88863a = obj;
    }

    public static boolean a(List list) {
        if (f88861h.get() != null) {
            return true;
        }
        if (f88862i) {
            return false;
        }
        androidx.lifecycle.i.a(f88861h, null, com.xinzhu.haunted.d.d(f88856c, "HtParceledListSlice", List.class));
        f88862i = true;
        return f88861h.get() != null;
    }

    public static boolean b() {
        if (f88859f.get() != null) {
            return true;
        }
        if (f88860g) {
            return false;
        }
        androidx.lifecycle.i.a(f88859f, null, com.xinzhu.haunted.d.g(f88856c, "emptyList", new Object[0]));
        f88860g = true;
        return f88859f.get() != null;
    }

    public static o d(List list) {
        if (!a(list)) {
            return null;
        }
        try {
            o oVar = new o();
            oVar.f88863a = f88861h.get().newInstance(list);
            return oVar;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InstantiationException e11) {
            e11.printStackTrace();
            return null;
        } catch (InvocationTargetException e12) {
            e12.printStackTrace();
            return null;
        }
    }

    public static Object e() {
        if (!b()) {
            return null;
        }
        try {
            return f88859f.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public boolean c() {
        if (f88857d.get() != null) {
            return true;
        }
        if (f88858e) {
            return false;
        }
        androidx.lifecycle.i.a(f88857d, null, com.xinzhu.haunted.d.g(f88856c, "getList", new Object[0]));
        f88858e = true;
        return f88857d.get() != null;
    }

    public List<?> f() {
        if (!c()) {
            return null;
        }
        try {
            return (List) f88857d.get().invoke(this.f88863a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    private o() {
    }
}
