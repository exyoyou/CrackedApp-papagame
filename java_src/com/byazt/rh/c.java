package com.byazt.rh;

import com.byazt.nr.m;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 115, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f19457c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f19458n;
    public String tt;
    public long uj;
    public String ve;

    public c(JSONObject jSONObject) {
        this.f19457c = jSONObject.optLong("cid");
        this.tt = jSONObject.optString("url");
        this.ve = jSONObject.optString("file_hash");
        this.uj = jSONObject.optLong("effective_time");
        this.f19458n = jSONObject.optLong("expiration_time");
    }

    public String c() {
        return this.tt;
    }

    public JSONObject n() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cid", this.f19457c);
            jSONObject.put("url", this.tt);
            jSONObject.put("file_hash", this.ve);
            jSONObject.put("effective_time", this.uj);
            jSONObject.put("expiration_time", this.f19458n);
        } catch (Exception e10) {
            m.tt("BrandVideo", e10.getMessage());
        }
        return jSONObject;
    }

    public String tt() {
        return this.ve;
    }

    public boolean uj() {
        return System.currentTimeMillis() >= this.f19458n;
    }

    public long ve() {
        return this.uj;
    }

    public long c(String str) {
        File file = new File(str, this.ve);
        return file.exists() ? file.lastModified() : System.currentTimeMillis();
    }

    public boolean tt(String str) {
        File file = new File(str, this.ve);
        if (!file.exists()) {
            return false;
        }
        try {
            return file.delete();
        } catch (Exception unused) {
            return false;
        }
    }
}
