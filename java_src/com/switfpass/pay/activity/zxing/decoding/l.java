package com.switfpass.pay.activity.zxing.decoding;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes2.dex */
final class l implements ThreadFactory {
    private l() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setDaemon(true);
        return thread;
    }

    /* synthetic */ l(byte b10) {
        this();
    }
}
