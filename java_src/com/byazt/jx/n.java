package com.byazt.jx;

import android.graphics.Path;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 214, 46})
public class n implements ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.byazt.kd.a f15972a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final sp f15973c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final boolean f15974da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.byazt.kd.tt f15975i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.byazt.kd.a f15976n;
    public final String sp;
    public final Path.FillType tt;
    public final com.byazt.kd.uj uj;
    public final com.byazt.kd.ve ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.kd.tt f15977x;

    public n(String str, sp spVar, Path.FillType fillType, com.byazt.kd.ve veVar, com.byazt.kd.uj ujVar, com.byazt.kd.a aVar, com.byazt.kd.a aVar2, com.byazt.kd.tt ttVar, com.byazt.kd.tt ttVar2, boolean z10) {
        this.f15973c = spVar;
        this.tt = fillType;
        this.ve = veVar;
        this.uj = ujVar;
        this.f15976n = aVar;
        this.f15972a = aVar2;
        this.sp = str;
        this.f15977x = ttVar;
        this.f15975i = ttVar2;
        this.f15974da = z10;
    }

    public com.byazt.kd.a a() {
        return this.f15976n;
    }

    public String c() {
        return this.sp;
    }

    public com.byazt.kd.uj n() {
        return this.uj;
    }

    public com.byazt.kd.a sp() {
        return this.f15972a;
    }

    public sp tt() {
        return this.f15973c;
    }

    public com.byazt.kd.ve uj() {
        return this.ve;
    }

    public Path.FillType ve() {
        return this.tt;
    }

    public boolean x() {
        return this.f15974da;
    }

    @Override // com.byazt.jx.ve
    public com.byazt.zy.ve c(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar) {
        return new com.byazt.zy.x(xVar, aVar, veVar, this);
    }
}
