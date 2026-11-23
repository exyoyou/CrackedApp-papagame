package com.byazt.ogz;

import com.byazt.nr.m;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1190, 13})
public final class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f17847c;
    public String tt;
    public JSONObject uj;
    public long ve = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f17848n = uj.tt;

    public static tt c(JSONObject jSONObject) {
        tt ttVar = new tt();
        if (jSONObject != null) {
            ttVar.c(jSONObject.optString("ec_mall_back_url"));
            ttVar.f17847c = jSONObject.optBoolean("sub_process", false);
            ttVar.ve = jSONObject.optLong("init_delay", uj.f17850c);
            ttVar.uj = jSONObject.optJSONObject("live_tob_init_extra");
            ttVar.c(jSONObject.optString("ec_mall_back_url"));
            ttVar.f17848n = jSONObject.optBoolean("init_after_click", uj.tt);
        }
        return ttVar;
    }

    public boolean n() {
        return this.f17848n;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ec_mall_back_url", this.tt);
            jSONObject.put("sub_process", this.f17847c);
            jSONObject.put("init_delay", this.ve);
            jSONObject.put("live_tob_init_extra", this.uj);
            jSONObject.put("init_after_click", this.f17848n);
        } catch (Exception e10) {
            m.tt("AppLiveConfig", e10);
        }
        return jSONObject.toString();
    }

    public long tt() {
        return this.ve;
    }

    public String uj() {
        return this.tt;
    }

    public JSONObject ve() {
        return this.uj;
    }

    public boolean c() {
        return this.f17847c;
    }

    public void c(String str) {
        this.tt = str;
    }
}
