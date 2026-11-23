package com.byazt.ete;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 956})
public class q {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13854c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13855n;
    public int tt;
    public int uj;
    public long ve;

    public static q c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        q qVar = new q();
        qVar.f13854c = jSONObject.optInt("auth_type");
        qVar.tt = jSONObject.optInt("auth_time");
        qVar.ve = jSONObject.optLong("auth_out_time");
        qVar.uj = jSONObject.optInt("video_open_deeplink");
        qVar.f13855n = jSONObject.optInt("reject_in");
        return qVar;
    }

    public int a() {
        return this.f13855n;
    }

    public long n() {
        return this.ve;
    }

    public int tt() {
        return this.f13854c;
    }

    public int uj() {
        return this.uj;
    }

    public int ve() {
        return this.tt;
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("auth_type", this.f13854c);
            jSONObject.put("auth_time", this.tt);
            jSONObject.put("auth_out_time", this.ve);
            jSONObject.put("video_open_deeplink", this.uj);
            jSONObject.put("reject_in", this.f13855n);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
        return jSONObject;
    }
}
