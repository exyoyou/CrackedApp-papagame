package com.aggmoread.sdk.z.a.j;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class p extends Thread implements com.aggmoread.sdk.z.a.p.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private n f3632b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.p.d f3638h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AtomicBoolean f3633c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3634d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicInteger f3635e = new AtomicInteger(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f3636f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicBoolean f3637g = new AtomicBoolean(true);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f3639i = 0;

    private p() {
        setName("AdSdk-api-downtask");
    }

    public static p b() {
        p pVar = new p();
        pVar.f3637g.set(true);
        return pVar;
    }

    public void a(n nVar) {
        com.aggmoread.sdk.z.a.d.d("DownloadTask", "startDownload enter , isStarted = " + this.f3633c.get());
        if (this.f3633c.compareAndSet(false, true)) {
            this.f3632b = nVar;
            start();
        }
    }

    public void c() {
        this.f3633c.set(false);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean zF;
        i iVarE;
        String message;
        int iA;
        h hVar = null;
        h th = null;
        while (true) {
            if (this.f3635e.get() >= this.f3634d) {
                hVar = th;
                break;
            }
            com.aggmoread.sdk.z.a.d.d("DownloadTask", "currentRetryTimes = " + this.f3635e.get());
            try {
                com.aggmoread.sdk.z.a.d.d("DownloadTask", "download file = " + new j().a(this.f3632b));
                break;
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
                this.f3635e.incrementAndGet();
                try {
                    Thread.sleep(5000L);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
        }
        try {
            zF = com.aggmoread.sdk.z.a.p.e.f(this.f3632b.c());
        } catch (Exception unused) {
            zF = true;
        }
        com.aggmoread.sdk.z.a.d.d("DownloadTask", "download task end , isNetworkAvailable = " + zF + " , rerun = " + this.f3636f.get() + " , isSupportNetworkStateMonitor = " + this.f3637g.get() + " , downloadThrowable = " + hVar);
        if (hVar != null) {
            if (this.f3637g.get() && !zF && this.f3636f.compareAndSet(false, true)) {
                com.aggmoread.sdk.z.a.d.d("DownloadTask", "start ConnectivityMonitor");
                this.f3639i = System.currentTimeMillis();
                this.f3638h = com.aggmoread.sdk.z.a.p.d.a(this.f3632b.c(), this);
                return;
            }
            if (hVar instanceof h) {
                h hVar2 = hVar;
                iVarE = this.f3632b.e();
                iA = hVar2.a();
                message = hVar2.getMessage();
            } else {
                iVarE = this.f3632b.e();
                message = hVar.getMessage();
                iA = -999;
            }
            iVarE.a(iA, message);
        }
    }

    public static p b(boolean z10) {
        p pVar = new p();
        pVar.f3637g.set(z10);
        return pVar;
    }

    @Override // com.aggmoread.sdk.z.a.p.c
    public void a(boolean z10) {
        if (this.f3638h == null || !z10) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f3639i;
        com.aggmoread.sdk.z.a.d.d("DownloadTask", "ConnectivityMonitor onConnectivityChanged, restart , intervalTime = " + jCurrentTimeMillis + " , startMonitorTime = " + this.f3639i);
        if (this.f3639i != 0 && jCurrentTimeMillis >= 600000) {
            this.f3632b.e().a(-1017, "无网络超过10分钟不在重试下载!");
        } else {
            this.f3638h.c();
            b(false).a(this.f3632b);
        }
    }

    public boolean a() {
        return this.f3633c.get();
    }
}
