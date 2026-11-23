package com.byazt.pct;

import android.util.Log;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 124, 42})
public final class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f18641c;

    public static void c(boolean z10) {
        f18641c = z10;
    }

    public static void tt(String str) {
        if (f18641c) {
            com.byazt.nr.m.tt("JsBridge2", str);
        }
    }

    public static void c(String str) {
        if (f18641c) {
            com.byazt.nr.m.c("JsBridge2", str);
        }
    }

    public static void tt(String str, Throwable th) {
        if (f18641c) {
            com.byazt.nr.m.ve("JsBridge2", str, th);
            com.byazt.nr.m.uj("JsBridge2", "Stacktrace: " + Log.getStackTraceString(th));
        }
    }

    public static void c(String str, Throwable th) {
        if (f18641c) {
            com.byazt.nr.m.tt("JsBridge2", str, th);
            com.byazt.nr.m.tt("JsBridge2", "Stacktrace: " + Log.getStackTraceString(th));
        }
    }

    public static void c(RuntimeException runtimeException) {
        if (f18641c) {
            throw runtimeException;
        }
    }
}
