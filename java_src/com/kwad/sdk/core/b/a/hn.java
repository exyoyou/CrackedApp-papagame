package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class hn implements com.kwad.sdk.core.d<com.kwad.components.core.webview.jsPublicBridge.a.a.C0885a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.jsPublicBridge.a.a.C0885a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.jsPublicBridge.a.a.C0885a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.jsPublicBridge.a.a.C0885a c0885a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0885a.apb = jSONObject.optInt("platform");
        c0885a.apc = jSONObject.optInt("flowSource");
        c0885a.apd = jSONObject.optInt(com.alipay.sdk.authjs.a.f7126k);
        c0885a.appVersion = jSONObject.optString("app_version");
        if (JSONObject.NULL.toString().equals(c0885a.appVersion)) {
            c0885a.appVersion = "";
        }
        c0885a.netType = jSONObject.optInt("net_type");
        c0885a.ape = jSONObject.optString("publicKey");
        if (JSONObject.NULL.toString().equals(c0885a.ape)) {
            c0885a.ape = "";
        }
        c0885a.apf = jSONObject.optString("sdkgetNumberName");
        if (JSONObject.NULL.toString().equals(c0885a.apf)) {
            c0885a.apf = "";
        }
        c0885a.apg = jSONObject.optString("sdkoperJudgeName");
        if (JSONObject.NULL.toString().equals(c0885a.apg)) {
            c0885a.apg = "";
        }
    }

    private static JSONObject b(com.kwad.components.core.webview.jsPublicBridge.a.a.C0885a c0885a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = c0885a.apb;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "platform", i10);
        }
        int i11 = c0885a.apc;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "flowSource", i11);
        }
        int i12 = c0885a.apd;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.alipay.sdk.authjs.a.f7126k, i12);
        }
        String str = c0885a.appVersion;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "app_version", c0885a.appVersion);
        }
        int i13 = c0885a.netType;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "net_type", i13);
        }
        String str2 = c0885a.ape;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "publicKey", c0885a.ape);
        }
        String str3 = c0885a.apf;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkgetNumberName", c0885a.apf);
        }
        String str4 = c0885a.apg;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sdkoperJudgeName", c0885a.apg);
        }
        return jSONObject;
    }
}
