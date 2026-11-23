package com.byazt.ete;

import android.os.Bundle;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 129})
public class bm {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f13581da;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Bundle f13583m;
    public String my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13584n;
    public int nu;
    public com.byazt.vvt.ve.c qy;
    public String rh;
    public long sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f13585t;
    public int uj;
    public String ve;
    public String rl = com.byazt.aas.nb.sp();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13580c = -1;
    public int tt = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public JSONArray f13579a = null;
    public int sp = 1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f13587x = System.currentTimeMillis();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f13582i = System.currentTimeMillis();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public JSONObject f13586u = null;
    public int yp = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public com.byazt.omf.qy f13588z = com.byazt.omf.qy.c("");
    public boolean gt = false;

    public bm c() {
        bm bmVar = new bm();
        bmVar.f13580c = this.f13580c;
        bmVar.tt = this.tt;
        bmVar.f13579a = this.f13579a;
        bmVar.sp = this.sp;
        bmVar.f13587x = this.f13587x;
        bmVar.f13581da = this.f13581da;
        bmVar.sl = this.sl;
        bmVar.f13585t = this.f13585t;
        bmVar.yp = this.yp;
        bmVar.my = this.my;
        return bmVar;
    }

    public String tt() {
        return this.rl;
    }

    public void c(String str) {
        this.rl = str;
    }

    public void c(String str, boolean z10) {
        com.byazt.omf.qy qyVar;
        if (!z10 || (qyVar = this.f13588z) == null || str == null) {
            return;
        }
        qyVar.tt("cst_".concat(str));
    }

    public void c(String str, long j10, boolean z10) {
        com.byazt.omf.qy qyVar;
        if (!z10 || (qyVar = this.f13588z) == null || str == null) {
            return;
        }
        qyVar.c("cst_".concat(str), j10);
    }

    public void c(int i10, String str, int i11, com.byazt.dj.tt ttVar) {
        this.qy = new com.byazt.vvt.ve.c(i10, str, i11, System.currentTimeMillis(), ttVar);
    }

    public void c(Object obj, int i10) {
        int size = obj != null ? 1 : 0;
        try {
            if (obj instanceof List) {
                size = ((List) obj).size();
            }
        } catch (Exception unused) {
        }
        com.byazt.vvt.ve.c cVar = this.qy;
        if (cVar != null) {
            cVar.c(size);
            com.byazt.vvt.ve.c(this.qy, i10);
            this.qy = null;
        }
    }
}
