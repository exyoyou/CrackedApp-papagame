package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class gg implements com.kwad.sdk.core.d<com.kwad.components.core.webview.jshandler.ak.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.jshandler.ak.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.jshandler.ak.a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.jshandler.ak.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.type = jSONObject.optInt("type");
        aVar.aqL = jSONObject.optInt("playDuration");
    }

    private static JSONObject b(com.kwad.components.core.webview.jshandler.ak.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = aVar.type;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "type", i10);
        }
        int i11 = aVar.aqL;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playDuration", i11);
        }
        return jSONObject;
    }
}
