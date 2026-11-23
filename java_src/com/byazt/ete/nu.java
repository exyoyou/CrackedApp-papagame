package com.byazt.ete;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 137})
public class nu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile String f13821c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13822a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f13823i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public JSONObject f13824n;
    public String sp;
    public String tt;
    public int uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f13825x;

    public nu() {
        this.sp = "";
        this.f13825x = "";
    }

    public static void c(String str) {
        f13821c = str;
    }

    private String uj(String str) {
        if (this.f13824n != null && !TextUtils.isEmpty(str) && this.tt != null) {
            String strOptString = this.f13824n.optString(str);
            if (!TextUtils.isEmpty(strOptString)) {
                return this.tt + (this.tt.contains("?") ? x.a.f97576d : "?") + strOptString;
            }
        }
        return this.tt;
    }

    public String a() {
        return this.sp;
    }

    public int n() {
        return this.uj;
    }

    public String sp() {
        return this.f13825x;
    }

    public String tt() {
        return uj(f13821c);
    }

    public int ve() {
        return this.f13822a;
    }

    public void c(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("deeplink_url", tt());
            jSONObject2.put("fallback_url", uj());
            jSONObject2.put("fallback_type", n());
            jSONObject2.put("addon_params", this.f13824n);
            jSONObject2.put("fallback_landing", this.f13822a);
            jSONObject2.put("fallback_landing_ugen_url", this.sp);
            jSONObject2.put("fallback_landing_ugen_md5", this.f13825x);
            jSONObject.put("deep_link", jSONObject2);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public void tt(String str) {
        this.tt = str;
    }

    public void ve(String str) {
        this.ve = str;
    }

    public nu(JSONObject jSONObject) {
        this.sp = "";
        this.f13825x = "";
        if (jSONObject == null) {
            return;
        }
        tt(jSONObject.optString("deeplink_url"));
        ve(jSONObject.optString("fallback_url"));
        c(jSONObject.optInt("fallback_type"));
        this.f13824n = jSONObject.optJSONObject("addon_params");
        this.f13822a = jSONObject.optInt("fallback_landing");
        this.sp = jSONObject.optString("fallback_landing_ugen_url");
        this.f13825x = jSONObject.optString("fallback_landing_ugen_md5");
    }

    public String uj() {
        return this.ve;
    }

    public boolean c() {
        return this.f13823i;
    }

    public void c(boolean z10) {
        this.f13823i = z10;
    }

    public void c(int i10) {
        this.uj = i10;
    }

    public void c(nu nuVar) {
        if (nuVar == null) {
            return;
        }
        if (!TextUtils.isEmpty(nuVar.tt())) {
            tt(nuVar.tt());
        }
        if (!TextUtils.isEmpty(nuVar.uj())) {
            ve(nuVar.uj());
        }
        if (nuVar.n() != 0) {
            c(nuVar.n());
        }
    }
}
