package io.socket.engineio.client;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class HandshakeData {
    public long pingInterval;
    public long pingTimeout;
    public String sid;
    public String[] upgrades;

    HandshakeData(String str) throws JSONException {
        this(new JSONObject(str));
    }

    HandshakeData(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray("upgrades");
        int length = jSONArray.length();
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = jSONArray.getString(i10);
        }
        this.sid = jSONObject.getString("sid");
        this.upgrades = strArr;
        this.pingInterval = jSONObject.getLong("pingInterval");
        this.pingTimeout = jSONObject.getLong("pingTimeout");
    }
}
