package com.byazt.lr;

import com.byazt.nr.m;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 155, 91})
public class sp {
    public static void c(String str, long j10) {
        com.byazt.nn.n nVarN = com.byazt.nn.a.c().n(j10);
        if (nVarN.gr()) {
            return;
        }
        nVarN.ve.setRefer(str);
        com.byazt.zn.c.c().tt("lp_app_dialog_click", nVarN);
    }

    public static void tt(String str, long j10) {
        c(str, null, j10);
    }

    public static void c(String str, JSONObject jSONObject, long j10) {
        com.byazt.zn.c.c().tt(str, jSONObject, com.byazt.nn.a.c().n(j10));
    }

    public static void c(String str, com.byazt.nn.n nVar) {
        com.byazt.zn.c.c().tt(str, nVar);
    }

    public static void c(int i10, com.byazt.nn.n nVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("error_code", Integer.valueOf(i10));
        } catch (Exception e10) {
            m.c(e10);
        }
        com.byazt.zn.c.c().tt("lp_compliance_error", jSONObject, nVar);
    }

    public static void c(int i10, long j10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("error_code", Integer.valueOf(i10));
        } catch (Exception e10) {
            m.c(e10);
        }
        com.byazt.zn.c.c().tt("lp_compliance_error", jSONObject, com.byazt.nn.a.c().n(j10));
    }
}
