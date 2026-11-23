package com.byazt.pp;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.Toast;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1434, 15})
public final class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Toast f18794c;

    public static void c(Context context, String str) {
        c(context, str, 0);
    }

    public static void c(Context context, String str, int i10) {
        Toast toastC = c(context);
        if (toastC == null) {
            com.byazt.eu.tt.tt("TToast", "toast msg: ".concat(String.valueOf(str)));
            return;
        }
        toastC.setDuration(i10);
        toastC.setText(String.valueOf(str));
        toastC.show();
    }

    @SuppressLint({"ShowToast"})
    private static Toast c(Context context) {
        if (context == null) {
            return f18794c;
        }
        Toast toastMakeText = Toast.makeText(context.getApplicationContext(), "", 0);
        f18794c = toastMakeText;
        return toastMakeText;
    }
}
