package com.byazt.ky;

import com.byazt.nr.m;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 677, 54})
public class ve implements com.byazt.zyd.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<com.byazt.qcl.tt> f16511c = new CopyOnWriteArrayList();

    @Override // com.byazt.zyd.tt
    public void tt(com.byazt.ha.tt ttVar, com.byazt.ip.x xVar) {
        m.c("Tme_node_line", "TTAdLoadNodeLineObserver onReqed " + ttVar.c() + " rit:" + ttVar.f15453x + "  adType:" + ttVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar2 = new com.byazt.qcl.tt("ad_load", "reqed", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.f16511c.add(ttVar2);
        com.byazt.qcl.ve.c(ttVar2, ttVar.f15452i, ttVar);
    }

    @Override // com.byazt.zyd.tt
    public void uj(com.byazt.ha.tt ttVar, com.byazt.ip.x xVar) {
        StringBuilder sb2 = new StringBuilder("TTAdLoadNodeLineObserver onLoaded ");
        sb2.append(ttVar.c());
        sb2.append(" rit:");
        sb2.append(ttVar.f15453x);
        sb2.append("  adType:");
        sb2.append(ttVar.sp);
        sb2.append(" source:");
        sb2.append(ttVar.ve ? 1 : 2);
        m.c("Tme_node_line", sb2.toString());
        com.byazt.qcl.tt ttVar2 = new com.byazt.qcl.tt("ad_load", "loaded", xVar != null ? xVar.c() : System.currentTimeMillis(), ttVar.ve ? 1 : 2);
        this.f16511c.add(ttVar2);
        com.byazt.qcl.ve.c(ttVar2, ttVar.f15452i, ttVar);
        Iterator<String> it2 = ttVar.f14874n.iterator();
        while (it2.hasNext()) {
            ((com.byazt.lh.ve) com.byazt.ip.n.c(1)).c(it2.next(), new com.byazt.ip.uj.c() { // from class: com.byazt.ky.ve.1
                @Override // com.byazt.ip.uj.c
                public void c(com.byazt.ip.tt ttVar3) {
                    if (ttVar3 instanceof com.byazt.ha.ve) {
                        ((com.byazt.ha.ve) ttVar3).f14876a.addAll(0, ve.this.f16511c);
                    }
                }
            });
        }
    }

    @Override // com.byazt.zyd.tt
    public void ve(com.byazt.ha.tt ttVar, com.byazt.ip.x xVar) {
        StringBuilder sb2 = new StringBuilder("TTAdLoadNodeLineObserver onReceived ");
        sb2.append(ttVar.c());
        sb2.append(" rit:");
        sb2.append(ttVar.f15453x);
        sb2.append("  adType:");
        sb2.append(ttVar.sp);
        sb2.append(" source:");
        sb2.append(ttVar.tt ? 1 : 2);
        m.c("Tme_node_line", sb2.toString());
        com.byazt.qcl.tt ttVar2 = new com.byazt.qcl.tt("ad_load", "received", xVar != null ? xVar.c() : System.currentTimeMillis(), ttVar.tt ? 1 : 2);
        this.f16511c.add(ttVar2);
        com.byazt.qcl.ve.c(ttVar2, ttVar.f15452i, ttVar);
    }

    @Override // com.byazt.zyd.tt
    public void c(com.byazt.ha.tt ttVar, com.byazt.ip.x xVar) {
        m.c("Tme_node_line", "TTAdLoadNodeLineObserver onStarted " + ttVar.c() + " rit:" + ttVar.f15453x + "  adType:" + ttVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar2 = new com.byazt.qcl.tt("ad_load", "started", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.f16511c.add(ttVar2);
        com.byazt.qcl.ve.c(ttVar2, ttVar.f15452i, ttVar);
    }
}
