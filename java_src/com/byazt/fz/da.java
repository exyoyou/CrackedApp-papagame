package com.byazt.fz;

import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1022, 72})
public class da implements sl {
    @Override // com.byazt.fz.sl
    public Object c(JSONObject jSONObject, Object[] objArr) {
        if (objArr == null || objArr.length < 2) {
            return null;
        }
        int i10 = 0;
        Object obj = objArr[0];
        Object obj2 = objArr[1];
        if (obj == null || !(obj2 instanceof String)) {
            return null;
        }
        String str = (String) obj2;
        StringBuilder sb2 = new StringBuilder();
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            while (i10 < jSONArray.length()) {
                if (i10 > 0) {
                    sb2.append(str);
                }
                sb2.append(String.valueOf(jSONArray.opt(i10)));
                i10++;
            }
        } else {
            if (!obj.getClass().isArray()) {
                return String.valueOf(obj);
            }
            Object[] objArr2 = (Object[]) obj;
            while (i10 < objArr2.length) {
                if (i10 > 0) {
                    sb2.append(str);
                }
                sb2.append(String.valueOf(objArr2[i10]));
                i10++;
            }
        }
        return sb2.toString();
    }
}
