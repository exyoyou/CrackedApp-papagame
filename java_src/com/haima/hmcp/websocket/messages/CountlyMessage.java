package com.haima.hmcp.websocket.messages;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class CountlyMessage {
    private String data;
    private String eventId;

    public CountlyMessage(String str, String str2) {
        this.eventId = str;
        this.data = str2;
    }

    public String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("event_id", this.eventId);
            jSONObject.put("data", this.data);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("countly", jSONObject);
            return jSONObject2.toString();
        } catch (JSONException e10) {
            e10.printStackTrace();
            return "";
        }
    }
}
