package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class lu implements com.kwad.sdk.core.d<com.kwad.components.core.innerEc.live.f.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.innerEc.live.f.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.innerEc.live.f.b) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.innerEc.live.f.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.Xv = jSONObject.optString("areaCode");
        if (JSONObject.NULL.toString().equals(bVar.Xv)) {
            bVar.Xv = "";
        }
        bVar.Xw = jSONObject.optLong("pendantResourceId");
        bVar.Xx = jSONObject.optString("pendantCode");
        if (JSONObject.NULL.toString().equals(bVar.Xx)) {
            bVar.Xx = "";
        }
        bVar.action = jSONObject.optInt("action");
        bVar.Xy = jSONObject.optString("eventData");
        if (JSONObject.NULL.toString().equals(bVar.Xy)) {
            bVar.Xy = "";
        }
        bVar.XA = jSONObject.optBoolean("needServerProcess");
        bVar.XB = jSONObject.optBoolean("needBusinessHandle");
        bVar.XC = jSONObject.optString("callbackApi");
        if (JSONObject.NULL.toString().equals(bVar.XC)) {
            bVar.XC = "";
        }
        bVar.XD = jSONObject.optBoolean("needRandomCall");
        bVar.XE = jSONObject.optLong("randomRangeMillis");
        bVar.XF = jSONObject.optBoolean("needSignalFallback");
        bVar.XG = jSONObject.optString("callbackPath");
        if (JSONObject.NULL.toString().equals(bVar.XG)) {
            bVar.XG = "";
        }
    }

    private static JSONObject b(com.kwad.components.core.innerEc.live.f.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = bVar.Xv;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "areaCode", bVar.Xv);
        }
        long j10 = bVar.Xw;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pendantResourceId", j10);
        }
        String str2 = bVar.Xx;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "pendantCode", bVar.Xx);
        }
        int i10 = bVar.action;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "action", i10);
        }
        String str3 = bVar.Xy;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "eventData", bVar.Xy);
        }
        boolean z10 = bVar.XA;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "needServerProcess", z10);
        }
        boolean z11 = bVar.XB;
        if (z11) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "needBusinessHandle", z11);
        }
        String str4 = bVar.XC;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "callbackApi", bVar.XC);
        }
        boolean z12 = bVar.XD;
        if (z12) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "needRandomCall", z12);
        }
        long j11 = bVar.XE;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "randomRangeMillis", j11);
        }
        boolean z13 = bVar.XF;
        if (z13) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "needSignalFallback", z13);
        }
        String str5 = bVar.XG;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "callbackPath", bVar.XG);
        }
        return jSONObject;
    }
}
