package com.sigmob.sdk.manager;

import android.app.ActivityManager;
import android.content.Context;
import com.byazt.hv.TTDownloadField;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.mta.PointEntityActive;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f80827a = "AppStatusManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile a f80828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f80829c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile long f80830d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Timer f80831e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f80832f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f80833g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f80834h;

    private a() {
        a(3L);
    }

    private synchronized void e() {
        SigmobLogger.d(f80827a, "cancelTimer", new Object[0]);
        Timer timer = this.f80831e;
        if (timer == null) {
            return;
        }
        timer.cancel();
        this.f80831e = null;
    }

    public synchronized void d() {
        SigmobLogger.d(f80827a, "stopAppStatusCheck: running = " + this.f80829c, new Object[0]);
        if (this.f80829c) {
            e();
            this.f80829c = false;
        }
    }

    public static a a() {
        if (f80828b == null) {
            synchronized (a.class) {
                if (f80828b == null) {
                    f80828b = new a();
                }
            }
        }
        return f80828b;
    }

    public static boolean b() {
        Context contextE = com.sigmob.sdk.b.e();
        if (contextE == null) {
            return false;
        }
        ActivityManager activityManager = (ActivityManager) contextE.getSystemService(TTDownloadField.TT_ACTIVITY);
        String packageName = contextE.getPackageName();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && runningAppProcessInfo.processName.equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    public static boolean c() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        try {
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
        } catch (Exception e10) {
            com.sigmob.sdk.base.utils.k.f(f80827a, "isForeground: error = " + e10.getMessage(), new Object[0]);
        }
        return runningAppProcessInfo.importance == 100;
    }

    public synchronized void a(long interval) {
        try {
            if (interval <= 0) {
                SigmobLogger.e(f80827a, "startAppStatusCheck: interval is unavailable.", new Object[0]);
                return;
            }
            boolean z10 = interval == this.f80830d;
            SigmobLogger.d(f80827a, "startAppStatusCheck: status = " + this.f80829c + ", interval = " + interval + ", result = " + z10, new Object[0]);
            if (this.f80829c && z10) {
                return;
            }
            e();
            long j10 = interval * 1000;
            Timer timer = new Timer();
            this.f80831e = timer;
            timer.schedule(new TimerTask() { // from class: com.sigmob.sdk.manager.a.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    boolean zC = a.c();
                    if (a.this.f80834h == zC) {
                        return;
                    }
                    if (zC) {
                        a.this.f80833g = System.currentTimeMillis();
                        a.this.f80832f = UUID.randomUUID().toString();
                        PointEntityActive.ActiveTracking("session_start", a.this.f80832f, "0", String.valueOf(a.this.f80833g));
                    } else {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        PointEntityActive.ActiveTracking("session_end", a.this.f80832f, String.valueOf((jCurrentTimeMillis - a.this.f80833g) / 1000), String.valueOf(jCurrentTimeMillis));
                    }
                    a.this.f80834h = zC;
                }
            }, j10, j10);
            this.f80829c = true;
            this.f80830d = interval;
            SigmobLogger.d(f80827a, "startAppStatusCheck: status = " + this.f80829c, new Object[0]);
        } catch (Throwable th) {
            throw th;
        }
    }
}
