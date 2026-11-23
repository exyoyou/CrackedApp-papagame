package com.cmic.gen.sdk.view;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f24620a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f24621b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f24622c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f24623d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f24624e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f24625f;

    public void a(String str) {
        this.f24625f = str;
    }

    public void b(String str) {
        this.f24622c = str;
    }

    public void c(String str) {
        this.f24623d = str;
    }

    public void d(String str) {
        this.f24624e = str;
    }

    public void e(String str) {
        this.f24620a = str;
    }

    public void f(String str) {
        this.f24621b = str;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("authPageOut", this.f24621b);
            jSONObject.put("authPageIn", this.f24620a);
            jSONObject.put("authClickSuccess", this.f24623d);
            jSONObject.put("timeOnAuthPage", this.f24624e);
            jSONObject.put("authClickFailed", this.f24622c);
            jSONObject.put("authPrivacyState", this.f24625f);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }
}
