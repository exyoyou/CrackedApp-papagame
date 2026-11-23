package com.kwad.sdk.core.config.item;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class o extends s {
    private JSONObject aRe;

    public o(String str) {
        this(str, "{}");
    }

    public final int ek(String str) {
        JSONObject jSONObject;
        if (str != null && (jSONObject = this.aRe) != null) {
            try {
                return jSONObject.optInt(str);
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    private o(String str, String str2) {
        super(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.kwad.sdk.core.config.item.b
    public void setValue(String str) {
        super.setValue(str);
        try {
            this.aRe = new JSONObject(getValue());
        } catch (NullPointerException e10) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
        } catch (JSONException e11) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e11);
        }
    }
}
