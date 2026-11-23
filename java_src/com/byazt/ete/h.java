package com.byazt.ete;

import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 518})
public class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13678c;
    public long tt;
    public int ve;

    public static h c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        h hVar = new h();
        hVar.f13678c = jSONObject.optInt("refresh_control", 0);
        hVar.tt = jSONObject.optLong("refresh_imp_max_time", 0L);
        hVar.ve = jSONObject.optInt("refresh_num", 0);
        return hVar;
    }

    public void tt(JSONObject jSONObject) {
        try {
            jSONObject.put("refresh_control", this.f13678c);
            jSONObject.put("refresh_imp_max_time", this.tt);
            jSONObject.put("refresh_num", this.ve);
        } catch (JSONException unused) {
        }
    }

    public int ve() {
        return this.ve;
    }

    public static boolean ve(ic icVar) {
        return com.byazt.omf.gt.tt().z(String.valueOf(com.byazt.aas.nb.t(icVar))) && c(icVar) && !com.byazt.dl.uj.c(String.valueOf(com.byazt.aas.nb.t(icVar)));
    }

    public long tt() {
        return this.tt;
    }

    public static boolean c(ic icVar) {
        h hVarZo;
        return (icVar == null || (hVarZo = icVar.zo()) == null || hVarZo.c() != 1) ? false : true;
    }

    public static int tt(ic icVar) {
        h hVarZo;
        if (icVar == null || (hVarZo = icVar.zo()) == null) {
            return 0;
        }
        return hVarZo.ve();
    }

    public int c() {
        return this.f13678c;
    }

    public static boolean c(List<ic> list) {
        Iterator<ic> it2 = list.iterator();
        boolean z10 = false;
        boolean z11 = false;
        while (it2.hasNext()) {
            if (it2.next().fr() == 100.0f) {
                z10 = true;
            } else {
                z11 = true;
            }
        }
        return (z10 && z11) ? false : true;
    }
}
