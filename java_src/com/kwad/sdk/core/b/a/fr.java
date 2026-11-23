package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class fr implements com.kwad.sdk.core.d<com.kwad.components.core.webview.jshandler.g.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.jshandler.g.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.jshandler.g.a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.jshandler.g.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.showLiveStatus = jSONObject.optInt("showLiveStatus");
        aVar.showLiveStyle = jSONObject.optInt("showLiveStyle");
    }

    private static JSONObject b(com.kwad.components.core.webview.jshandler.g.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = aVar.showLiveStatus;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "showLiveStatus", i10);
        }
        int i11 = aVar.showLiveStyle;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "showLiveStyle", i11);
        }
        return jSONObject;
    }
}
