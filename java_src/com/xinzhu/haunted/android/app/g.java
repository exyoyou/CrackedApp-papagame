package com.xinzhu.haunted.android.app;

import android.app.Activity;
import android.app.Application;
import android.app.Instrumentation;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.util.ArrayMap;
import com.byazt.hv.TTDownloadField;
import com.haima.hmcp.Constants;
import com.join.mgps.activity.PapayPayDetialActivity_;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88327b = "g";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88364a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88329c = com.xinzhu.haunted.d.b("android.app.ActivityThread");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88331d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88333e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f88335f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88337g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Field> f88339h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f88341i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Field> f88343j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f88345k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static AtomicReference<Field> f88347l = new AtomicReference<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f88349m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static AtomicReference<Field> f88351n = new AtomicReference<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f88352o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static AtomicReference<Field> f88353p = new AtomicReference<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static boolean f88354q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static AtomicReference<Field> f88355r = new AtomicReference<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static boolean f88356s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static AtomicReference<Field> f88357t = new AtomicReference<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static boolean f88358u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static AtomicReference<Field> f88359v = new AtomicReference<>();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static boolean f88360w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static AtomicReference<Method> f88361x = new AtomicReference<>();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static boolean f88362y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static AtomicReference<Method> f88363z = new AtomicReference<>();
    private static boolean A = false;
    private static AtomicReference<Method> B = new AtomicReference<>();
    private static boolean C = false;
    private static AtomicReference<Method> D = new AtomicReference<>();
    private static boolean E = false;
    private static AtomicReference<Method> F = new AtomicReference<>();
    private static boolean G = false;
    private static AtomicReference<Method> H = new AtomicReference<>();
    private static boolean I = false;
    private static AtomicReference<Method> J = new AtomicReference<>();
    private static boolean K = false;
    private static AtomicReference<Method> L = new AtomicReference<>();
    private static boolean M = false;
    private static AtomicReference<Method> N = new AtomicReference<>();
    private static boolean O = false;
    private static AtomicReference<Method> P = new AtomicReference<>();
    private static boolean Q = false;
    private static AtomicReference<Method> R = new AtomicReference<>();
    private static boolean S = false;
    private static AtomicReference<Method> T = new AtomicReference<>();
    private static boolean U = false;
    private static AtomicReference<Method> V = new AtomicReference<>();
    private static boolean W = false;
    private static AtomicReference<Method> X = new AtomicReference<>();
    private static boolean Y = false;
    private static AtomicReference<Method> Z = new AtomicReference<>();

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static boolean f88326a0 = false;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static AtomicReference<Method> f88328b0 = new AtomicReference<>();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static boolean f88330c0 = false;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static AtomicReference<Method> f88332d0 = new AtomicReference<>();

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static boolean f88334e0 = false;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private static AtomicReference<Method> f88336f0 = new AtomicReference<>();

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private static boolean f88338g0 = false;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private static AtomicReference<Method> f88340h0 = new AtomicReference<>();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private static boolean f88342i0 = false;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private static AtomicReference<Method> f88344j0 = new AtomicReference<>();

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private static boolean f88346k0 = false;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private static AtomicReference<Method> f88348l0 = new AtomicReference<>();

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private static boolean f88350m0 = false;

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f88391a = com.xinzhu.haunted.d.b("android.app.ActivityThread$ApplicationThread");
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f88392a = com.xinzhu.haunted.d.b("android.app.ActivityThread$H");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Field> f88393b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f88394c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static AtomicReference<Field> f88395d = new AtomicReference<>();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static boolean f88396e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static AtomicReference<Field> f88397f = new AtomicReference<>();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static boolean f88398g = false;

        public static boolean a() {
            if (f88395d.get() != null) {
                return true;
            }
            if (f88396e) {
                return false;
            }
            androidx.lifecycle.i.a(f88395d, null, com.xinzhu.haunted.d.f(f88392a, "EXECUTE_TRANSACTION"));
            f88396e = true;
            return f88395d.get() != null;
        }

        public static boolean b() {
            if (f88393b.get() != null) {
                return true;
            }
            if (f88394c) {
                return false;
            }
            androidx.lifecycle.i.a(f88393b, null, com.xinzhu.haunted.d.f(f88392a, "LAUNCH_ACTIVITY"));
            f88394c = true;
            return f88393b.get() != null;
        }

        public static boolean c() {
            if (f88397f.get() != null) {
                return true;
            }
            if (f88398g) {
                return false;
            }
            androidx.lifecycle.i.a(f88397f, null, com.xinzhu.haunted.d.f(f88392a, "SCHEDULE_CRASH"));
            f88398g = true;
            return f88397f.get() != null;
        }

        public static int d() {
            if (!a()) {
                return 0;
            }
            try {
                return ((Integer) f88395d.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int e() {
            if (!b()) {
                return 0;
            }
            try {
                return ((Integer) f88393b.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int f() {
            if (!c()) {
                return 0;
            }
            try {
                return ((Integer) f88397f.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static boolean g(int i10) {
            if (!a()) {
                return false;
            }
            try {
                f88395d.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean h(int i10) {
            if (!b()) {
                return false;
            }
            try {
                f88393b.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean i(int i10) {
            if (!c()) {
                return false;
            }
            try {
                f88397f.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }
    }

    public g(Object obj) {
        this.f88364a = obj;
    }

    public static Object F() {
        if (!k()) {
            return null;
        }
        try {
            return f88361x.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static Application G() {
        if (!l()) {
            return null;
        }
        try {
            return (Application) X.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static String H() {
        if (!m()) {
            return null;
        }
        try {
            return (String) f88328b0.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static String I() {
        if (!n()) {
            return null;
        }
        try {
            return (String) Z.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static String J() {
        if (!o()) {
            return null;
        }
        try {
            return (String) P.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static IInterface P() {
        if (!u()) {
            return null;
        }
        try {
            return (IInterface) N.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static IInterface Q() {
        if (!v()) {
            return null;
        }
        try {
            return (IInterface) f88332d0.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static Object a0() {
        if (!h()) {
            return null;
        }
        try {
            return f88339h.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static IInterface b0() {
        if (!i()) {
            return null;
        }
        try {
            return (IInterface) f88343j.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static IInterface c0() {
        if (!j()) {
            return null;
        }
        try {
            return (IInterface) f88355r.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean h() {
        if (f88339h.get() != null) {
            return true;
        }
        if (f88341i) {
            return false;
        }
        androidx.lifecycle.i.a(f88339h, null, com.xinzhu.haunted.d.f(f88329c, "sCurrentActivityThread"));
        f88341i = true;
        return f88339h.get() != null;
    }

    public static boolean i() {
        if (f88343j.get() != null) {
            return true;
        }
        if (f88345k) {
            return false;
        }
        androidx.lifecycle.i.a(f88343j, null, com.xinzhu.haunted.d.f(f88329c, "sPackageManager"));
        f88345k = true;
        return f88343j.get() != null;
    }

    public static boolean j() {
        if (f88355r.get() != null) {
            return true;
        }
        if (f88356s) {
            return false;
        }
        androidx.lifecycle.i.a(f88355r, null, com.xinzhu.haunted.d.f(f88329c, "sPermissionManager"));
        f88356s = true;
        return f88355r.get() != null;
    }

    public static boolean k() {
        if (f88361x.get() != null) {
            return true;
        }
        if (f88362y) {
            return false;
        }
        androidx.lifecycle.i.a(f88361x, null, com.xinzhu.haunted.d.g(f88329c, "currentActivityThread", new Object[0]));
        f88362y = true;
        return f88361x.get() != null;
    }

    public static boolean l() {
        if (X.get() != null) {
            return true;
        }
        if (Y) {
            return false;
        }
        androidx.lifecycle.i.a(X, null, com.xinzhu.haunted.d.g(f88329c, "currentApplication", new Object[0]));
        Y = true;
        return X.get() != null;
    }

    public static boolean m() {
        if (f88328b0.get() != null) {
            return true;
        }
        if (f88330c0) {
            return false;
        }
        androidx.lifecycle.i.a(f88328b0, null, com.xinzhu.haunted.d.g(f88329c, "currentOpPackageName", new Object[0]));
        f88330c0 = true;
        return f88328b0.get() != null;
    }

    public static boolean n() {
        if (Z.get() != null) {
            return true;
        }
        if (f88326a0) {
            return false;
        }
        androidx.lifecycle.i.a(Z, null, com.xinzhu.haunted.d.g(f88329c, "currentPackageName", new Object[0]));
        f88326a0 = true;
        return Z.get() != null;
    }

    public static boolean o() {
        if (P.get() != null) {
            return true;
        }
        if (Q) {
            return false;
        }
        androidx.lifecycle.i.a(P, null, com.xinzhu.haunted.d.g(f88329c, "currentProcessName", new Object[0]));
        Q = true;
        return P.get() != null;
    }

    public static boolean r0(Object obj) {
        if (!h()) {
            return false;
        }
        try {
            f88339h.get().set(null, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean s0(IInterface iInterface) {
        if (!i()) {
            return false;
        }
        try {
            f88343j.get().set(null, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean t0(IInterface iInterface) {
        if (!j()) {
            return false;
        }
        try {
            f88355r.get().set(null, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean u() {
        if (N.get() != null) {
            return true;
        }
        if (O) {
            return false;
        }
        androidx.lifecycle.i.a(N, null, com.xinzhu.haunted.d.g(f88329c, "getPackageManager", new Object[0]));
        O = true;
        return N.get() != null;
    }

    public static boolean v() {
        if (f88332d0.get() != null) {
            return true;
        }
        if (f88334e0) {
            return false;
        }
        androidx.lifecycle.i.a(f88332d0, null, com.xinzhu.haunted.d.g(f88329c, "getPermissionManager", new Object[0]));
        f88334e0 = true;
        return f88332d0.get() != null;
    }

    public boolean A(Context context, Object obj, ProviderInfo providerInfo, boolean z10, boolean z11, boolean z12) {
        if (V.get() != null) {
            return true;
        }
        if (W) {
            return false;
        }
        AtomicReference<Method> atomicReference = V;
        Class<?> cls = f88329c;
        Class cls2 = Boolean.TYPE;
        androidx.lifecycle.i.a(atomicReference, null, com.xinzhu.haunted.d.g(cls, "installProvider", Context.class, "android.app.IActivityManager$ContentProviderHolder", ProviderInfo.class, cls2, cls2, cls2));
        W = true;
        return V.get() != null;
    }

    public boolean B(Context context, Object obj, ProviderInfo providerInfo, boolean z10, boolean z11, boolean z12) {
        if (T.get() != null) {
            return true;
        }
        if (U) {
            return false;
        }
        AtomicReference<Method> atomicReference = T;
        Class<?> cls = f88329c;
        Class cls2 = Boolean.TYPE;
        androidx.lifecycle.i.a(atomicReference, null, com.xinzhu.haunted.d.g(cls, "installProvider", Context.class, "android.app.ContentProviderHolder", ProviderInfo.class, cls2, cls2, cls2));
        U = true;
        return T.get() != null;
    }

    public boolean C(IBinder iBinder, List list) {
        if (B.get() != null) {
            return true;
        }
        if (C) {
            return false;
        }
        androidx.lifecycle.i.a(B, null, com.xinzhu.haunted.d.g(f88329c, "performNewIntents", IBinder.class, List.class));
        C = true;
        return B.get() != null;
    }

    public boolean D(IBinder iBinder, List list, boolean z10) {
        if (D.get() != null) {
            return true;
        }
        if (E) {
            return false;
        }
        androidx.lifecycle.i.a(D, null, com.xinzhu.haunted.d.g(f88329c, "performNewIntents", IBinder.class, List.class, Boolean.TYPE));
        E = true;
        return D.get() != null;
    }

    public boolean E(IBinder iBinder, String str, int i10, int i11, Intent intent) {
        if (f88363z.get() != null) {
            return true;
        }
        if (A) {
            return false;
        }
        AtomicReference<Method> atomicReference = f88363z;
        Class<?> cls = f88329c;
        Class cls2 = Integer.TYPE;
        androidx.lifecycle.i.a(atomicReference, null, com.xinzhu.haunted.d.g(cls, "sendActivityResult", IBinder.class, String.class, cls2, cls2, Intent.class));
        A = true;
        return f88363z.get() != null;
    }

    public IBinder K() {
        if (!p()) {
            return null;
        }
        try {
            return (IBinder) R.get().invoke(this.f88364a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public float L(String str, float f10) {
        if (!q(str, f10)) {
            return 0.0f;
        }
        try {
            return ((Float) f88340h0.get().invoke(this.f88364a, str, Float.valueOf(f10))).floatValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0.0f;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0.0f;
        }
    }

    public int M(String str, int i10) {
        if (!r(str, i10)) {
            return 0;
        }
        try {
            return ((Integer) f88336f0.get().invoke(this.f88364a, str, Integer.valueOf(i10))).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    public Object N(IBinder iBinder) {
        if (!s(iBinder)) {
            return null;
        }
        try {
            return f88344j0.get().invoke(this.f88364a, iBinder);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public Object O(ApplicationInfo applicationInfo, Object obj) {
        if (!t(applicationInfo, obj)) {
            return null;
        }
        try {
            return f88348l0.get().invoke(this.f88364a, applicationInfo, obj);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public Object R() {
        if (!w()) {
            return null;
        }
        try {
            return J.get().invoke(this.f88364a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public Object S() {
        if (!x()) {
            return null;
        }
        try {
            return L.get().invoke(this.f88364a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public ArrayMap<IBinder, Object> T() {
        if (!a()) {
            return null;
        }
        try {
            return (ArrayMap) f88351n.get().get(this.f88364a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Object U() {
        if (!b()) {
            return null;
        }
        try {
            return f88335f.get().get(this.f88364a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Handler V() {
        if (!c()) {
            return null;
        }
        try {
            return (Handler) f88353p.get().get(this.f88364a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Application W() {
        if (!d()) {
            return null;
        }
        try {
            return (Application) f88357t.get().get(this.f88364a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Instrumentation X() {
        if (!e()) {
            return null;
        }
        try {
            return (Instrumentation) f88359v.get().get(this.f88364a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Object Y() {
        if (!f()) {
            return null;
        }
        try {
            return f88347l.get().get(this.f88364a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Map Z() {
        if (!g()) {
            return null;
        }
        try {
            return (Map) f88331d.get().get(this.f88364a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean a() {
        if (f88351n.get() != null) {
            return true;
        }
        if (f88352o) {
            return false;
        }
        androidx.lifecycle.i.a(f88351n, null, com.xinzhu.haunted.d.f(f88329c, "mActivities"));
        f88352o = true;
        return f88351n.get() != null;
    }

    public boolean b() {
        if (f88335f.get() != null) {
            return true;
        }
        if (f88337g) {
            return false;
        }
        androidx.lifecycle.i.a(f88335f, null, com.xinzhu.haunted.d.f(f88329c, "mBoundApplication"));
        f88337g = true;
        return f88335f.get() != null;
    }

    public boolean c() {
        if (f88353p.get() != null) {
            return true;
        }
        if (f88354q) {
            return false;
        }
        androidx.lifecycle.i.a(f88353p, null, com.xinzhu.haunted.d.f(f88329c, "mH"));
        f88354q = true;
        return f88353p.get() != null;
    }

    public boolean d() {
        if (f88357t.get() != null) {
            return true;
        }
        if (f88358u) {
            return false;
        }
        androidx.lifecycle.i.a(f88357t, null, com.xinzhu.haunted.d.f(f88329c, "mInitialApplication"));
        f88358u = true;
        return f88357t.get() != null;
    }

    public void d0(IBinder iBinder, List list) {
        if (y(iBinder, list)) {
            try {
                F.get().invoke(this.f88364a, iBinder, list);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    public boolean e() {
        if (f88359v.get() != null) {
            return true;
        }
        if (f88360w) {
            return false;
        }
        androidx.lifecycle.i.a(f88359v, null, com.xinzhu.haunted.d.f(f88329c, "mInstrumentation"));
        f88360w = true;
        return f88359v.get() != null;
    }

    public void e0(Object obj, List list) {
        if (z(obj, list)) {
            try {
                H.get().invoke(this.f88364a, obj, list);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    public boolean f() {
        if (f88347l.get() != null) {
            return true;
        }
        if (f88349m) {
            return false;
        }
        androidx.lifecycle.i.a(f88347l, null, com.xinzhu.haunted.d.f(f88329c, "mPackages"));
        f88349m = true;
        return f88347l.get() != null;
    }

    public Object f0(Context context, Object obj, ProviderInfo providerInfo, boolean z10, boolean z11, boolean z12) {
        if (!A(context, obj, providerInfo, z10, z11, z12)) {
            return null;
        }
        try {
            return V.get().invoke(this.f88364a, context, obj, providerInfo, Boolean.valueOf(z10), Boolean.valueOf(z11), Boolean.valueOf(z12));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public boolean g() {
        if (f88331d.get() != null) {
            return true;
        }
        if (f88333e) {
            return false;
        }
        androidx.lifecycle.i.a(f88331d, null, com.xinzhu.haunted.d.f(f88329c, "mProviderMap"));
        f88333e = true;
        return f88331d.get() != null;
    }

    public Object g0(Context context, Object obj, ProviderInfo providerInfo, boolean z10, boolean z11, boolean z12) {
        if (!B(context, obj, providerInfo, z10, z11, z12)) {
            return null;
        }
        try {
            return T.get().invoke(this.f88364a, context, obj, providerInfo, Boolean.valueOf(z10), Boolean.valueOf(z11), Boolean.valueOf(z12));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public void h0(IBinder iBinder, List list) {
        if (C(iBinder, list)) {
            try {
                B.get().invoke(this.f88364a, iBinder, list);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    public void i0(IBinder iBinder, List list, boolean z10) {
        if (D(iBinder, list, z10)) {
            try {
                D.get().invoke(this.f88364a, iBinder, list, Boolean.valueOf(z10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    public void j0(IBinder iBinder, String str, int i10, int i11, Intent intent) {
        if (E(iBinder, str, i10, i11, intent)) {
            try {
                f88363z.get().invoke(this.f88364a, iBinder, str, Integer.valueOf(i10), Integer.valueOf(i11), intent);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    public boolean k0(ArrayMap<IBinder, Object> arrayMap) {
        if (!a()) {
            return false;
        }
        try {
            f88351n.get().set(this.f88364a, arrayMap);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean l0(Object obj) {
        if (!b()) {
            return false;
        }
        try {
            f88335f.get().set(this.f88364a, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean m0(Handler handler) {
        if (!c()) {
            return false;
        }
        try {
            f88353p.get().set(this.f88364a, handler);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean n0(Application application) {
        if (!d()) {
            return false;
        }
        try {
            f88357t.get().set(this.f88364a, application);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean o0(Instrumentation instrumentation) {
        if (!e()) {
            return false;
        }
        try {
            f88359v.get().set(this.f88364a, instrumentation);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean p() {
        if (R.get() != null) {
            return true;
        }
        if (S) {
            return false;
        }
        androidx.lifecycle.i.a(R, null, com.xinzhu.haunted.d.g(f88329c, "getApplicationThread", new Object[0]));
        S = true;
        return R.get() != null;
    }

    public boolean p0(Object obj) {
        if (!f()) {
            return false;
        }
        try {
            f88347l.get().set(this.f88364a, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean q(String str, float f10) {
        if (f88340h0.get() != null) {
            return true;
        }
        if (f88342i0) {
            return false;
        }
        androidx.lifecycle.i.a(f88340h0, null, com.xinzhu.haunted.d.g(f88329c, "getFloatCoreSetting", String.class, Float.TYPE));
        f88342i0 = true;
        return f88340h0.get() != null;
    }

    public boolean q0(Map map) {
        if (!g()) {
            return false;
        }
        try {
            f88331d.get().set(this.f88364a, map);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean r(String str, int i10) {
        if (f88336f0.get() != null) {
            return true;
        }
        if (f88338g0) {
            return false;
        }
        androidx.lifecycle.i.a(f88336f0, null, com.xinzhu.haunted.d.g(f88329c, "getIntCoreSetting", String.class, Integer.TYPE));
        f88338g0 = true;
        return f88336f0.get() != null;
    }

    public boolean s(IBinder iBinder) {
        if (f88344j0.get() != null) {
            return true;
        }
        if (f88346k0) {
            return false;
        }
        androidx.lifecycle.i.a(f88344j0, null, com.xinzhu.haunted.d.g(f88329c, "getLaunchingActivity", IBinder.class));
        f88346k0 = true;
        return f88344j0.get() != null;
    }

    public boolean t(ApplicationInfo applicationInfo, Object obj) {
        if (f88348l0.get() != null) {
            return true;
        }
        if (f88350m0) {
            return false;
        }
        androidx.lifecycle.i.a(f88348l0, null, com.xinzhu.haunted.d.g(f88329c, "getPackageInfoNoCheck", ApplicationInfo.class, "android.content.res.CompatibilityInfo"));
        f88350m0 = true;
        return f88348l0.get() != null;
    }

    public boolean w() {
        if (J.get() != null) {
            return true;
        }
        if (K) {
            return false;
        }
        androidx.lifecycle.i.a(J, null, com.xinzhu.haunted.d.g(f88329c, "getSystemContext", new Object[0]));
        K = true;
        return J.get() != null;
    }

    public boolean x() {
        if (L.get() != null) {
            return true;
        }
        if (M) {
            return false;
        }
        androidx.lifecycle.i.a(L, null, com.xinzhu.haunted.d.g(f88329c, "getSystemUiContext", new Object[0]));
        M = true;
        return L.get() != null;
    }

    public boolean y(IBinder iBinder, List list) {
        if (F.get() != null) {
            return true;
        }
        if (G) {
            return false;
        }
        androidx.lifecycle.i.a(F, null, com.xinzhu.haunted.d.g(f88329c, "handleNewIntent", IBinder.class, List.class));
        G = true;
        return F.get() != null;
    }

    public boolean z(Object obj, List list) {
        if (H.get() != null) {
            return true;
        }
        if (I) {
            return false;
        }
        androidx.lifecycle.i.a(H, null, com.xinzhu.haunted.d.g(f88329c, "handleNewIntent", "android.app.ActivityThread$ActivityClientRecord", List.class));
        I = true;
        return H.get() != null;
    }

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f88365b = com.xinzhu.haunted.d.b("android.app.ActivityThread$ActivityClientRecord");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Field> f88366c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f88367d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static AtomicReference<Field> f88368e = new AtomicReference<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static boolean f88369f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static AtomicReference<Field> f88370g = new AtomicReference<>();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static boolean f88371h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static AtomicReference<Field> f88372i = new AtomicReference<>();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static boolean f88373j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static AtomicReference<Field> f88374k = new AtomicReference<>();

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static boolean f88375l = false;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static AtomicReference<Field> f88376m = new AtomicReference<>();

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static boolean f88377n = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f88378a;

        public a(Object obj) {
            this.f88378a = obj;
        }

        public boolean a() {
            if (f88366c.get() != null) {
                return true;
            }
            if (f88367d) {
                return false;
            }
            androidx.lifecycle.i.a(f88366c, null, com.xinzhu.haunted.d.f(f88365b, TTDownloadField.TT_ACTIVITY));
            f88367d = true;
            return f88366c.get() != null;
        }

        public boolean b() {
            if (f88372i.get() != null) {
                return true;
            }
            if (f88373j) {
                return false;
            }
            androidx.lifecycle.i.a(f88372i, null, com.xinzhu.haunted.d.f(f88365b, "activityInfo"));
            f88373j = true;
            return f88372i.get() != null;
        }

        public boolean c() {
            if (f88374k.get() != null) {
                return true;
            }
            if (f88375l) {
                return false;
            }
            androidx.lifecycle.i.a(f88374k, null, com.xinzhu.haunted.d.f(f88365b, "compatInfo"));
            f88375l = true;
            return f88374k.get() != null;
        }

        public boolean d() {
            if (f88368e.get() != null) {
                return true;
            }
            if (f88369f) {
                return false;
            }
            androidx.lifecycle.i.a(f88368e, null, com.xinzhu.haunted.d.f(f88365b, Constants.WS_MESSAGE_TYPE_INTENT));
            f88369f = true;
            return f88368e.get() != null;
        }

        public boolean e() {
            if (f88376m.get() != null) {
                return true;
            }
            if (f88377n) {
                return false;
            }
            androidx.lifecycle.i.a(f88376m, null, com.xinzhu.haunted.d.f(f88365b, "packageInfo"));
            f88377n = true;
            return f88376m.get() != null;
        }

        public boolean f() {
            if (f88370g.get() != null) {
                return true;
            }
            if (f88371h) {
                return false;
            }
            androidx.lifecycle.i.a(f88370g, null, com.xinzhu.haunted.d.f(f88365b, com.czhj.sdk.common.Constants.TOKEN));
            f88371h = true;
            return f88370g.get() != null;
        }

        public Activity g() {
            if (!a()) {
                return null;
            }
            try {
                return (Activity) f88366c.get().get(this.f88378a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public ActivityInfo h() {
            if (!b()) {
                return null;
            }
            try {
                return (ActivityInfo) f88372i.get().get(this.f88378a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public Object i() {
            if (!c()) {
                return null;
            }
            try {
                return f88374k.get().get(this.f88378a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public Intent j() {
            if (!d()) {
                return null;
            }
            try {
                return (Intent) f88368e.get().get(this.f88378a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public Object k() {
            if (!e()) {
                return null;
            }
            try {
                return f88376m.get().get(this.f88378a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public IBinder l() {
            if (!f()) {
                return null;
            }
            try {
                return (IBinder) f88370g.get().get(this.f88378a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public boolean m(Activity activity) {
            if (!a()) {
                return false;
            }
            try {
                f88366c.get().set(this.f88378a, activity);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean n(ActivityInfo activityInfo) {
            if (!b()) {
                return false;
            }
            try {
                f88372i.get().set(this.f88378a, activityInfo);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean o(Object obj) {
            if (!c()) {
                return false;
            }
            try {
                f88374k.get().set(this.f88378a, obj);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean p(Intent intent) {
            if (!d()) {
                return false;
            }
            try {
                f88368e.get().set(this.f88378a, intent);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean q(Object obj) {
            if (!e()) {
                return false;
            }
            try {
                f88376m.get().set(this.f88378a, obj);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean r(IBinder iBinder) {
            if (!f()) {
                return false;
            }
            try {
                f88370g.get().set(this.f88378a, iBinder);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        private a() {
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f88379b = com.xinzhu.haunted.d.b("android.app.ActivityThread$AppBindData");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Field> f88380c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f88381d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static AtomicReference<Field> f88382e = new AtomicReference<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static boolean f88383f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static AtomicReference<Field> f88384g = new AtomicReference<>();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static boolean f88385h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static AtomicReference<Field> f88386i = new AtomicReference<>();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static boolean f88387j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static AtomicReference<Field> f88388k = new AtomicReference<>();

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static boolean f88389l = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f88390a;

        public b(Object obj) {
            this.f88390a = obj;
        }

        public boolean a() {
            if (f88382e.get() != null) {
                return true;
            }
            if (f88383f) {
                return false;
            }
            androidx.lifecycle.i.a(f88382e, null, com.xinzhu.haunted.d.f(f88379b, "appInfo"));
            f88383f = true;
            return f88382e.get() != null;
        }

        public boolean b() {
            if (f88384g.get() != null) {
                return true;
            }
            if (f88385h) {
                return false;
            }
            androidx.lifecycle.i.a(f88384g, null, com.xinzhu.haunted.d.f(f88379b, PapayPayDetialActivity_.INFO_EXTRA));
            f88385h = true;
            return f88384g.get() != null;
        }

        public boolean c() {
            if (f88380c.get() != null) {
                return true;
            }
            if (f88381d) {
                return false;
            }
            androidx.lifecycle.i.a(f88380c, null, com.xinzhu.haunted.d.f(f88379b, "instrumentationName"));
            f88381d = true;
            return f88380c.get() != null;
        }

        public boolean d() {
            if (f88386i.get() != null) {
                return true;
            }
            if (f88387j) {
                return false;
            }
            androidx.lifecycle.i.a(f88386i, null, com.xinzhu.haunted.d.f(f88379b, "processName"));
            f88387j = true;
            return f88386i.get() != null;
        }

        public boolean e() {
            if (f88388k.get() != null) {
                return true;
            }
            if (f88389l) {
                return false;
            }
            androidx.lifecycle.i.a(f88388k, null, com.xinzhu.haunted.d.f(f88379b, "providers"));
            f88389l = true;
            return f88388k.get() != null;
        }

        public ApplicationInfo f() {
            if (!a()) {
                return null;
            }
            try {
                return (ApplicationInfo) f88382e.get().get(this.f88390a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public Object g() {
            if (!b()) {
                return null;
            }
            try {
                return f88384g.get().get(this.f88390a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public ComponentName h() {
            if (!c()) {
                return null;
            }
            try {
                return (ComponentName) f88380c.get().get(this.f88390a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public String i() {
            if (!d()) {
                return null;
            }
            try {
                return (String) f88386i.get().get(this.f88390a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public List<ProviderInfo> j() {
            if (!e()) {
                return null;
            }
            try {
                return (List) f88388k.get().get(this.f88390a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public boolean k(ApplicationInfo applicationInfo) {
            if (!a()) {
                return false;
            }
            try {
                f88382e.get().set(this.f88390a, applicationInfo);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean l(Object obj) {
            if (!b()) {
                return false;
            }
            try {
                f88384g.get().set(this.f88390a, obj);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean m(ComponentName componentName) {
            if (!c()) {
                return false;
            }
            try {
                f88380c.get().set(this.f88390a, componentName);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean n(String str) {
            if (!d()) {
                return false;
            }
            try {
                f88386i.get().set(this.f88390a, str);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean o(List<ProviderInfo> list) {
            if (!e()) {
                return false;
            }
            try {
                f88388k.get().set(this.f88390a, list);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        private b() {
        }
    }

    public static final class e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f88399b = com.xinzhu.haunted.d.b("android.app.ActivityThread$ProviderClientRecord");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Field> f88400c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f88401d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static AtomicReference<Field> f88402e = new AtomicReference<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static boolean f88403f = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f88404a;

        public e(Object obj) {
            this.f88404a = obj;
        }

        public boolean a() {
            if (f88400c.get() != null) {
                return true;
            }
            if (f88401d) {
                return false;
            }
            androidx.lifecycle.i.a(f88400c, null, com.xinzhu.haunted.d.f(f88399b, "mNames"));
            f88401d = true;
            return f88400c.get() != null;
        }

        public boolean b() {
            if (f88402e.get() != null) {
                return true;
            }
            if (f88403f) {
                return false;
            }
            androidx.lifecycle.i.a(f88402e, null, com.xinzhu.haunted.d.f(f88399b, "mProvider"));
            f88403f = true;
            return f88402e.get() != null;
        }

        public String[] c() {
            if (!a()) {
                return null;
            }
            try {
                return (String[]) f88400c.get().get(this.f88404a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public IInterface d() {
            if (!b()) {
                return null;
            }
            try {
                return (IInterface) f88402e.get().get(this.f88404a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public boolean e(String[] strArr) {
            if (!a()) {
                return false;
            }
            try {
                f88400c.get().set(this.f88404a, strArr);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean f(IInterface iInterface) {
            if (!b()) {
                return false;
            }
            try {
                f88402e.get().set(this.f88404a, iInterface);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        private e() {
        }
    }

    private g() {
    }
}
