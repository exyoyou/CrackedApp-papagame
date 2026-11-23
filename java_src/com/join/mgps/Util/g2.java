package com.join.mgps.Util;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class g2 {
    public static void a(Thread thread, int milliseconds) {
        if (thread == null || milliseconds < 0) {
            return;
        }
        try {
            thread.join(milliseconds);
        } catch (InterruptedException unused) {
        }
    }

    public static void b(int milliseconds) {
        try {
            Thread.sleep(milliseconds);
        } catch (InterruptedException unused) {
        }
    }

    public static boolean c(String val, boolean fail) {
        if (TextUtils.isEmpty(val)) {
            return fail;
        }
        try {
            return Boolean.parseBoolean(val);
        } catch (NumberFormatException unused) {
            return fail;
        }
    }
}
