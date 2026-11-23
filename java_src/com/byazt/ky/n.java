package com.byazt.ky;

import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 677, 46})
public class n implements com.byazt.zyd.uj {
    public com.byazt.ha.uj uj;
    public List<com.byazt.qcl.tt> ve = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16501c = false;
    public com.byazt.aas.c.tt tt = new com.byazt.aas.c.tt() { // from class: com.byazt.ky.n.1
        @Override // com.byazt.aas.c.tt
        public void onAppBackground() {
            if (com.byazt.omf.x.m().d()) {
                return;
            }
            n nVar = n.this;
            if (nVar.f16501c || nVar.uj == null || n.this.uj.f15452i == null) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("lifecycle_id", n.this.uj.c());
                jSONObject.putOpt("video_type", Integer.valueOf(n.this.uj.f14875c));
                jSONObject.putOpt("node_line_name", "video_node_line");
                com.byazt.qcl.uj.c(jSONObject, n.this.uj, (List<com.byazt.qcl.tt>) n.this.ve, "video");
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

    @Override // com.byazt.zyd.uj
    public void a(com.byazt.ha.uj ujVar, com.byazt.ip.x xVar) {
        c(ujVar);
        m.c("Tme_node_line", "TTAdVideoNodeLineObserver onBuffered " + ujVar.c() + " rit:" + ujVar.f15453x + "  adType:" + ujVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("video", "buffered", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, ujVar.f15452i, ujVar);
    }

    @Override // com.byazt.zyd.uj
    public void da(com.byazt.ha.uj ujVar, com.byazt.ip.x xVar) {
        m.c("Tme_node_line", "TTAdVideoNodeLineObserver onEnd " + ujVar.c() + " rit:" + ujVar.f15453x + "  adType:" + ujVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        if (this.f16501c) {
            return;
        }
        this.f16501c = true;
        com.byazt.omf.x.m().ve().tt(this.tt);
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("video", PointCategory.END, xVar != null ? xVar.c() : System.currentTimeMillis(), com.byazt.qcl.uj.c(xVar));
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, ujVar.f15452i, ujVar);
        tt(ujVar);
    }

    @Override // com.byazt.zyd.uj
    public void i(com.byazt.ha.uj ujVar, com.byazt.ip.x xVar) {
        c(ujVar);
        m.c("Tme_node_line", "TTAdVideoNodeLineObserver onCompleted " + ujVar.c() + " rit:" + ujVar.f15453x + "  adType:" + ujVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("video", "completed", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, ujVar.f15452i, ujVar);
    }

    @Override // com.byazt.zyd.uj
    public void n(com.byazt.ha.uj ujVar, com.byazt.ip.x xVar) {
        c(ujVar);
        m.c("Tme_node_line", "TTAdVideoNodeLineObserver onPlayed " + ujVar.c() + " rit:" + ujVar.f15453x + "  adType:" + ujVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("video", "played", xVar != null ? xVar.c() : System.currentTimeMillis(), com.byazt.qcl.uj.c(xVar));
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, ujVar.f15452i, ujVar);
    }

    @Override // com.byazt.zyd.uj
    public void sp(com.byazt.ha.uj ujVar, com.byazt.ip.x xVar) {
        c(ujVar);
        m.c("Tme_node_line", "TTAdVideoNodeLineObserver onPaused " + ujVar.c() + " rit:" + ujVar.f15453x + "  adType:" + ujVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("video", "paused", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, ujVar.f15452i, ujVar);
    }

    @Override // com.byazt.zyd.uj
    public void uj(com.byazt.ha.uj ujVar, com.byazt.ip.x xVar) {
        c(ujVar);
        m.c("Tme_node_line", "TTAdVideoNodeLineObserver onPrepared " + ujVar.c() + " rit:" + ujVar.f15453x + "  adType:" + ujVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("video", "prepared", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, ujVar.f15452i, ujVar);
    }

    @Override // com.byazt.zyd.uj
    public void ve(com.byazt.ha.uj ujVar, com.byazt.ip.x xVar) {
        c(ujVar);
        m.c("Tme_node_line", "TTAdVideoNodeLineObserver onStarted " + ujVar.c() + " rit:" + ujVar.f15453x + "  adType:" + ujVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("video", "started", xVar != null ? xVar.c() : System.currentTimeMillis(), com.byazt.qcl.uj.c(xVar));
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, ujVar.f15452i, ujVar);
    }

    @Override // com.byazt.zyd.uj
    public void x(com.byazt.ha.uj ujVar, com.byazt.ip.x xVar) {
        c(ujVar);
        m.c("Tme_node_line", "TTAdVideoNodeLineObserver onStopped " + ujVar.c() + " rit:" + ujVar.f15453x + "  adType:" + ujVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("video", "stopped", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, ujVar.f15452i, ujVar);
    }

    private boolean c() {
        return gt.tt().vl();
    }

    @Override // com.byazt.zyd.uj
    public void tt(com.byazt.ha.uj ujVar, com.byazt.ip.x xVar) {
        c(ujVar);
        m.c("Tme_node_line", "TTAdVideoNodeLineObserver onInitialized " + ujVar.c() + " rit:" + ujVar.f15453x + "  adType:" + ujVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("video", "initialized", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, ujVar.f15452i, ujVar);
    }

    private void c(com.byazt.ha.uj ujVar) {
        if (this.uj == null) {
            this.uj = ujVar;
        }
        if (!c() || this.f16501c) {
            return;
        }
        this.uj = ujVar;
        com.byazt.omf.x.m().ve().c(this.tt);
    }

    private void tt(com.byazt.ha.uj ujVar) {
        if (ujVar == null || ujVar.f15452i == null) {
            return;
        }
        m.c("Tme_node_line", "video_observer_send  l_id:" + ujVar.c() + "  n_l:" + com.byazt.qcl.uj.c(this.ve));
        for (com.byazt.qcl.tt ttVar : this.ve) {
            m.c("Tme_node_line", "lifecycleType:" + ttVar.tt() + "  eventType:" + ttVar.c() + "  ts:" + ttVar.ve() + "  source:" + ttVar.uj());
        }
        if (c()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("lifecycle_id", this.uj.c());
                jSONObject.putOpt("video_type", Integer.valueOf(this.uj.f14875c));
                com.byazt.qcl.uj.c(this.ve, ujVar, "video_node_line", jSONObject);
                com.byazt.qcl.uj.c(com.byazt.qcl.c.c("video") + ujVar.c(), ujVar.tt());
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.zyd.uj
    public void c(com.byazt.ha.uj ujVar, com.byazt.ip.x xVar) {
        c(ujVar);
        m.c("Tme_node_line", "TTAdVideoNodeLineObserver onCreated " + ujVar.c() + " rit:" + ujVar.f15453x + "  adType:" + ujVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("video", "created", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, ujVar.f15452i, ujVar);
    }
}
