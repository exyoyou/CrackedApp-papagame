package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class bg implements com.kwad.sdk.core.d<com.kwad.sdk.m.b.a.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.m.b.a.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.m.b.a.a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.m.b.a.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.bnv = jSONObject.optInt("aggregation_sdk_type");
        aVar.bnw = jSONObject.optString("aggregation_version");
        if (JSONObject.NULL.toString().equals(aVar.bnw)) {
            aVar.bnw = "";
        }
        aVar.bnx = jSONObject.optInt("crash_times");
        aVar.bny = jSONObject.optInt("call_ks_union_times");
        aVar.bnz = jSONObject.optLong("ks_launch_delay");
        aVar.bnA = jSONObject.optLong("aggregation_launch_delay");
    }

    private static JSONObject b(com.kwad.sdk.m.b.a.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = aVar.bnv;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "aggregation_sdk_type", i10);
        }
        String str = aVar.bnw;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "aggregation_version", aVar.bnw);
        }
        int i11 = aVar.bnx;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "crash_times", i11);
        }
        int i12 = aVar.bny;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "call_ks_union_times", i12);
        }
        long j10 = aVar.bnz;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ks_launch_delay", j10);
        }
        long j11 = aVar.bnA;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "aggregation_launch_delay", j11);
        }
        return jSONObject;
    }
}
