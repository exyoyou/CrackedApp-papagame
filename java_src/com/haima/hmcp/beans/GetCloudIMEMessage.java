package com.haima.hmcp.beans;

import androidx.core.app.NotificationCompat;
import com.haima.hmcp.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class GetCloudIMEMessage {
    public String type = Constants.WS_MESSAGE_TYPE_GET_CLOUD_IME_TYPE;
    public String event = "default_ime";

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", this.type);
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, this.event);
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }
}
