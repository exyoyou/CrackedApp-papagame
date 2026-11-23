package com.kwad.components.core.t;

import android.R;
import android.app.Activity;
import android.os.Build;
import android.view.Window;
import androidx.annotation.NonNull;
import com.kwad.sdk.utils.ab;
import com.kwad.sdk.utils.bd;
import com.uc.crashsdk.export.LogType;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    public static void a(@NonNull Activity activity, int i10, boolean z10) {
        a(activity, 0, true, true);
    }

    private static void b(@NonNull Activity activity, int i10, boolean z10) {
        int i11;
        Window window = activity.getWindow();
        int i12 = Build.VERSION.SDK_INT;
        if (!z10 || i12 < 23) {
            i11 = LogType.UNEXP_ANR;
        } else {
            window.clearFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            if (bd.Wb()) {
                a(activity, true);
            } else if (bd.Wc()) {
                p.b(activity, true);
            }
            i11 = 9472;
        }
        window.getDecorView().setSystemUiVisibility(i11);
        window.setStatusBarColor(i10);
        window.setNavigationBarColor(window.getNavigationBarColor());
    }

    public static boolean wJ() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static void a(@NonNull Activity activity, int i10, boolean z10, boolean z11) {
        if (wJ()) {
            b(activity, i10, z10);
            if (z11) {
                return;
            }
            activity.findViewById(R.id.content).setPadding(0, com.kwad.sdk.c.a.a.getStatusBarHeight(activity), 0, 0);
        }
    }

    private static boolean a(@NonNull Activity activity, boolean z10) {
        try {
            int iIntValue = ((Integer) ab.au("android.view.MiuiWindowManager$LayoutParams", "EXTRA_FLAG_STATUS_BAR_DARK_MODE")).intValue();
            ab.callMethod(activity.getWindow(), "setExtraFlags", Integer.valueOf(iIntValue), Integer.valueOf(iIntValue));
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
