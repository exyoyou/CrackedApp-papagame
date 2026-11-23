package com.byazt.ete;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 954})
public class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f13645c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f13646n;
    public int tt;
    public String uj;
    public String ve;

    public g(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.f13645c = jSONObject;
            this.tt = jSONObject.optInt("dialog_type");
            this.ve = jSONObject.optString("template_url");
            this.uj = jSONObject.optString("template_md5");
        }
        com.byazt.seg.c cVar = new com.byazt.seg.c();
        cVar.tt(n());
        cVar.ve(uj());
    }

    public boolean a() {
        return this.f13646n;
    }

    public JSONObject c() {
        return this.f13645c;
    }

    public String n() {
        return this.uj;
    }

    public JSONObject tt() {
        return this.f13645c;
    }

    public String uj() {
        return this.ve;
    }

    public int ve() {
        return this.tt;
    }

    public void c(boolean z10) {
        this.f13646n = z10;
    }
}
