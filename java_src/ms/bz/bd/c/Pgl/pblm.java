package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes.dex */
public final class pblm {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f94426c;

    public static String c(Context context) {
        if (context != null) {
            try {
                new DisplayMetrics();
                f94426c = context.getResources().getDisplayMetrics().densityDpi;
            } catch (Throwable unused) {
            }
        }
        return "" + f94426c;
    }
}
