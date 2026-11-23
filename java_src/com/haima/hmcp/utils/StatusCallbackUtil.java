package com.haima.hmcp.utils;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class StatusCallbackUtil {
    public static String DATA = "data";
    public static String PLAYERSTATE = "playerState";
    public static String SERVICEFINISH = "isServiceFinish";
    public static String STATUS = "status";

    public static String getCallbackData(int i10, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(STATUS, i10);
            jSONObject.put(DATA, str);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject.toString();
    }
}
