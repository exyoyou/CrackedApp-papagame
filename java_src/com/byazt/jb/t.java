package com.byazt.jb;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 63, 66})
public final class t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CountDownLatch f15780c = new CountDownLatch(1);
    public long tt = -1;
    public long ve = -1;

    public void c() {
        if (this.tt != -1) {
            throw new IllegalStateException();
        }
        this.tt = System.nanoTime();
    }

    public void tt() {
        if (this.ve != -1 || this.tt == -1) {
            throw new IllegalStateException();
        }
        this.ve = System.nanoTime();
        this.f15780c.countDown();
    }

    public void ve() {
        if (this.ve == -1) {
            long j10 = this.tt;
            if (j10 != -1) {
                this.ve = j10 - 1;
                this.f15780c.countDown();
                return;
            }
        }
        throw new IllegalStateException();
    }
}
