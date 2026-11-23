package com.byazt.py;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1879, 13})
public class tt implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.nbs.tt f18892c;
    public Runnable tt;
    public boolean ve = false;

    public tt(com.byazt.nbs.tt ttVar, Runnable runnable) {
        this.f18892c = ttVar;
        this.tt = runnable;
    }

    public boolean c() {
        return this.ve;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.byazt.nbs.tt ttVar = this.f18892c;
        if (ttVar != null && ttVar.i() == 4) {
            this.f18892c.x().put("serverBidding_timeout", Boolean.TRUE);
        }
        this.ve = true;
        Runnable runnable = this.tt;
        if (runnable != null) {
            runnable.run();
        }
    }
}
