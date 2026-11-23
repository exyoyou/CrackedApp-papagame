package com.byazt.qx;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 72})
public class da extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.ete.ic f19327c;
    public com.byazt.omf.d tt;
    public String ve;

    public da(com.byazt.ete.ic icVar, com.byazt.omf.d dVar, String str) {
        this.f19327c = icVar;
        this.tt = dVar;
        this.ve = str;
    }

    public static void c(com.byazt.pct.nu nuVar, com.byazt.ete.ic icVar, com.byazt.omf.d dVar) {
        nuVar.c("getEstimatedInteractionAreaInfo", (com.byazt.pct.n<?, ?>) new da(icVar, dVar, "getEstimatedInteractionAreaInfo"));
        nuVar.c("interactionAreaInfo", (com.byazt.pct.n<?, ?>) new da(icVar, dVar, "interactionAreaInfo"));
    }

    @Override // com.byazt.pct.n
    @Nullable
    public JSONObject c(@NonNull JSONObject jSONObject, @NonNull com.byazt.pct.a aVar) throws Exception {
        com.byazt.ete.m mVarC;
        com.byazt.ete.m mVarC2;
        JSONObject jSONObject2;
        com.byazt.sy.i iVarVe = this.tt.ve();
        String str = this.ve;
        str.hashCode();
        if (str.equals("interactionAreaInfo")) {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("areas");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0 || (jSONObject2 = jSONArrayOptJSONArray.getJSONObject(0)) == null) {
                mVarC = null;
                mVarC2 = null;
            } else {
                mVarC = com.byazt.ete.m.c(jSONObject2);
                if (iVarVe != null) {
                    iVarVe.setEasyPlayInteractionAreaInfo(mVarC);
                    mVarC2 = com.byazt.ete.m.c(iVarVe.getEstimatedInteractionAreaInfo());
                } else {
                    mVarC2 = null;
                }
            }
            if (mVarC2 == null) {
                if (iVarVe != null) {
                    iVarVe.c(com.byazt.ete.m.tt(null, mVarC), 1.0d);
                    this.tt.tt("canMakeVisiable", (JSONObject) null);
                }
            } else if (mVarC == null) {
                iVarVe.c(null, -1.0d);
                iVarVe.ve();
                this.tt.tt("expressWebviewRecycle", (JSONObject) null);
            } else {
                double dC = com.byazt.ete.m.c(mVarC2, mVarC);
                double d10 = mVarC.ve * mVarC.uj;
                double d11 = mVarC2.ve * mVarC2.uj;
                if (d11 == 0.0d) {
                    iVarVe.c(com.byazt.ete.m.tt(mVarC2, mVarC), 1.0d);
                    this.tt.tt("canMakeVisiable", (JSONObject) null);
                    return null;
                }
                if (d10 == 0.0d) {
                    iVarVe.c(null, -1.0d);
                    iVarVe.ve();
                    this.tt.tt("expressWebviewRecycle", (JSONObject) null);
                    return null;
                }
                double d12 = dC / d10;
                boolean z10 = d12 >= 0.8d;
                com.byazt.nr.m.c("xeasy", "A:" + d11 + " B:" + d10 + " o:" + dC + " R:" + d12);
                if (!z10) {
                    iVarVe.c(null, -1.0d);
                    iVarVe.ve();
                    this.tt.tt("expressWebviewRecycle", (JSONObject) null);
                    return null;
                }
                iVarVe.c(com.byazt.ete.m.tt(mVarC2, mVarC), (dC - d11) / d11);
                this.tt.tt("canMakeVisiable", (JSONObject) null);
                return null;
            }
        } else if (str.equals("getEstimatedInteractionAreaInfo") && iVarVe != null) {
            return iVarVe.getEstimatedInteractionAreaInfo();
        }
        return null;
    }
}
