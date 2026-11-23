package com.cloudplay.messagesdk.entity;

import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes9.dex */
public class FutureCount {
    private int count;
    private Future future;

    public int getCount() {
        return this.count;
    }

    public Future getFuture() {
        return this.future;
    }

    public void setCount(int i10) {
        this.count = i10;
    }

    public void setFuture(Future future) {
        this.future = future;
    }

    public String toString() {
        return "FutureCount{count=" + this.count + ", future=" + this.future + '}';
    }
}
