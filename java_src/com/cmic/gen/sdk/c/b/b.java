package com.cmic.gen.sdk.c.b;

import com.join.mgps.dto.Constant;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class b extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f24383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f24384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f24385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f24386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f24387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f24388f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f24389g;

    @Override // com.cmic.gen.sdk.c.b.g
    public String a() {
        return this.f24388f;
    }

    @Override // com.cmic.gen.sdk.c.b.g
    protected String a_(String str) {
        return this.f24383a + this.f24387e + this.f24388f + "iYm0HAnkxQtpvN44";
    }

    @Override // com.cmic.gen.sdk.c.b.g
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", this.f24383a);
            jSONObject.put("apptype", this.f24384b);
            jSONObject.put("phone_ID", this.f24385c);
            jSONObject.put("certflag", this.f24386d);
            jSONObject.put("sdkversion", this.f24387e);
            jSONObject.put("appid", this.f24388f);
            jSONObject.put("expandparams", "");
            jSONObject.put(Constant.MD5, this.f24389g);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public void c(String str) {
        this.f24384b = str;
    }

    public void d(String str) {
        this.f24385c = str;
    }

    public void e(String str) {
        this.f24386d = str;
    }

    public void f(String str) {
        this.f24387e = str;
    }

    public void g(String str) {
        this.f24388f = str;
    }

    public void h(String str) {
        this.f24389g = str;
    }

    public void b(String str) {
        this.f24383a = str;
    }
}
