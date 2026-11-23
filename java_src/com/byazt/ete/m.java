package com.byazt.ete;

import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 130})
public class m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public double f13805c;
    public double tt;
    public double uj;
    public double ve;

    public m(double d10, double d11, double d12, double d13) {
        this.f13805c = d10;
        this.tt = d11;
        this.ve = d12;
        this.uj = d13;
    }

    public static m tt(m mVar, m mVar2) {
        if (mVar == null) {
            return mVar2;
        }
        if (mVar2 == null) {
            return null;
        }
        double d10 = mVar.f13805c;
        double d11 = mVar.tt;
        double d12 = mVar.ve + d10;
        double d13 = mVar.uj + d11;
        double d14 = mVar2.f13805c;
        double d15 = mVar2.tt;
        double d16 = mVar2.ve + d14;
        double d17 = mVar2.uj + d15;
        double dMin = Math.min(d10, d14);
        double dMin2 = Math.min(d11, d15);
        return new m(dMin, dMin2, Math.abs(Math.max(d12, d16) - dMin), Math.abs(Math.max(d13, d17) - dMin2));
    }

    public boolean c(double d10, double d11) {
        double d12 = this.ve;
        if (d12 <= 0.0d) {
            return false;
        }
        double d13 = this.uj;
        if (d13 <= 0.0d) {
            return false;
        }
        double d14 = this.f13805c;
        if (d10 <= d14 || d10 >= d14 + d12) {
            return false;
        }
        double d15 = this.tt;
        return d11 > d15 && d11 < d15 + d13;
    }

    public static m c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(SQLiteMTAHelper.TABLE_POINT);
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("size");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() != 2 || jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray2.length() != 2) {
            return null;
        }
        return new m(jSONArrayOptJSONArray.optDouble(0), jSONArrayOptJSONArray.optDouble(1), jSONArrayOptJSONArray2.optInt(0), jSONArrayOptJSONArray2.optInt(1));
    }

    public static JSONObject c(m mVar) {
        if (mVar == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(0, mVar.f13805c);
            jSONArray.put(1, mVar.tt);
            jSONObject.put(SQLiteMTAHelper.TABLE_POINT, jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(0, mVar.ve);
            jSONArray2.put(1, mVar.uj);
            jSONObject.put("size", jSONArray2);
            return jSONObject;
        } catch (Exception e10) {
            com.byazt.nr.m.c("xeasy", "json:" + e10.getMessage());
            return null;
        }
    }

    public static double c(m mVar, m mVar2) {
        if (mVar == null || mVar2 == null) {
            return 0.0d;
        }
        double d10 = mVar.f13805c;
        double d11 = mVar.tt;
        double d12 = mVar.ve + d10;
        double d13 = mVar.uj + d11;
        double d14 = mVar2.f13805c;
        double d15 = mVar2.tt;
        double d16 = mVar2.ve + d14;
        double d17 = mVar2.uj + d15;
        double dMax = Math.max(d10, d14);
        double dMax2 = Math.max(d11, d15);
        double dMin = (Math.min(d12, d16) - dMax) * (Math.min(d13, d17) - dMax2);
        if (d11 >= d17 || d12 <= d14 || d13 <= d15 || d10 >= d16) {
            return 0.0d;
        }
        return dMin;
    }
}
