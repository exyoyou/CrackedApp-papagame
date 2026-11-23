package xa;

import android.content.Context;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97664a = "dp2pxUtils";

    public static int a(float f10, float f11) {
        return (int) ((f11 * f10) + 0.5f);
    }

    public static int b(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int c(float f10, float f11) {
        return (int) ((f11 / f10) + 0.5f);
    }

    public static int d(Context context, float f10) {
        return (int) ((f10 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
