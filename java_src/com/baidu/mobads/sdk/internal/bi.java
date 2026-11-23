package com.baidu.mobads.sdk.internal;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
class bi implements RejectedExecutionHandler {
    bi() {
    }

    @Override // java.util.concurrent.RejectedExecutionHandler
    public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        az.h("ThreadPoolFactory").e("Exceeded ThreadPoolExecutor pool size");
        synchronized (this) {
            if (bf.f7559d == null) {
                LinkedBlockingQueue unused = bf.f7560e = new LinkedBlockingQueue();
                ThreadPoolExecutor unused2 = bf.f7559d = new ThreadPoolExecutor(2, 2, 60L, TimeUnit.SECONDS, bf.f7560e, bf.f7561f);
            }
        }
        bf.f7559d.execute(runnable);
    }
}
