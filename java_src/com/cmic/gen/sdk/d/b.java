package com.cmic.gen.sdk.d;

import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.bn;
import com.cmic.gen.sdk.c.b.g;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class b extends g {
    private String A;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private JSONArray f24460o;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f24469x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f24470y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f24471z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f24447b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f24448c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f24449d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f24450e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f24451f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f24452g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f24453h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f24454i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f24455j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f24456k = "";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f24457l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f24458m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f24459n = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f24461p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f24462q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f24463r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f24464s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f24465t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f24466u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f24467v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f24468w = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CopyOnWriteArrayList<Throwable> f24446a = new CopyOnWriteArrayList<>();

    public void A(String str) {
        this.A = str;
    }

    @Override // com.cmic.gen.sdk.c.b.g
    public String a() {
        return null;
    }

    @Override // com.cmic.gen.sdk.c.b.g
    protected String a_(String str) {
        return null;
    }

    public void b(String str) {
        this.f24447b = str;
    }

    public void c(String str) {
        this.f24467v = str;
    }

    public void d(String str) {
        this.f24468w = str;
    }

    public void e(String str) {
        this.f24463r = str;
    }

    public void f(String str) {
        this.f24458m = str;
    }

    public void g(String str) {
        this.f24457l = str;
    }

    public void h(String str) {
        this.f24456k = str;
    }

    public void i(String str) {
        this.f24449d = str;
    }

    public void j(String str) {
        this.f24450e = str;
    }

    public void k(String str) {
        this.f24451f = str;
    }

    public void l(String str) {
        this.f24454i = str;
    }

    void m(String str) {
        this.f24466u = str;
    }

    void n(String str) {
        this.f24461p = str;
    }

    void o(String str) {
        this.f24464s = str;
    }

    void p(String str) {
        this.f24465t = str;
    }

    public void q(String str) {
        this.f24459n = str;
    }

    void r(String str) {
        this.f24448c = str;
    }

    public void s(String str) {
        this.f24452g = str;
    }

    public void t(String str) {
        this.f24453h = str;
    }

    public void u(String str) {
        this.f24455j = str;
    }

    void w(String str) {
        this.f24462q = str;
    }

    public void x(String str) {
        this.f24469x = str;
    }

    public void y(String str) {
        this.f24470y = str;
    }

    public void z(String str) {
        this.f24471z = str;
    }

    void a(JSONArray jSONArray) {
        this.f24460o = jSONArray;
    }

    @Override // com.cmic.gen.sdk.c.b.g
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appid", this.f24447b);
            jSONObject.put("traceId", this.f24448c);
            jSONObject.put("appName", this.f24449d);
            jSONObject.put("appVersion", this.f24450e);
            jSONObject.put("sdkVersion", com.cmic.gen.sdk.auth.c.SDK_VERSION);
            jSONObject.put("clientType", "android");
            jSONObject.put("timeOut", this.f24451f);
            jSONObject.put("requestTime", this.f24452g);
            jSONObject.put("responseTime", this.f24453h);
            jSONObject.put("elapsedTime", this.f24454i);
            jSONObject.put("requestType", this.f24455j);
            jSONObject.put("interfaceType", this.f24456k);
            jSONObject.put("interfaceCode", this.f24457l);
            jSONObject.put("interfaceElasped", this.f24458m);
            jSONObject.put("loginType", this.f24459n);
            jSONObject.put("exceptionStackTrace", this.f24460o);
            jSONObject.put("operatorType", this.f24461p);
            jSONObject.put("networkType", this.f24462q);
            jSONObject.put(bn.f7598j, this.f24463r);
            jSONObject.put("reqDevice", this.f24464s);
            jSONObject.put("reqSystem", this.f24465t);
            jSONObject.put("simCardNum", this.f24466u);
            jSONObject.put("imsiState", this.f24467v);
            jSONObject.put("resultCode", this.f24468w);
            jSONObject.put("AID", this.f24469x);
            jSONObject.put("sysOperType", this.f24470y);
            jSONObject.put("scripType", this.f24471z);
            if (!TextUtils.isEmpty(this.A)) {
                jSONObject.put("networkTypeByAPI", this.A);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }
}
