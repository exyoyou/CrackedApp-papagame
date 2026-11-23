package com.kwad.components.core.page;

import android.os.Build;
import android.view.Window;
import com.uc.crashsdk.export.LogType;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    public static void b(Window window) {
        int i10 = Build.VERSION.SDK_INT;
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        if (i10 >= 23) {
            window.getDecorView().setSystemUiVisibility(9472);
        } else {
            window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        }
    }
}
