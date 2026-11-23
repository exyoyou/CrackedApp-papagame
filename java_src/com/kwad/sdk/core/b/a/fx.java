package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class fx implements com.kwad.sdk.core.d<com.kwad.components.core.webview.tachikoma.c.j> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.tachikoma.c.j) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.tachikoma.c.j) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.tachikoma.c.j jVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        jVar.rewardTime = jSONObject.optInt("rewardTime");
    }

    private static JSONObject b(com.kwad.components.core.webview.tachikoma.c.j jVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = jVar.rewardTime;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "rewardTime", i10);
        }
        return jSONObject;
    }
}
