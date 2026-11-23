package com.byazt.ky;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 677, 71})
public class x implements com.byazt.zyd.sp {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.ha.x f16514n;
    public boolean uj;
    public List<com.byazt.qcl.tt> ve = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16513c = false;
    public com.byazt.aas.c.tt tt = new com.byazt.aas.c.tt() { // from class: com.byazt.ky.x.1
        @Override // com.byazt.aas.c.tt
        public void onAppBackground() {
            if (com.byazt.omf.x.m().d()) {
                return;
            }
            x xVar = x.this;
            if (xVar.f16513c || xVar.f16514n == null || x.this.f16514n.f15452i == null) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("lifecycle_id", x.this.f16514n.c());
                if (!TextUtils.isEmpty(x.this.f16514n.tt)) {
                    jSONObject.putOpt("style_id", x.this.f16514n.tt);
                }
                jSONObject.putOpt("style_category", Integer.valueOf(x.this.f16514n.ve));
                jSONObject.putOpt("component_type", Integer.valueOf(x.this.f16514n.f14879c));
                jSONObject.putOpt("render_sequence", Integer.valueOf(x.this.f16514n.uj));
                jSONObject.putOpt("display_area", Integer.valueOf(x.this.f16514n.f14880n));
                jSONObject.putOpt("node_line_name", "easy_play_node_line");
                com.byazt.qcl.uj.c(jSONObject, x.this.f16514n, (List<com.byazt.qcl.tt>) x.this.ve, "easy_play");
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

    @Override // com.byazt.zyd.sp
    public void a(com.byazt.ha.x xVar, com.byazt.ip.x xVar2) {
        c(xVar);
        this.uj = true;
        m.c("Tme_node_line", "TTEasyPlayNodeLineObserver onShowed " + xVar.c() + " rit:" + xVar.f15453x + "  adType:" + xVar.sp + " source:" + com.byazt.qcl.uj.c(xVar2));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("easy_play", "showed", xVar2 != null ? xVar2.c() : System.currentTimeMillis(), com.byazt.qcl.uj.c(xVar2));
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, xVar.f15452i, xVar);
    }

    @Override // com.byazt.zyd.sp
    public void n(com.byazt.ha.x xVar, com.byazt.ip.x xVar2) {
        c(xVar);
        this.uj = true;
        m.c("Tme_node_line", "TTEasyPlayNodeLineObserver onRendered " + xVar.c() + " rit:" + xVar.f15453x + "  adType:" + xVar.sp + " source:" + com.byazt.qcl.uj.c(xVar2));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("easy_play", "rendered", xVar2 != null ? xVar2.c() : System.currentTimeMillis(), com.byazt.qcl.uj.c(xVar2));
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, xVar.f15452i, xVar);
    }

    @Override // com.byazt.zyd.sp
    public void sp(com.byazt.ha.x xVar, com.byazt.ip.x xVar2) {
        c(xVar);
        this.uj = true;
        m.c("Tme_node_line", "TTEasyPlayNodeLineObserver onClicked " + xVar.c() + " rit:" + xVar.f15453x + "  adType:" + xVar.sp + " source:" + com.byazt.qcl.uj.c(xVar2));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("easy_play", "clicked", xVar2 != null ? xVar2.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, xVar.f15452i, xVar);
    }

    @Override // com.byazt.zyd.sp
    public void uj(com.byazt.ha.x xVar, com.byazt.ip.x xVar2) {
        c(xVar);
        this.uj = true;
        m.c("Tme_node_line", "TTEasyPlayNodeLineObserver onRenderStarted " + xVar.c() + " rit:" + xVar.f15453x + "  adType:" + xVar.sp + " source:" + com.byazt.qcl.uj.c(xVar2));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("easy_play", "render_started", xVar2 != null ? xVar2.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, xVar.f15452i, xVar);
    }

    @Override // com.byazt.zyd.sp
    public void ve(com.byazt.ha.x xVar, com.byazt.ip.x xVar2) {
        c(xVar);
        this.uj = true;
        m.c("Tme_node_line", "TTEasyPlayNodeLineObserver onLoaded " + xVar.c() + " rit:" + xVar.f15453x + "  adType:" + xVar.sp + " source:" + com.byazt.qcl.uj.c(xVar2));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("easy_play", "loaded", xVar2 != null ? xVar2.c() : System.currentTimeMillis(), com.byazt.qcl.uj.c(xVar2));
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, xVar.f15452i, xVar);
    }

    @Override // com.byazt.zyd.sp
    public void x(com.byazt.ha.x xVar, com.byazt.ip.x xVar2) {
        m.c("Tme_node_line", "TTEasyPlayNodeLineObserver onEnd " + xVar.c() + " rit:" + xVar.f15453x + "  adType:" + xVar.sp + " source:" + com.byazt.qcl.uj.c(xVar2));
        if (this.f16513c) {
            return;
        }
        this.f16513c = true;
        com.byazt.omf.x.m().ve().tt(this.tt);
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("easy_play", PointCategory.END, xVar2 != null ? xVar2.c() : System.currentTimeMillis(), com.byazt.qcl.uj.c(xVar2));
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, xVar.f15452i, xVar);
        if (this.uj) {
            tt(xVar);
        }
    }

    private boolean c() {
        return gt.tt().vl();
    }

    @Override // com.byazt.zyd.sp
    public void tt(com.byazt.ha.x xVar, com.byazt.ip.x xVar2) {
        c(xVar);
        this.uj = true;
        m.c("Tme_node_line", "TTEasyPlayNodeLineObserver onStarted " + xVar.c() + " rit:" + xVar.f15453x + "  adType:" + xVar.sp + " source:" + com.byazt.qcl.uj.c(xVar2));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("easy_play", "started", xVar2 != null ? xVar2.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, xVar.f15452i, xVar);
    }

    private void c(com.byazt.ha.x xVar) {
        if (this.f16514n == null) {
            this.f16514n = xVar;
        }
        if (!c() || this.f16513c) {
            return;
        }
        this.f16514n = xVar;
        com.byazt.omf.x.m().ve().c(this.tt);
    }

    private void tt(com.byazt.ha.x xVar) {
        if (xVar == null || xVar.f15452i == null) {
            return;
        }
        m.c("Tme_node_line", "easy_play_observer_send  l_id:" + xVar.c() + "  n_l:" + com.byazt.qcl.uj.c(this.ve));
        for (com.byazt.qcl.tt ttVar : this.ve) {
            m.c("Tme_node_line", "lifecycleType:" + ttVar.tt() + "  eventType:" + ttVar.c() + "  ts:" + ttVar.ve() + "  source:" + ttVar.uj());
        }
        if (c()) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("lifecycle_id", this.f16514n.c());
                if (!TextUtils.isEmpty(this.f16514n.tt)) {
                    jSONObject.putOpt("style_id", this.f16514n.tt);
                }
                jSONObject.putOpt("style_category", Integer.valueOf(this.f16514n.ve));
                jSONObject.putOpt("component_type", Integer.valueOf(this.f16514n.f14879c));
                jSONObject.putOpt("render_sequence", Integer.valueOf(this.f16514n.uj));
                jSONObject.putOpt("display_area", Integer.valueOf(this.f16514n.f14880n));
                com.byazt.qcl.uj.c(this.ve, xVar, "easy_play_node_line", jSONObject);
                com.byazt.qcl.uj.c(com.byazt.qcl.c.c("easy_play") + xVar.c(), xVar.sl);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.zyd.sp
    public void c(com.byazt.ha.x xVar, com.byazt.ip.x xVar2) {
        m.c("Tme_node_line", "TTEasyPlayNodeLineObserver onCreated " + xVar.c() + " rit:" + xVar.f15453x + "  adType:" + xVar.sp + " source:" + com.byazt.qcl.uj.c(xVar2));
        com.byazt.qcl.tt ttVar = new com.byazt.qcl.tt("easy_play", "created", xVar2 != null ? xVar2.c() : System.currentTimeMillis());
        this.ve.add(ttVar);
        com.byazt.qcl.ve.c(ttVar, xVar.f15452i, xVar);
    }
}
