package com.byazt.vr;

import android.os.Handler;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1683, 20})
public abstract class c implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f21329c;
    public final long tt;
    public final long ve;

    public c(Handler handler, long j10, long j11) {
        this.f21329c = handler;
        this.tt = j10;
        this.ve = j11;
    }

    public void c() {
        if (tt() > 0) {
            this.f21329c.postDelayed(this, tt());
        } else {
            this.f21329c.post(this);
        }
    }

    public long tt() {
        return this.tt;
    }

    public long ve() {
        return this.ve;
    }

    public void c(long j10) {
        if (j10 > 0) {
            this.f21329c.postDelayed(this, j10);
        } else {
            this.f21329c.post(this);
        }
    }
}
