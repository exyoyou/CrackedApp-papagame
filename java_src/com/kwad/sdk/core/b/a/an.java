package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class an implements com.kwad.sdk.core.d<com.kwad.components.core.webview.jshandler.a.C0886a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.jshandler.a.C0886a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.jshandler.a.C0886a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.jshandler.a.C0886a c0886a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0886a.PC = jSONObject.optString("creativeId");
        if (JSONObject.NULL.toString().equals(c0886a.PC)) {
            c0886a.PC = "";
        }
        c0886a.aps = jSONObject.optString("targetMethod");
        if (JSONObject.NULL.toString().equals(c0886a.aps)) {
            c0886a.aps = "";
        }
        c0886a.apt = jSONObject.optString("methodParams");
        if (JSONObject.NULL.toString().equals(c0886a.apt)) {
            c0886a.apt = "";
        }
    }

    private static JSONObject b(com.kwad.components.core.webview.jshandler.a.C0886a c0886a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = c0886a.PC;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creativeId", c0886a.PC);
        }
        String str2 = c0886a.aps;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "targetMethod", c0886a.aps);
        }
        String str3 = c0886a.apt;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "methodParams", c0886a.apt);
        }
        return jSONObject;
    }
}
