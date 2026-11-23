package com.byazt.nn;

import com.byazt.nr.m;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1020, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile x f17537c;

    private x() {
    }

    public static x c() {
        if (f17537c == null) {
            synchronized (uj.class) {
                if (f17537c == null) {
                    f17537c = new x();
                }
            }
        }
        return f17537c;
    }

    public void c(int i10, int i11, com.byazt.dd.tt ttVar) {
        if (ttVar == null) {
            return;
        }
        com.byazt.k.c cVarC = com.byazt.k.c.c(ttVar.my());
        if (cVarC.c("report_api_hijack", 0) == 0) {
            return;
        }
        int i12 = i11 - i10;
        if (i10 <= 0 || i12 <= cVarC.c("check_api_hijack_version_code_diff", 500)) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version_code_diff", i12);
            jSONObject.put("installed_version_code", i11);
            jSONObject.put("hijack_type", 1);
        } catch (JSONException e10) {
            m.c(e10);
        }
        com.byazt.zn.c.c().tt("api_hijack", jSONObject, ttVar);
    }
}
