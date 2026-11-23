package com.byazt.zb;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 184, 13})
public class tt {
    public x tt;
    public int uj;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ScheduledExecutorService f22661c = null;
    public long ve = 0;

    public tt(x xVar, int i10) {
        this.tt = xVar;
        this.uj = i10;
    }

    public void c(long j10) {
        this.ve = j10;
    }

    public boolean tt() {
        ScheduledExecutorService scheduledExecutorService = this.f22661c;
        if (scheduledExecutorService != null) {
            return scheduledExecutorService.isShutdown();
        }
        return true;
    }

    public void c(int i10) {
        ScheduledExecutorService scheduledExecutorServiceC = com.byazt.bwm.tt.c(1, new com.byazt.bwm.x("/CrashMonitor"));
        this.f22661c = scheduledExecutorServiceC;
        scheduledExecutorServiceC.scheduleAtFixedRate(new Runnable() { // from class: com.byazt.zb.tt.1
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                if (System.currentTimeMillis() - tt.this.ve > tt.this.uj) {
                    tt.this.f22661c.shutdown();
                    if (tt.this.tt != null) {
                        tt.this.tt.tt(0, "自动检测卡死");
                    }
                }
            }
        }, 0L, i10, TimeUnit.MILLISECONDS);
    }

    public void c() {
        ScheduledExecutorService scheduledExecutorService = this.f22661c;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
        }
    }
}
