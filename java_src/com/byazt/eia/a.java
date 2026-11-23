package com.byazt.eia;

import android.content.Context;
import com.byazt.ete.nu;
import com.byazt.ete.pf;
import com.byazt.ete.qy;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.ls.tt
@com.byazt.zqa.c(c = {0, 1, 1048, 34})
public class a implements c, sl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @com.byazt.ls.c(c = "deep_link")
    public JSONObject f13456a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @com.byazt.ls.c(c = "url", tt = "DSL")
    public String f13457c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    @com.byazt.ls.c(c = "download_adapter")
    public com.byazt.pop.ve f13458da;
    public pf gr;

    @com.byazt.ls.c(c = "is_click_button")
    public volatile boolean gt;
    public com.byazt.ete.n gu;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @com.byazt.ls.c(c = "convert_from_downloader")
    public boolean f13459i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @com.byazt.ls.c(c = "reward_live")
    public JSONObject f13460m;

    @com.byazt.ls.c(c = "is_web_meta")
    public boolean my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @com.byazt.ls.c(c = "event_tag")
    public String f13461n;

    @com.byazt.ls.c(c = "req_id")
    public String nu;
    public nu qy;

    @com.byazt.ls.c(c = "live_interaction_type")
    public int rh;
    public qy rl;

    @com.byazt.ls.c(c = "convert_tag")
    public String sl;

    @com.byazt.ls.c(c = "app")
    public JSONObject sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @com.byazt.ls.c(c = "sub_convert_link")
    public JSONObject f13462t;

    @com.byazt.ls.c(c = "type", tt = "DSL")
    public int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @com.byazt.ls.c(c = "if_double_deeplink")
    public int f13463u;

    @com.byazt.ls.c(c = "context")
    public Context uj;

    @com.byazt.ls.c(c = "download_conf.download_type")
    public int ve = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @com.byazt.ls.c(c = "convert_from_landing_page")
    public boolean f13464x;

    @com.byazt.ls.c(c = MediationConstant.EXTRA_ADID)
    public String yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @com.byazt.ls.c(c = "reward_live_deep_link_params")
    public JSONObject f13465z;

    @Override // com.byazt.eia.sl
    public int a() {
        return this.ve;
    }

    @Override // com.byazt.eia.c
    public Map<String, String> c() {
        return new HashMap();
    }

    public boolean da() {
        return this.f13464x;
    }

    public Context getContext() {
        return this.uj;
    }

    @Override // com.byazt.eia.sl
    public pf gt() {
        if (this.gr == null && tt() != null) {
            this.gr = new pf(tt());
        }
        return this.gr;
    }

    public String i() {
        return this.f13461n;
    }

    public String m() {
        return this.sl;
    }

    @Override // com.byazt.eia.sl
    public int n() {
        return this.rh;
    }

    @Override // com.byazt.eia.sl
    public boolean nu() {
        return this.f13463u == 1;
    }

    @Override // com.byazt.eia.sl
    public String qy() {
        return this.nu;
    }

    public JSONObject rh() {
        return this.f13460m;
    }

    @Override // com.byazt.eia.sl
    public boolean s_() {
        return this.my;
    }

    public boolean sl() {
        return this.f13459i;
    }

    public boolean sp() {
        return this.gt;
    }

    public com.byazt.pop.ve t() {
        return this.f13458da;
    }

    public JSONObject tt() {
        return this.f13465z;
    }

    @Override // com.byazt.eia.sl
    public qy u() {
        if (this.rl == null) {
            this.rl = new qy(this.f13462t, false);
        }
        return this.rl;
    }

    @Override // com.byazt.eia.sl
    public String uj() {
        return this.yp;
    }

    public String ve() {
        return this.f13457c;
    }

    public int x() {
        return this.tt;
    }

    @Override // com.byazt.eia.sl
    public nu yp() {
        if (this.qy == null) {
            this.qy = new nu(this.f13456a);
        }
        return this.qy;
    }

    @Override // com.byazt.eia.sl
    public com.byazt.ete.n z() {
        if (this.gu == null) {
            this.gu = com.byazt.omf.c.tt(this.sp);
        }
        return this.gu;
    }

    @Override // com.byazt.eia.sl
    public boolean z_() {
        return rh() != null && rh().optBoolean("isValid", false);
    }
}
