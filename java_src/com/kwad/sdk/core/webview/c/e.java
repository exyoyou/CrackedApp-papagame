package com.kwad.sdk.core.webview.c;

import androidx.annotation.Nullable;
import com.haima.hmcp.ConstantsInternal;
import com.kwad.sdk.utils.ac;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements com.kwad.sdk.core.b {
    private final String aIt;
    private final int result;

    public e(int i10, String str) {
        this.result = i10;
        this.aIt = str;
    }

    @Override // com.kwad.sdk.core.b
    public final void parseJson(@Nullable JSONObject jSONObject) {
    }

    @Override // com.kwad.sdk.core.b
    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        ac.putValue(jSONObject, "result", this.result);
        ac.putValue(jSONObject, ConstantsInternal.KEY_ERROR_MSG, this.aIt);
        return jSONObject;
    }
}
