package com.beizi.ad.lance.a;

import android.text.TextUtils;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
public class d implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f9195a = new AtomicInteger(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ThreadGroup f9196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicInteger f9197c = new AtomicInteger(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f9198d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f9199e;

    d(int i10, String str) {
        this.f9199e = i10;
        SecurityManager securityManager = System.getSecurityManager();
        this.f9196b = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        if (TextUtils.isEmpty(str)) {
            this.f9198d = "BeiZi-adsdk-background-" + f9195a.getAndIncrement() + "-thread-";
            return;
        }
        this.f9198d = str + f9195a.getAndIncrement() + "-thread-";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f9196b, runnable, this.f9198d + this.f9197c.getAndIncrement(), 0L);
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        if (this.f9199e == 1) {
            thread.setPriority(1);
        } else if (thread.getPriority() != 5) {
            thread.setPriority(3);
        } else {
            thread.setPriority(5);
        }
        return thread;
    }
}
