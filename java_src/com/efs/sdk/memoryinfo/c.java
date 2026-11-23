package com.efs.sdk.memoryinfo;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.Process;
import com.byazt.hv.TTDownloadField;

/* JADX INFO: loaded from: classes9.dex */
final class c {
    final String activity;
    final String bg;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final long f26476n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final long f26477o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final long f26478p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final long f26479q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final float f26480r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final long f26481s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final long f26482t;

    c(Context context) {
        Debug.MemoryInfo[] processMemoryInfo;
        Debug.MemoryInfo memoryInfo = null;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager != null && (processMemoryInfo = activityManager.getProcessMemoryInfo(new int[]{Process.myPid()})) != null && processMemoryInfo.length > 0) {
                memoryInfo = processMemoryInfo[0];
            }
        } catch (Throwable unused) {
        }
        if (memoryInfo == null) {
            memoryInfo = new Debug.MemoryInfo();
            Debug.getMemoryInfo(memoryInfo);
        }
        this.bg = UMMemoryMonitor.get().isForeground() ? "fg" : "bg";
        this.f26476n = ((long) memoryInfo.getTotalPss()) * 1024;
        this.f26477o = ((long) memoryInfo.dalvikPss) * 1024;
        this.f26478p = ((long) memoryInfo.nativePss) * 1024;
        this.f26481s = f.a(memoryInfo) * 1024;
        long jFreeMemory = Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
        this.f26479q = jFreeMemory;
        long jMaxMemory = Runtime.getRuntime().maxMemory();
        if (jMaxMemory != 0) {
            this.f26480r = (jFreeMemory * 1.0f) / jMaxMemory;
        } else {
            this.f26480r = 1.0f;
        }
        this.f26482t = f.a() * 1024;
        this.activity = UMMemoryMonitor.get().getCurrentActivity();
    }
}
