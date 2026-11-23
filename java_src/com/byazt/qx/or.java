package com.byazt.qx;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 579})
public class or extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.xs.tt f19349c;

    public or(com.byazt.xs.tt ttVar) {
        this.f19349c = ttVar;
    }

    public JSONObject ve() {
        return new JSONObject();
    }

    public static void c(com.byazt.pct.nu nuVar, com.byazt.xs.tt ttVar) {
        nuVar.c("RendUgenDownloadDialogState", (com.byazt.pct.n<?, ?>) new or(ttVar));
    }

    @Override // com.byazt.pct.n
    public JSONObject c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        c(jSONObject);
        return ve();
    }

    private void c(JSONObject jSONObject) {
        if (jSONObject == null || this.f19349c == null) {
            return;
        }
        int iOptInt = jSONObject.optInt("code");
        if (iOptInt == 200) {
            this.f19349c.c();
        } else {
            this.f19349c.c(iOptInt, jSONObject.optString("errorMsg"));
        }
    }
}
