package com.join.mgps.zxing.decoding;

import android.app.Activity;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f73488d = 300;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Activity f73490b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ScheduledExecutorService f73489a = Executors.newSingleThreadScheduledExecutor(new b());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScheduledFuture<?> f73491c = null;

    private static final class b implements ThreadFactory {
        private b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setDaemon(true);
            return thread;
        }
    }

    public g(Activity activity) {
        this.f73490b = activity;
        b();
    }

    private void a() {
        ScheduledFuture<?> scheduledFuture = this.f73491c;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f73491c = null;
        }
    }

    public void b() {
        a();
        this.f73491c = this.f73489a.schedule(new f(this.f73490b), 300L, TimeUnit.SECONDS);
    }

    public void c() {
        a();
        this.f73489a.shutdown();
    }
}
