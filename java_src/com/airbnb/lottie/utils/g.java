package com.airbnb.lottie.utils;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class g implements ThreadFactory {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final AtomicInteger f6096e = new AtomicInteger(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ThreadGroup f6097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicInteger f6098c = new AtomicInteger(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6099d;

    public g() {
        SecurityManager securityManager = System.getSecurityManager();
        this.f6097b = securityManager == null ? Thread.currentThread().getThreadGroup() : securityManager.getThreadGroup();
        this.f6099d = "lottie-" + f6096e.getAndIncrement() + "-thread-";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f6097b, runnable, this.f6099d + this.f6098c.getAndIncrement(), 0L);
        thread.setDaemon(false);
        thread.setPriority(10);
        return thread;
    }
}
