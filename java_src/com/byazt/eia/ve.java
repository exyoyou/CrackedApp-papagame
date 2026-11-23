package com.byazt.eia;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.ls.tt
@com.byazt.zqa.c(c = {0, 1, 1048, 54})
public class ve implements c, x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @com.byazt.ls.c(c = "pip_controller")
    public com.byazt.zd.tt f13497a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @com.byazt.ls.c(c = "url", tt = "DSL")
    public String f13498c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    @com.byazt.ls.c(c = "open_video_detail_page_direct")
    public boolean f13499da;

    @com.byazt.ls.c(c = "icon.url")
    public String gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @com.byazt.ls.c(c = "landing_page_source")
    public int f13500i = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @com.byazt.ls.c(c = "live_interaction_type")
    public int f13501m;

    @com.byazt.ls.c(c = MediationConstant.EXTRA_ADID)
    public String my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @com.byazt.ls.c(c = "convert_from_landing_page")
    public boolean f13502n;

    @com.byazt.ls.c(c = "req_id")
    public String nu;

    @com.byazt.ls.c(c = "gecko_id")
    public String rh;

    @com.byazt.ls.c(c = "union_session_key")
    public String rl;

    @com.byazt.ls.c(c = "is_from_video_layout")
    public boolean sl;

    @com.byazt.ls.c(c = "event_tag")
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @com.byazt.ls.c(c = PointCategory.TARGET_URL)
    public String f13503t;

    @com.byazt.ls.c(c = "title", tt = "DSL")
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @com.byazt.ls.c(c = "interaction_type")
    public int f13504u;

    @com.byazt.ls.c(c = "is_open_web_page")
    public boolean uj;

    @com.byazt.ls.c(c = "context")
    public Context ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @com.byazt.ls.c(c = "landing_page_url")
    public String f13505x;

    @com.byazt.ls.c(c = "get_phone_num_status")
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @com.byazt.ls.c(c = "ext")
    public String f13506z;

    @Override // com.byazt.eia.c
    public Map<String, String> c() {
        HashMap map = new HashMap();
        map.put("title", "title");
        map.put("button_text", "button_text");
        map.put("block_auto_open", "block_auto_open");
        map.put("disable_top_bar", "disable_top_bar");
        map.put("disable_safe_area", "disable_safe_area");
        map.put("disable_rtn_button", "disable_rtn_button");
        return map;
    }

    public Context getContext() {
        return this.ve;
    }

    @Override // com.byazt.eia.x
    public int i() {
        return this.f13504u;
    }

    public boolean m() {
        return this.f13499da;
    }

    @Override // com.byazt.eia.x
    public int n() {
        return this.f13501m;
    }

    public boolean nu() {
        return this.sl;
    }

    @Override // com.byazt.eia.x
    public String qy() {
        return this.nu;
    }

    @Override // com.byazt.eia.x
    public String rl() {
        return this.rl;
    }

    public boolean sl() {
        return this.uj;
    }

    @Override // com.byazt.eia.x
    public int sp() {
        return this.yp;
    }

    public boolean t() {
        return this.f13502n;
    }

    @Override // com.byazt.eia.x
    public String tt() {
        return this.gt;
    }

    public com.byazt.zd.tt u() {
        return this.f13497a;
    }

    @Override // com.byazt.eia.x
    public String uj() {
        return this.my;
    }

    @Override // com.byazt.eia.x
    public String v_() {
        return this.tt;
    }

    @Override // com.byazt.eia.x
    public String ve() {
        return this.rh;
    }

    @Override // com.byazt.eia.x
    public String w_() {
        return this.f13506z;
    }

    @Override // com.byazt.eia.x
    public String x() {
        return this.f13503t;
    }

    public String yp() {
        return this.sp;
    }

    public String z() {
        return !TextUtils.isEmpty(this.f13505x) ? this.f13505x : this.f13498c;
    }
}
