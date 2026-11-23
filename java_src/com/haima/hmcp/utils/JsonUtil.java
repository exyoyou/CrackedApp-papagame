package com.haima.hmcp.utils;

import android.text.TextUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class JsonUtil {
    private JsonUtil() {
    }

    public static String getClipBoardText(String str) {
        JSONObject jSONObject;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(str).optJSONArray("data");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0 || (jSONObject = jSONArrayOptJSONArray.getJSONObject(0)) == null) {
                return null;
            }
            return jSONObject.optString("itemData");
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject getJsonObj(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    try {
                        for (Map.Entry<String, Object> entry : map.entrySet()) {
                            String key = entry.getKey();
                            Object value = entry.getValue();
                            if (!TextUtils.isEmpty(key)) {
                                String key2 = entry.getKey();
                                if (value == null) {
                                    value = "";
                                }
                                jSONObject.put(key2, value);
                            }
                        }
                        return jSONObject;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return jSONObject;
    }

    public static boolean isJSONValid(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            try {
                new JSONObject(str);
                return true;
            } catch (JSONException unused) {
                return false;
            }
        } catch (JSONException unused2) {
            new JSONArray(str);
            return true;
        }
    }

    public static boolean isJsonArray(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            new JSONArray(str);
            return true;
        } catch (JSONException unused) {
            return false;
        }
    }

    public static boolean isJsonObject(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            new JSONObject(str);
            return true;
        } catch (JSONException unused) {
            return false;
        }
    }

    public static final Object parse(String str) {
        return com.alibaba.fastjson.a.parse(str);
    }

    public static final <T> T parseObject(String str, Class<T> cls) {
        return (T) com.alibaba.fastjson.a.parseObject(str, cls);
    }

    public static String toJsonString(Object obj) {
        return com.alibaba.fastjson.a.toJSONString(obj);
    }

    public static final com.alibaba.fastjson.JSONObject parseObject(String str) {
        return com.alibaba.fastjson.a.parseObject(str);
    }
}
