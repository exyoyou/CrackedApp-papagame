package com.byazt.vm;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 165, 71})
public final class x {

    @com.byazt.zqa.c(c = {0, 1, 165, 62})
    private static class c implements Runnable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Runnable f21261c;
        public final String tt;
        public final String ve = Log.getStackTraceString(new RuntimeException("origin stacktrace"));

        public c(Runnable runnable, String str) {
            this.f21261c = runnable;
            this.tt = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f21261c.run();
            } catch (Exception e10) {
                com.byazt.yv.da.ve("Thread:" + this.tt + " exception\n" + this.ve, e10);
            }
        }
    }

    public static boolean c(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 128) != null;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public static boolean c(Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            if (packageManager.getPackageInfo("com.huawei.hwid", 0) == null && packageManager.getPackageInfo("com.huawei.hwid.tv", 0) == null && packageManager.getPackageInfo("com.huawei.hms", 0) == null) {
                return false;
            }
            return true;
        } catch (PackageManager.NameNotFoundException | Exception unused) {
            return false;
        }
    }

    public static void c(@Nullable String str, Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = "TrackerDr";
        }
        new com.byazt.jtc.ve(new c(runnable, str), str).start();
    }
}
