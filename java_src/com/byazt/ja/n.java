package com.byazt.ja;

import com.byazt.ete.ic;
import com.byazt.omf.d;
import com.byazt.pct.nu;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1425, 46})
public class n extends com.byazt.pct.uj<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<d> f15714c;

    public n(d dVar) {
        this.f15714c = new WeakReference<>(dVar);
    }

    @Override // com.byazt.pct.uj
    public void uj() {
    }

    public static void c(nu nuVar, final d dVar) {
        nuVar.c("openPrivacy", new com.byazt.pct.uj.tt() { // from class: com.byazt.ja.n.1
            @Override // com.byazt.pct.uj.tt
            public com.byazt.pct.uj c() {
                return new n(dVar);
            }
        });
    }

    @Override // com.byazt.pct.uj
    public void c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        d dVar;
        ic icVarX;
        WeakReference<d> weakReference = this.f15714c;
        if (weakReference == null || (dVar = weakReference.get()) == null || (icVarX = dVar.x()) == null) {
            return;
        }
        com.byazt.aas.n.c(aVar.getContext(), icVarX);
        dVar.qp();
    }
}
