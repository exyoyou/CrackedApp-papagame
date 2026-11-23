package com.byazt.cj;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.ete.gt;
import com.byazt.ete.ic;
import com.byazt.su.DownloadStatusChangeListener;
import com.tencent.cos.common.COSHttpResponseKey;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.ls.tt
@com.byazt.zqa.c(c = {0, 1, 55, 91})
public class sp implements com.byazt.kkb.ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @com.byazt.ls.c(c = "download_popup_manager")
    public com.byazt.yzg.ve f12468a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @com.byazt.ls.c(c = "material_meta")
    public ic f12469c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    @com.byazt.ls.c(c = COSHttpResponseKey.DOWNLOAD_URL)
    public String f12470da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @com.byazt.ls.c(c = "is_click_button")
    public volatile boolean f12471i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @com.byazt.ls.c(c = "download_status_listener")
    public DownloadStatusChangeListener f12472n;

    @com.byazt.ls.c(c = "download_conf")
    public JSONObject sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @com.byazt.ls.c(c = "app")
    public JSONObject f12473t;

    @com.byazt.ls.c(c = "context")
    public Context tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @com.byazt.ls.c(c = "dialog_to_landing_page_convert")
    public com.byazt.hl.c f12474u;

    @com.byazt.ls.c(c = "event_tag")
    public String uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @com.byazt.ls.c(c = "is_open_market_intercept_for_dsp")
    public volatile boolean f12475x;

    @com.byazt.ls.c(c = "pip_controller")
    public com.byazt.zd.tt yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @com.byazt.ls.c(c = "enable_update_download_model")
    public boolean f12476z;

    @com.byazt.ls.c(c = "convert_from_landing_page")
    public volatile boolean ve = false;

    @com.byazt.ls.c(c = "need_check_compliance")
    public int sp = 0;

    @Override // com.byazt.kkb.ve
    public boolean c(Map<String, Object> map, Map<String, Object> map2, com.byazt.cq.c cVar) {
        if (!c()) {
            cVar.c(map2, (com.byazt.qb.c) null);
            return true;
        }
        int iUj = com.byazt.bb.c.uj(map2);
        com.byazt.bb.uj ujVar = new com.byazt.bb.uj(this.f12469c, this.tt, this.uj, this.f12468a, this.f12470da, this.f12476z, map2, false);
        ujVar.tt(this.f12471i);
        ujVar.c(this.f12475x, iUj);
        ujVar.c(this.f12472n);
        ujVar.c(this.ve);
        ujVar.c(this.sp);
        ujVar.c(this.f12474u);
        ujVar.c(new gt(this.sl));
        if (new com.byazt.szt.tt(ujVar, this.yp).c(map2)) {
            cVar.c(map2);
        } else {
            cVar.c(map2, (com.byazt.qb.c) null);
        }
        return true;
    }

    private boolean c() {
        if (this.f12469c == null || this.tt == null) {
            return false;
        }
        if (TextUtils.isEmpty(this.f12470da)) {
            com.byazt.ete.n nVarTt = com.byazt.omf.c.tt(this.f12473t);
            if (nVarTt != null) {
                this.f12470da = nVarTt.tt();
            }
            if (TextUtils.isEmpty(this.f12470da)) {
                return false;
            }
        }
        return (TextUtils.isEmpty(this.uj) || this.f12468a == null) ? false : true;
    }
}
