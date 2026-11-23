package com.byazt.us;

import com.byazt.gq.t;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 251, 46})
public class n implements com.byazt.g.c.InterfaceC0315c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f20959c;

    @com.byazt.zqa.c(c = {0, 1, 251, 151})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static n f20961c = new n();
    }

    @Override // com.byazt.g.c.InterfaceC0315c
    public void tt() {
        this.f20959c = System.currentTimeMillis();
    }

    @Override // com.byazt.g.c.InterfaceC0315c
    public void ve() {
    }

    private n() {
        this.f20959c = 0L;
        com.byazt.g.c.c().c(this);
    }

    public static n c() {
        return c.f20961c;
    }

    public void tt(uj ujVar) {
        if (ujVar == null) {
            return;
        }
        int iOptInt = t.i().optInt("check_an_result_delay", 1200);
        c(ujVar, iOptInt > 0 ? iOptInt : 1200);
    }

    public void c(final uj ujVar, final long j10) {
        if (ujVar == null) {
            return;
        }
        com.byazt.di.n.c().c(new Runnable() { // from class: com.byazt.us.n.1
            @Override // java.lang.Runnable
            public void run() {
                if (!com.byazt.g.c.c().ve() || System.currentTimeMillis() - n.this.f20959c <= j10) {
                    ujVar.c(true);
                } else {
                    ujVar.c(false);
                }
            }
        }, j10);
    }

    public void c(uj ujVar) {
        c(ujVar, 5000L);
    }
}
