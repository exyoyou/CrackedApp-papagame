package com.byazt.ete;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 117})
public class rl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13861c = 1;
    public int tt = 1;

    public void c(int i10) {
        this.f13861c = i10;
    }

    public void tt(int i10) {
        this.tt = i10;
    }

    public JSONObject ve() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ah", this.f13861c);
            jSONObject.put("am", this.tt);
        } catch (Exception e10) {
            com.byazt.nr.m.ve(e10.toString());
        }
        return jSONObject;
    }

    public boolean c() {
        return this.f13861c == 1;
    }

    public boolean tt() {
        return this.tt == 1;
    }
}
