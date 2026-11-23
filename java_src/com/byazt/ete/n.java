package com.byazt.ete;

import com.tencent.cos.common.COSHttpResponseKey;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 46})
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13817a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13818c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13819n;
    public String sp;
    public String tt;
    public int uj;
    public String ve;

    public int a() {
        return this.f13819n;
    }

    public String c() {
        return this.sp;
    }

    public int n() {
        return this.uj;
    }

    public int sp() {
        return this.f13817a;
    }

    public String tt() {
        return this.f13818c;
    }

    public String uj() {
        return this.ve;
    }

    public String ve() {
        return this.tt;
    }

    public JSONObject x() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", ve());
            jSONObject.put("app_size", sp());
            jSONObject.put("comment_num", a());
            jSONObject.put(COSHttpResponseKey.DOWNLOAD_URL, tt());
            jSONObject.put("package_name", uj());
            jSONObject.put("score", n());
        } catch (Exception e10) {
            com.byazt.nr.m.ve(e10.toString());
        }
        return jSONObject;
    }

    public void c(String str) {
        this.sp = str;
    }

    public void tt(String str) {
        this.f13818c = str;
    }

    public void uj(String str) {
        this.ve = str;
    }

    public void ve(String str) {
        this.tt = str;
    }

    public void c(int i10) {
        this.uj = i10;
    }

    public void tt(int i10) {
        this.f13819n = i10;
    }

    public void ve(int i10) {
        this.f13817a = i10;
    }
}
