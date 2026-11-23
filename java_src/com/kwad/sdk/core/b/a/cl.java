package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class cl implements com.kwad.sdk.core.d<com.kwad.components.core.webview.jshandler.a.a.C0887a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.jshandler.a.a.C0887a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.jshandler.a.a.C0887a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.jshandler.a.a.C0887a c0887a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0887a.arX = jSONObject.optString("android");
        if (JSONObject.NULL.toString().equals(c0887a.arX)) {
            c0887a.arX = "";
        }
    }

    private static JSONObject b(com.kwad.components.core.webview.jshandler.a.a.C0887a c0887a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = c0887a.arX;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "android", c0887a.arX);
        }
        return jSONObject;
    }
}
