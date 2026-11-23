package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class hs implements com.kwad.sdk.core.d<com.kwad.sdk.utils.b.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.utils.b.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.utils.b.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.utils.b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.bsH = jSONObject.optInt("put_count");
        aVar.bsI = jSONObject.optInt("get_failed_count");
        aVar.bsJ = jSONObject.optInt("get_success_count");
    }

    private static JSONObject b(com.kwad.sdk.utils.b.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = aVar.bsH;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "put_count", i10);
        }
        int i11 = aVar.bsI;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "get_failed_count", i11);
        }
        int i12 = aVar.bsJ;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "get_success_count", i12);
        }
        return jSONObject;
    }
}
