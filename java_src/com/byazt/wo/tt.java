package com.byazt.wo;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1953, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f21650c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public JSONObject f21651n;
    public Map<String, String> tt;
    public int uj;
    public JSONObject ve;

    public JSONObject c() {
        return this.f21651n;
    }

    public Map<String, String> n() {
        return this.tt;
    }

    public int tt() {
        return this.uj;
    }

    public JSONObject uj() {
        return this.ve;
    }

    public byte[] ve() {
        return this.f21650c;
    }

    public void c(JSONObject jSONObject) {
        this.f21651n = jSONObject;
    }

    public void tt(JSONObject jSONObject) {
        this.ve = jSONObject;
    }

    public void c(int i10) {
        this.uj = i10;
    }

    public void c(byte[] bArr) {
        this.f21650c = bArr;
    }

    public void c(Map<String, String> map) {
        this.tt = map;
    }
}
