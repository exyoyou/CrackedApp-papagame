package com.zxing.android.decoding;

import android.app.Activity;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes8.dex */
public final class h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f90498d = 300;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Activity f90500b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ScheduledExecutorService f90499a = Executors.newSingleThreadScheduledExecutor(new b());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScheduledFuture<?> f90501c = null;

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

    public h(Activity activity) {
        this.f90500b = activity;
        b();
    }

    private void a() {
        ScheduledFuture<?> scheduledFuture = this.f90501c;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f90501c = null;
        }
    }

    public void b() {
        a();
        this.f90501c = this.f90499a.schedule(new g(this.f90500b), 300L, TimeUnit.SECONDS);
    }

    public void c() {
        a();
        this.f90499a.shutdown();
    }
}
