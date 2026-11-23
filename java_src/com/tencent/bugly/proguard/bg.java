package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public final class bg extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public bf f83459a;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f83465g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f83461c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f83462d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f83463e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f83464f = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f83460b = true;

    public interface a {
    }

    public final boolean a() {
        this.f83461c = true;
        if (!isAlive()) {
            return false;
        }
        try {
            interrupt();
        } catch (Exception e10) {
            al.b(e10);
        }
        al.d("MainHandlerChecker is reset to null.", new Object[0]);
        this.f83459a = null;
        return true;
    }

    public final boolean b() {
        Handler handler = new Handler(Looper.getMainLooper());
        bf bfVar = this.f83459a;
        if (bfVar != null) {
            bfVar.f83453b = 5000L;
        } else {
            this.f83459a = new bf(handler, handler.getLooper().getThread().getName());
        }
        if (isAlive()) {
            return false;
        }
        try {
            start();
            return true;
        } catch (Exception e10) {
            al.b(e10);
            return false;
        }
    }

    public final synchronized void c() {
        this.f83462d = false;
        al.c("Record stack trace is disabled.", new Object[0]);
    }

    public final synchronized void d() {
        this.f83463e = true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (!this.f83461c) {
            try {
                bf bfVar = this.f83459a;
                boolean z10 = false;
                if (bfVar == null) {
                    al.c("Main handler checker is null. Stop thread monitor.", new Object[0]);
                    return;
                }
                if (bfVar.f83454c) {
                    bfVar.f83454c = false;
                    bfVar.f83455d = SystemClock.uptimeMillis();
                    bfVar.f83452a.post(bfVar);
                }
                a(bfVar);
                if (this.f83460b && this.f83462d) {
                    long jB = bfVar.b();
                    if (jB > 1510 && jB < 199990) {
                        boolean z11 = true;
                        if (jB <= 5010) {
                            this.f83464f = 1;
                            al.c("timeSinceMsgSent in [2s, 5s], record stack", new Object[0]);
                            z10 = true;
                        } else {
                            int i10 = this.f83464f + 1;
                            this.f83464f = i10;
                            if ((i10 & (i10 - 1)) != 0) {
                                z11 = false;
                            }
                            if (z11) {
                                al.c("timeSinceMsgSent in (5s, 200s), should record stack:true", new Object[0]);
                            }
                            z10 = z11;
                        }
                    }
                }
                if (z10) {
                    bfVar.d();
                }
                if (this.f83465g != null && this.f83462d) {
                    bfVar.a();
                    bfVar.b();
                }
                ap.b(500 - ((System.currentTimeMillis() - jCurrentTimeMillis) % 500));
            } catch (Exception e10) {
                al.b(e10);
            } catch (OutOfMemoryError e11) {
                al.b(e11);
            }
        }
    }

    private synchronized void a(bf bfVar) {
        if (this.f83462d) {
            return;
        }
        if (this.f83463e && !bfVar.a()) {
            al.c("Restart getting main stack trace.", new Object[0]);
            this.f83462d = true;
            this.f83463e = false;
        }
    }
}
