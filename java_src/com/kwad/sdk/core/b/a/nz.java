package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class nz implements com.kwad.sdk.core.d<com.kwad.components.core.webview.tachikoma.c.y> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.tachikoma.c.y) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.tachikoma.c.y) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.tachikoma.c.y yVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        yVar.auA = jSONObject.optString("status");
        if (JSONObject.NULL.toString().equals(yVar.auA)) {
            yVar.auA = "";
        }
        yVar.errorCode = jSONObject.optInt("errorCode");
        yVar.errorReason = jSONObject.optString("errorReason");
        if (JSONObject.NULL.toString().equals(yVar.errorReason)) {
            yVar.errorReason = "";
        }
        yVar.rq = jSONObject.optInt("currentTime");
    }

    private static JSONObject b(com.kwad.components.core.webview.tachikoma.c.y yVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = yVar.auA;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", yVar.auA);
        }
        int i10 = yVar.errorCode;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "errorCode", i10);
        }
        String str2 = yVar.errorReason;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "errorReason", yVar.errorReason);
        }
        int i11 = yVar.rq;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "currentTime", i11);
        }
        return jSONObject;
    }
}
