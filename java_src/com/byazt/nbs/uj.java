package com.byazt.nbs;

import com.byazt.nr.m;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1871, 15})
public class uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f17137a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public double f17138c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f17139n;
    public JSONObject sp;
    public double tt;
    public String uj;
    public int ve;

    private uj(double d10, double d11, int i10, String str, int i11, String str2, JSONObject jSONObject) {
        this.f17138c = d10;
        this.tt = d11;
        this.ve = i10;
        this.uj = str;
        this.f17139n = i11;
        this.f17137a = str2;
        this.sp = jSONObject;
    }

    public static void c(JSONObject jSONObject, Map<String, uj> map) {
        JSONArray jSONArrayOptJSONArray;
        if (jSONObject == null || (jSONArrayOptJSONArray = jSONObject.optJSONArray("prime_rits")) == null) {
            return;
        }
        for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
            try {
                String strOptString = jSONArrayOptJSONArray.optString(i10);
                try {
                    map.put(strOptString, new uj(jSONObject.optDouble("upper", 0.0d), jSONObject.optDouble("lower", 0.0d), jSONObject.optInt("type"), strOptString, jSONObject.optInt("js_mode"), jSONObject.optString("rule_id"), jSONObject.optJSONObject("refresh_time")));
                } catch (Exception e10) {
                    e = e10;
                    m.c(e);
                }
            } catch (Exception e11) {
                e = e11;
            }
        }
    }

    public int getType() {
        return this.ve;
    }

    public boolean n() {
        return this.f17138c <= 0.0d && this.tt <= 0.0d;
    }

    public double tt() {
        return this.tt;
    }

    public String uj() {
        return this.f17137a;
    }

    public int ve() {
        return this.f17139n;
    }

    public double c() {
        return this.f17138c;
    }

    public int c(String str) {
        JSONObject jSONObject = this.sp;
        if (jSONObject != null) {
            return jSONObject.optInt(str);
        }
        return 0;
    }
}
