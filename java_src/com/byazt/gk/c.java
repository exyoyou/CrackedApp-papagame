package com.byazt.gk;

import com.byazt.omf.gu;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 148, 20})
public class c implements gu.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public gu.tt f14569c;
    public int tt;

    public c(gu.tt ttVar) {
        this.f14569c = ttVar;
    }

    public void c(int i10) {
        this.tt = i10;
    }

    @Override // com.byazt.omf.gu.tt
    public void c(int i10, String str, com.byazt.ete.tt ttVar) {
        gu.tt ttVar2 = this.f14569c;
        if (ttVar2 != null) {
            ttVar2.c(i10, str, ttVar);
        }
    }

    @Override // com.byazt.omf.gu.tt
    public void c(final com.byazt.ete.c cVar, final com.byazt.ete.tt ttVar) {
        com.byazt.yih.c.c(cVar);
        int i10 = this.tt;
        boolean z10 = true;
        boolean z11 = i10 == 3 || i10 == 4;
        if (z11) {
            z10 = (com.byazt.by.n.c().t() & 1) != 1;
        }
        if (z10) {
            if (this.f14569c != null) {
                Runnable runnable = new Runnable() { // from class: com.byazt.gk.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.f14569c.c(cVar, ttVar);
                    }
                };
                if (z11) {
                    com.byazt.bzd.x.c(runnable);
                    return;
                } else {
                    com.byazt.bzd.x.ve(runnable);
                    return;
                }
            }
            return;
        }
        gu.tt ttVar2 = this.f14569c;
        if (ttVar2 != null) {
            ttVar2.c(cVar, ttVar);
        }
    }
}
