package com.byazt.cj;

import android.content.Context;
import com.byazt.ete.ic;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.ls.tt
@com.byazt.zqa.c(c = {0, 1, 55, 67})
public class u implements com.byazt.kkb.ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @com.byazt.ls.c(c = "convert_from_landing_page")
    public boolean f12485a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @com.byazt.ls.c(c = "material_meta")
    public ic f12486c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    @com.byazt.ls.c(c = "pip_controller")
    public com.byazt.zd.tt f12487da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @com.byazt.ls.c(c = "convert_tag")
    public String f12488i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @com.byazt.ls.c(c = "app_info")
    public JSONObject f12489n;

    @com.byazt.ls.c(c = "is_click_button")
    public volatile boolean sl;

    @com.byazt.ls.c(c = "convert_from_downloader")
    public boolean sp;

    @com.byazt.ls.c(c = "context")
    public Context tt;

    @com.byazt.ls.c(c = "deep_link")
    public JSONObject uj;

    @com.byazt.ls.c(c = "event_tag")
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @com.byazt.ls.c(c = "download_adapter")
    public com.byazt.pop.ve f12490x;

    @Override // com.byazt.kkb.ve
    public boolean c(Map<String, Object> map, Map<String, Object> map2, com.byazt.cq.c cVar) {
        com.byazt.bb.sp spVar = new com.byazt.bb.sp(com.byazt.omf.c.tt(this.f12489n), this.tt, this.f12486c, map2);
        spVar.c(this.ve);
        com.byazt.bb.ve veVar = new com.byazt.bb.ve(spVar, this.f12486c, this.ve, new com.byazt.ete.nu(this.uj), this.tt, map2, false);
        veVar.tt(this.sp);
        veVar.c(this.f12485a);
        veVar.c(this.f12490x);
        veVar.c(this.f12488i);
        veVar.c(this.f12487da);
        veVar.ve(this.sl);
        if (veVar.c(map2)) {
            cVar.c(map2);
            return true;
        }
        cVar.c(map2, (com.byazt.qb.c) null);
        return true;
    }
}
