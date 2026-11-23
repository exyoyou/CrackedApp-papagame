package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class lp implements com.kwad.sdk.core.d<com.kwad.components.core.webview.tachikoma.c.r> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.tachikoma.c.r) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.tachikoma.c.r) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.tachikoma.c.r rVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        rVar.auw = jSONObject.optBoolean("userForce");
        rVar.type = jSONObject.optInt("type");
    }

    private static JSONObject b(com.kwad.components.core.webview.tachikoma.c.r rVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z10 = rVar.auw;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "userForce", z10);
        }
        int i10 = rVar.type;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "type", i10);
        }
        return jSONObject;
    }
}
