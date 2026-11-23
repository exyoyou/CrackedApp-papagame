package com.byazt.ii;

import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 759, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile tt f15344c;

    private tt() {
    }

    public static tt c() {
        if (f15344c == null) {
            synchronized (tt.class) {
                if (f15344c == null) {
                    f15344c = new tt();
                }
            }
        }
        return f15344c;
    }

    public void c(JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        com.byazt.nys.tt.tt(com.byazt.bp.tt.getContext(), "tt_sdk_test_tool_data_" + com.byazt.bp.c.t().u(), 0).edit().putString("rit_conf", jSONArray.toString()).apply();
    }

    public void c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        com.byazt.nys.tt.tt(com.byazt.bp.tt.getContext(), "tt_sdk_test_tool_data_" + com.byazt.bp.c.t().u(), 0).edit().putString("adn_init_conf", jSONObject.toString()).apply();
    }
}
