package com.byazt.jx;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 214, 158})
public class sl implements ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15988c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f15989n;
    public final com.byazt.kd.u<PointF, PointF> tt;
    public final com.byazt.kd.tt uj;
    public final com.byazt.kd.u<PointF, PointF> ve;

    public sl(String str, com.byazt.kd.u<PointF, PointF> uVar, com.byazt.kd.u<PointF, PointF> uVar2, com.byazt.kd.tt ttVar, boolean z10) {
        this.f15988c = str;
        this.tt = uVar;
        this.ve = uVar2;
        this.uj = ttVar;
        this.f15989n = z10;
    }

    public String c() {
        return this.f15988c;
    }

    public boolean n() {
        return this.f15989n;
    }

    public String toString() {
        return "RectangleShape{position=" + this.tt + ", size=" + this.ve + '}';
    }

    public com.byazt.kd.tt tt() {
        return this.uj;
    }

    public com.byazt.kd.u<PointF, PointF> uj() {
        return this.tt;
    }

    public com.byazt.kd.u<PointF, PointF> ve() {
        return this.ve;
    }

    @Override // com.byazt.jx.ve
    public com.byazt.zy.ve c(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar) {
        return new com.byazt.zy.z(xVar, veVar, this);
    }
}
