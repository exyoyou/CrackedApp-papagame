package com.haima.hmcp.beans;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class IMESwitchCallbackResult {
    public String code;
    public String ime;
    public String message;
    public String reportMessage;
    public int result;

    public String toCountlyString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("result", this.result);
            jSONObject.put("ime", this.ime);
            if (!TextUtils.isEmpty(this.code)) {
                jSONObject.put("code", this.code);
            }
            if (!TextUtils.isEmpty(this.message)) {
                jSONObject.put("reportMessage", this.message);
            }
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code", this.code);
            jSONObject.put("message", this.message);
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }
}
