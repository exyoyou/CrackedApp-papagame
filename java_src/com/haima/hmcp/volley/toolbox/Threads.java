package com.haima.hmcp.volley.toolbox;

import android.os.Looper;

/* JADX INFO: loaded from: classes5.dex */
final class Threads {
    private static final String TAG = "Volley.Threads";

    private Threads() {
    }

    static void throwIfNotOnMainThread() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("⚠️ WARNING: Should be invoked from the main thread, but called from: ");
            sb2.append(Thread.currentThread().getName());
            new Throwable("Stack trace");
        }
    }
}
