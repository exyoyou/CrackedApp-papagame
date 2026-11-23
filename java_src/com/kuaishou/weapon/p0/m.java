package com.kuaishou.weapon.p0;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f74805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f74806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f74807c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f74808d;

    public m(String str, JSONObject jSONObject) {
        this.f74805a = str;
        this.f74806b = jSONObject;
    }

    public JSONObject a() {
        return this.f74806b;
    }

    public String b() {
        return this.f74807c;
    }

    public String c() {
        return this.f74808d;
    }

    public void a(String str) {
        this.f74807c = str;
    }

    public void b(String str) {
        this.f74808d = str;
    }
}
