package z6;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f97721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f97722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static float f97723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f97724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f97725e;

    public static int a(float designedDp) {
        int i10 = f97724d;
        if (i10 != 320) {
            designedDp = (designedDp * i10) / 320.0f;
        }
        return b(designedDp);
    }

    public static int b(float dp) {
        return (int) ((dp * f97723c) + 0.5f);
    }

    public static void c(Context context) {
        if (context == null) {
            return;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int i10 = displayMetrics.widthPixels;
        f97721a = i10;
        int i11 = displayMetrics.heightPixels;
        f97722b = i11;
        float f10 = displayMetrics.density;
        f97723c = f10;
        f97724d = (int) (i10 / f10);
        f97725e = (int) (i11 / f10);
    }

    public static void d(final View view, float left, float top, float right, float bottom) {
        view.setPadding(a(left), b(top), a(right), b(bottom));
    }
}
