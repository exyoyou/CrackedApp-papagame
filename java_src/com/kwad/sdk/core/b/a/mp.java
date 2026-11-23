package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class mp implements com.kwad.sdk.core.d<com.kwad.sdk.wrapper.l.a.C0963a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.wrapper.l.a.C0963a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.wrapper.l.a.C0963a) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.wrapper.l.a.C0963a c0963a, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        c0963a.buh = jSONObject.optString("s_cn");
        if (JSONObject.NULL.toString().equals(c0963a.buh)) {
            c0963a.buh = "";
        }
        c0963a.bui = jSONObject.optString("s_mn");
        if (JSONObject.NULL.toString().equals(c0963a.bui)) {
            c0963a.bui = "";
        }
    }

    private static JSONObject b(com.kwad.sdk.wrapper.l.a.C0963a c0963a, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = c0963a.buh;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "s_cn", c0963a.buh);
        }
        String str2 = c0963a.bui;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "s_mn", c0963a.bui);
        }
        return jSONObject;
    }
}
