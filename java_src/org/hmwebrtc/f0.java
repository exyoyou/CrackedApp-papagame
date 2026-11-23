package org.hmwebrtc;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes10.dex */
public final /* synthetic */ class f0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CountDownLatch f95374b;

    @Override // java.lang.Runnable
    public final void run() {
        this.f95374b.countDown();
    }
}
