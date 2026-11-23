package com.byazt.dbo;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 961, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12677c;
    public Map<String, JSONObject> tt;

    public boolean c() {
        int i10 = this.f12677c;
        return i10 > 20000 && i10 < 100000;
    }

    public static n c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        int iOptInt = jSONObject.optInt("code");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("result");
        HashMap map = new HashMap();
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("id", "");
                    String strOptString2 = jSONObjectOptJSONObject.optString("req_id", "");
                    if (!TextUtils.isEmpty(c(strOptString, strOptString2))) {
                        map.put(c(strOptString, strOptString2), jSONObjectOptJSONObject);
                    }
                }
            }
        }
        n nVar = new n();
        nVar.tt = map;
        nVar.f12677c = iOptInt;
        return nVar;
    }

    public static String c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return str2 + "_" + str;
    }
}
