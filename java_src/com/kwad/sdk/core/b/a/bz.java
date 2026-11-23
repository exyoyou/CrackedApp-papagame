package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class bz implements com.kwad.sdk.core.d<com.kwad.components.ad.c.c.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.ad.c.c.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.ad.c.c.b) bVar, jSONObject);
    }

    private static void a(com.kwad.components.ad.c.c.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.status = jSONObject.optInt("status");
        bVar.materialType = jSONObject.optInt("material_type");
        bVar.materialUrl = jSONObject.optString("material_url");
        if (JSONObject.NULL.toString().equals(bVar.materialUrl)) {
            bVar.materialUrl = "";
        }
        bVar.adNum = jSONObject.optInt("ad_num");
        bVar.loadTime = jSONObject.optLong("load_ad_duration_ms");
        bVar.renderTime = jSONObject.optLong("render_duration_ms");
        bVar.cQ = jSONObject.optLong("request_ad_duration_ms");
        bVar.cR = jSONObject.optInt("is_retry_request");
        bVar.renderType = jSONObject.optInt("render_type");
        bVar.cP = jSONObject.optInt("expect_render_type");
    }

    private static JSONObject b(com.kwad.components.ad.c.c.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = bVar.status;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i10);
        }
        int i11 = bVar.materialType;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "material_type", i11);
        }
        String str = bVar.materialUrl;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "material_url", bVar.materialUrl);
        }
        int i12 = bVar.adNum;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_num", i12);
        }
        long j10 = bVar.loadTime;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "load_ad_duration_ms", j10);
        }
        long j11 = bVar.renderTime;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "render_duration_ms", j11);
        }
        long j12 = bVar.cQ;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "request_ad_duration_ms", j12);
        }
        int i13 = bVar.cR;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_retry_request", i13);
        }
        int i14 = bVar.renderType;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "render_type", i14);
        }
        int i15 = bVar.cP;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "expect_render_type", i15);
        }
        return jSONObject;
    }
}
