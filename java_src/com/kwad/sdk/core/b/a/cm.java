package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class cm implements com.kwad.sdk.core.d<com.kwad.sdk.core.webview.d.b.c> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.sdk.core.webview.d.b.c) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.sdk.core.webview.d.b.c) bVar, jSONObject);
    }

    private static void a(com.kwad.sdk.core.webview.d.b.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        cVar.f75323x = jSONObject.optDouble("x");
        cVar.f75324y = jSONObject.optDouble("y");
        cVar.width = jSONObject.optInt("width");
        cVar.height = jSONObject.optInt("height");
    }

    private static JSONObject b(com.kwad.sdk.core.webview.d.b.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        double d10 = cVar.f75323x;
        if (d10 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "x", d10);
        }
        double d11 = cVar.f75324y;
        if (d11 != 0.0d) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "y", d11);
        }
        int i10 = cVar.width;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "width", i10);
        }
        int i11 = cVar.height;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "height", i11);
        }
        return jSONObject;
    }
}
