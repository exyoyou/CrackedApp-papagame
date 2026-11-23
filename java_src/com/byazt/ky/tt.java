package com.byazt.ky;

import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 677, 13})
public class tt implements com.byazt.zyd.c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f16505n;
    public com.byazt.ha.c uj;
    public List<com.byazt.qcl.tt> ve = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16504c = false;
    public com.byazt.aas.c.tt tt = new com.byazt.aas.c.tt() { // from class: com.byazt.ky.tt.1
        @Override // com.byazt.aas.c.tt
        public void onAppBackground() {
            if (!com.byazt.omf.x.m().d() && tt.this.f16505n) {
                tt ttVar = tt.this;
                if (ttVar.f16504c || ttVar.uj == null || tt.this.uj.f15452i == null) {
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.putOpt("lifecycle_id", tt.this.uj.c());
                    jSONObject.putOpt("download_type", Integer.valueOf(tt.this.uj.f14867c));
                    jSONObject.putOpt("node_line_name", "download_node_line");
                    com.byazt.qcl.uj.c(jSONObject, tt.this.uj, (List<com.byazt.qcl.tt>) tt.this.ve, "download");
                } catch (Throwable unused) {
                }
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

    @Override // com.byazt.zyd.c
    public void a(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        c(cVar);
        this.f16505n = true;
        m.c("Tme_node_line", "TTAdDownloadNodeLineObserver onDownloadPaused " + cVar.c() + " rit:" + cVar.f15453x + "  adType:" + cVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("download", "download_paused", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, cVar.f15452i, cVar);
    }

    @Override // com.byazt.zyd.c
    public void da(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        m.c("Tme_node_line", "TTAdDownloadNodeLineObserver onEnd " + cVar.c() + " rit:" + cVar.f15453x + "  adType:" + cVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        if (this.f16504c) {
            return;
        }
        this.f16504c = true;
        com.byazt.omf.x.m().ve().tt(this.tt);
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("download", PointCategory.END, xVar != null ? xVar.c() : System.currentTimeMillis(), com.byazt.qcl.uj.c(xVar));
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, cVar.f15452i, cVar);
        if (this.f16505n) {
            tt(cVar);
        }
    }

    @Override // com.byazt.zyd.c
    public void i(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        c(cVar);
        this.f16505n = true;
        m.c("Tme_node_line", "TTAdDownloadNodeLineObserver onDownloadFinished " + cVar.c() + " rit:" + cVar.f15453x + "  adType:" + cVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("download", "download_finished", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, cVar.f15452i, cVar);
    }

    @Override // com.byazt.zyd.c
    public void n(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        c(cVar);
        this.f16505n = true;
        m.c("Tme_node_line", "TTAdDownloadNodeLineObserver onDownloadStarted " + cVar.c() + " rit:" + cVar.f15453x + "  adType:" + cVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("download", "download_started", xVar != null ? xVar.c() : System.currentTimeMillis(), com.byazt.qcl.uj.c(xVar));
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, cVar.f15452i, cVar);
    }

    @Override // com.byazt.zyd.c
    public void sp(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        c(cVar);
        this.f16505n = true;
        m.c("Tme_node_line", "TTAdDownloadNodeLineObserver onDownloadFailed " + cVar.c() + " rit:" + cVar.f15453x + "  adType:" + cVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("download", PointCategory.DOWNLOAD_FAILED, xVar != null ? xVar.c() : System.currentTimeMillis(), com.byazt.qcl.uj.c(xVar));
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, cVar.f15452i, cVar);
    }

    @Override // com.byazt.zyd.c
    public void uj(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        c(cVar);
        this.f16505n = true;
        m.c("Tme_node_line", "TTAdDownloadNodeLineObserver onMarketClosed " + cVar.c() + " rit:" + cVar.f15453x + "  adType:" + cVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("download", "market_closed", xVar != null ? xVar.c() : System.currentTimeMillis(), 1);
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, cVar.f15452i, cVar);
    }

    @Override // com.byazt.zyd.c
    public void x(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        c(cVar);
        this.f16505n = true;
        m.c("Tme_node_line", "TTAdDownloadNodeLineObserver onDownloadCanceled " + cVar.c() + " rit:" + cVar.f15453x + "  adType:" + cVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("download", "download_canceled", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, cVar.f15452i, cVar);
    }

    private boolean c() {
        return gt.tt().vl();
    }

    @Override // com.byazt.zyd.c
    public void tt(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        c(cVar);
        this.f16505n = true;
        m.c("Tme_node_line", "TTAdDownloadNodeLineObserver onStarted " + cVar.c() + " rit:" + cVar.f15453x + "  adType:" + cVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("download", "started", xVar != null ? xVar.c() : System.currentTimeMillis(), com.byazt.qcl.uj.c(xVar));
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, cVar.f15452i, cVar);
    }

    @Override // com.byazt.zyd.c
    public void ve(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        c(cVar);
        this.f16505n = true;
        m.c("Tme_node_line", "TTAdDownloadNodeLineObserver onMarketOpened " + cVar.c() + " rit:" + cVar.f15453x + "  adType:" + cVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("download", "market_opened", xVar != null ? xVar.c() : System.currentTimeMillis(), com.byazt.qcl.uj.c(xVar));
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, cVar.f15452i, cVar);
    }

    private void c(com.byazt.ha.c cVar) {
        if (this.uj == null) {
            this.uj = cVar;
        }
        if (!c() || this.f16504c) {
            return;
        }
        com.byazt.omf.x.m().ve().c(this.tt);
    }

    @Override // com.byazt.zyd.c
    public void c(com.byazt.ha.c cVar, com.byazt.ip.x xVar) {
        m.c("Tme_node_line", "TTAdDownloadNodeLineObserver onCreated " + cVar.c() + " rit:" + cVar.f15453x + "  adType:" + cVar.sp + " source:" + com.byazt.qcl.uj.c(xVar));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("download", "created", xVar != null ? xVar.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, cVar.f15452i, cVar);
    }

    private void tt(com.byazt.ha.c cVar) {
        if (cVar == null || cVar.f15452i == null) {
            return;
        }
        m.c("Tme_node_line", "download_observer_send  l_id:" + cVar.c() + "  n_l:" + com.byazt.qcl.uj.c(this.ve));
        for (com.byazt.qcl.tt ttVar : this.ve) {
            m.c("Tme_node_line", "lifecycleType:" + ttVar.tt() + "  eventType:" + ttVar.c() + "  ts:" + ttVar.ve() + "  source:" + ttVar.uj());
        }
        if (c()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("lifecycle_id", cVar.c());
                jSONObject.putOpt("download_type", Integer.valueOf(this.uj.f14867c));
                com.byazt.qcl.uj.c(this.ve, cVar, "download_node_line", jSONObject);
                com.byazt.qcl.uj.c(com.byazt.qcl.c.c("download") + cVar.c(), cVar.tt());
            } catch (Throwable unused) {
            }
        }
    }
}
