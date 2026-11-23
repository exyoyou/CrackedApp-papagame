package com.byazt.ix;

import com.byazt.nr.m;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1677, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f15560a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15561c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f15562n;
    public int sp;
    public int tt;
    public String uj;
    public String ve;

    public String c() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MediationConstant.KEY_REASON, this.f15561c);
            jSONObject.put("fill_error_code", this.tt);
            jSONObject.put("fill_error_msg", this.ve);
            jSONObject.put("mediation_rit", this.uj);
            jSONObject.put("load_sort", this.f15562n);
            jSONObject.put("show_sort", this.f15560a);
            jSONObject.put("has_shown", this.sp);
            return jSONObject.toString();
        } catch (JSONException e10) {
            m.c(e10);
            return "{\"name\": \"json err\"}";
        }
    }

    public void n(int i10) {
        this.f15560a = i10;
    }

    public void tt(int i10) {
        this.f15561c = i10;
    }

    public void uj(int i10) {
        this.f15562n = i10;
    }

    public void ve(int i10) {
        this.tt = i10;
    }

    public void tt(String str) {
        this.uj = str;
    }

    public void c(int i10) {
        this.sp = i10;
    }

    public void c(String str) {
        this.ve = str;
    }
}
