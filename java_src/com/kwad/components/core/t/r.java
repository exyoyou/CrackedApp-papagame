package com.kwad.components.core.t;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class r {
    public static float a(String str, float f10) {
        if (TextUtils.isEmpty(str)) {
            return 0.0f;
        }
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e10) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
            return 0.0f;
        }
    }

    public static int m(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e10) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
            return 0;
        }
    }
}
