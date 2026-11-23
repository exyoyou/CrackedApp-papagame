package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class od implements com.kwad.sdk.core.d<com.kwad.components.core.webview.tachikoma.c.z> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.tachikoma.c.z) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.tachikoma.c.z) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.tachikoma.c.z zVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        zVar.rq = jSONObject.optInt("currentTime");
        zVar.auB = jSONObject.optBoolean(com.alipay.sdk.util.f.f7234h);
        zVar.ajf = jSONObject.optBoolean("finished");
    }

    private static JSONObject b(com.kwad.components.core.webview.tachikoma.c.z zVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = zVar.rq;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "currentTime", i10);
        }
        boolean z10 = zVar.auB;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, com.alipay.sdk.util.f.f7234h, z10);
        }
        boolean z11 = zVar.ajf;
        if (z11) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "finished", z11);
        }
        return jSONObject;
    }
}
