package com.byazt.kp;

import com.byazt.omf.d;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 667, 20})
public final class c {
    public static void c(d dVar, boolean z10, boolean z11, boolean z12) {
        if (dVar == null) {
            return;
        }
        String.format("sendMessage: isVisible = %s, isResume = %s, isForemost = %s", Boolean.valueOf(z10), Boolean.valueOf(z11), Boolean.valueOf(z12));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adVisible", z10);
            jSONObject.put("adResume", z11);
            jSONObject.put("adForemost", z12);
            dVar.tt("notifyPageVisibilityState", jSONObject);
        } catch (Exception unused) {
        }
    }
}
