package com.alipay.android.phone.mrpc.core;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
final class b0 implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f6891b = new AtomicInteger(1);

    b0() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, "com.alipay.mobile.common.transport.http.HttpManager.HttpWorker #" + this.f6891b.getAndIncrement());
        thread.setPriority(4);
        return thread;
    }
}
