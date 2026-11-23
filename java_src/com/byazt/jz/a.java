package com.byazt.jz;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 232, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16028c;
    public String tt;
    public JSONObject ve;

    public a(int i10) {
        this.f16028c = i10;
    }

    public boolean c() {
        return this.f16028c == 0;
    }

    public a(int i10, Throwable th) {
        this.f16028c = i10;
        if (th != null) {
            this.tt = th.getMessage();
        }
    }

    public a(int i10, String str) {
        this.f16028c = i10;
        this.tt = str;
    }

    public a(int i10, JSONObject jSONObject) {
        this.f16028c = i10;
        this.ve = jSONObject;
    }
}
