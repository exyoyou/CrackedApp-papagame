package com.byazt.qx;

import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 42})
public class i extends com.byazt.pct.uj<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<com.byazt.omf.d> f19337c;

    public i(com.byazt.omf.d dVar) {
        this.f19337c = new WeakReference<>(dVar);
    }

    @Override // com.byazt.pct.uj
    public void uj() {
    }

    public static void c(com.byazt.pct.nu nuVar, final com.byazt.omf.d dVar) {
        nuVar.c("newClickEvent", new com.byazt.pct.uj.tt() { // from class: com.byazt.qx.i.1
            @Override // com.byazt.pct.uj.tt
            public com.byazt.pct.uj c() {
                return new i(dVar);
            }
        });
    }

    @Override // com.byazt.pct.uj
    public void c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        com.byazt.omf.d dVar = this.f19337c.get();
        if (dVar == null) {
            ve();
        } else {
            dVar.x(jSONObject);
        }
    }
}
