package com.byazt.cj;

import android.content.Context;
import com.byazt.ete.ic;
import com.tencent.cos.common.COSHttpResponseKey;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.ls.tt
@com.byazt.zqa.c(c = {0, 1, 55, 71})
public class x implements com.byazt.kkb.ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @com.byazt.ls.c(c = "event_tag")
    public String f12501a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @com.byazt.ls.c(c = "convert_from_landing_page")
    public boolean f12502c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    @com.byazt.ls.c(c = "is_from_new_click_event")
    public boolean f12503da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @com.byazt.ls.c(c = "is_show_download_dialog")
    public boolean f12504i = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @com.byazt.ls.c(c = "app_manage_model")
    public com.byazt.ete.uj f12505n;

    @com.byazt.ls.c(c = "dynamic_download_dialog_type")
    public int sl;

    @com.byazt.ls.c(c = COSHttpResponseKey.DOWNLOAD_URL)
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @com.byazt.ls.c(c = "is_direct_download")
    public boolean f12506t;

    @com.byazt.ls.c(c = "context")
    public Context tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @com.byazt.ls.c(c = "download_dialog_listener")
    public com.byazt.av.c f12507u;

    @com.byazt.ls.c(c = "is_app_market_convert")
    public boolean uj;

    @com.byazt.ls.c(c = "material_meta")
    public ic ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @com.byazt.ls.c(c = "start_download_listener")
    public com.byazt.av.tt f12508x;

    @Override // com.byazt.kkb.ve
    public boolean c(Map<String, Object> map, Map<String, Object> map2, com.byazt.cq.c cVar) {
        com.byazt.yzg.ve veVar = new com.byazt.yzg.ve(this.tt, this.ve);
        veVar.ve(this.f12506t);
        veVar.c(this.f12504i);
        veVar.c(this.sl);
        veVar.tt(this.f12503da);
        veVar.c(this.f12507u);
        veVar.c(c());
        if (!veVar.uj(false)) {
            cVar.c(map2, (com.byazt.qb.c) null);
            return true;
        }
        veVar.c(this.f12505n, this.f12501a, this.sp, this.f12508x);
        cVar.c(map2);
        return true;
    }

    private com.byazt.yzg.c c() {
        if (this.uj) {
            return new com.byazt.yzg.n();
        }
        if (this.f12502c) {
            return new com.byazt.yzg.uj();
        }
        return new com.byazt.yzg.tt();
    }
}
