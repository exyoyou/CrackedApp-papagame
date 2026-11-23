package com.xinzhu.haunted.android.content.pm;

import android.content.pm.ApplicationInfo;
import android.content.pm.SharedLibraryInfo;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88684b = "b";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88734a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88686c = com.xinzhu.haunted.d.a(ApplicationInfo.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88688d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88690e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f88692f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88694g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Field> f88696h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f88698i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Field> f88700j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f88702k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static AtomicReference<Field> f88704l = new AtomicReference<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f88706m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static AtomicReference<Field> f88708n = new AtomicReference<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f88710o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static AtomicReference<Field> f88712p = new AtomicReference<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static boolean f88714q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static AtomicReference<Field> f88716r = new AtomicReference<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static boolean f88718s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static AtomicReference<Field> f88720t = new AtomicReference<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static boolean f88722u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static AtomicReference<Field> f88724v = new AtomicReference<>();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static boolean f88726w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static AtomicReference<Field> f88728x = new AtomicReference<>();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static boolean f88730y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static AtomicReference<Field> f88732z = new AtomicReference<>();
    private static boolean A = false;
    private static AtomicReference<Field> B = new AtomicReference<>();
    private static boolean C = false;
    private static AtomicReference<Field> D = new AtomicReference<>();
    private static boolean E = false;
    private static AtomicReference<Field> F = new AtomicReference<>();
    private static boolean G = false;
    private static AtomicReference<Field> H = new AtomicReference<>();
    private static boolean I = false;
    private static AtomicReference<Field> J = new AtomicReference<>();
    private static boolean K = false;
    private static AtomicReference<Field> L = new AtomicReference<>();
    private static boolean M = false;
    private static AtomicReference<Field> N = new AtomicReference<>();
    private static boolean O = false;
    private static AtomicReference<Field> P = new AtomicReference<>();
    private static boolean Q = false;
    private static AtomicReference<Field> R = new AtomicReference<>();
    private static boolean S = false;
    private static AtomicReference<Field> T = new AtomicReference<>();
    private static boolean U = false;
    private static AtomicReference<Field> V = new AtomicReference<>();
    private static boolean W = false;
    private static AtomicReference<Field> X = new AtomicReference<>();
    private static boolean Y = false;
    private static AtomicReference<Field> Z = new AtomicReference<>();

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static boolean f88683a0 = false;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static AtomicReference<Field> f88685b0 = new AtomicReference<>();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static boolean f88687c0 = false;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static AtomicReference<Field> f88689d0 = new AtomicReference<>();

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static boolean f88691e0 = false;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private static AtomicReference<Field> f88693f0 = new AtomicReference<>();

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private static boolean f88695g0 = false;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private static AtomicReference<Field> f88697h0 = new AtomicReference<>();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private static boolean f88699i0 = false;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private static AtomicReference<Field> f88701j0 = new AtomicReference<>();

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private static boolean f88703k0 = false;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private static AtomicReference<Field> f88705l0 = new AtomicReference<>();

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private static boolean f88707m0 = false;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private static AtomicReference<Field> f88709n0 = new AtomicReference<>();

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private static boolean f88711o0 = false;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static AtomicReference<Field> f88713p0 = new AtomicReference<>();

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private static boolean f88715q0 = false;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private static AtomicReference<Field> f88717r0 = new AtomicReference<>();

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private static boolean f88719s0 = false;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private static AtomicReference<Field> f88721t0 = new AtomicReference<>();

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private static boolean f88723u0 = false;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private static AtomicReference<Field> f88725v0 = new AtomicReference<>();

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private static boolean f88727w0 = false;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private static AtomicReference<Field> f88729x0 = new AtomicReference<>();

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private static boolean f88731y0 = false;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private static AtomicReference<Field> f88733z0 = new AtomicReference<>();
    private static boolean A0 = false;
    private static AtomicReference<Field> B0 = new AtomicReference<>();
    private static boolean C0 = false;
    private static AtomicReference<Field> D0 = new AtomicReference<>();
    private static boolean E0 = false;
    private static AtomicReference<Field> F0 = new AtomicReference<>();
    private static boolean G0 = false;
    private static AtomicReference<Method> H0 = new AtomicReference<>();
    private static boolean I0 = false;

    public b(Object obj) {
        this.f88734a = obj;
    }

    public static boolean B() {
        if (F0.get() != null) {
            return true;
        }
        if (G0) {
            return false;
        }
        androidx.lifecycle.i.a(F0, null, com.xinzhu.haunted.d.f(f88686c, "sForBoolean"));
        G0 = true;
        return F0.get() != null;
    }

    public static boolean G0(int i10) {
        if (!a()) {
            return false;
        }
        try {
            f88692f.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static int Q() {
        if (!a()) {
            return 0;
        }
        try {
            return ((Integer) f88692f.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static boolean a() {
        if (f88692f.get() != null) {
            return true;
        }
        if (f88694g) {
            return false;
        }
        androidx.lifecycle.i.a(f88692f, null, com.xinzhu.haunted.d.f(f88686c, "PRIVATE_FLAG_PRIVILEGED"));
        f88694g = true;
        return f88692f.get() != null;
    }

    public static boolean h1(Object obj) {
        if (!B()) {
            return false;
        }
        try {
            F0.get().set(null, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static Object r0() {
        if (!B()) {
            return null;
        }
        try {
            return F0.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean A() {
        if (f88721t0.get() != null) {
            return true;
        }
        if (f88723u0) {
            return false;
        }
        androidx.lifecycle.i.a(f88721t0, null, com.xinzhu.haunted.d.f(f88686c, "roundIconRes"));
        f88723u0 = true;
        return f88721t0.get() != null;
    }

    public SparseArray<int[]> A0() {
        if (!K()) {
            return null;
        }
        try {
            return (SparseArray) L.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public int B0() {
        if (!L()) {
            return 0;
        }
        try {
            return ((Integer) f88697h0.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean C() {
        if (f88700j.get() != null) {
            return true;
        }
        if (f88702k) {
            return false;
        }
        androidx.lifecycle.i.a(f88700j, null, com.xinzhu.haunted.d.f(f88686c, "scanPublicSourceDir"));
        f88702k = true;
        return f88700j.get() != null;
    }

    public int C0() {
        if (!M()) {
            return 0;
        }
        try {
            return ((Integer) f88724v.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean D() {
        if (f88696h.get() != null) {
            return true;
        }
        if (f88698i) {
            return false;
        }
        androidx.lifecycle.i.a(f88696h, null, com.xinzhu.haunted.d.f(f88686c, "scanSourceDir"));
        f88698i = true;
        return f88696h.get() != null;
    }

    public String D0() {
        if (!N()) {
            return null;
        }
        try {
            return (String) J.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean E() {
        if (R.get() != null) {
            return true;
        }
        if (S) {
            return false;
        }
        androidx.lifecycle.i.a(R, null, com.xinzhu.haunted.d.f(f88686c, "seInfo"));
        S = true;
        return R.get() != null;
    }

    public String E0() {
        if (!O()) {
            return null;
        }
        try {
            return (String) f88713p0.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean F() {
        if (T.get() != null) {
            return true;
        }
        if (U) {
            return false;
        }
        androidx.lifecycle.i.a(T, null, com.xinzhu.haunted.d.f(f88686c, "seInfoUser"));
        U = true;
        return T.get() != null;
    }

    public void F0(long j10) {
        if (P(j10)) {
            try {
                H0.get().invoke(this.f88734a, Long.valueOf(j10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    public boolean G() {
        if (f88720t.get() != null) {
            return true;
        }
        if (f88722u) {
            return false;
        }
        androidx.lifecycle.i.a(f88720t, null, com.xinzhu.haunted.d.f(f88686c, "secondaryCpuAbi"));
        f88722u = true;
        return f88720t.get() != null;
    }

    public boolean H() {
        if (f88712p.get() != null) {
            return true;
        }
        if (f88714q) {
            return false;
        }
        androidx.lifecycle.i.a(f88712p, null, com.xinzhu.haunted.d.f(f88686c, "secondaryNativeLibraryDir"));
        f88714q = true;
        return f88712p.get() != null;
    }

    public boolean H0(String str) {
        if (!b()) {
            return false;
        }
        try {
            f88701j0.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean I() {
        if (F.get() != null) {
            return true;
        }
        if (G) {
            return false;
        }
        androidx.lifecycle.i.a(F, null, com.xinzhu.haunted.d.f(f88686c, "sharedLibraryInfos"));
        G = true;
        return F.get() != null;
    }

    public boolean I0(String str) {
        if (!c()) {
            return false;
        }
        try {
            f88732z.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean J() {
        if (f88705l0.get() != null) {
            return true;
        }
        if (f88707m0) {
            return false;
        }
        androidx.lifecycle.i.a(f88705l0, null, com.xinzhu.haunted.d.f(f88686c, "splitClassLoaderNames"));
        f88707m0 = true;
        return f88705l0.get() != null;
    }

    public boolean J0(String str) {
        if (!d()) {
            return false;
        }
        try {
            D.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean K() {
        if (L.get() != null) {
            return true;
        }
        if (M) {
            return false;
        }
        androidx.lifecycle.i.a(L, null, com.xinzhu.haunted.d.f(f88686c, "splitDependencies"));
        M = true;
        return L.get() != null;
    }

    public boolean K0(boolean z10) {
        if (!e()) {
            return false;
        }
        try {
            f88689d0.get().set(this.f88734a, Boolean.valueOf(z10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean L() {
        if (f88697h0.get() != null) {
            return true;
        }
        if (f88699i0) {
            return false;
        }
        androidx.lifecycle.i.a(f88697h0, null, com.xinzhu.haunted.d.f(f88686c, "targetSandboxVersion"));
        f88699i0 = true;
        return f88697h0.get() != null;
    }

    public boolean L0(int i10) {
        if (!f()) {
            return false;
        }
        try {
            f88685b0.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean M() {
        if (f88724v.get() != null) {
            return true;
        }
        if (f88726w) {
            return false;
        }
        androidx.lifecycle.i.a(f88724v, null, com.xinzhu.haunted.d.f(f88686c, "versionCode"));
        f88726w = true;
        return f88724v.get() != null;
    }

    public boolean M0(String str) {
        if (!g()) {
            return false;
        }
        try {
            f88728x.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean N() {
        if (J.get() != null) {
            return true;
        }
        if (K) {
            return false;
        }
        androidx.lifecycle.i.a(J, null, com.xinzhu.haunted.d.f(f88686c, "volumeUuid"));
        K = true;
        return J.get() != null;
    }

    public boolean N0(String str) {
        if (!h()) {
            return false;
        }
        try {
            B.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean O() {
        if (f88713p0.get() != null) {
            return true;
        }
        if (f88715q0) {
            return false;
        }
        androidx.lifecycle.i.a(f88713p0, null, com.xinzhu.haunted.d.f(f88686c, "zygotePreloadName"));
        f88715q0 = true;
        return f88713p0.get() != null;
    }

    public boolean O0(int i10) {
        if (!i()) {
            return false;
        }
        try {
            V.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean P(long j10) {
        if (H0.get() != null) {
            return true;
        }
        if (I0) {
            return false;
        }
        androidx.lifecycle.i.a(H0, null, com.xinzhu.haunted.d.g(f88686c, "setVersionCode", Long.TYPE));
        I0 = true;
        return H0.get() != null;
    }

    public boolean P0(int i10) {
        if (!j()) {
            return false;
        }
        try {
            Z.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean Q0(int i10) {
        if (!k()) {
            return false;
        }
        try {
            f88729x0.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public String R() {
        if (!b()) {
            return null;
        }
        try {
            return (String) f88701j0.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean R0(boolean z10) {
        if (!l()) {
            return false;
        }
        try {
            f88709n0.get().set(this.f88734a, Boolean.valueOf(z10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public String S() {
        if (!c()) {
            return null;
        }
        try {
            return (String) f88732z.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean S0(int i10) {
        if (!m()) {
            return false;
        }
        try {
            f88717r0.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public String T() {
        if (!d()) {
            return null;
        }
        try {
            return (String) D.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean T0(int i10) {
        if (!n()) {
            return false;
        }
        try {
            X.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean U() {
        if (!e()) {
            return false;
        }
        try {
            return ((Boolean) f88689d0.get().get(this.f88734a)).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean U0(int i10) {
        if (!o()) {
            return false;
        }
        try {
            f88725v0.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public int V() {
        if (!f()) {
            return 0;
        }
        try {
            return ((Integer) f88685b0.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean V0(int i10) {
        if (!p()) {
            return false;
        }
        try {
            f88733z0.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public String W() {
        if (!g()) {
            return null;
        }
        try {
            return (String) f88728x.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean W0(int i10) {
        if (!q()) {
            return false;
        }
        try {
            B0.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public String X() {
        if (!h()) {
            return null;
        }
        try {
            return (String) B.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean X0(String str) {
        if (!r()) {
            return false;
        }
        try {
            f88708n.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public int Y() {
        if (!i()) {
            return 0;
        }
        try {
            return ((Integer) V.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean Y0(boolean z10) {
        if (!s()) {
            return false;
        }
        try {
            f88704l.get().set(this.f88734a, Boolean.valueOf(z10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public int Z() {
        if (!j()) {
            return 0;
        }
        try {
            return ((Integer) Z.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean Z0(int i10) {
        if (!t()) {
            return false;
        }
        try {
            f88693f0.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public int a0() {
        if (!k()) {
            return 0;
        }
        try {
            return ((Integer) f88729x0.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean a1(String[] strArr) {
        if (!u()) {
            return false;
        }
        try {
            P.get().set(this.f88734a, strArr);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean b() {
        if (f88701j0.get() != null) {
            return true;
        }
        if (f88703k0) {
            return false;
        }
        androidx.lifecycle.i.a(f88701j0, null, com.xinzhu.haunted.d.f(f88686c, "classLoaderName"));
        f88703k0 = true;
        return f88701j0.get() != null;
    }

    public boolean b0() {
        if (!l()) {
            return false;
        }
        try {
            return ((Boolean) f88709n0.get().get(this.f88734a)).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean b1(String str) {
        if (!v()) {
            return false;
        }
        try {
            f88716r.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean c() {
        if (f88732z.get() != null) {
            return true;
        }
        if (A) {
            return false;
        }
        androidx.lifecycle.i.a(f88732z, null, com.xinzhu.haunted.d.f(f88686c, "credentialEncryptedDataDir"));
        A = true;
        return f88732z.get() != null;
    }

    public int c0() {
        if (!m()) {
            return 0;
        }
        try {
            return ((Integer) f88717r0.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean c1(int i10) {
        if (!w()) {
            return false;
        }
        try {
            f88688d.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean d() {
        if (D.get() != null) {
            return true;
        }
        if (E) {
            return false;
        }
        androidx.lifecycle.i.a(D, null, com.xinzhu.haunted.d.f(f88686c, "credentialProtectedDataDir"));
        E = true;
        return D.get() != null;
    }

    public int d0() {
        if (!n()) {
            return 0;
        }
        try {
            return ((Integer) X.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean d1(int i10) {
        if (!x()) {
            return false;
        }
        try {
            H.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean e() {
        if (f88689d0.get() != null) {
            return true;
        }
        if (f88691e0) {
            return false;
        }
        androidx.lifecycle.i.a(f88689d0, null, com.xinzhu.haunted.d.f(f88686c, "crossProfile"));
        f88691e0 = true;
        return f88689d0.get() != null;
    }

    public int e0() {
        if (!o()) {
            return 0;
        }
        try {
            return ((Integer) f88725v0.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean e1(Boolean bool) {
        if (!y()) {
            return false;
        }
        try {
            D0.get().set(this.f88734a, bool);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean f() {
        if (f88685b0.get() != null) {
            return true;
        }
        if (f88687c0) {
            return false;
        }
        androidx.lifecycle.i.a(f88685b0, null, com.xinzhu.haunted.d.f(f88686c, "dataExtractionRulesRes"));
        f88687c0 = true;
        return f88685b0.get() != null;
    }

    public int f0() {
        if (!p()) {
            return 0;
        }
        try {
            return ((Integer) f88733z0.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean f1(String[] strArr) {
        if (!z()) {
            return false;
        }
        try {
            N.get().set(this.f88734a, strArr);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean g() {
        if (f88728x.get() != null) {
            return true;
        }
        if (f88730y) {
            return false;
        }
        androidx.lifecycle.i.a(f88728x, null, com.xinzhu.haunted.d.f(f88686c, "deviceEncryptedDataDir"));
        f88730y = true;
        return f88728x.get() != null;
    }

    public int g0() {
        if (!q()) {
            return 0;
        }
        try {
            return ((Integer) B0.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean g1(int i10) {
        if (!A()) {
            return false;
        }
        try {
            f88721t0.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean h() {
        if (B.get() != null) {
            return true;
        }
        if (C) {
            return false;
        }
        androidx.lifecycle.i.a(B, null, com.xinzhu.haunted.d.f(f88686c, "deviceProtectedDataDir"));
        C = true;
        return B.get() != null;
    }

    public String h0() {
        if (!r()) {
            return null;
        }
        try {
            return (String) f88708n.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean i() {
        if (V.get() != null) {
            return true;
        }
        if (W) {
            return false;
        }
        androidx.lifecycle.i.a(V, null, com.xinzhu.haunted.d.f(f88686c, "enabledSetting"));
        W = true;
        return V.get() != null;
    }

    public boolean i0() {
        if (!s()) {
            return false;
        }
        try {
            return ((Boolean) f88704l.get().get(this.f88734a)).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean i1(String str) {
        if (!C()) {
            return false;
        }
        try {
            f88700j.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean j() {
        if (Z.get() != null) {
            return true;
        }
        if (f88683a0) {
            return false;
        }
        androidx.lifecycle.i.a(Z, null, com.xinzhu.haunted.d.f(f88686c, "fullBackupContent"));
        f88683a0 = true;
        return Z.get() != null;
    }

    public int j0() {
        if (!t()) {
            return 0;
        }
        try {
            return ((Integer) f88693f0.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean j1(String str) {
        if (!D()) {
            return false;
        }
        try {
            f88696h.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean k() {
        if (f88729x0.get() != null) {
            return true;
        }
        if (f88731y0) {
            return false;
        }
        androidx.lifecycle.i.a(f88729x0, null, com.xinzhu.haunted.d.f(f88686c, "gwpAsanMode"));
        f88731y0 = true;
        return f88729x0.get() != null;
    }

    public String[] k0() {
        if (!u()) {
            return null;
        }
        try {
            return (String[]) P.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean k1(String str) {
        if (!E()) {
            return false;
        }
        try {
            R.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean l() {
        if (f88709n0.get() != null) {
            return true;
        }
        if (f88711o0) {
            return false;
        }
        androidx.lifecycle.i.a(f88709n0, null, com.xinzhu.haunted.d.f(f88686c, "hiddenUntilInstalled"));
        f88711o0 = true;
        return f88709n0.get() != null;
    }

    public String l0() {
        if (!v()) {
            return null;
        }
        try {
            return (String) f88716r.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean l1(String str) {
        if (!F()) {
            return false;
        }
        try {
            T.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean m() {
        if (f88717r0.get() != null) {
            return true;
        }
        if (f88719s0) {
            return false;
        }
        androidx.lifecycle.i.a(f88717r0, null, com.xinzhu.haunted.d.f(f88686c, "iconRes"));
        f88719s0 = true;
        return f88717r0.get() != null;
    }

    public int m0() {
        if (!w()) {
            return 0;
        }
        try {
            return ((Integer) f88688d.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean m1(String str) {
        if (!G()) {
            return false;
        }
        try {
            f88720t.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean n() {
        if (X.get() != null) {
            return true;
        }
        if (Y) {
            return false;
        }
        androidx.lifecycle.i.a(X, null, com.xinzhu.haunted.d.f(f88686c, "installLocation"));
        Y = true;
        return X.get() != null;
    }

    public int n0() {
        if (!x()) {
            return 0;
        }
        try {
            return ((Integer) H.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean n1(String str) {
        if (!H()) {
            return false;
        }
        try {
            f88712p.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean o() {
        if (f88725v0.get() != null) {
            return true;
        }
        if (f88727w0) {
            return false;
        }
        androidx.lifecycle.i.a(f88725v0, null, com.xinzhu.haunted.d.f(f88686c, "mHiddenApiPolicy"));
        f88727w0 = true;
        return f88725v0.get() != null;
    }

    public Boolean o0() {
        if (!y()) {
            return Boolean.FALSE;
        }
        try {
            return (Boolean) D0.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return Boolean.FALSE;
        }
    }

    public boolean o1(List<SharedLibraryInfo> list) {
        if (!I()) {
            return false;
        }
        try {
            F.get().set(this.f88734a, list);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean p() {
        if (f88733z0.get() != null) {
            return true;
        }
        if (A0) {
            return false;
        }
        androidx.lifecycle.i.a(f88733z0, null, com.xinzhu.haunted.d.f(f88686c, "memtagMode"));
        A0 = true;
        return f88733z0.get() != null;
    }

    public String[] p0() {
        if (!z()) {
            return null;
        }
        try {
            return (String[]) N.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean p1(String[] strArr) {
        if (!J()) {
            return false;
        }
        try {
            f88705l0.get().set(this.f88734a, strArr);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean q() {
        if (B0.get() != null) {
            return true;
        }
        if (C0) {
            return false;
        }
        androidx.lifecycle.i.a(B0, null, com.xinzhu.haunted.d.f(f88686c, "nativeHeapZeroInitialized"));
        C0 = true;
        return B0.get() != null;
    }

    public int q0() {
        if (!A()) {
            return 0;
        }
        try {
            return ((Integer) f88721t0.get().get(this.f88734a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean q1(SparseArray<int[]> sparseArray) {
        if (!K()) {
            return false;
        }
        try {
            L.get().set(this.f88734a, sparseArray);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean r() {
        if (f88708n.get() != null) {
            return true;
        }
        if (f88710o) {
            return false;
        }
        androidx.lifecycle.i.a(f88708n, null, com.xinzhu.haunted.d.f(f88686c, "nativeLibraryRootDir"));
        f88710o = true;
        return f88708n.get() != null;
    }

    public boolean r1(int i10) {
        if (!L()) {
            return false;
        }
        try {
            f88697h0.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean s() {
        if (f88704l.get() != null) {
            return true;
        }
        if (f88706m) {
            return false;
        }
        androidx.lifecycle.i.a(f88704l, null, com.xinzhu.haunted.d.f(f88686c, "nativeLibraryRootRequiresIsa"));
        f88706m = true;
        return f88704l.get() != null;
    }

    public String s0() {
        if (!C()) {
            return null;
        }
        try {
            return (String) f88700j.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean s1(int i10) {
        if (!M()) {
            return false;
        }
        try {
            f88724v.get().set(this.f88734a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean t() {
        if (f88693f0.get() != null) {
            return true;
        }
        if (f88695g0) {
            return false;
        }
        androidx.lifecycle.i.a(f88693f0, null, com.xinzhu.haunted.d.f(f88686c, "networkSecurityConfigRes"));
        f88695g0 = true;
        return f88693f0.get() != null;
    }

    public String t0() {
        if (!D()) {
            return null;
        }
        try {
            return (String) f88696h.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean t1(String str) {
        if (!N()) {
            return false;
        }
        try {
            J.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean u() {
        if (P.get() != null) {
            return true;
        }
        if (Q) {
            return false;
        }
        androidx.lifecycle.i.a(P, null, com.xinzhu.haunted.d.f(f88686c, "overlayPaths"));
        Q = true;
        return P.get() != null;
    }

    public String u0() {
        if (!E()) {
            return null;
        }
        try {
            return (String) R.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean u1(String str) {
        if (!O()) {
            return false;
        }
        try {
            f88713p0.get().set(this.f88734a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean v() {
        if (f88716r.get() != null) {
            return true;
        }
        if (f88718s) {
            return false;
        }
        androidx.lifecycle.i.a(f88716r, null, com.xinzhu.haunted.d.f(f88686c, "primaryCpuAbi"));
        f88718s = true;
        return f88716r.get() != null;
    }

    public String v0() {
        if (!F()) {
            return null;
        }
        try {
            return (String) T.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean w() {
        if (f88688d.get() != null) {
            return true;
        }
        if (f88690e) {
            return false;
        }
        androidx.lifecycle.i.a(f88688d, null, com.xinzhu.haunted.d.f(f88686c, "privateFlags"));
        f88690e = true;
        return f88688d.get() != null;
    }

    public String w0() {
        if (!G()) {
            return null;
        }
        try {
            return (String) f88720t.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean x() {
        if (H.get() != null) {
            return true;
        }
        if (I) {
            return false;
        }
        androidx.lifecycle.i.a(H, null, com.xinzhu.haunted.d.f(f88686c, "privateFlagsExt"));
        I = true;
        return H.get() != null;
    }

    public String x0() {
        if (!H()) {
            return null;
        }
        try {
            return (String) f88712p.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean y() {
        if (D0.get() != null) {
            return true;
        }
        if (E0) {
            return false;
        }
        androidx.lifecycle.i.a(D0, null, com.xinzhu.haunted.d.f(f88686c, "requestRawExternalStorageAccess"));
        E0 = true;
        return D0.get() != null;
    }

    public List<SharedLibraryInfo> y0() {
        if (!I()) {
            return null;
        }
        try {
            return (List) F.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean z() {
        if (N.get() != null) {
            return true;
        }
        if (O) {
            return false;
        }
        androidx.lifecycle.i.a(N, null, com.xinzhu.haunted.d.f(f88686c, "resourceDirs"));
        O = true;
        return N.get() != null;
    }

    public String[] z0() {
        if (!J()) {
            return null;
        }
        try {
            return (String[]) f88705l0.get().get(this.f88734a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private b() {
    }
}
