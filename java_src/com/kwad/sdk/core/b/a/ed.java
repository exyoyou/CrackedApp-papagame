package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ed implements com.kwad.sdk.core.d<com.kwad.components.core.webview.a.a.C0883a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.a.a.C0883a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.a.a.C0883a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.a.a.C0883a c0883a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0883a.url = jSONObject.optString("url");
        if (JSONObject.NULL.toString().equals(c0883a.url)) {
            c0883a.url = "";
        }
        c0883a.packageName = jSONObject.optString("packageName");
        if (JSONObject.NULL.toString().equals(c0883a.packageName)) {
            c0883a.packageName = "";
        }
    }

    private static JSONObject b(com.kwad.components.core.webview.a.a.C0883a c0883a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = c0883a.url;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "url", c0883a.url);
        }
        String str2 = c0883a.packageName;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "packageName", c0883a.packageName);
        }
        return jSONObject;
    }
}
