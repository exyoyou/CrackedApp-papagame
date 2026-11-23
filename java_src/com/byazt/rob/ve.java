package com.byazt.rob;

import com.byazt.aas.nb;
import com.byazt.ete.ic;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1211, 54})
public class ve {
    public static void c(ic icVar, boolean z10, int i10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("success", z10 ? 1 : 0);
            jSONObject.put("second_page_type", i10);
        } catch (JSONException unused) {
        }
        com.byazt.ddx.uj.tt(icVar, "second_page_jsb_invoke", jSONObject);
    }

    public static void tt(ic icVar, boolean z10, int i10, int i11) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("success", z10 ? 1 : 0);
            jSONObject.put("second_page_type", i10);
            jSONObject.put("origin_req_id", nb.u(icVar));
            jSONObject.put("error_code", i11);
        } catch (JSONException unused) {
        }
        com.byazt.ddx.uj.tt(icVar, "second_page_show", jSONObject);
    }

    public static void c(ic icVar, boolean z10, int i10, int i11) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("success", z10 ? 1 : 0);
            jSONObject.put("second_page_type", i10);
            jSONObject.put("origin_req_id", nb.u(icVar));
            jSONObject.put("error_code", i11);
        } catch (JSONException unused) {
        }
        com.byazt.ddx.uj.tt(icVar, "second_page_request", jSONObject);
    }
}
