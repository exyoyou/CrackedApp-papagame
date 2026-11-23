package com.byazt.wz;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.aas.nb;
import com.byazt.aas.zb;
import com.byazt.ete.gt;
import com.byazt.ete.ic;
import com.byazt.hv.TTDownloadField;
import com.byazt.omf.p;
import com.tencent.cos.common.COSHttpResponseKey;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 65, 34})
public class a extends c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f21700h;
    public volatile Map<String, Object> md;

    public a(Context context, ic icVar, String str, String str2) {
        super(context, icVar, str, str2);
        this.f21700h = false;
    }

    private void rl() {
        com.byazt.ete.n nVarZ = this.ve.z();
        if (nVarZ != null) {
            a().put(COSHttpResponseKey.DOWNLOAD_URL, nVarZ.tt());
        }
        a().put("download_status_listener", this.gu);
        a().put("event_tag", this.uj);
        a().put("dialog_to_landing_page_convert", new com.byazt.hl.c() { // from class: com.byazt.wz.a.1
            @Override // com.byazt.hl.c
            public boolean c(Map<String, Object> map) {
                a aVar = a.this;
                Context context = aVar.getContext();
                a aVar2 = a.this;
                return aVar.c(context, aVar2.ve, aVar2.uj);
            }
        });
        a().put("download_popup_manager", x());
        a().put(TTDownloadField.TT_ACTIVITY, getContext());
        a().put("open_market_in_app", Boolean.valueOf(gt.my(this.ve)));
        a().put("download_manager_hash_code", Integer.valueOf(hashCode()));
    }

    @Override // com.byazt.wz.c, com.byazt.pop.ve
    public Map<String, Object> a() {
        if (this.md == null) {
            this.md = new HashMap();
        }
        return this.md;
    }

    @Override // com.byazt.wz.c, com.byazt.pop.ve
    public void c(ic icVar, boolean z10) {
        if (getContext() == null) {
            return;
        }
        c(nb.qy(icVar), z10);
    }

    @Override // com.byazt.wz.c, com.byazt.dna.qp.c
    public void handleMsg(Message message) {
    }

    @Override // com.byazt.wz.c
    public void my() {
        if (TextUtils.isEmpty(this.qy)) {
            com.byazt.qt.ve.c(this.uj, this.ve, (JSONObject) null, gt());
        } else {
            a().put("enable_update_download_model", Boolean.TRUE);
            a().put(COSHttpResponseKey.DOWNLOAD_URL, this.qy);
            com.byazt.qt.ve.c(this.qy, this.uj, this.ve, (JSONObject) null, gt());
        }
        com.byazt.qt.ve.c(this.ve, gt(), false);
    }

    @Override // com.byazt.pop.ve
    public void n() {
        ic icVar = this.ve;
        if (icVar != null) {
            com.byazt.rgb.c.uj(icVar.zm());
        }
        if (this.tt == null) {
            return;
        }
        this.sp.set(false);
        Function<SparseArray<Object>, Object> function = this.rh;
        if (function != null) {
            function.apply(com.byazt.yxi.uj.c().c(8).c(Void.class).c(0, new zb().c("force", Boolean.TRUE).c("hashCode", Integer.valueOf(gt()))).tt());
        }
        rh();
    }

    @Override // com.byazt.wz.c
    public boolean nu() {
        return false;
    }

    @Override // com.byazt.wz.c
    public synchronized void rh() {
        rl();
        this.sp.set(true);
        if (this.rh != null) {
            this.rh.apply(com.byazt.yxi.uj.c().c(5).c(Void.class).c(0, new zb().c("hashCode", Integer.valueOf(gt())).c("downloadStatusChangeListener", this.gu).c("marketStatusChangeListener", this.zm)).tt());
        }
    }

    @Override // com.byazt.wz.c
    public boolean sl() {
        return false;
    }

    @Override // com.byazt.pop.ve
    public boolean sp() {
        return this.rl;
    }

    @Override // com.byazt.pop.ve
    public void tt(boolean z10) {
        a().put("is_open_market_intercept_for_dsp", Boolean.valueOf(z10));
    }

    @Override // com.byazt.wz.c
    public synchronized void u() {
        if (this.tt == null) {
            return;
        }
        if (this.rh != null && p.uj >= 6400 && !p.x()) {
            com.byazt.qt.ve.c((com.byazt.wrq.ve) null, gt());
        }
        AtomicBoolean atomicBoolean = this.sp;
        if (atomicBoolean != null && atomicBoolean.get()) {
            this.sp.set(false);
            if (this.rh != null) {
                this.rh.apply(com.byazt.yxi.uj.c().c(4).c(Void.class).c(0, new zb().c("hashCode", Integer.valueOf(gt()))).tt());
            }
        }
        da();
    }

    @Override // com.byazt.wz.c, com.byazt.pop.ve
    public boolean uj() {
        Function<SparseArray<Object>, Object> function = this.rh;
        return function != null && com.byazt.qt.ve.c(function, gt()) == 2;
    }

    @Override // com.byazt.wz.c
    public boolean ve(JSONObject jSONObject, boolean z10) {
        return false;
    }

    public void x(boolean z10) {
        this.f21700h = z10;
    }

    @Override // com.byazt.wz.c, com.byazt.pop.ve
    public void ve(boolean z10) {
        this.gt = z10;
        a().put("is_click_button", Boolean.valueOf(z10));
    }

    @Override // com.byazt.wz.c, com.byazt.pop.ve
    public void c(int i10) {
        a().put("need_check_compliance", Integer.valueOf(i10));
    }

    @Override // com.byazt.pop.ve
    public void uj(boolean z10) {
        this.rl = z10;
        a().put("has_show_dl_factors", Boolean.valueOf(z10));
    }

    @Override // com.byazt.wz.c
    public void a(boolean z10) {
        a().put("convert_from_landing_page", Boolean.valueOf(z10));
    }

    @Override // com.byazt.pop.ve
    public void c(JSONObject jSONObject, boolean z10) {
        nb.md();
        HashMap map = new HashMap();
        map.put("material_meta", this.ve);
        map.put("context", com.byazt.omf.gt.getContext());
        map.put("is_market_covert", Boolean.valueOf(uj()));
        com.byazt.ete.n nVarZ = this.ve.z();
        if (nVarZ != null) {
            map.put(COSHttpResponseKey.DOWNLOAD_URL, nVarZ.tt());
        }
        if (a() != null) {
            map.putAll(a());
        }
        map.put("download_status_listener", this.gu);
        map.put("event_tag", this.uj);
        map.put("landing_page_source", Integer.valueOf(nb.uj(this.uj)));
        map.put("dialog_to_landing_page_convert", new com.byazt.hl.c() { // from class: com.byazt.wz.a.2
            @Override // com.byazt.hl.c
            public boolean c(Map<String, Object> map2) {
                a aVar = a.this;
                Context context = aVar.getContext();
                a aVar2 = a.this;
                return aVar.c(context, aVar2.ve, aVar2.uj);
            }
        });
        map.put("download_popup_manager", x());
        map.put(TTDownloadField.TT_ACTIVITY, getContext());
        map.put("open_market_in_app", Boolean.valueOf(gt.my(this.ve)));
        map.putAll(com.byazt.rv.c.c().c(this.ve.hashCode() + this.ve.qy()));
        map.put("convert_from_downloader", Boolean.TRUE);
        map.put("download_manager_hash_code", Integer.valueOf(gt()));
        map.put("is_feed_register_direct_download", Boolean.valueOf(z10));
        HashMap map2 = new HashMap();
        map.put("download_manager_hash_code", Integer.valueOf(gt()));
        HashMap map3 = new HashMap();
        if (this.f21700h) {
            com.byazt.ppf.ve.c("download", this.ve.yg(), map, (com.byazt.nd.n) null);
        } else {
            com.byazt.ppf.ve.c(this.ve, map2, "clickEvent", map, this.uj, map3, -1L);
        }
    }
}
