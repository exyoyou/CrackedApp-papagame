package com.byazt.qx;

import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 115})
public class rh extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<com.byazt.omf.d> f19354c;

    public rh(com.byazt.omf.d dVar) {
        this.f19354c = new WeakReference<>(dVar);
    }

    public static void c(com.byazt.pct.nu nuVar, com.byazt.omf.d dVar) {
        nuVar.c("getPlayTimeCurrent", (com.byazt.pct.n<?, ?>) new rh(dVar));
    }

    @Override // com.byazt.pct.n
    public JSONObject c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<com.byazt.omf.d> weakReference = this.f19354c;
        if (weakReference != null && weakReference.get() != null) {
            com.byazt.omf.d dVar = this.f19354c.get();
            jSONObject2.put("currentTime", dVar != null ? dVar.or() : 0);
        }
        return jSONObject2;
    }
}
