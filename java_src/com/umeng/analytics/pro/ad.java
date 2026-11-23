package com.umeng.analytics.pro;

import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class ad extends ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f84248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f84249b;

    public ad(String str, ArrayList<ac> arrayList) {
        super(str, arrayList);
        this.f84248a = "";
        this.f84249b = "";
    }

    @Override // com.umeng.analytics.pro.ab, com.umeng.analytics.pro.ai
    public JSONObject a(String str, JSONObject jSONObject) {
        JSONObject jSONObjectA = super.a(str, jSONObject);
        if (jSONObjectA != null) {
            try {
                jSONObjectA.put(com.umeng.ccg.a.f84992s, this.f84248a);
                jSONObjectA.put("action", this.f84249b);
            } catch (Throwable unused) {
            }
        }
        return jSONObjectA;
    }

    public void c(String str) {
        this.f84248a = str;
    }

    public String d() {
        return this.f84248a;
    }

    public String e() {
        return this.f84249b;
    }

    public void d(String str) {
        this.f84249b = str;
    }
}
