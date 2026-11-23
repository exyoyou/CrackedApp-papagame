package com.byazt.ky;

import com.byazt.ete.ic;
import com.byazt.omf.rl;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 677, 20})
public class c implements com.byazt.zyd.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.ha.c f16500c;
    public boolean tt = false;
    public boolean ve = false;

    @Override // com.byazt.zyd.c
    public void a(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        c(cVar);
        this.ve = true;
    }

    @Override // com.byazt.zyd.c
    public void c(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
    }

    @Override // com.byazt.zyd.c
    public void da(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        ic icVar;
        if (this.tt || xVar == null || xVar.c("source") == null || !this.ve || (icVar = cVar.f15452i) == null || !icVar.bm() || cVar.f15452i.lr() || !cVar.f15452i.hs() || !xVar.c("source").equals(1)) {
            return;
        }
        this.tt = true;
        com.byazt.ocd.tt ttVar = (com.byazt.ocd.tt) rl.c(cVar.f15452i.rl(), com.byazt.ocd.tt.class);
        if (ttVar != null) {
            cVar.f15452i.n(true);
            com.byazt.ddx.uj.c(cVar.f15452i, 2);
            ttVar.c(5, null);
        }
    }

    @Override // com.byazt.zyd.c
    public void i(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        ic icVar;
        c(cVar);
        this.ve = true;
        if (!this.tt && (icVar = cVar.f15452i) != null && icVar.bm() && !cVar.f15452i.lr() && cVar.f15452i.hs() && cVar.f15452i.ne() == 1) {
            this.tt = true;
            cVar.f15452i.n(true);
            com.byazt.ocd.tt ttVar = (com.byazt.ocd.tt) rl.c(cVar.f15452i.rl(), com.byazt.ocd.tt.class);
            if (ttVar != null) {
                com.byazt.ddx.uj.c(cVar.f15452i, 1);
                ttVar.c(5, null);
            }
        }
    }

    @Override // com.byazt.zyd.c
    public void n(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        c(cVar);
        this.ve = true;
    }

    @Override // com.byazt.zyd.c
    public void sp(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        com.byazt.ocd.tt ttVar;
        c(cVar);
        this.ve = true;
        ic icVar = cVar.f15452i;
        if (icVar == null || icVar.ne() != 1 || (ttVar = (com.byazt.ocd.tt) rl.c(cVar.f15452i.rl(), com.byazt.ocd.tt.class)) == null) {
            return;
        }
        ttVar.c(6, null);
    }

    @Override // com.byazt.zyd.c
    public void tt(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        c(cVar);
        this.ve = true;
    }

    @Override // com.byazt.zyd.c
    public void uj(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        c(cVar);
        this.ve = true;
    }

    @Override // com.byazt.zyd.c
    public void ve(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        c(cVar);
        this.ve = true;
    }

    @Override // com.byazt.zyd.c
    public void x(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        c(cVar);
        this.ve = true;
    }

    private void c(com.byazt.ha.c cVar) {
        if (this.f16500c == null) {
            this.f16500c = cVar;
        }
    }
}
