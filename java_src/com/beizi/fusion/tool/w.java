package com.beizi.fusion.tool;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes6.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Handler f10680a = new Handler(Looper.getMainLooper());

    public static void a(Runnable runnable, long j10) {
        f10680a.postDelayed(runnable, j10);
    }
}
