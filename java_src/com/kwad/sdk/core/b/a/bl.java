package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class bl implements com.kwad.sdk.core.d<com.kwad.components.core.webview.jshandler.au.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.jshandler.au.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.jshandler.au.a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.jshandler.au.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.arg = jSONObject.optDouble("progress");
        aVar.status = jSONObject.optInt("status");
        aVar.totalBytes = jSONObject.optLong("totalBytes");
        aVar.soFarBytes = jSONObject.optLong("soFarBytes");
        aVar.arh = jSONObject.optDouble("realProgress");
    }

    private static JSONObject b(com.kwad.components.core.webview.jshandler.au.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        double d10 = aVar.arg;
        if (d10 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "progress", d10);
        }
        int i10 = aVar.status;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i10);
        }
        long j10 = aVar.totalBytes;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "totalBytes", j10);
        }
        long j11 = aVar.soFarBytes;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "soFarBytes", j11);
        }
        double d11 = aVar.arh;
        if (d11 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "realProgress", d11);
        }
        return jSONObject;
    }
}
