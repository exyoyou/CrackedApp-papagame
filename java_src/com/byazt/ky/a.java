package com.byazt.ky;

import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 677, 34})
public class a implements com.byazt.zyd.n {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.ha.n f16498n;
    public boolean uj;
    public List<com.byazt.qcl.tt> ve = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16497c = false;
    public com.byazt.aas.c.tt tt = new com.byazt.aas.c.tt() { // from class: com.byazt.ky.a.1
        @Override // com.byazt.aas.c.tt
        public void onAppBackground() {
            if (com.byazt.omf.x.m().d()) {
                return;
            }
            a aVar = a.this;
            if (aVar.f16497c || aVar.f16498n == null || a.this.f16498n.f15452i == null) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("lifecycle_id", a.this.f16498n.c());
                jSONObject.putOpt("container_rect", a.this.f16498n.f14868c);
                jSONObject.putOpt("image_rect", a.this.f16498n.tt);
                jSONObject.putOpt("video_rect", a.this.f16498n.ve);
                if (a.this.f16498n.uj > 0) {
                    jSONObject.putOpt("image_mode", Integer.valueOf(a.this.f16498n.uj));
                }
                jSONObject.putOpt("node_line_name", "view_node_line");
                com.byazt.qcl.uj.c(jSONObject, a.this.f16498n, (List<com.byazt.qcl.tt>) a.this.ve, "view");
            } catch (Throwable unused) {
            }
        }

        @Override // com.byazt.aas.c.tt
        public void onAppExit() {
        }

        @Override // com.byazt.aas.c.tt
        public void onAppForeground() {
        }

        @Override // com.byazt.aas.c.tt
        public void onAppStart() {
        }
    };

    @Override // com.byazt.zyd.n
    public void a(com.byazt.ha.n nVar, com.byazt.ip.x xVar) {
        m.c("Tme_node_line", "TTAdViewNodeLineObserver onDetached " + nVar.c() + " rit:" + nVar.f15453x + "  adType:" + nVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        c(nVar);
        this.uj = true;
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("view", "detached", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, nVar.f15452i, nVar);
    }

    @Override // com.byazt.zyd.n
    public void n(com.byazt.ha.n nVar, com.byazt.ip.x xVar) {
        m.c("Tme_node_line", "TTAdViewNodeLineObserver onInvisibled " + nVar.c() + " rit:" + nVar.f15453x + "  adType:" + nVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        c(nVar);
        this.uj = true;
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("view", "invisibled", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, nVar.f15452i, nVar);
    }

    @Override // com.byazt.zyd.n
    public void sp(com.byazt.ha.n nVar, com.byazt.ip.x xVar) {
        m.c("Tme_node_line", "TTAdViewNodeLineObserver onEnd " + nVar.c() + " rit:" + nVar.f15453x + "  adType:" + nVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        if (this.f16497c) {
            return;
        }
        this.f16497c = true;
        com.byazt.omf.x.m().ve().tt(this.tt);
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("view", PointCategory.END, xVar != null ? xVar.c() : System.currentTimeMillis(), com.byazt.qcl.uj.c(xVar));
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, nVar.f15452i, nVar);
        if (this.uj) {
            tt(nVar);
        }
    }

    @Override // com.byazt.zyd.n
    public void uj(com.byazt.ha.n nVar, com.byazt.ip.x xVar) {
        m.c("Tme_node_line", "TTAdViewNodeLineObserver onVisibled " + nVar.c() + " rit:" + nVar.f15453x + "  adType:" + nVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        c(nVar);
        this.uj = true;
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("view", "visibled", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, nVar.f15452i, nVar);
    }

    @Override // com.byazt.zyd.n
    public void ve(com.byazt.ha.n nVar, com.byazt.ip.x xVar) {
        m.c("Tme_node_line", "TTAdViewNodeLineObserver onFocused " + nVar.c() + " rit:" + nVar.f15453x + "  adType:" + nVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        c(nVar);
        this.uj = true;
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("view", "focused", xVar != null ? xVar.c() : System.currentTimeMillis(), com.byazt.qcl.uj.c(xVar));
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, nVar.f15452i, nVar);
    }

    private boolean c() {
        return gt.tt().vl();
    }

    @Override // com.byazt.zyd.n
    public void tt(com.byazt.ha.n nVar, com.byazt.ip.x xVar) {
        m.c("Tme_node_line", "TTAdViewNodeLineObserver onAttached " + nVar.c() + " rit:" + nVar.f15453x + "  adType:" + nVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        c(nVar);
        this.uj = true;
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("view", "attached", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, nVar.f15452i, nVar);
    }

    private void c(com.byazt.ha.n nVar) {
        if (this.f16498n == null) {
            this.f16498n = nVar;
        }
        if (!c() || this.f16497c) {
            return;
        }
        this.f16498n = nVar;
        com.byazt.omf.x.m().ve().c(this.tt);
    }

    private void tt(com.byazt.ha.n nVar) {
        if (nVar == null || nVar.f15452i == null) {
            return;
        }
        m.c("Tme_node_line", "view_observer_send  l_id:" + nVar.c() + "  n_l:" + com.byazt.qcl.uj.c(this.ve));
        for (com.byazt.qcl.tt ttVar : this.ve) {
            m.c("Tme_node_line", "lifecycleType:" + ttVar.tt() + "  eventType:" + ttVar.c() + "  ts:" + ttVar.ve() + "  source:" + ttVar.uj());
        }
        if (c()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("lifecycle_id", this.f16498n.c());
                jSONObject.putOpt("container_rect", this.f16498n.f14868c);
                jSONObject.putOpt("image_rect", this.f16498n.tt);
                jSONObject.putOpt("video_rect", this.f16498n.ve);
                int i10 = this.f16498n.uj;
                if (i10 > 0) {
                    jSONObject.putOpt("image_mode", Integer.valueOf(i10));
                }
                com.byazt.qcl.uj.c(this.ve, nVar, "view_node_line", jSONObject);
                com.byazt.qcl.uj.c(com.byazt.qcl.c.c("view") + nVar.c(), nVar.sl);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.zyd.n
    public void c(com.byazt.ha.n nVar, com.byazt.ip.x xVar) {
        m.c("Tme_node_line", "TTAdViewNodeLineObserver onCreated " + nVar.c() + " rit:" + nVar.f15453x + "  adType:" + nVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("view", "created", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, nVar.f15452i, nVar);
    }
}
