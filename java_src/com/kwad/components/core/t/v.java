package com.kwad.components.core.t;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.uc.crashsdk.export.LogType;

/* JADX INFO: loaded from: classes2.dex */
public final class v {
    public static void c(Window window) {
        int i10 = Build.VERSION.SDK_INT;
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (i10 >= 28) {
            attributes.layoutInDisplayCutoutMode = 1;
        }
        window.setAttributes(attributes);
        if (i10 > 23) {
            window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        }
    }

    public static void d(Window window) {
        View decorView = window.getDecorView();
        decorView.setPadding(0, 0, 0, 0);
        decorView.setBackgroundColor(0);
        window.setLayout(-1, -1);
    }
}
