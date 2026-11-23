package com.byazt.cd;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 43, 72})
public class da implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<Runnable> f12379c;

    public da(Runnable runnable) {
        this.f12379c = new WeakReference<>(runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        Runnable runnable = this.f12379c.get();
        if (runnable != null) {
            runnable.run();
        }
    }
}
