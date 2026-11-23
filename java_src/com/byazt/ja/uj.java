package com.byazt.ja;

import com.byazt.ete.ic;
import com.byazt.omf.d;
import com.byazt.omf.x;
import com.byazt.pct.nu;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1425, 15})
public class uj extends com.byazt.pct.uj<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<d> f15718c;

    public uj(d dVar) {
        this.f15718c = new WeakReference<>(dVar);
    }

    @Override // com.byazt.pct.uj
    public void uj() {
    }

    public static void c(nu nuVar, final d dVar) {
        nuVar.c("adInfoDialog", new com.byazt.pct.uj.tt() { // from class: com.byazt.ja.uj.1
            @Override // com.byazt.pct.uj.tt
            public com.byazt.pct.uj c() {
                return new uj(dVar);
            }
        });
    }

    @Override // com.byazt.pct.uj
    public void c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        ic icVarX;
        x.m().hd();
        d dVar = this.f15718c.get();
        if (dVar == null || (icVarX = dVar.x()) == null) {
            return;
        }
        com.byazt.aas.n.c(aVar.getContext(), icVarX.mk());
    }
}
