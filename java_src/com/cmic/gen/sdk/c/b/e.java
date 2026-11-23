package com.cmic.gen.sdk.c.b;

import android.util.Base64;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class e extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f24396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f24397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f24398c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f24399d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f24400e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f24401f = false;

    public void a(boolean z10) {
        this.f24401f = z10;
    }

    @Override // com.cmic.gen.sdk.c.b.g
    protected String a_(String str) {
        return null;
    }

    public void b(String str) {
        this.f24400e = str;
    }

    public void c(String str) {
        this.f24398c = str;
    }

    public void a(byte[] bArr) {
        this.f24397b = bArr;
    }

    public void b(byte[] bArr) {
        this.f24399d = bArr;
    }

    public a c() {
        return this.f24396a;
    }

    public void a(a aVar) {
        this.f24396a = aVar;
    }

    @Override // com.cmic.gen.sdk.c.b.g
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        if (this.f24401f) {
            try {
                jSONObject.put("encrypted", this.f24398c);
                jSONObject.put("encryptedIV", Base64.encodeToString(this.f24399d, 0));
                jSONObject.put("reqdata", com.cmic.gen.sdk.e.a.a(this.f24397b, this.f24396a.toString(), this.f24399d));
                jSONObject.put("securityreinforce", this.f24400e);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        return jSONObject;
    }

    @Override // com.cmic.gen.sdk.c.b.g
    public String a() {
        return this.f24396a.a();
    }
}
