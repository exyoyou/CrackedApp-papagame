package com.byazt.ete;

import android.text.TextUtils;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 34})
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f13569a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13570c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f13571da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public JSONArray f13572i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f13573n;
    public String sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f13574t;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public JSONArray f13575u;
    public String uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f13576x;
    public HashMap<String, String> yp = new HashMap<>();

    public a() {
    }

    public String a() {
        return this.tt;
    }

    public void c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.yp.put(str, str2);
    }

    public String da() {
        return this.sp;
    }

    public String i() {
        return this.f13569a;
    }

    public String n() {
        return this.f13570c;
    }

    public String sl() {
        return this.f13576x;
    }

    public String sp() {
        return this.ve;
    }

    public JSONArray t() {
        return this.f13572i;
    }

    public String tt() {
        return this.f13573n;
    }

    public String u() {
        return this.f13571da;
    }

    public JSONArray uj() {
        return this.f13575u;
    }

    public float ve() {
        return this.f13574t;
    }

    public String x() {
        return this.uj;
    }

    public String yp() {
        return this.sl;
    }

    public void a(String str) {
        this.f13569a = str;
    }

    public void da(String str) {
        this.sl = str;
    }

    public void i(String str) {
        this.f13571da = str;
    }

    public void n(String str) {
        this.uj = str;
    }

    public void sp(String str) {
        this.sp = str;
    }

    public void tt(String str) {
        this.f13570c = str;
    }

    public void uj(String str) {
        this.ve = str;
    }

    public void ve(String str) {
        this.tt = str;
    }

    public void x(String str) {
        this.f13576x = str;
    }

    public a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        uj(jSONObject.optString("developer_name"));
        tt(jSONObject.optString("app_version"));
        tt(jSONObject.optJSONArray("permissions"));
        n(jSONObject.optString("privacy_policy_url"));
        i(jSONObject.optString("package_name"));
        da(jSONObject.optString("app_name"));
        c((float) jSONObject.optDouble("score", 0.0d));
        c(jSONObject.optJSONArray("creative_tags"));
        c(jSONObject.optString("permissions_url"));
        a(jSONObject.optString("desc_url"));
        sp(jSONObject.optString("reg_number"));
        x(jSONObject.optString("reg_url"));
    }

    public HashMap<String, String> c() {
        return this.yp;
    }

    public void tt(JSONArray jSONArray) {
        this.f13572i = jSONArray;
    }

    public void c(String str) {
        this.f13573n = str;
    }

    public void c(float f10) {
        this.f13574t = f10;
    }

    public void c(JSONArray jSONArray) {
        this.f13575u = jSONArray;
    }
}
