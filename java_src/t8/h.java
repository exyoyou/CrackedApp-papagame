package t8;

import android.content.ContentResolver;
import android.content.Intent;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97215b = "h";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97240a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97216c = com.xinzhu.haunted.d.a(ContentResolver.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f97217d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97218e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f97219f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f97220g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Field> f97221h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f97222i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Field> f97223j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f97224k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static AtomicReference<Field> f97225l = new AtomicReference<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f97226m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static AtomicReference<Field> f97227n = new AtomicReference<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f97228o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static AtomicReference<Field> f97229p = new AtomicReference<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static boolean f97230q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static AtomicReference<Field> f97231r = new AtomicReference<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static boolean f97232s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static AtomicReference<Field> f97233t = new AtomicReference<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static boolean f97234u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static AtomicReference<Field> f97235v = new AtomicReference<>();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static boolean f97236w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static AtomicReference<Field> f97237x = new AtomicReference<>();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static boolean f97238y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static AtomicReference<Field> f97239z = new AtomicReference<>();
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
    private static AtomicReference<Method> T = new AtomicReference<>();
    private static boolean U = false;

    public h(Object obj) {
        this.f97240a = obj;
    }

    public static int A() {
        if (!e()) {
            return 0;
        }
        try {
            return ((Integer) f97233t.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int B() {
        if (!f()) {
            return 0;
        }
        try {
            return ((Integer) f97239z.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int C() {
        if (!g()) {
            return 0;
        }
        try {
            return ((Integer) f97229p.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int D() {
        if (!h()) {
            return 0;
        }
        try {
            return ((Integer) f97231r.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int E() {
        if (!i()) {
            return 0;
        }
        try {
            return ((Integer) f97225l.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int F() {
        if (!j()) {
            return 0;
        }
        try {
            return ((Integer) f97235v.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int G() {
        if (!k()) {
            return 0;
        }
        try {
            return ((Integer) f97237x.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int H() {
        if (!l()) {
            return 0;
        }
        try {
            return ((Integer) f97217d.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int I() {
        if (!m()) {
            return 0;
        }
        try {
            return ((Integer) f97221h.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int J() {
        if (!n()) {
            return 0;
        }
        try {
            return ((Integer) f97219f.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static String K() {
        if (!o()) {
            return null;
        }
        try {
            return (String) f97223j.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String L() {
        if (!p()) {
            return null;
        }
        try {
            return (String) D.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String M() {
        if (!q()) {
            return null;
        }
        try {
            return (String) B.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String N() {
        if (!r()) {
            return null;
        }
        try {
            return (String) F.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static int O() {
        if (!s()) {
            return 0;
        }
        try {
            return ((Integer) P.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static String P() {
        if (!t()) {
            return null;
        }
        try {
            return (String) H.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean R(Intent intent) {
        if (!a()) {
            return false;
        }
        try {
            N.get().set(null, intent);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean S(String str) {
        if (!b()) {
            return false;
        }
        try {
            J.get().set(null, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean T(int i10) {
        if (!c()) {
            return false;
        }
        try {
            L.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean U(int i10) {
        if (!d()) {
            return false;
        }
        try {
            f97227n.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean V(int i10) {
        if (!e()) {
            return false;
        }
        try {
            f97233t.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean W(int i10) {
        if (!f()) {
            return false;
        }
        try {
            f97239z.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean X(int i10) {
        if (!g()) {
            return false;
        }
        try {
            f97229p.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean Y(int i10) {
        if (!h()) {
            return false;
        }
        try {
            f97231r.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean Z(int i10) {
        if (!i()) {
            return false;
        }
        try {
            f97225l.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean a() {
        if (N.get() != null) {
            return true;
        }
        if (O) {
            return false;
        }
        androidx.lifecycle.i.a(N, null, com.xinzhu.haunted.d.f(f97216c, "ACTION_SYNC_CONN_STATUS_CHANGED"));
        O = true;
        return N.get() != null;
    }

    public static boolean a0(int i10) {
        if (!j()) {
            return false;
        }
        try {
            f97235v.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean b() {
        if (J.get() != null) {
            return true;
        }
        if (K) {
            return false;
        }
        androidx.lifecycle.i.a(J, null, com.xinzhu.haunted.d.f(f97216c, "CONTENT_SERVICE_NAME"));
        K = true;
        return J.get() != null;
    }

    public static boolean b0(int i10) {
        if (!k()) {
            return false;
        }
        try {
            f97237x.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean c() {
        if (L.get() != null) {
            return true;
        }
        if (M) {
            return false;
        }
        androidx.lifecycle.i.a(L, null, com.xinzhu.haunted.d.f(f97216c, "NOTIFY_NO_DELAY"));
        M = true;
        return L.get() != null;
    }

    public static boolean c0(int i10) {
        if (!l()) {
            return false;
        }
        try {
            f97217d.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean d() {
        if (f97227n.get() != null) {
            return true;
        }
        if (f97228o) {
            return false;
        }
        androidx.lifecycle.i.a(f97227n, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_ERROR_AUTHENTICATION"));
        f97228o = true;
        return f97227n.get() != null;
    }

    public static boolean d0(int i10) {
        if (!m()) {
            return false;
        }
        try {
            f97221h.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean e() {
        if (f97233t.get() != null) {
            return true;
        }
        if (f97234u) {
            return false;
        }
        androidx.lifecycle.i.a(f97233t, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_ERROR_CONFLICT"));
        f97234u = true;
        return f97233t.get() != null;
    }

    public static boolean e0(int i10) {
        if (!n()) {
            return false;
        }
        try {
            f97219f.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean f() {
        if (f97239z.get() != null) {
            return true;
        }
        if (A) {
            return false;
        }
        androidx.lifecycle.i.a(f97239z, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_ERROR_INTERNAL"));
        A = true;
        return f97239z.get() != null;
    }

    public static boolean f0(String str) {
        if (!o()) {
            return false;
        }
        try {
            f97223j.get().set(null, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean g() {
        if (f97229p.get() != null) {
            return true;
        }
        if (f97230q) {
            return false;
        }
        androidx.lifecycle.i.a(f97229p, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_ERROR_IO"));
        f97230q = true;
        return f97229p.get() != null;
    }

    public static boolean g0(String str) {
        if (!p()) {
            return false;
        }
        try {
            D.get().set(null, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean h() {
        if (f97231r.get() != null) {
            return true;
        }
        if (f97232s) {
            return false;
        }
        androidx.lifecycle.i.a(f97231r, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_ERROR_PARSE"));
        f97232s = true;
        return f97231r.get() != null;
    }

    public static boolean h0(String str) {
        if (!q()) {
            return false;
        }
        try {
            B.get().set(null, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean i() {
        if (f97225l.get() != null) {
            return true;
        }
        if (f97226m) {
            return false;
        }
        androidx.lifecycle.i.a(f97225l, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_ERROR_SYNC_ALREADY_IN_PROGRESS"));
        f97226m = true;
        return f97225l.get() != null;
    }

    public static boolean i0(String str) {
        if (!r()) {
            return false;
        }
        try {
            F.get().set(null, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean j() {
        if (f97235v.get() != null) {
            return true;
        }
        if (f97236w) {
            return false;
        }
        androidx.lifecycle.i.a(f97235v, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_ERROR_TOO_MANY_DELETIONS"));
        f97236w = true;
        return f97235v.get() != null;
    }

    public static boolean j0(int i10) {
        if (!s()) {
            return false;
        }
        try {
            P.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean k() {
        if (f97237x.get() != null) {
            return true;
        }
        if (f97238y) {
            return false;
        }
        androidx.lifecycle.i.a(f97237x, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_ERROR_TOO_MANY_RETRIES"));
        f97238y = true;
        return f97237x.get() != null;
    }

    public static boolean k0(String str) {
        if (!t()) {
            return false;
        }
        try {
            H.get().set(null, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean l() {
        if (f97217d.get() != null) {
            return true;
        }
        if (f97218e) {
            return false;
        }
        androidx.lifecycle.i.a(f97217d, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_EXEMPTION_NONE"));
        f97218e = true;
        return f97217d.get() != null;
    }

    public static boolean m() {
        if (f97221h.get() != null) {
            return true;
        }
        if (f97222i) {
            return false;
        }
        androidx.lifecycle.i.a(f97221h, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_EXEMPTION_PROMOTE_BUCKET"));
        f97222i = true;
        return f97221h.get() != null;
    }

    public static String m0(int i10) {
        if (!v(i10)) {
            return null;
        }
        try {
            return (String) T.get().invoke(null, Integer.valueOf(i10));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static boolean n() {
        if (f97219f.get() != null) {
            return true;
        }
        if (f97220g) {
            return false;
        }
        androidx.lifecycle.i.a(f97219f, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_EXEMPTION_PROMOTE_BUCKET_WITH_TEMP"));
        f97220g = true;
        return f97219f.get() != null;
    }

    public static boolean o() {
        if (f97223j.get() != null) {
            return true;
        }
        if (f97224k) {
            return false;
        }
        androidx.lifecycle.i.a(f97223j, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_EXTRAS_DISALLOW_METERED"));
        f97224k = true;
        return f97223j.get() != null;
    }

    public static boolean p() {
        if (D.get() != null) {
            return true;
        }
        if (E) {
            return false;
        }
        androidx.lifecycle.i.a(D, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_EXTRAS_EXPECTED_DOWNLOAD"));
        E = true;
        return D.get() != null;
    }

    public static boolean q() {
        if (B.get() != null) {
            return true;
        }
        if (C) {
            return false;
        }
        androidx.lifecycle.i.a(B, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_EXTRAS_EXPECTED_UPLOAD"));
        C = true;
        return B.get() != null;
    }

    public static boolean r() {
        if (F.get() != null) {
            return true;
        }
        if (G) {
            return false;
        }
        androidx.lifecycle.i.a(F, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_EXTRAS_PRIORITY"));
        G = true;
        return F.get() != null;
    }

    public static boolean s() {
        if (P.get() != null) {
            return true;
        }
        if (Q) {
            return false;
        }
        androidx.lifecycle.i.a(P, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_OBSERVER_TYPE_STATUS"));
        Q = true;
        return P.get() != null;
    }

    public static boolean t() {
        if (H.get() != null) {
            return true;
        }
        if (I) {
            return false;
        }
        androidx.lifecycle.i.a(H, null, com.xinzhu.haunted.d.f(f97216c, "SYNC_VIRTUAL_EXTRAS_EXEMPTION_FLAG"));
        I = true;
        return H.get() != null;
    }

    public static boolean v(int i10) {
        if (T.get() != null) {
            return true;
        }
        if (U) {
            return false;
        }
        androidx.lifecycle.i.a(T, null, com.xinzhu.haunted.d.g(f97216c, "syncErrorToString", Integer.TYPE));
        U = true;
        return T.get() != null;
    }

    public static Intent w() {
        if (!a()) {
            return null;
        }
        try {
            return (Intent) N.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String x() {
        if (!b()) {
            return null;
        }
        try {
            return (String) J.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static int y() {
        if (!c()) {
            return 0;
        }
        try {
            return ((Integer) L.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int z() {
        if (!d()) {
            return 0;
        }
        try {
            return ((Integer) f97227n.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public String Q() {
        if (!u()) {
            return null;
        }
        try {
            return (String) R.get().get(this.f97240a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean l0(String str) {
        if (!u()) {
            return false;
        }
        try {
            R.get().set(this.f97240a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean u() {
        if (R.get() != null) {
            return true;
        }
        if (S) {
            return false;
        }
        androidx.lifecycle.i.a(R, null, com.xinzhu.haunted.d.f(f97216c, "mPackageName"));
        S = true;
        return R.get() != null;
    }

    private h() {
    }
}
