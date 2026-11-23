package com.byazt.qx;

import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 195})
public class gt extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<com.byazt.omf.d> f19332c;

    public gt(com.byazt.omf.d dVar) {
        this.f19332c = new WeakReference<>(dVar);
    }

    public static void c(com.byazt.pct.nu nuVar, com.byazt.omf.d dVar) {
        nuVar.c("getSendRewardStatus", (com.byazt.pct.n<?, ?>) new gt(dVar));
    }

    @Override // com.byazt.pct.n
    public JSONObject c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        com.byazt.omf.d dVar;
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<com.byazt.omf.d> weakReference = this.f19332c;
        if (weakReference != null && weakReference.get() != null && (dVar = this.f19332c.get()) != null) {
            jSONObject2.put("isReward", dVar.sp());
        }
        return jSONObject2;
    }
}
