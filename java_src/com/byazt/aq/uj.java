package com.byazt.aq;

import com.byazt.nr.m;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1950, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<c> f11727c;
    public String tt;
    public String uj;
    public String ve;

    @com.byazt.zqa.c(c = {0, 1, 1950, 123})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f11728c;
        public JSONObject tt;
    }

    public static uj c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        uj ujVar = new uj();
        String strOptString = jSONObject.optString("custom_components");
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(strOptString);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null) {
                    c cVar = new c();
                    cVar.f11728c = jSONObjectOptJSONObject.optInt("id");
                    cVar.tt = new JSONObject(jSONObjectOptJSONObject.optString("componentLayout"));
                    arrayList.add(cVar);
                }
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
        ujVar.f11727c = arrayList;
        ujVar.tt = jSONObject.optString("diff_data");
        ujVar.ve = jSONObject.optString("style_diff");
        ujVar.uj = jSONObject.optString("tag_diff");
        return ujVar;
    }
}
