package com.byazt.ny;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.ukr.yp;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 188, 13})
public class tt implements com.byazt.kkb.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.eia.ve f17677c = new com.byazt.eia.ve();

    @Override // com.byazt.kkb.ve
    public boolean c(Map<String, Object> map, final Map<String, Object> map2, final com.byazt.cq.c cVar) {
        com.byazt.ppf.ve.c(this.f17677c, cVar.ve(), map, map2);
        if (this.f17677c.sl()) {
            return true;
        }
        if (this.f17677c.t()) {
            cVar.tt(map2, null);
            return true;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("ext", this.f17677c.w_());
            jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.f17677c.n()));
            jSONObject.putOpt("req_id", this.f17677c.qy());
            jSONObject.putOpt("uchain", Boolean.TRUE);
        } catch (JSONException unused) {
        }
        yp.c().c("landing_page", "native", 0, jSONObject);
        if (this.f17677c.i() == 2) {
            boolean zC = c();
            if (zC) {
                com.byazt.ppf.ve.c(map2, com.byazt.cr.ve.ve);
                cVar.tt(map2);
            } else {
                cVar.tt(map2, null);
            }
            return zC;
        }
        if (this.f17677c.u() != null && new com.byazt.szt.tt(this.f17677c.u()).c(new HashMap())) {
            com.byazt.ppf.ve.c(map2, com.byazt.cr.ve.ve);
            cVar.tt(map2);
            return true;
        }
        Intent intent = new Intent(this.f17677c.getContext(), com.byazt.ppf.tt.c(this.f17677c.m(), com.byazt.ppf.ve.c(this.f17677c, map2), this.f17677c.nu(), map2));
        if (!(this.f17677c.getContext() instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        intent.putExtra("is_outer_click", true);
        intent.putExtra("get_phone_num_status", this.f17677c.sp());
        intent.putExtra("event_tag", this.f17677c.yp());
        if (map == null) {
            m.uj("UChain_LP", "param == null");
            map = new HashMap<>();
        }
        map.putAll(map2);
        map.remove("context");
        Object objRemove = map.remove("landing_page_source");
        nb.c(map, com.byazt.ppf.ve.c(this.f17677c, map2));
        int i10 = -1;
        if (!(objRemove == null || TextUtils.isEmpty(objRemove.toString()))) {
            try {
                i10 = Integer.parseInt(objRemove.toString());
            } catch (Exception unused2) {
            }
        }
        intent.putExtra("landing_page_source", i10);
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && !"log_extra".equals(key)) {
                intent.putExtra(key, value.toString());
            }
        }
        intent.putExtra("web_dl_factors", com.byazt.ppf.ve.tt(map2));
        com.byazt.nr.tt.c(this.f17677c.getContext(), intent, new com.byazt.nr.tt.c() { // from class: com.byazt.ny.tt.1
            @Override // com.byazt.nr.tt.c
            public void c() {
                com.byazt.ppf.ve.c((Map<String, Object>) map2, com.byazt.cr.ve.ve);
                cVar.tt(map2);
                map2.put("is_open_web_page", Boolean.TRUE);
            }

            @Override // com.byazt.nr.tt.c
            public void c(Throwable th) {
                cVar.tt(map2, null);
            }
        });
        return true;
    }

    private boolean c() {
        if (!rh.c(this.f17677c.z())) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        try {
            intent.setData(Uri.parse(this.f17677c.z()));
            if (!(this.f17677c.getContext() instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            com.byazt.nr.tt.c(this.f17677c.getContext(), intent, null);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
