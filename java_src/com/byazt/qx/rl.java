package com.byazt.qx;

import android.text.TextUtils;
import com.tencent.cos.common.COSHttpResponseKey;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 117})
public class rl extends com.byazt.pct.n<JSONObject, JSONObject> {
    public static void c(com.byazt.pct.nu nuVar) {
        nuVar.c("getSettingInfo", (com.byazt.pct.n<?, ?>) new rl());
    }

    @Override // com.byazt.pct.n
    public JSONObject c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        String[] strArrSplit;
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (jSONObject != null) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(COSHttpResponseKey.Data.KEYS);
                JSONObject jSONObjectZ = com.byazt.omf.gt.tt().z();
                if (jSONObjectZ == null) {
                    jSONObject2.put("code", 1);
                    jSONObject2.put("msg", "settingsJson is null");
                } else if (jSONArrayOptJSONArray != null) {
                    JSONObject jSONObject3 = new JSONObject();
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                        String strOptString = jSONArrayOptJSONArray.optString(i10, "");
                        if (!TextUtils.isEmpty(strOptString) && (strArrSplit = strOptString.split("\\.")) != null) {
                            Object objOpt = null;
                            JSONObject jSONObjectOptJSONObject = jSONObjectZ;
                            for (int i11 = 0; i11 < strArrSplit.length; i11++) {
                                String str = strArrSplit[i11];
                                if (str != null && jSONObjectOptJSONObject != null) {
                                    if (i11 != strArrSplit.length - 1) {
                                        jSONObjectOptJSONObject = jSONObjectOptJSONObject.optJSONObject(str);
                                    } else {
                                        objOpt = jSONObjectOptJSONObject.opt(str);
                                    }
                                }
                            }
                            jSONObject3.putOpt(strOptString, objOpt);
                        }
                    }
                    jSONObject2.put("code", 0);
                    jSONObject2.put("data", jSONObject3);
                } else {
                    jSONObject2.put("code", 1);
                    jSONObject2.put("msg", "keys is not JsonArray or null");
                }
            } else {
                jSONObject2.put("code", 1);
                jSONObject2.put("msg", "params is null");
            }
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
            jSONObject2.put("code", 1);
            jSONObject2.put("msg", "exception: " + th.getMessage());
        }
        return jSONObject2;
    }
}
