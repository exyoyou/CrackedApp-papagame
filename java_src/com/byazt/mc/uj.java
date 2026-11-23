package com.byazt.mc;

import com.byazt.bwm.i;
import com.byazt.bwm.x;
import com.join.mgps.Util.v0;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1001, 15})
public class uj implements ThreadFactory {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ThreadFactory f16857c;
    public final int tt;

    public uj(ThreadFactory threadFactory, int i10) {
        if (threadFactory == null) {
            this.f16857c = new x(v0.f50057a);
        } else {
            this.f16857c = threadFactory;
        }
        this.tt = i10;
    }

    public final String c() {
        return this.f16857c.getClass().getName();
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f16857c.newThread(runnable);
        return tt() ? new sp(threadNewThread) : threadNewThread;
    }

    public boolean tt() {
        return i.tt.tt(this.tt);
    }
}
