package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ni implements com.kwad.sdk.core.d<com.kwad.sdk.core.threads.d> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.threads.d) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.threads.d) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.threads.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        dVar.aYJ = jSONObject.optInt("rate_reciprocal");
        dVar.aYP = jSONObject.optInt("threshold");
        dVar.interval = jSONObject.optLong("interval");
    }

    private static JSONObject b(com.kwad.sdk.core.threads.d dVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = dVar.aYJ;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "rate_reciprocal", i10);
        }
        int i11 = dVar.aYP;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "threshold", i11);
        }
        long j10 = dVar.interval;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "interval", j10);
        }
        return jSONObject;
    }
}
