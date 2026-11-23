package com.kwad.sdk.i;

/* JADX INFO: loaded from: classes2.dex */
abstract class n implements Runnable {
    n() {
    }

    abstract void doTask();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            doTask();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
