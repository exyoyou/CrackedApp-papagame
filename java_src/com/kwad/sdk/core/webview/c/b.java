package com.kwad.sdk.core.webview.c;

import androidx.annotation.Nullable;
import com.kwad.sdk.utils.ac;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements com.kwad.sdk.core.b {
    public String bcX;
    public String bcY;
    public String data;

    @Override // com.kwad.sdk.core.b
    public final void parseJson(@Nullable JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.bcX = jSONObject.optString("action");
        this.data = jSONObject.optString("data");
        this.bcY = jSONObject.optString(com.alipay.sdk.authjs.a.f7124i);
    }

    @Override // com.kwad.sdk.core.b
    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        ac.putValue(jSONObject, "action", this.bcX);
        ac.putValue(jSONObject, "data", this.data);
        ac.putValue(jSONObject, com.alipay.sdk.authjs.a.f7124i, this.bcY);
        return jSONObject;
    }
}
