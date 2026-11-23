package com.byazt.eia;

import android.content.Context;
import com.byazt.ete.hq;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.ls.tt
@com.byazt.zqa.c(c = {0, 1, 1048, 15})
public class uj implements c, da {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @com.byazt.ls.c(c = "ext")
    public String f13491a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @com.byazt.ls.c(c = "path", tt = "DSL")
    public String f13492c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    @com.byazt.ls.c(c = "landing_page_source")
    public int f13493da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @com.byazt.ls.c(c = "event_tag")
    public String f13494i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @com.byazt.ls.c(c = PointCategory.TARGET_URL)
    public String f13495n;

    @com.byazt.ls.c(c = "context")
    public Context sp;

    @com.byazt.ls.c(c = "name", tt = "DSL")
    public String tt;

    @com.byazt.ls.c(c = "wc_miniapp_info")
    public JSONObject uj;

    @com.byazt.ls.c(c = "type", tt = "DSL")
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @com.byazt.ls.c(c = "convert_from_landing_page")
    public boolean f13496x;

    @Override // com.byazt.eia.da
    public hq A_() {
        return hq.c(this.uj);
    }

    @Override // com.byazt.eia.c
    public Map<String, String> c() {
        return new HashMap();
    }

    public int da() {
        return this.ve;
    }

    public Context getContext() {
        return this.sp;
    }

    public String i() {
        return this.tt;
    }

    public String sp() {
        return this.f13492c;
    }

    public boolean tt() {
        return this.f13496x;
    }

    public int uj() {
        return this.f13493da;
    }

    public String ve() {
        return this.f13494i;
    }

    @Override // com.byazt.eia.da
    public String w_() {
        return this.f13491a;
    }

    @Override // com.byazt.eia.da
    public String x() {
        return this.f13495n;
    }
}
