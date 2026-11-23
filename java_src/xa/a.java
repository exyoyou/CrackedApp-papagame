package xa;

import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97658a = "getMaxWidth";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97659b = "getMaxHeight";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f97660c = "getMinWidth";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f97661d = "getMinHeight";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f97662e = "setMaxWidth";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f97663f = "setMaxHeight";

    public static int a(View view) {
        return e(view, f97659b);
    }

    public static int b(View view) {
        return e(view, f97658a);
    }

    public static int c(View view) {
        return view.getMinimumHeight();
    }

    public static int d(View view) {
        return view.getMinimumWidth();
    }

    private static int e(View view, String str) {
        try {
            return ((Integer) view.getClass().getMethod(str, new Class[0]).invoke(view, new Object[0])).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static void f(View view, int i10) {
        j(view, f97663f, i10);
    }

    public static void g(View view, int i10) {
        j(view, f97662e, i10);
    }

    public static void h(View view, int i10) {
        view.setMinimumHeight(i10);
    }

    public static void i(View view, int i10) {
        view.setMinimumWidth(i10);
    }

    private static void j(View view, String str, int i10) {
        try {
            view.getClass().getMethod(str, new Class[0]).invoke(view, Integer.valueOf(i10));
        } catch (Exception unused) {
        }
    }
}
