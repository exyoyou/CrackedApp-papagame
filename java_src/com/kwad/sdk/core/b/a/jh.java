package com.kwad.sdk.core.b.a;

import com.byazt.bv.BaseConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class jh implements com.kwad.sdk.core.d<com.kwad.components.core.webview.jshandler.a.c> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.webview.jshandler.a.c) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.webview.jshandler.a.c) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.webview.jshandler.a.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        cVar.errorCode = jSONObject.optInt("errorCode");
        cVar.apu = jSONObject.optInt(BaseConstants.EVENT_LABEL_EXTRA);
        cVar.apv = jSONObject.optLong("playDuration");
        cVar.apw = jSONObject.optBoolean("clickRewardDialog");
    }

    private static JSONObject b(com.kwad.components.core.webview.jshandler.a.c cVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = cVar.errorCode;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "errorCode", i10);
        }
        int i11 = cVar.apu;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, BaseConstants.EVENT_LABEL_EXTRA, i11);
        }
        long j10 = cVar.apv;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "playDuration", j10);
        }
        boolean z10 = cVar.apw;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "clickRewardDialog", z10);
        }
        return jSONObject;
    }
}
