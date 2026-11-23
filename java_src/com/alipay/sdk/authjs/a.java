package com.alipay.sdk.authjs;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f7122g = "CallInfo";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f7123h = "call";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f7124i = "callback";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f7125j = "bundleName";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f7126k = "clientId";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f7127l = "param";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f7128m = "func";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f7129n = "msgType";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f7130a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f7131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f7132c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f7133d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public JSONObject f7134e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f7135f = false;

    /* JADX INFO: renamed from: com.alipay.sdk.authjs.a$a, reason: collision with other inner class name */
    public enum EnumC0203a {
        NONE_ERROR,
        FUNCTION_NOT_FOUND,
        INVALID_PARAMETER,
        RUNTIME_ERROR,
        NONE_PERMISS
    }

    public a(String str) {
        this.f7133d = str;
    }

    private static String a(EnumC0203a enumC0203a) {
        int i10 = b.f7142a[enumC0203a.ordinal()];
        if (i10 == 1) {
            return "function not found";
        }
        if (i10 != 2) {
            return i10 != 3 ? "none" : "runtime error";
        }
        return "invalid parameter";
    }

    private void b(String str) {
        this.f7130a = str;
    }

    private void c(JSONObject jSONObject) {
        this.f7134e = jSONObject;
    }

    private void d(boolean z10) {
        this.f7135f = z10;
    }

    private boolean e() {
        return this.f7135f;
    }

    private String f() {
        return this.f7130a;
    }

    private void g(String str) {
        this.f7131b = str;
    }

    private String h() {
        return this.f7131b;
    }

    private void i(String str) {
        this.f7132c = str;
    }

    private String j() {
        return this.f7132c;
    }

    private void k(String str) {
        this.f7133d = str;
    }

    private String l() {
        return this.f7133d;
    }

    private JSONObject m() {
        return this.f7134e;
    }

    private String n() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(f7126k, this.f7130a);
        jSONObject.put(f7128m, this.f7132c);
        jSONObject.put(f7127l, this.f7134e);
        jSONObject.put(f7129n, this.f7133d);
        return jSONObject.toString();
    }
}
