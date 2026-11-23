package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class gc implements com.kwad.sdk.core.d<com.kwad.sdk.f.a.a.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.f.a.a.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.f.a.a.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.f.a.a.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.bgw = jSONObject.optInt("apiLevel");
        aVar.bgx = jSONObject.optInt("colorModeSupport");
        aVar.bgy = jSONObject.optInt("screenHdrAvailable");
        aVar.bgz = jSONObject.optInt("hdrSupport");
    }

    private static JSONObject b(com.kwad.sdk.f.a.a.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = aVar.bgw;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "apiLevel", i10);
        }
        int i11 = aVar.bgx;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "colorModeSupport", i11);
        }
        int i12 = aVar.bgy;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "screenHdrAvailable", i12);
        }
        int i13 = aVar.bgz;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "hdrSupport", i13);
        }
        return jSONObject;
    }
}
