package com.byazt.qx;

import com.sigmob.sdk.base.mta.PointParamKey;
import java.lang.ref.WeakReference;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 71})
public class x extends com.byazt.pct.uj<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<com.byazt.omf.d> f19364c;
    public com.byazt.ete.ic tt;
    public com.byazt.at.uj ve;

    public x(com.byazt.omf.d dVar, com.byazt.ete.ic icVar) {
        this.f19364c = new WeakReference<>(dVar);
        this.tt = icVar;
    }

    @Override // com.byazt.pct.uj
    public void uj() {
    }

    public static void c(com.byazt.pct.nu nuVar, final com.byazt.omf.d dVar, final com.byazt.ete.ic icVar) {
        nuVar.c("getNetworkData", new com.byazt.pct.uj.tt() { // from class: com.byazt.qx.x.1
            @Override // com.byazt.pct.uj.tt
            public com.byazt.pct.uj c() {
                return new x(dVar, icVar);
            }
        });
    }

    @Override // com.byazt.pct.uj
    public void c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        com.byazt.omf.d dVar = this.f19364c.get();
        if (dVar == null) {
            ve();
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        this.ve = new com.byazt.at.uj() { // from class: com.byazt.qx.x.2
            @Override // com.byazt.at.uj
            public void c(boolean z10, List<com.byazt.ete.ic> list, boolean z11) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    if (z10) {
                        jSONObject2.put("creatives", com.byazt.omf.d.c(list));
                        jSONObject2.put(PointParamKey.IS_CACHE, z11);
                        if (z11) {
                            jSONObject2.put("prefetch_opt_time", jCurrentTimeMillis - com.byazt.ab.tt.c().ve(x.this.tt));
                        }
                        x.this.c(jSONObject2);
                    } else {
                        x.this.c(jSONObject2);
                    }
                    com.byazt.omf.x.m().hd();
                } catch (Throwable th) {
                    com.byazt.nr.m.ve("DoGetAdsFromNetwork", "onAdLoaded error", th);
                }
            }
        };
        if ((jSONObject != null && jSONObject.optBoolean("is_first_request", false)) && com.byazt.ab.tt.c().c(this.tt, this.ve)) {
            return;
        }
        dVar.c(jSONObject, this.ve);
    }
}
