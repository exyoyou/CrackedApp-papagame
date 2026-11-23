package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class el implements com.kwad.sdk.core.d<com.kwad.components.ad.draw.a.e> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.ad.draw.a.e) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.ad.draw.a.e) bVar, jSONObject);
    }

    private static void a(com.kwad.components.ad.draw.a.e eVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        eVar.status = jSONObject.optInt("status");
        eVar.materialType = jSONObject.optInt("material_type");
        eVar.materialUrl = jSONObject.optString("material_url");
        if (JSONObject.NULL.toString().equals(eVar.materialUrl)) {
            eVar.materialUrl = "";
        }
        eVar.dP = jSONObject.optLong("resource_load_time_ms");
    }

    private static JSONObject b(com.kwad.components.ad.draw.a.e eVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = eVar.status;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i10);
        }
        int i11 = eVar.materialType;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "material_type", i11);
        }
        String str = eVar.materialUrl;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "material_url", eVar.materialUrl);
        }
        long j10 = eVar.dP;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "resource_load_time_ms", j10);
        }
        return jSONObject;
    }
}
