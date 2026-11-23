package com.byazt.qx;

import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 145})
public class my extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.ete.ic f19345c;

    public my(com.byazt.ete.ic icVar) {
        this.f19345c = icVar;
    }

    public static void c(com.byazt.pct.nu nuVar, com.byazt.ete.ic icVar) {
        nuVar.c("getRestMetas", (com.byazt.pct.n<?, ?>) new my(icVar));
    }

    @Override // com.byazt.pct.n
    public JSONObject c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            if (this.f19345c != null) {
                jSONArray = new JSONArray(this.f19345c.hl());
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("creatives", jSONArray);
            jSONObject2.put("data", jSONObject3);
            jSONObject2.put("code", 0);
            jSONObject2.put("msg", "success");
        } catch (Exception e10) {
            com.byazt.nr.m.uj("GetRestMetasMethod", "getRestMetas error: " + e10.getMessage());
            jSONObject2.put("code", -1);
            jSONObject2.put("msg", e10.getMessage());
        }
        return jSONObject2;
    }
}
