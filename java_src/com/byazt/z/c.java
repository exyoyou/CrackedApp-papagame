package com.byazt.z;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.haima.hmcp.ConstantsInternal;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 133, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f22518c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f22519n;
    public int tt = -1;
    public String uj;
    public String ve;

    public String c() {
        return tt().toString();
    }

    public JSONObject tt() {
        JSONObject jSONObject = new JSONObject();
        c(jSONObject);
        return jSONObject;
    }

    public void c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("ah_plan_type", this.f22518c);
            jSONObject.put("error_code", String.valueOf(this.tt));
            jSONObject.put(ConstantsInternal.KEY_ERROR_MSG, this.ve);
            jSONObject.put("real_device_plan", this.uj);
            jSONObject.put("device_plans", this.f22519n);
        } catch (Throwable unused) {
        }
    }

    public static c c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        c cVar = new c();
        try {
            JSONObject jSONObject = new JSONObject(str);
            cVar.f22519n = jSONObject.optString("device_plans", null);
            cVar.uj = jSONObject.optString("real_device_plan", null);
            cVar.ve = jSONObject.optString(ConstantsInternal.KEY_ERROR_MSG, null);
            cVar.f22518c = jSONObject.optString("ah_plan_type", null);
            String strOptString = jSONObject.optString("error_code");
            if (TextUtils.isEmpty(strOptString)) {
                cVar.tt = -1;
            } else {
                cVar.tt = Integer.parseInt(strOptString);
            }
        } catch (Throwable th) {
            m.c(th);
        }
        return cVar;
    }
}
