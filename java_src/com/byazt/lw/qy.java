package com.byazt.lw;

import android.text.TextUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2104, 110})
public class qy implements com.byazt.dr.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16804c;

    public qy(String str) {
        this.f16804c = str;
    }

    @Override // com.byazt.dr.c
    public Object c(Map<String, JSONObject> map) {
        Object objC;
        if (map == null || map.size() <= 0 || (objC = c(this.f16804c, map.get("default_key"))) == JSONObject.NULL) {
            return null;
        }
        return objC;
    }

    public String toString() {
        return "VariableNode [literals=" + this.f16804c + "]";
    }

    @Override // com.byazt.dr.c
    public String tt() {
        return this.f16804c;
    }

    @Override // com.byazt.dr.c
    public com.byazt.zg.n c() {
        return com.byazt.zg.a.VARIABLE;
    }

    public Object c(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return c(str.split("\\."), 0, jSONObject);
    }

    private Object c(String[] strArr, int i10, JSONObject jSONObject) {
        Object objOpt;
        if (strArr != null && strArr.length > 0 && i10 < strArr.length && jSONObject != null) {
            String str = strArr[i10];
            int iIndexOf = str.indexOf("[");
            int iIndexOf2 = str.indexOf("]");
            if (iIndexOf >= 0 && iIndexOf2 >= 0 && iIndexOf <= iIndexOf2) {
                String strSubstring = str.substring(0, iIndexOf);
                try {
                    int i11 = Integer.parseInt(str.substring(iIndexOf + 1, iIndexOf2));
                    Object objOpt2 = jSONObject.opt(strSubstring);
                    objOpt = objOpt2 instanceof JSONArray ? ((JSONArray) objOpt2).opt(i11) : null;
                } catch (NumberFormatException e10) {
                    com.byazt.nr.m.c(e10);
                    return null;
                }
            } else {
                objOpt = jSONObject.opt(str);
            }
            if (i10 == strArr.length - 1) {
                return objOpt;
            }
            if (objOpt instanceof String) {
                try {
                    return c(strArr, i10 + 1, new JSONObject((String) objOpt));
                } catch (JSONException e11) {
                    com.byazt.nr.m.c(e11);
                    return objOpt;
                }
            }
            if (objOpt instanceof JSONObject) {
                return c(strArr, i10 + 1, (JSONObject) objOpt);
            }
        }
        return null;
    }
}
