package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class mk implements com.kwad.sdk.core.d<com.kwad.components.core.webview.tachikoma.b.u.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.tachikoma.b.u.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.tachikoma.b.u.b) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.tachikoma.b.u.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.status = jSONObject.optInt("status");
        bVar.errorCode = jSONObject.optInt("errorCode");
        bVar.errorMsg = jSONObject.optString("errorMsg");
        if (JSONObject.NULL.toString().equals(bVar.errorMsg)) {
            bVar.errorMsg = "";
        }
    }

    private static JSONObject b(com.kwad.components.core.webview.tachikoma.b.u.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = bVar.status;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i10);
        }
        int i11 = bVar.errorCode;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "errorCode", i11);
        }
        String str = bVar.errorMsg;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "errorMsg", bVar.errorMsg);
        }
        return jSONObject;
    }
}
