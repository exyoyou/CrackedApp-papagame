package com.haima.hmcp.utils;

/* JADX INFO: loaded from: classes5.dex */
public class ThreadProgressTracker {
    private volatile int numThreadsDone = 0;

    public synchronized int getThreadsDone() {
        return this.numThreadsDone;
    }

    public synchronized int notifyDone() {
        int i10;
        i10 = this.numThreadsDone + 1;
        this.numThreadsDone = i10;
        return i10;
    }
}
