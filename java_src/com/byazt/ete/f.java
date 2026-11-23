package com.byazt.ete;

import android.os.Build;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 953})
public class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f13644c = 0;
    public static int tt = 0;
    public static int ve = 1;

    public static void c(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("app_common_config");
        if (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("ugen_image_load_config")) == null) {
            return;
        }
        f13644c = jSONObjectOptJSONObject.optInt("api", 0);
        tt = jSONObjectOptJSONObject.optInt("size_limit", 0);
        ve = jSONObjectOptJSONObject.optInt("zip_level", 1);
    }

    public static int c(int i10, int i11) {
        if (f13644c <= 0 || Build.VERSION.SDK_INT > f13644c || i10 == 0 || i11 == 0) {
            return 1;
        }
        int i12 = tt;
        if (i10 >= i12 || i11 >= i12) {
            return Math.max(1, ve);
        }
        return 1;
    }
}
