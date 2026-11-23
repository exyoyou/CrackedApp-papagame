package com.byazt.ja;

import com.byazt.omf.d;
import com.byazt.pct.nu;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1425, 54})
public class ve extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<d> f15720c;

    public ve(d dVar) {
        this.f15720c = new WeakReference<>(dVar);
    }

    public static void c(nu nuVar, d dVar) {
        nuVar.c("rewardPlayAgain", (com.byazt.pct.n<?, ?>) new ve(dVar));
    }

    @Override // com.byazt.pct.n
    public JSONObject c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        d dVar;
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<d> weakReference = this.f15720c;
        if (weakReference == null || weakReference.get() == null || (dVar = this.f15720c.get()) == null) {
            return jSONObject2;
        }
        dVar.gt();
        return jSONObject2;
    }
}
