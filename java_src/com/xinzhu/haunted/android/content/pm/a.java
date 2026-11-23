package com.xinzhu.haunted.android.content.pm;

import android.content.pm.ActivityInfo;
import android.content.res.TypedArray;
import android.os.Parcel;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88653b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88654c = com.xinzhu.haunted.d.a(ActivityInfo.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88655d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88656e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f88657f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88658g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Field> f88659h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f88660i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Field> f88661j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f88662k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static AtomicReference<Field> f88663l = new AtomicReference<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f88664m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static AtomicReference<Field> f88665n = new AtomicReference<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f88666o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static AtomicReference<Field> f88667p = new AtomicReference<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static boolean f88668q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static AtomicReference<Field> f88669r = new AtomicReference<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static boolean f88670s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static AtomicReference<Field> f88671t = new AtomicReference<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static boolean f88672u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static AtomicReference<Field> f88673v = new AtomicReference<>();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static boolean f88674w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static AtomicReference<Method> f88675x = new AtomicReference<>();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static boolean f88676y = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88677a;

    public a(Object obj) {
        this.f88677a = obj;
    }

    public static boolean k(TypedArray typedArray) {
        if (f88675x.get() != null) {
            return true;
        }
        if (f88676y) {
            return false;
        }
        androidx.lifecycle.i.a(f88675x, null, com.xinzhu.haunted.d.g(f88654c, "isTranslucentOrFloating", TypedArray.class));
        f88676y = true;
        return f88675x.get() != null;
    }

    public static boolean v(TypedArray typedArray) {
        if (!k(typedArray)) {
            return false;
        }
        try {
            return ((Boolean) f88675x.get().invoke(null, typedArray)).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public boolean A(float f10) {
        if (!e()) {
            return false;
        }
        try {
            f88669r.get().set(this.f88677a, Float.valueOf(f10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean B(int i10) {
        if (!f()) {
            return false;
        }
        try {
            f88657f.get().set(this.f88677a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean C(String str) {
        if (!g()) {
            return false;
        }
        try {
            f88663l.get().set(this.f88677a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean D(int i10) {
        if (!h()) {
            return false;
        }
        try {
            f88661j.get().set(this.f88677a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean E(int i10) {
        if (!i()) {
            return false;
        }
        try {
            f88665n.get().set(this.f88677a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean F(boolean z10) {
        if (!j()) {
            return false;
        }
        try {
            f88671t.get().set(this.f88677a, Boolean.valueOf(z10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean a() {
        if (f88655d.get() != null) {
            return true;
        }
        if (f88656e) {
            return false;
        }
        androidx.lifecycle.i.a(f88655d, null, com.xinzhu.haunted.d.f(f88654c, "launchToken"));
        f88656e = true;
        return f88655d.get() != null;
    }

    public boolean b() {
        if (f88659h.get() != null) {
            return true;
        }
        if (f88660i) {
            return false;
        }
        androidx.lifecycle.i.a(f88659h, null, com.xinzhu.haunted.d.f(f88654c, "lockTaskLaunchMode"));
        f88660i = true;
        return f88659h.get() != null;
    }

    public boolean c() {
        if (f88673v.get() != null) {
            return true;
        }
        if (f88674w) {
            return false;
        }
        androidx.lifecycle.i.a(f88673v, null, com.xinzhu.haunted.d.f(f88654c, "mKnownActivityEmbeddingCerts"));
        f88674w = true;
        return f88673v.get() != null;
    }

    public boolean d() {
        if (f88667p.get() != null) {
            return true;
        }
        if (f88668q) {
            return false;
        }
        androidx.lifecycle.i.a(f88667p, null, com.xinzhu.haunted.d.f(f88654c, "mMaxAspectRatio"));
        f88668q = true;
        return f88667p.get() != null;
    }

    public boolean e() {
        if (f88669r.get() != null) {
            return true;
        }
        if (f88670s) {
            return false;
        }
        androidx.lifecycle.i.a(f88669r, null, com.xinzhu.haunted.d.f(f88654c, "mMinAspectRatio"));
        f88670s = true;
        return f88669r.get() != null;
    }

    public boolean f() {
        if (f88657f.get() != null) {
            return true;
        }
        if (f88658g) {
            return false;
        }
        androidx.lifecycle.i.a(f88657f, null, com.xinzhu.haunted.d.f(f88654c, "privateFlags"));
        f88658g = true;
        return f88657f.get() != null;
    }

    public boolean g() {
        if (f88663l.get() != null) {
            return true;
        }
        if (f88664m) {
            return false;
        }
        androidx.lifecycle.i.a(f88663l, null, com.xinzhu.haunted.d.f(f88654c, "requestedVrComponent"));
        f88664m = true;
        return f88663l.get() != null;
    }

    public boolean h() {
        if (f88661j.get() != null) {
            return true;
        }
        if (f88662k) {
            return false;
        }
        androidx.lifecycle.i.a(f88661j, null, com.xinzhu.haunted.d.f(f88654c, "resizeMode"));
        f88662k = true;
        return f88661j.get() != null;
    }

    public boolean i() {
        if (f88665n.get() != null) {
            return true;
        }
        if (f88666o) {
            return false;
        }
        androidx.lifecycle.i.a(f88665n, null, com.xinzhu.haunted.d.f(f88654c, "rotationAnimation"));
        f88666o = true;
        return f88665n.get() != null;
    }

    public boolean j() {
        if (f88671t.get() != null) {
            return true;
        }
        if (f88672u) {
            return false;
        }
        androidx.lifecycle.i.a(f88671t, null, com.xinzhu.haunted.d.f(f88654c, "supportsSizeChanges"));
        f88672u = true;
        return f88671t.get() != null;
    }

    public String l() {
        if (!a()) {
            return null;
        }
        try {
            return (String) f88655d.get().get(this.f88677a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public int m() {
        if (!b()) {
            return 0;
        }
        try {
            return ((Integer) f88659h.get().get(this.f88677a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public Set<String> n() {
        if (!c()) {
            return null;
        }
        try {
            return (Set) f88673v.get().get(this.f88677a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public float o() {
        if (!d()) {
            return 0.0f;
        }
        try {
            return ((Float) f88667p.get().get(this.f88677a)).floatValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }

    public float p() {
        if (!e()) {
            return 0.0f;
        }
        try {
            return ((Float) f88669r.get().get(this.f88677a)).floatValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0.0f;
        }
    }

    public int q() {
        if (!f()) {
            return 0;
        }
        try {
            return ((Integer) f88657f.get().get(this.f88677a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public String r() {
        if (!g()) {
            return null;
        }
        try {
            return (String) f88663l.get().get(this.f88677a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public int s() {
        if (!h()) {
            return 0;
        }
        try {
            return ((Integer) f88661j.get().get(this.f88677a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public int t() {
        if (!i()) {
            return 0;
        }
        try {
            return ((Integer) f88665n.get().get(this.f88677a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean u() {
        if (!j()) {
            return false;
        }
        try {
            return ((Boolean) f88671t.get().get(this.f88677a)).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean w(String str) {
        if (!a()) {
            return false;
        }
        try {
            f88655d.get().set(this.f88677a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean x(int i10) {
        if (!b()) {
            return false;
        }
        try {
            f88659h.get().set(this.f88677a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean y(Set<String> set) {
        if (!c()) {
            return false;
        }
        try {
            f88673v.get().set(this.f88677a, set);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean z(float f10) {
        if (!d()) {
            return false;
        }
        try {
            f88667p.get().set(this.f88677a, Float.valueOf(f10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.haunted.android.content.pm.a$a, reason: collision with other inner class name */
    public static final class C1097a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f88678b = com.xinzhu.haunted.d.b("android.content.pm.ActivityInfo$WindowLayout");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Constructor> f88679c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f88680d = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f88681a;

        public C1097a(Object obj) {
            this.f88681a = obj;
        }

        public static boolean a(Parcel parcel) {
            if (f88679c.get() != null) {
                return true;
            }
            if (f88680d) {
                return false;
            }
            androidx.lifecycle.i.a(f88679c, null, com.xinzhu.haunted.d.d(f88678b, "HtWindowLayout", Parcel.class));
            f88680d = true;
            return f88679c.get() != null;
        }

        public static C1097a b(Parcel parcel) {
            if (!a(parcel)) {
                return null;
            }
            try {
                C1097a c1097a = new C1097a();
                c1097a.f88681a = f88679c.get().newInstance(parcel);
                return c1097a;
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

        private C1097a() {
        }
    }

    private a() {
    }
}
