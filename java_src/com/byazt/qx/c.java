package com.byazt.qx;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.Nullable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 20})
public class c extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f19321c;
    public Context tt;

    public c(String str, Context context) {
        this.f19321c = str;
        this.tt = context;
    }

    public static void c(com.byazt.pct.nu nuVar, Context context) {
        nuVar.c("closeView", (com.byazt.pct.n<?, ?>) new c("closeView", context));
    }

    @Override // com.byazt.pct.n
    @Nullable
    public JSONObject c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        String str = this.f19321c;
        str.hashCode();
        if (str.equals("closeView")) {
            Context context = this.tt;
            if (context != null) {
                ((Activity) context).finish();
                jSONObject2.put("success", true);
            } else {
                jSONObject2.put("success", false);
            }
        }
        return jSONObject2;
    }
}
