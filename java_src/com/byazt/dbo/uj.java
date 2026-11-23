package com.byazt.dbo;

import com.join.mgps.dto.Constant;
import com.umeng.umcrash.UMCrash;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 961, 15})
public class uj {
    public static JSONObject c(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
            String upperCase = com.byazt.nr.a.tt("id=" + str + "&timestamp=" + iCurrentTimeMillis + "&ext=" + str2).toUpperCase();
            jSONObject.put("id", str);
            jSONObject.put(UMCrash.SP_KEY_TIMESTAMP, iCurrentTimeMillis);
            jSONObject.put(Constant.MD5, upperCase);
            jSONObject.put("ext", str2);
        } catch (Exception unused) {
        }
        return jSONObject;
    }
}
