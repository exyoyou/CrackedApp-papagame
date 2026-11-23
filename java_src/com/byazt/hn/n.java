package com.byazt.hn;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 25, 46})
public final class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static HandlerThread f14978c;
    public static Handler tt;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile int f14980da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f14981i;
    public volatile int sl;
    public final uj ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile boolean f14984x;
    public a uj = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public a f14982n = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f14979a = new a();
    public final Object sp = new Object();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Runnable f14983t = new Runnable() { // from class: com.byazt.hn.n.1
        @Override // java.lang.Runnable
        public void run() {
            float f10;
            if (n.this.f14984x) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                if (n.this.f14981i == 0) {
                    f10 = 0.016f;
                } else {
                    f10 = (jUptimeMillis - n.this.f14981i) / 1000.0f;
                    if (f10 > 0.033333335f) {
                        f10 = 0.033333335f;
                    }
                }
                n.this.f14981i = jUptimeMillis;
                n.this.ve.c(n.this.f14980da, n.this.sl);
                n.this.ve.update(f10);
                n.this.ve.c(n.this.uj);
                synchronized (n.this.sp) {
                    a aVar = n.this.f14982n;
                    n nVar = n.this;
                    nVar.f14982n = nVar.uj;
                    n.this.uj = aVar;
                }
                if (n.this.f14984x) {
                    n.x().postDelayed(this, 16L);
                }
            }
        }
    };

    public n(tt ttVar) {
        this.ve = new uj(ttVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized Handler x() {
        if (f14978c == null) {
            HandlerThread handlerThread = new HandlerThread("ugen-particle-physics", 10);
            f14978c = handlerThread;
            handlerThread.start();
            tt = new Handler(f14978c.getLooper());
        }
        return tt;
    }

    public void a() {
        n();
        synchronized (this.sp) {
            this.uj = new a();
            this.f14982n = new a();
            this.f14979a = new a();
        }
    }

    public void n() {
        this.f14984x = false;
        x().removeCallbacks(this.f14983t);
    }

    public void uj() {
        if (this.f14984x) {
            return;
        }
        this.f14984x = true;
        this.f14981i = 0L;
        x().post(this.f14983t);
    }

    public tt.uj[] ve() {
        return this.ve.c();
    }

    public tt tt() {
        return this.ve.tt();
    }

    public void c(int i10, int i11) {
        this.f14980da = i10;
        this.sl = i11;
    }

    public a c() {
        a aVar;
        synchronized (this.sp) {
            a aVar2 = this.f14979a;
            aVar = this.f14982n;
            this.f14979a = aVar;
            this.f14982n = aVar2;
        }
        return aVar;
    }
}
