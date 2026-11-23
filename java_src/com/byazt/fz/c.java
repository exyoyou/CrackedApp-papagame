package com.byazt.fz;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1022, 20})
public class c implements sl {
    @Override // com.byazt.fz.sl
    public Object c(JSONObject jSONObject, Object[] objArr) {
        if (objArr == null || objArr.length != 2) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            JSONArray jSONArrayC = c(objArr[0]);
            if (jSONArrayC == null) {
                return jSONArray;
            }
            int i10 = Integer.parseInt(String.valueOf(objArr[1]));
            for (int i11 = 0; i11 < jSONArrayC.length(); i11 += i10) {
                JSONObject jSONObject2 = new JSONObject();
                JSONArray jSONArray2 = new JSONArray();
                for (int i12 = 0; i12 < i10; i12++) {
                    int i13 = i11 + i12;
                    if (i13 >= jSONArrayC.length()) {
                        break;
                    }
                    jSONArray2.put(jSONArrayC.opt(i13));
                }
                jSONObject2.put("$chunk", jSONArray2);
                jSONArray.put(jSONObject2);
            }
        } catch (Throwable unused) {
        }
        return jSONArray;
    }

    private JSONArray c(Object obj) {
        if (obj instanceof JSONArray) {
            return (JSONArray) obj;
        }
        if (obj != null && obj.getClass().isArray()) {
            JSONArray jSONArray = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                jSONArray.put(obj2);
            }
            return jSONArray;
        }
        try {
            return new JSONArray(String.valueOf(obj));
        } catch (JSONException unused) {
            return null;
        }
    }
}
