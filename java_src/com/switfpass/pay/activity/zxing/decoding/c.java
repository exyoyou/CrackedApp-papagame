package com.switfpass.pay.activity.zxing.decoding;

import android.app.Activity;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Activity f82612b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ScheduledExecutorService f82611a = Executors.newSingleThreadScheduledExecutor(new l((byte) 0));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScheduledFuture f82613c = null;

    public c(Activity activity) {
        this.f82612b = activity;
        b();
    }

    private void a() {
        ScheduledFuture scheduledFuture = this.f82613c;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f82613c = null;
        }
    }

    public final void b() {
        a();
        this.f82613c = this.f82611a.schedule(new b(this.f82612b), 300L, TimeUnit.SECONDS);
    }

    public final void c() {
        a();
        this.f82611a.shutdown();
    }
}
