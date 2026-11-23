package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class gv implements com.kwad.sdk.core.d<com.kwad.components.core.webview.jshandler.m.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.jshandler.m.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.jshandler.m.b) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.jshandler.m.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.status = jSONObject.optInt("status");
        bVar.progress = jSONObject.optInt("progress");
        bVar.soFarBytes = jSONObject.optLong("soFarBytes");
        bVar.totalBytes = jSONObject.optLong("totalBytes");
        bVar.apI = jSONObject.optInt("realProgress");
    }

    private static JSONObject b(com.kwad.components.core.webview.jshandler.m.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = bVar.status;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i10);
        }
        int i11 = bVar.progress;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "progress", i11);
        }
        long j10 = bVar.soFarBytes;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "soFarBytes", j10);
        }
        long j11 = bVar.totalBytes;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "totalBytes", j11);
        }
        int i12 = bVar.apI;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "realProgress", i12);
        }
        return jSONObject;
    }
}
