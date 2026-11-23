package com.byazt.qx;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 163, 66})
public class t extends com.byazt.pct.n<JSONObject, JSONObject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.ete.ic f19359c;
    public List<JSONObject> tt;

    public t(com.byazt.ete.ic icVar, List<JSONObject> list) {
        this.f19359c = icVar;
        this.tt = list;
    }

    public static void c(com.byazt.pct.nu nuVar, com.byazt.ete.ic icVar, List<JSONObject> list) {
        nuVar.c("getAdsData", (com.byazt.pct.n<?, ?>) new t(icVar, list));
    }

    @Override // com.byazt.pct.n
    @Nullable
    public JSONObject c(@NonNull JSONObject jSONObject, @NonNull com.byazt.pct.a aVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        int iOptInt = jSONObject != null ? jSONObject.optInt("ads_num", 3) : -1;
        if (iOptInt < 0) {
            iOptInt = 3;
        }
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("creatives", new JSONArray().put(this.f19359c.yg()));
        jSONObject2.put("firstRes", jSONObject3);
        JSONArray jSONArray = new JSONArray();
        List<JSONObject> list = this.tt;
        if (list != null && list.size() > 0) {
            if (iOptInt > this.tt.size()) {
                iOptInt = this.tt.size();
            }
            int iMin = Math.min(iOptInt, 3);
            for (int i10 = 0; i10 < iMin; i10++) {
                jSONArray.put(i10, this.tt.get(i10));
            }
        }
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("creatives", jSONArray);
        jSONObject2.put("secondRes", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        jSONObject5.put("data", jSONObject2);
        return jSONObject5;
    }
}
