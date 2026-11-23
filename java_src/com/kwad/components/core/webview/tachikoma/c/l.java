package com.kwad.components.core.webview.tachikoma.c;

import com.kwad.sdk.utils.ac;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends com.kwad.sdk.core.response.a.a {
    public int aup;
    public int auq = -1;
    public int aur;

    @Override // com.kwad.sdk.core.response.a.a, com.kwad.sdk.core.b
    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        ac.putValue(jSONObject, "insertScreenAdShowStrategy", this.aup);
        ac.putValue(jSONObject, "isAutoShow", this.aur);
        int i10 = this.auq;
        if (i10 != -1) {
            ac.putValue(jSONObject, "triggerType", i10);
        }
        return jSONObject;
    }
}
