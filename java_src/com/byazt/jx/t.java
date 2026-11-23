package com.byazt.jx;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 214, 66})
public class t implements ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15991c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f15992n;
    public final com.byazt.kd.tt tt;
    public final com.byazt.kd.t uj;
    public final com.byazt.kd.tt ve;

    public t(String str, com.byazt.kd.tt ttVar, com.byazt.kd.tt ttVar2, com.byazt.kd.t tVar, boolean z10) {
        this.f15991c = str;
        this.tt = ttVar;
        this.ve = ttVar2;
        this.uj = tVar;
        this.f15992n = z10;
    }

    public String c() {
        return this.f15991c;
    }

    public boolean n() {
        return this.f15992n;
    }

    public com.byazt.kd.tt tt() {
        return this.tt;
    }

    public com.byazt.kd.t uj() {
        return this.uj;
    }

    public com.byazt.kd.tt ve() {
        return this.ve;
    }

    @Override // com.byazt.jx.ve
    public com.byazt.zy.ve c(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar) {
        return new com.byazt.zy.m(xVar, veVar, this);
    }
}
