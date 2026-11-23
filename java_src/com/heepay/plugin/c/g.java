package com.heepay.plugin.c;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class g {
    public static String a(JSONObject jSONObject, String str) {
        try {
            if (jSONObject.has(str)) {
                return jSONObject.getString(str);
            }
        } catch (Exception unused) {
        }
        return null;
    }
}
