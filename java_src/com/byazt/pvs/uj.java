package com.byazt.pvs;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 705, 15})
public class uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18868a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f18869c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public JSONObject f18870n;
    public String tt;
    public int uj;
    public boolean ve;

    public uj(String str, String str2, boolean z10, int i10, JSONObject jSONObject, int i11) {
        this.f18869c = str;
        this.tt = str2;
        this.ve = z10;
        this.uj = i10;
        this.f18870n = jSONObject;
        this.f18868a = i11;
    }

    public JSONObject c() {
        if (this.f18870n == null) {
            this.f18870n = new JSONObject();
        }
        return this.f18870n;
    }

    public int n() {
        return this.uj;
    }

    public String tt() {
        return this.f18869c;
    }

    public boolean uj() {
        return this.ve;
    }

    public String ve() {
        return this.tt;
    }

    public void c(int i10) {
        this.uj = i10;
    }
}
