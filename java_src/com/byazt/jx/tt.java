package com.byazt.jx;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 214, 13})
public class tt implements ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15993c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f15994n;
    public final com.byazt.kd.u<PointF, PointF> tt;
    public final boolean uj;
    public final com.byazt.kd.a ve;

    public tt(String str, com.byazt.kd.u<PointF, PointF> uVar, com.byazt.kd.a aVar, boolean z10, boolean z11) {
        this.f15993c = str;
        this.tt = uVar;
        this.ve = aVar;
        this.uj = z10;
        this.f15994n = z11;
    }

    @Override // com.byazt.jx.ve
    public com.byazt.zy.ve c(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar) {
        return new com.byazt.zy.a(xVar, veVar, this);
    }

    public boolean n() {
        return this.f15994n;
    }

    public com.byazt.kd.u<PointF, PointF> tt() {
        return this.tt;
    }

    public boolean uj() {
        return this.uj;
    }

    public com.byazt.kd.a ve() {
        return this.ve;
    }

    public String c() {
        return this.f15993c;
    }
}
