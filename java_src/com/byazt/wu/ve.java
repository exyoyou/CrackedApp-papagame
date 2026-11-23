package com.byazt.wu;

import android.text.TextUtils;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1128, 54})
public class ve {
    public static int c(Map<String, Object> map) {
        try {
            return ((Integer) map.get("live_saas_param_interaction_type")).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    private static boolean tt(String str) {
        JSONObject jSONObjectOptJSONObject;
        try {
            if (TextUtils.isEmpty(str) || (jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("enter_request")) == null) {
                return false;
            }
            int iOptInt = jSONObjectOptJSONObject.optInt("activity_type");
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("incr_coupon");
            if (iOptInt == 1 && jSONArrayOptJSONArray != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i10);
                    if (jSONObjectOptJSONObject2.optInt("interaction_type") == 1 && jSONObjectOptJSONObject2.optInt("task_time") > 0 && jSONObjectOptJSONObject2.optLong(HmInputMappingContent.FIELD_VALUE) > 0) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean c(String str) {
        try {
            return (TextUtils.isEmpty(str) || new JSONObject(str).optJSONObject("enter_request") == null || tt(str)) ? false : true;
        } catch (Exception unused) {
            return false;
        }
    }
}
