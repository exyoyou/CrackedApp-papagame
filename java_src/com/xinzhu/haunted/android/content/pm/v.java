package com.xinzhu.haunted.android.content.pm;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88900b = "v";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88901c = com.xinzhu.haunted.d.a(u.a());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88902d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88903e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Constructor> f88904f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88905g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Constructor> f88906h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f88907i = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88908a;

    public v(Object obj) {
        this.f88908a = obj;
    }

    public static boolean a(Object obj) {
        if (f88904f.get() != null) {
            return true;
        }
        if (f88905g) {
            return false;
        }
        androidx.lifecycle.i.a(f88904f, null, com.xinzhu.haunted.d.d(f88901c, "HtSigningInfo", "android.content.pm.PackageParser$SigningDetails"));
        f88905g = true;
        return f88904f.get() != null;
    }

    public static boolean b() {
        if (f88906h.get() != null) {
            return true;
        }
        if (f88907i) {
            return false;
        }
        androidx.lifecycle.i.a(f88906h, null, com.xinzhu.haunted.d.d(f88901c, "HtSigningInfo", new Object[0]));
        f88907i = true;
        return f88906h.get() != null;
    }

    public static v d() {
        if (!b()) {
            return null;
        }
        try {
            v vVar = new v();
            vVar.f88908a = f88906h.get().newInstance(new Object[0]);
            return vVar;
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

    public static v e(Object obj) {
        if (!a(obj)) {
            return null;
        }
        try {
            v vVar = new v();
            vVar.f88908a = f88904f.get().newInstance(obj);
            return vVar;
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

    public boolean c() {
        if (f88902d.get() != null) {
            return true;
        }
        if (f88903e) {
            return false;
        }
        androidx.lifecycle.i.a(f88902d, null, com.xinzhu.haunted.d.f(f88901c, "mSigningDetails"));
        f88903e = true;
        return f88902d.get() != null;
    }

    public Object f() {
        if (!c()) {
            return null;
        }
        try {
            return f88902d.get().get(this.f88908a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean g(Object obj) {
        if (!c()) {
            return false;
        }
        try {
            f88902d.get().set(this.f88908a, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private v() {
    }
}
