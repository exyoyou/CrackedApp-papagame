package com.papa91.arc;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class MyJson extends JSONObject {
    public MyJson() {
    }

    public Boolean getBoolean(String str, Boolean bool) {
        if (str != null && !str.equals("")) {
            try {
                return Boolean.valueOf(getBoolean(str));
            } catch (Exception unused) {
            }
        }
        return bool;
    }

    public int getInt(String str, int i10) {
        if (str != null && !str.equals("")) {
            try {
                return getInt(str);
            } catch (Exception unused) {
            }
        }
        return i10;
    }

    public JSONArray getJSONArray(String str, JSONArray jSONArray) {
        if (str != null && !str.equals("")) {
            try {
                return getJSONArray(str);
            } catch (Exception unused) {
            }
        }
        return jSONArray;
    }

    public JSONObject getJSONObject(String str, JSONObject jSONObject) {
        if (str != null && !str.equals("")) {
            try {
                return getJSONObject(str);
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    public Long getLong(String str, Long l10) {
        if (str != null && !str.equals("")) {
            try {
                return Long.valueOf(getLong(str));
            } catch (Exception unused) {
            }
        }
        return l10;
    }

    public String getString(String str, String str2) {
        if (str != null && !str.equals("")) {
            try {
                return getString(str);
            } catch (Exception unused) {
            }
        }
        return str2;
    }

    public MyJson(String str) throws JSONException {
        super(str);
    }

    public Double getString(String str, Double d10) {
        if (str != null && !str.equals("")) {
            try {
                return Double.valueOf(getDouble(str));
            } catch (Exception unused) {
            }
        }
        return d10;
    }
}
