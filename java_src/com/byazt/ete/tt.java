package com.byazt.ete;

import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.dj.tt f13890a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13891c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f13892da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f13893i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ArrayList<Integer> f13894n;
    public long sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public JSONObject f13895t;
    public int tt;
    public String uj;
    public int ve = 1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f13896x;

    public int a() {
        return this.ve;
    }

    public String c() {
        return this.f13891c;
    }

    public long da() {
        return this.f13893i;
    }

    public long i() {
        return this.f13896x;
    }

    public JSONObject n() {
        return this.f13895t;
    }

    public long sl() {
        return this.f13892da;
    }

    public com.byazt.dj.tt sp() {
        return this.f13890a;
    }

    public long t() {
        return this.sl;
    }

    public int tt() {
        return this.tt;
    }

    public String uj() {
        return this.uj;
    }

    public int ve() {
        return this.sp;
    }

    public ArrayList<Integer> x() {
        return this.f13894n;
    }

    public void c(String str) {
        this.f13891c = str;
    }

    public void tt(int i10) {
        this.sp = i10;
    }

    public void uj(long j10) {
        this.sl = j10;
    }

    public void ve(int i10) {
        this.ve = i10;
    }

    public void c(int i10) {
        this.tt = i10;
    }

    public void tt(String str) {
        this.uj = str;
    }

    public void ve(long j10) {
        this.f13892da = j10;
    }

    public void c(JSONObject jSONObject) {
        this.f13895t = jSONObject;
    }

    public void tt(long j10) {
        this.f13893i = j10;
    }

    public void c(com.byazt.dj.tt ttVar) {
        this.f13890a = ttVar;
    }

    public void c(ArrayList<Integer> arrayList) {
        this.f13894n = arrayList;
    }

    public static void c(tt ttVar) {
        int iTt;
        if (ttVar == null || ttVar.sp() == null || (iTt = ttVar.tt()) >= 0 || iTt == -8) {
            return;
        }
        com.byazt.ukr.yp.c().tt(new com.byazt.ee.c() { // from class: com.byazt.ete.tt.1
            @Override // com.byazt.ee.c
            public com.byazt.qal.c c() throws Exception {
                JSONObject jSONObjectN = tt.this.n();
                if (jSONObjectN == null) {
                    jSONObjectN = new JSONObject();
                }
                jSONObjectN.put("from", tt.this.a());
                jSONObjectN.put("err_code", tt.this.tt());
                jSONObjectN.put("err_msg", tt.this.uj());
                jSONObjectN.put("server_res_str", tt.this.c());
                if (tt.this.x() != null && tt.this.x().size() > 0) {
                    jSONObjectN.put("mate_unavailable_code_list", new JSONArray((Collection) tt.this.x()).toString());
                }
                com.byazt.nr.m.c("AdLogInfoModel", "rd_client_custom_error = ", jSONObjectN);
                return com.byazt.qal.tt.tt().c("rd_client_custom_error").c(tt.this.sp().gt()).tt(jSONObjectN.toString());
            }
        }, "rd_client_custom_error");
    }

    public void c(long j10) {
        this.f13896x = j10;
    }
}
