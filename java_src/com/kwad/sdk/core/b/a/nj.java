package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class nj implements com.kwad.sdk.core.d<com.kwad.components.ad.h.a.a.b.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.ad.h.a.a.b.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.ad.h.a.a.b.a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.ad.h.a.a.b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.rn = jSONObject.optInt("timerName");
        aVar.ro = jSONObject.optInt("time");
    }

    private static JSONObject b(com.kwad.components.ad.h.a.a.b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = aVar.rn;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "timerName", i10);
        }
        int i11 = aVar.ro;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "time", i11);
        }
        return jSONObject;
    }
}
