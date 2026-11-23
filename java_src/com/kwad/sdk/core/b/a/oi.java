package com.kwad.sdk.core.b.a;

import com.kwad.sdk.commercial.model.WebCloseStatus;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class oi implements com.kwad.sdk.core.d<WebCloseStatus> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((WebCloseStatus) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((WebCloseStatus) bVar, jSONObject);
    }

    private static void a(WebCloseStatus webCloseStatus, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        webCloseStatus.interactSuccess = jSONObject.optBoolean("interactSuccess");
        webCloseStatus.closeType = jSONObject.optInt("closeType");
    }

    private static JSONObject b(WebCloseStatus webCloseStatus, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        boolean z10 = webCloseStatus.interactSuccess;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "interactSuccess", z10);
        }
        int i10 = webCloseStatus.closeType;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "closeType", i10);
        }
        return jSONObject;
    }
}
