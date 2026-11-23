package com.byazt.im;

import com.byazt.ete.bm;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1352, 46})
public class n extends c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f15394n = 2;
    public static int uj = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.dj.tt f15395a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.tdq.n f15396i;
    public bm sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f15397x;

    public n(com.byazt.dj.tt ttVar, bm bmVar, com.byazt.tdq.n nVar) {
        this.f15395a = ttVar;
        this.sp = bmVar;
        if (ttVar != null) {
            this.f15397x = ttVar.uj();
        }
        this.f15396i = nVar;
    }

    public String a() {
        return this.f15397x;
    }

    public bm n() {
        return this.sp;
    }

    public com.byazt.tdq.n sp() {
        return this.f15396i;
    }

    public com.byazt.dj.tt uj() {
        return this.f15395a;
    }
}
