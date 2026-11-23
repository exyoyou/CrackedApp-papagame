package com.byazt.co;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2247, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f12546a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f12547c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final JSONObject f12548n = new JSONObject();
    public long tt;
    public String uj;
    public String ve;

    public void c(String str) {
        this.f12547c = str;
    }

    public String toString() {
        return "FingerInfo{name='" + this.f12547c + "', duration=" + this.tt + ", data='" + this.ve + "', error='" + this.uj + "'}";
    }

    public void tt(String str) {
        this.ve = str;
    }

    public void ve(String str) {
        this.uj = str;
    }

    public String c() {
        return this.f12547c;
    }

    public JSONObject tt() {
        return this.f12548n;
    }

    public void ve() {
        try {
            this.f12548n.putOpt("duration", Long.valueOf(this.tt));
            if ("d_i0".equals(this.f12547c) || "d_a0".equals(this.f12547c)) {
                this.f12548n.putOpt("data", new JSONObject(this.ve));
            } else {
                this.f12548n.putOpt("data", this.ve);
            }
            this.f12548n.putOpt("errorMsg", this.uj);
        } catch (JSONException e10) {
            com.byazt.tf.c.c("__kite json error " + e10.getMessage());
        }
    }

    public void c(long j10) {
        this.tt = j10;
    }

    public void c(int i10) {
        this.f12546a = i10;
    }
}
