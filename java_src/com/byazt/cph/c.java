package com.byazt.cph;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1059, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f12549a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f12550c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12551n;
    public JSONObject sp;
    public String tt;
    public int uj;
    public String ve;

    /* JADX INFO: renamed from: com.byazt.cph.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 1059, 44})
    public static class C0284c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f12552a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f12553c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f12554n;
        public JSONObject sp;
        public String tt;
        public int uj;
        public String ve;

        public C0284c c(String str) {
            this.f12553c = str;
            return this;
        }

        public C0284c tt(String str) {
            this.tt = str;
            return this;
        }

        public C0284c ve(String str) {
            this.ve = str;
            return this;
        }

        public C0284c c(int i10) {
            this.uj = i10;
            return this;
        }

        public C0284c tt(int i10) {
            this.f12554n = i10;
            return this;
        }

        public C0284c c(long j10) {
            this.f12552a = j10;
            return this;
        }

        public C0284c c(JSONObject jSONObject) {
            this.sp = jSONObject;
            return this;
        }

        public c c() {
            c cVar = new c();
            cVar.f12550c = this.f12553c;
            cVar.tt = this.tt;
            cVar.ve = this.ve;
            cVar.uj = this.uj;
            cVar.f12551n = this.f12554n;
            cVar.f12549a = this.f12552a;
            cVar.sp = this.sp;
            return cVar;
        }
    }

    public long a() {
        return this.f12549a;
    }

    public int n() {
        return this.f12551n;
    }

    public JSONObject sp() {
        return this.sp;
    }

    public int uj() {
        return this.uj;
    }

    public String ve() {
        return this.ve;
    }

    public String tt() {
        return this.tt;
    }

    public String c() {
        return this.f12550c;
    }
}
