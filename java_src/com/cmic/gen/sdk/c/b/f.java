package com.cmic.gen.sdk.c.b;

import com.join.mgps.dto.Constant;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class f extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f24402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f24403b;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private JSONObject f24404a;

        public JSONObject a() {
            return this.f24404a;
        }

        public void a(JSONObject jSONObject) {
            this.f24404a = jSONObject;
        }
    }

    public static class b extends g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f24405a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f24406b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f24407c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f24408d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f24409e;

        @Override // com.cmic.gen.sdk.c.b.g
        protected String a_(String str) {
            return this.f24409e + this.f24408d + this.f24407c + this.f24406b + "@Fdiwmxy7CBDDQNUI";
        }

        @Override // com.cmic.gen.sdk.c.b.g
        public JSONObject b() {
            return null;
        }

        public String c() {
            return this.f24409e;
        }

        public String d() {
            return this.f24405a;
        }

        public String e() {
            return this.f24406b;
        }

        public String f() {
            return this.f24407c;
        }

        @Override // com.cmic.gen.sdk.c.b.g
        public String a() {
            return this.f24408d;
        }

        public void b(String str) {
            this.f24409e = str;
        }

        public void c(String str) {
            this.f24408d = str;
        }

        public void d(String str) {
            this.f24405a = str;
        }

        public void e(String str) {
            this.f24406b = str;
        }

        public void f(String str) {
            this.f24407c = str;
        }
    }

    public void a(b bVar) {
        this.f24402a = bVar;
    }

    @Override // com.cmic.gen.sdk.c.b.g
    protected String a_(String str) {
        return null;
    }

    @Override // com.cmic.gen.sdk.c.b.g
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject2.put(Constant.MD5, this.f24402a.d());
            jSONObject2.put("msgid", this.f24402a.e());
            jSONObject2.put("systemtime", this.f24402a.f());
            jSONObject2.put("appid", this.f24402a.a());
            jSONObject2.put("version", this.f24402a.c());
            jSONObject.put("header", jSONObject2);
            jSONObject3.put("log", this.f24403b.a());
            jSONObject.put("body", jSONObject3);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public void a(a aVar) {
        this.f24403b = aVar;
    }

    @Override // com.cmic.gen.sdk.c.b.g
    public String a() {
        return this.f24402a.f24408d;
    }
}
