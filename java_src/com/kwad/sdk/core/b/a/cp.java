package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class cp implements com.kwad.sdk.core.d<com.kwad.sdk.core.report.h> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.report.h) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.report.h) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.report.h hVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        hVar.llsid = jSONObject.optLong("llsid");
        hVar.creativeId = jSONObject.optLong("creative_id");
        hVar.score = jSONObject.optInt("score");
        hVar.aVp = jSONObject.optInt("is_bidding");
        hVar.source = jSONObject.optString("source");
        if (JSONObject.NULL.toString().equals(hVar.source)) {
            hVar.source = "";
        }
    }

    private static JSONObject b(com.kwad.sdk.core.report.h hVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j10 = hVar.llsid;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "llsid", j10);
        }
        long j11 = hVar.creativeId;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creative_id", j11);
        }
        int i10 = hVar.score;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "score", i10);
        }
        int i11 = hVar.aVp;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "is_bidding", i11);
        }
        String str = hVar.source;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "source", hVar.source);
        }
        return jSONObject;
    }
}
