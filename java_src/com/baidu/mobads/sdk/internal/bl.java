package com.baidu.mobads.sdk.internal;

/* JADX INFO: loaded from: classes6.dex */
class bl implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Runnable f7586a;

    bl(Runnable runnable) {
        this.f7586a = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f7586a.run();
    }
}
