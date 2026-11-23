package com.byazt.bzd;

import com.haima.hmcp.beans.HmInputMappingContent;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 724, 72})
public class da {
    public static JSONObject c(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null) {
                    jSONObject.put(jSONObjectOptJSONObject.optString("name"), jSONObjectOptJSONObject.opt(HmInputMappingContent.FIELD_VALUE));
                }
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }
}
