package com.byazt.jx;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 214, 67})
public class u implements ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15995c;
    public final com.byazt.kd.u<Float, Float> tt;

    public u(String str, com.byazt.kd.u<Float, Float> uVar) {
        this.f15995c = str;
        this.tt = uVar;
    }

    public String c() {
        return this.f15995c;
    }

    public com.byazt.kd.u<Float, Float> tt() {
        return this.tt;
    }

    @Override // com.byazt.jx.ve
    public com.byazt.zy.ve c(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar) {
        return new com.byazt.zy.nu(xVar, veVar, this);
    }
}
