package z6;

import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f97714a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f97715b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f97716c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f97717d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f97718e = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f97719f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f97720g;

    public static void a(String tag, String msg) {
    }

    public static void b(String tag, String msg, Throwable throwable) {
    }

    public static void c(String tag, String msg, Object... args) {
        if (f97720g <= 1 && args.length > 0) {
            String.format(msg, args);
        }
    }

    public static void d(String tag, String msg) {
    }

    public static void e(String tag, String msg, Throwable throwable) {
    }

    public static void f(String tag, String msg, Object... args) {
        if (f97720g <= 4 && args.length > 0) {
            String.format(msg, args);
        }
    }

    public static void g(String tag, String msg) {
        if (f97720g > 5) {
            return;
        }
        Log.wtf(tag, msg);
    }

    public static void h(String tag, String msg, Throwable throwable) {
        if (f97720g > 5) {
            return;
        }
        Log.wtf(tag, msg, throwable);
    }

    public static void i(String tag, String msg, Object... args) {
        if (f97720g > 5) {
            return;
        }
        if (args.length > 0) {
            msg = String.format(msg, args);
        }
        Log.wtf(tag, msg);
    }

    public static void j(String tag, String msg) {
    }

    public static void k(String tag, String msg, Throwable throwable) {
    }

    public static void l(String tag, String msg, Object... args) {
        if (f97720g <= 2 && args.length > 0) {
            String.format(msg, args);
        }
    }

    public static void m(int level) {
        f97720g = level;
    }

    public static void n(String tag, String msg) {
    }

    public static void o(String tag, String msg, Throwable throwable) {
    }

    public static void p(String tag, String msg, Object... args) {
        if (f97720g <= 0 && args.length > 0) {
            String.format(msg, args);
        }
    }

    public static void q(String tag, String msg) {
    }

    public static void r(String tag, String msg, Throwable throwable) {
    }

    public static void s(String tag, String msg, Object... args) {
        if (f97720g <= 3 && args.length > 0) {
            String.format(msg, args);
        }
    }
}
