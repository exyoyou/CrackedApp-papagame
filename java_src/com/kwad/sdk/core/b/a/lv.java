package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class lv implements com.kwad.sdk.core.d<com.kwad.components.core.webview.tachikoma.c.u> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.tachikoma.c.u) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.tachikoma.c.u) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.tachikoma.c.u uVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        uVar.aux = jSONObject.optBoolean("needPromopt");
        uVar.needReport = jSONObject.optBoolean("needReport");
        uVar.showTime = jSONObject.optInt("showTime");
        uVar.apv = jSONObject.optLong("playDuration");
    }

    private static JSONObject b(com.kwad.components.core.webview.tachikoma.c.u uVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z10 = uVar.aux;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "needPromopt", z10);
        }
        boolean z11 = uVar.needReport;
        if (z11) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "needReport", z11);
        }
        int i10 = uVar.showTime;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "showTime", i10);
        }
        long j10 = uVar.apv;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playDuration", j10);
        }
        return jSONObject;
    }
}
