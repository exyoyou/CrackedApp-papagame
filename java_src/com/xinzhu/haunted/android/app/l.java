package com.xinzhu.haunted.android.app;

import android.content.Context;
import android.content.pm.PackageManager;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88472b = "l";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88473c = com.xinzhu.haunted.d.b("android.app.ContextImpl");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88474d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88475e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f88476f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88477g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Field> f88478h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f88479i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Field> f88480j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f88481k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static AtomicReference<Method> f88482l = new AtomicReference<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f88483m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static AtomicReference<Method> f88484n = new AtomicReference<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f88485o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static AtomicReference<Method> f88486p = new AtomicReference<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static boolean f88487q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static AtomicReference<Method> f88488r = new AtomicReference<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static boolean f88489s = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88490a;

    public l(Object obj) {
        this.f88490a = obj;
    }

    public boolean a() {
        if (f88476f.get() != null) {
            return true;
        }
        if (f88477g) {
            return false;
        }
        androidx.lifecycle.i.a(f88476f, null, com.xinzhu.haunted.d.f(f88473c, "mBasePackageName"));
        f88477g = true;
        return f88476f.get() != null;
    }

    public boolean b() {
        if (f88478h.get() != null) {
            return true;
        }
        if (f88479i) {
            return false;
        }
        androidx.lifecycle.i.a(f88478h, null, com.xinzhu.haunted.d.f(f88473c, "mOpPackageName"));
        f88479i = true;
        return f88478h.get() != null;
    }

    public boolean c() {
        if (f88480j.get() != null) {
            return true;
        }
        if (f88481k) {
            return false;
        }
        androidx.lifecycle.i.a(f88480j, null, com.xinzhu.haunted.d.f(f88473c, "mPackageInfo"));
        f88481k = true;
        return f88480j.get() != null;
    }

    public boolean d() {
        if (f88474d.get() != null) {
            return true;
        }
        if (f88475e) {
            return false;
        }
        androidx.lifecycle.i.a(f88474d, null, com.xinzhu.haunted.d.f(f88473c, "mPackageManager"));
        f88475e = true;
        return f88474d.get() != null;
    }

    public boolean e() {
        if (f88486p.get() != null) {
            return true;
        }
        if (f88487q) {
            return false;
        }
        androidx.lifecycle.i.a(f88486p, null, com.xinzhu.haunted.d.g(f88473c, "getAttributionSource", new Object[0]));
        f88487q = true;
        return f88486p.get() != null;
    }

    public boolean f() {
        if (f88482l.get() != null) {
            return true;
        }
        if (f88483m) {
            return false;
        }
        androidx.lifecycle.i.a(f88482l, null, com.xinzhu.haunted.d.g(f88473c, "getUserId", new Object[0]));
        f88483m = true;
        return f88482l.get() != null;
    }

    public boolean g() {
        if (f88488r.get() != null) {
            return true;
        }
        if (f88489s) {
            return false;
        }
        androidx.lifecycle.i.a(f88488r, null, com.xinzhu.haunted.d.g(f88473c, "isCredentialProtectedStorage", new Object[0]));
        f88489s = true;
        return f88488r.get() != null;
    }

    public boolean h(Context context) {
        if (f88484n.get() != null) {
            return true;
        }
        if (f88485o) {
            return false;
        }
        androidx.lifecycle.i.a(f88484n, null, com.xinzhu.haunted.d.g(f88473c, "setOuterContext", Context.class));
        f88485o = true;
        return f88484n.get() != null;
    }

    public Object i() {
        if (!e()) {
            return null;
        }
        try {
            return f88486p.get().invoke(this.f88490a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public int j() {
        if (!f()) {
            return 0;
        }
        try {
            return ((Integer) f88482l.get().invoke(this.f88490a, new Object[0])).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    public String k() {
        if (!a()) {
            return null;
        }
        try {
            return (String) f88476f.get().get(this.f88490a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public String l() {
        if (!b()) {
            return null;
        }
        try {
            return (String) f88478h.get().get(this.f88490a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Object m() {
        if (!c()) {
            return null;
        }
        try {
            return f88480j.get().get(this.f88490a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public PackageManager n() {
        if (!d()) {
            return null;
        }
        try {
            return (PackageManager) f88474d.get().get(this.f88490a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean o() {
        if (!g()) {
            return false;
        }
        try {
            return ((Boolean) f88488r.get().invoke(this.f88490a, new Object[0])).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public void p(Context context) {
        if (h(context)) {
            try {
                f88484n.get().invoke(this.f88490a, context);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    public boolean q(String str) {
        if (!a()) {
            return false;
        }
        try {
            f88476f.get().set(this.f88490a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean r(String str) {
        if (!b()) {
            return false;
        }
        try {
            f88478h.get().set(this.f88490a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean s(Object obj) {
        if (!c()) {
            return false;
        }
        try {
            f88480j.get().set(this.f88490a, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean t(PackageManager packageManager) {
        if (!d()) {
            return false;
        }
        try {
            f88474d.get().set(this.f88490a, packageManager);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private l() {
    }
}
