package com.byazt.qx;

import com.byazt.ete.kp;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 17})
public class gu extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WeakReference<com.byazt.omf.d> f19333c;
    public final String tt;

    public gu(com.byazt.omf.d dVar, String str) {
        this.f19333c = new WeakReference<>(dVar);
        this.tt = str;
    }

    public static void c(com.byazt.pct.nu nuVar, com.byazt.omf.d dVar) {
        nuVar.c("interactiveStart", (com.byazt.pct.n<?, ?>) new gu(dVar, "interactiveStart"));
        nuVar.c("interactiveFinish", (com.byazt.pct.n<?, ?>) new gu(dVar, "interactiveFinish"));
        nuVar.c("interactiveEnd", (com.byazt.pct.n<?, ?>) new gu(dVar, "interactiveEnd"));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x002b  */
    @Override // com.byazt.pct.n
    public JSONObject c(JSONObject jSONObject, com.byazt.pct.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        if (this.f19333c.get() == null) {
            return jSONObject2;
        }
        com.byazt.omf.d dVar = this.f19333c.get();
        com.byazt.ete.ic icVarX = dVar.x();
        String str = this.tt;
        str.hashCode();
        int i10 = 0;
        boolean z10 = true;
        switch (str) {
            case "interactiveStart":
                dVar.rh();
                return jSONObject2;
            case "interactiveEnd":
                dVar.my();
                return jSONObject2;
            case "interactiveFinish":
                try {
                    if (jSONObject.optInt(com.sigmob.sdk.base.common.a.f78868b, 1) != 1) {
                        z10 = false;
                    }
                    int iC = c(icVarX, jSONObject.optInt("reduce_duration", -1));
                    if (z10) {
                        dVar.uj(iC);
                    } else {
                        i10 = -1;
                    }
                    jSONObject2.put("code", i10);
                    jSONObject2.put("reduce_duration", iC);
                    break;
                } catch (JSONException e10) {
                    com.byazt.nr.m.c(e10);
                }
                return jSONObject2;
            default:
                return jSONObject2;
        }
    }

    public static int c(com.byazt.ete.ic icVar, int i10) {
        int iMc = icVar != null ? icVar.mc() : 0;
        if (i10 >= 0 && iMc >= 0) {
            i10 = Math.min(i10, iMc);
        } else if (i10 < 0) {
            i10 = iMc >= 0 ? iMc : 0;
        }
        if (kp.n(icVar)) {
            return 0;
        }
        return i10;
    }
}
