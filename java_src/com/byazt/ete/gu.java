package com.byazt.ete;

import com.umeng.commonsdk.framework.UMModuleRegister;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 17})
public class gu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f13677c;
    public static int tt;

    public static void c(com.byazt.it.n nVar) {
        try {
            JSONObject jSONObject = new JSONObject(nVar.get("dpl_status_counter", ""));
            f13677c = jSONObject.optInt("minute", 0);
            tt = jSONObject.optInt(UMModuleRegister.INNER, 0);
            com.byazt.cl.c.tt();
        } catch (JSONException unused) {
        }
    }

    public static void tt(com.byazt.it.n nVar) {
        nVar.put("dpl_status_counter", new JSONObject().toString());
    }

    public static int tt() {
        return tt;
    }

    public static int c() {
        return f13677c;
    }

    public static void c(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app_common_config");
        if (jSONObjectOptJSONObject != null) {
            try {
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("dpl_status_counter");
                if (jSONObjectOptJSONObject2 != null) {
                    f13677c = jSONObjectOptJSONObject2.optInt("minute", 0);
                    tt = jSONObjectOptJSONObject2.optInt(UMModuleRegister.INNER, 0);
                }
            } catch (Exception unused) {
            }
        }
    }
}
