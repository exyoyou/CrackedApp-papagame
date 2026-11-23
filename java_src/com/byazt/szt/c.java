package com.byazt.szt;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.eia.x;
import com.byazt.ete.ic;
import com.byazt.nr.rh;
import com.byazt.omf.p;
import com.byazt.ppf.ve;
import com.byazt.ukr.yp;
import com.bykv.vk.component.ttvideo.player.C;
import com.windmill.sdk.WMConstants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1718, 20})
public class c implements com.byazt.hl.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f20070a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Map<String, Object> f20072da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Map<String, Object> f20073i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f20074n;
    public final x sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final JSONObject f20075t;
    public final Context tt;
    public boolean uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.zd.tt f20076x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f20071c = false;
    public final Map<String, Object> ve = new HashMap();

    public c(x xVar, Context context, String str, int i10, Map<String, Object> map, Map<String, Object> map2, JSONObject jSONObject) {
        this.sl = xVar;
        this.tt = context;
        this.f20074n = str;
        this.f20070a = i10;
        this.f20073i = map;
        this.f20072da = map2;
        this.f20075t = jSONObject;
    }

    private boolean tt(String str) {
        if (!rh.c(str)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        try {
            intent.setData(Uri.parse(str));
            if (!(this.tt instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            com.byazt.nr.tt.c(this.tt, intent, null);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.byazt.hl.c
    public boolean c(Map<String, Object> map) {
        x xVar = this.sl;
        if (xVar != null) {
            return c(com.byazt.ppf.tt.c(this.f20071c, ve.c(xVar, this.f20073i), this.uj, this.ve));
        }
        ve.c(this.f20073i, com.byazt.cr.ve.uj);
        return false;
    }

    public void c(com.byazt.zd.tt ttVar) {
        this.f20076x = ttVar;
    }

    public boolean c(Class cls) {
        this.f20071c = false;
        yp.c().c("landing_page", "native", 0, c());
        if (this.sl.i() == 2) {
            return tt(this.sl.x());
        }
        com.byazt.zd.tt ttVar = this.f20076x;
        if (ttVar != null && new tt(ttVar).c(new HashMap())) {
            return true;
        }
        Intent intent = new Intent(this.tt, (Class<?>) cls);
        if (!(this.tt instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        intent.putExtra("is_outer_click", true);
        intent.putExtra("get_phone_num_status", this.sl.sp());
        c(intent);
        com.byazt.nr.tt.c(this.tt, intent, new com.byazt.nr.tt.c() { // from class: com.byazt.szt.c.1
            @Override // com.byazt.nr.tt.c
            public void c(Throwable th) {
            }

            @Override // com.byazt.nr.tt.c
            public void c() {
                c.this.f20073i.put("is_open_web_page", Boolean.TRUE);
            }
        });
        return true;
    }

    private JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("ext", this.sl.w_());
            jSONObject.putOpt("live_interaction_type", Integer.valueOf(this.sl.n()));
            jSONObject.putOpt("req_id", this.sl.qy());
            Boolean bool = Boolean.TRUE;
            jSONObject.putOpt("uchain", bool);
            jSONObject.putOpt("uchain_old", bool);
            jSONObject.putOpt("interaction_type", Integer.valueOf(this.sl.i()));
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public void c(String str) {
        this.sp = str;
    }

    private void c(Intent intent) {
        if (this.sl == null) {
            return;
        }
        Map<String, Object> map = this.f20073i;
        if (map != null) {
            this.ve.putAll(map);
        }
        Map<String, Object> map2 = this.f20072da;
        if (map2 != null) {
            this.ve.putAll(map2);
        }
        this.ve.remove("context");
        if (TextUtils.isEmpty(this.sp)) {
            this.sp = this.sl.x();
        }
        this.ve.put("url", this.sp);
        this.ve.put("gecko_id", this.sl.ve());
        this.ve.put("web_title", this.sl.v_());
        this.ve.put("sdk_version", Integer.valueOf(p.uj));
        this.ve.put(WMConstants.ADID, this.sl.uj());
        this.ve.put("log_extra", this.sl.w_());
        this.ve.put("icon_url", this.sl.tt());
        this.ve.put("event_tag", this.f20074n);
        int i10 = this.f20070a;
        int i11 = -1;
        if (i10 != -1) {
            this.ve.put("landing_page_source", Integer.valueOf(i10));
        }
        this.ve.put("is_outer_click", Boolean.TRUE);
        x xVar = this.sl;
        if (xVar instanceof ic) {
            nb.c(this.ve, (ic) xVar);
        } else {
            JSONObject jSONObject = this.f20075t;
            if (jSONObject != null) {
                nb.c(this.ve, jSONObject, xVar.rl());
            }
        }
        Object objRemove = this.ve.remove("landing_page_source");
        if (!(objRemove == null || TextUtils.isEmpty(objRemove.toString()))) {
            try {
                i11 = Integer.parseInt(objRemove.toString());
            } catch (Exception unused) {
            }
        }
        intent.putExtra("landing_page_source", i11);
        for (Map.Entry<String, Object> entry : this.ve.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && !"log_extra".equals(key)) {
                intent.putExtra(key, value.toString());
            }
        }
        intent.putExtra("web_dl_factors", ve.tt(this.f20073i));
    }
}
