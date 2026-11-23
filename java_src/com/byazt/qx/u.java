package com.byazt.qx;

import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 67})
public class u extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<com.byazt.omf.d> f19361c;

    public u(com.byazt.omf.d dVar) {
        this.f19361c = new WeakReference<>(dVar);
    }

    public JSONObject ve() {
        com.byazt.omf.d dVar;
        JSONObject jSONObject = new JSONObject();
        try {
            WeakReference<com.byazt.omf.d> weakReference = this.f19361c;
            return (weakReference == null || (dVar = weakReference.get()) == null) ? jSONObject : dVar.p();
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    public static void c(com.byazt.pct.nu nuVar, com.byazt.omf.d dVar) {
        nuVar.c("getAppManage", (com.byazt.pct.n<?, ?>) new u(dVar));
    }

    @Override // com.byazt.pct.n
    public JSONObject c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        return ve();
    }
}
