package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ah implements com.kwad.sdk.core.d<com.kwad.sdk.core.adlog.b.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.adlog.b.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.adlog.b.b) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.adlog.b.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.status = jSONObject.optInt("status");
        bVar.aKI = jSONObject.optInt("ad_action_type");
        bVar.retryCount = jSONObject.optInt("retry_count");
        bVar.aLP = jSONObject.optInt("retry_error_code");
        bVar.aLQ = jSONObject.optString("retry_error_msg");
        if (JSONObject.NULL.toString().equals(bVar.aLQ)) {
            bVar.aLQ = "";
        }
        bVar.aMa = jSONObject.optInt("cache_total_num");
        bVar.aMb = jSONObject.optInt("cache_num");
        bVar.aMc = jSONObject.optLong("cacheTimeMs");
        bVar.aLZ = jSONObject.optBoolean("retry_only");
    }

    private static JSONObject b(com.kwad.sdk.core.adlog.b.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = bVar.status;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i10);
        }
        int i11 = bVar.aKI;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_action_type", i11);
        }
        int i12 = bVar.retryCount;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "retry_count", i12);
        }
        int i13 = bVar.aLP;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "retry_error_code", i13);
        }
        String str = bVar.aLQ;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "retry_error_msg", bVar.aLQ);
        }
        int i14 = bVar.aMa;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cache_total_num", i14);
        }
        int i15 = bVar.aMb;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cache_num", i15);
        }
        long j10 = bVar.aMc;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "cacheTimeMs", j10);
        }
        boolean z10 = bVar.aLZ;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "retry_only", z10);
        }
        return jSONObject;
    }
}
