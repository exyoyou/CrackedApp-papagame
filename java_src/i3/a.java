package i3;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f91471a = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f91472b = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f91473c = 4;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f91474d = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f91475e = 6;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f91476f = 7;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static c f91477g = b.k();

    private static String A(Class<?> clazz) {
        return clazz.getSimpleName();
    }

    public static void B(Class<?> cls, String msg) {
        if (f91477g.h(4)) {
            f91477g.i(A(cls), msg);
        }
    }

    public static void C(Class<?> cls, String msg, Object arg1) {
        if (f91477g.h(4)) {
            f91477g.i(A(cls), y(msg, arg1));
        }
    }

    public static void D(Class<?> cls, String msg, Object arg1, Object arg2) {
        if (f91477g.h(4)) {
            f91477g.i(A(cls), y(msg, arg1, arg2));
        }
    }

    public static void E(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3) {
        if (f91477g.h(4)) {
            f91477g.i(A(cls), y(msg, arg1, arg2, arg3));
        }
    }

    public static void F(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (f91477g.h(4)) {
            f91477g.i(A(cls), y(msg, arg1, arg2, arg3, arg4));
        }
    }

    public static void G(Class<?> cls, String msg, Throwable tr) {
        if (f91477g.h(4)) {
            f91477g.j(A(cls), msg, tr);
        }
    }

    public static void H(Class<?> cls, String msg, Object... args) {
        if (f91477g.h(4)) {
            f91477g.i(A(cls), y(msg, args));
        }
    }

    public static void I(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (R(4)) {
            f91477g.j(A(cls), y(msg, args), tr);
        }
    }

    public static void J(String tag, String msg) {
        if (f91477g.h(4)) {
            f91477g.i(tag, msg);
        }
    }

    public static void K(String tag, String msg, Object arg1) {
        if (f91477g.h(4)) {
            f91477g.i(tag, y(msg, arg1));
        }
    }

    public static void L(String tag, String msg, Object arg1, Object arg2) {
        if (f91477g.h(4)) {
            f91477g.i(tag, y(msg, arg1, arg2));
        }
    }

    public static void M(String tag, String msg, Object arg1, Object arg2, Object arg3) {
        if (f91477g.h(4)) {
            f91477g.i(tag, y(msg, arg1, arg2, arg3));
        }
    }

    public static void N(String tag, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (f91477g.h(4)) {
            f91477g.i(tag, y(msg, arg1, arg2, arg3, arg4));
        }
    }

    public static void O(String tag, String msg, Throwable tr) {
        if (f91477g.h(4)) {
            f91477g.j(tag, msg, tr);
        }
    }

    public static void P(String tag, String msg, Object... args) {
        if (f91477g.h(4)) {
            f91477g.i(tag, y(msg, args));
        }
    }

    public static void Q(String tag, Throwable tr, String msg, Object... args) {
        if (f91477g.h(4)) {
            f91477g.j(tag, y(msg, args), tr);
        }
    }

    public static boolean R(int level) {
        return f91477g.h(level);
    }

    public static void S(c delegate) {
        if (delegate == null) {
            throw new IllegalArgumentException();
        }
        f91477g = delegate;
    }

    public static void T(int level) {
        f91477g.i(level);
    }

    public static void U(Class<?> cls, String msg) {
        if (f91477g.h(2)) {
            f91477g.v(A(cls), msg);
        }
    }

    public static void V(Class<?> cls, String msg, Object arg1) {
        if (f91477g.h(2)) {
            f91477g.v(A(cls), y(msg, arg1));
        }
    }

    public static void W(Class<?> cls, String msg, Object arg1, Object arg2) {
        if (f91477g.h(2)) {
            f91477g.v(A(cls), y(msg, arg1, arg2));
        }
    }

    public static void X(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3) {
        if (R(2)) {
            U(cls, y(msg, arg1, arg2, arg3));
        }
    }

    public static void Y(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (f91477g.h(2)) {
            f91477g.v(A(cls), y(msg, arg1, arg2, arg3, arg4));
        }
    }

    public static void Z(Class<?> cls, String msg, Throwable tr) {
        if (f91477g.h(2)) {
            f91477g.d(A(cls), msg, tr);
        }
    }

    public static void a(Class<?> cls, String msg) {
        if (f91477g.h(3)) {
            f91477g.d(A(cls), msg);
        }
    }

    public static void a0(Class<?> cls, String msg, Object... args) {
        if (f91477g.h(2)) {
            f91477g.v(A(cls), y(msg, args));
        }
    }

    public static void b(Class<?> cls, String msg, Object arg1) {
        if (f91477g.h(3)) {
            f91477g.d(A(cls), y(msg, arg1));
        }
    }

    public static void b0(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (f91477g.h(2)) {
            f91477g.d(A(cls), y(msg, args), tr);
        }
    }

    public static void c(Class<?> cls, String msg, Object arg1, Object arg2) {
        if (f91477g.h(3)) {
            f91477g.d(A(cls), y(msg, arg1, arg2));
        }
    }

    public static void c0(String tag, String msg) {
        if (f91477g.h(2)) {
            f91477g.v(tag, msg);
        }
    }

    public static void d(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3) {
        if (f91477g.h(3)) {
            f91477g.d(A(cls), y(msg, arg1, arg2, arg3));
        }
    }

    public static void d0(String tag, String msg, Object arg1) {
        if (f91477g.h(2)) {
            f91477g.v(tag, y(msg, arg1));
        }
    }

    public static void e(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (f91477g.h(3)) {
            f91477g.d(A(cls), y(msg, arg1, arg2, arg3, arg4));
        }
    }

    public static void e0(String tag, String msg, Object arg1, Object arg2) {
        if (f91477g.h(2)) {
            f91477g.v(tag, y(msg, arg1, arg2));
        }
    }

    public static void f(Class<?> cls, String msg, Throwable tr) {
        if (f91477g.h(3)) {
            f91477g.f(A(cls), msg, tr);
        }
    }

    public static void f0(String tag, String msg, Object arg1, Object arg2, Object arg3) {
        if (f91477g.h(2)) {
            f91477g.v(tag, y(msg, arg1, arg2, arg3));
        }
    }

    public static void g(Class<?> cls, String msg, Object... args) {
        if (f91477g.h(3)) {
            f91477g.d(A(cls), y(msg, args));
        }
    }

    public static void g0(String tag, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (f91477g.h(2)) {
            f91477g.v(tag, y(msg, arg1, arg2, arg3, arg4));
        }
    }

    public static void h(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (f91477g.h(3)) {
            f91477g.f(A(cls), y(msg, args), tr);
        }
    }

    public static void h0(String tag, String msg, Throwable tr) {
        if (f91477g.h(2)) {
            f91477g.d(tag, msg, tr);
        }
    }

    public static void i(String tag, String msg) {
        if (f91477g.h(3)) {
            f91477g.d(tag, msg);
        }
    }

    public static void i0(String tag, String msg, Object... args) {
        if (f91477g.h(2)) {
            f91477g.v(tag, y(msg, args));
        }
    }

    public static void j(String tag, String msg, Object arg1) {
        if (f91477g.h(3)) {
            f91477g.d(tag, y(msg, arg1));
        }
    }

    public static void j0(String tag, Throwable tr, String msg, Object... args) {
        if (f91477g.h(2)) {
            f91477g.d(tag, y(msg, args), tr);
        }
    }

    public static void k(String tag, String msg, Object arg1, Object arg2) {
        if (f91477g.h(3)) {
            f91477g.d(tag, y(msg, arg1, arg2));
        }
    }

    public static void k0(Class<?> cls, String msg) {
        if (f91477g.h(5)) {
            f91477g.w(A(cls), msg);
        }
    }

    public static void l(String tag, String msg, Object arg1, Object arg2, Object arg3) {
        if (f91477g.h(3)) {
            f91477g.d(tag, y(msg, arg1, arg2, arg3));
        }
    }

    public static void l0(Class<?> cls, String msg, Throwable tr) {
        if (f91477g.h(5)) {
            f91477g.w(A(cls), msg, tr);
        }
    }

    public static void m(String tag, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (f91477g.h(3)) {
            f91477g.d(tag, y(msg, arg1, arg2, arg3, arg4));
        }
    }

    public static void m0(Class<?> cls, String msg, Object... args) {
        if (f91477g.h(5)) {
            f91477g.w(A(cls), y(msg, args));
        }
    }

    public static void n(String tag, String msg, Throwable tr) {
        if (f91477g.h(3)) {
            f91477g.f(tag, msg, tr);
        }
    }

    public static void n0(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (R(5)) {
            l0(cls, y(msg, args), tr);
        }
    }

    public static void o(String tag, String msg, Object... args) {
        if (f91477g.h(3)) {
            i(tag, y(msg, args));
        }
    }

    public static void o0(String tag, String msg) {
        if (f91477g.h(5)) {
            f91477g.w(tag, msg);
        }
    }

    public static void p(String tag, Throwable tr, String msg, Object... args) {
        if (f91477g.h(3)) {
            n(tag, y(msg, args), tr);
        }
    }

    public static void p0(String tag, String msg, Throwable tr) {
        if (f91477g.h(5)) {
            f91477g.w(tag, msg, tr);
        }
    }

    public static void q(Class<?> cls, String msg) {
        if (f91477g.h(6)) {
            f91477g.e(A(cls), msg);
        }
    }

    public static void q0(String tag, String msg, Object... args) {
        if (f91477g.h(5)) {
            f91477g.w(tag, y(msg, args));
        }
    }

    public static void r(Class<?> cls, String msg, Throwable tr) {
        if (f91477g.h(6)) {
            f91477g.e(A(cls), msg, tr);
        }
    }

    public static void r0(String tag, Throwable tr, String msg, Object... args) {
        if (f91477g.h(5)) {
            f91477g.w(tag, y(msg, args), tr);
        }
    }

    public static void s(Class<?> cls, String msg, Object... args) {
        if (f91477g.h(6)) {
            f91477g.e(A(cls), y(msg, args));
        }
    }

    public static void s0(Class<?> cls, String msg) {
        if (f91477g.h(6)) {
            f91477g.b(A(cls), msg);
        }
    }

    public static void t(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (f91477g.h(6)) {
            f91477g.e(A(cls), y(msg, args), tr);
        }
    }

    public static void t0(Class<?> cls, String msg, Throwable tr) {
        if (f91477g.h(6)) {
            f91477g.g(A(cls), msg, tr);
        }
    }

    public static void u(String tag, String msg) {
        if (f91477g.h(6)) {
            f91477g.e(tag, msg);
        }
    }

    public static void u0(Class<?> cls, String msg, Object... args) {
        if (f91477g.h(6)) {
            f91477g.b(A(cls), y(msg, args));
        }
    }

    public static void v(String tag, String msg, Throwable tr) {
        if (f91477g.h(6)) {
            f91477g.e(tag, msg, tr);
        }
    }

    public static void v0(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (f91477g.h(6)) {
            f91477g.g(A(cls), y(msg, args), tr);
        }
    }

    public static void w(String tag, String msg, Object... args) {
        if (f91477g.h(6)) {
            f91477g.e(tag, y(msg, args));
        }
    }

    public static void w0(String tag, String msg) {
        if (f91477g.h(6)) {
            f91477g.b(tag, msg);
        }
    }

    public static void x(String tag, Throwable tr, String msg, Object... args) {
        if (f91477g.h(6)) {
            f91477g.e(tag, y(msg, args), tr);
        }
    }

    public static void x0(String tag, String msg, Throwable tr) {
        if (f91477g.h(6)) {
            f91477g.g(tag, msg, tr);
        }
    }

    private static String y(String str, Object... args) {
        return String.format(null, str, args);
    }

    public static void y0(String tag, String msg, Object... args) {
        if (f91477g.h(6)) {
            f91477g.b(tag, y(msg, args));
        }
    }

    public static int z() {
        return f91477g.a();
    }

    public static void z0(String tag, Throwable tr, String msg, Object... args) {
        if (f91477g.h(6)) {
            f91477g.g(tag, y(msg, args), tr);
        }
    }
}
