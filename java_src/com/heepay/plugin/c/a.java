package com.heepay.plugin.c;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    public static int a(JSONObject jSONObject, String str, int i10) {
        try {
            if (jSONObject.has(str)) {
                return jSONObject.getInt(str);
            }
        } catch (Exception unused) {
        }
        return i10;
    }

    public static boolean b(JSONObject jSONObject, String str) {
        try {
            if (jSONObject.has(str)) {
                return jSONObject.getBoolean(str);
            }
        } catch (Exception unused) {
        }
        return true;
    }

    public static String a(String str) {
        return str.replace("_", "");
    }

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
