package com.byazt.axo;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1724, 13})
public class tt implements c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f11797c;

    @Override // com.byazt.axo.c
    public void c(JSONObject jSONObject) throws JSONException {
        c cVar = this.f11797c;
        if (cVar != null) {
            cVar.c(jSONObject);
        }
        jSONObject.put("event_ts", System.currentTimeMillis());
    }
}
