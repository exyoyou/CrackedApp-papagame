package com.byazt.jx;

import android.graphics.Path;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 214, 133})
public class z implements ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f16001a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f16002c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.byazt.kd.uj f16003n;
    public final Path.FillType tt;
    public final com.byazt.kd.c uj;
    public final String ve;

    public z(String str, boolean z10, Path.FillType fillType, com.byazt.kd.c cVar, com.byazt.kd.uj ujVar, boolean z11) {
        this.ve = str;
        this.f16002c = z10;
        this.tt = fillType;
        this.uj = cVar;
        this.f16003n = ujVar;
        this.f16001a = z11;
    }

    public String c() {
        return this.ve;
    }

    public boolean n() {
        return this.f16001a;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f16002c + '}';
    }

    public com.byazt.kd.c tt() {
        return this.uj;
    }

    public Path.FillType uj() {
        return this.tt;
    }

    public com.byazt.kd.uj ve() {
        return this.f16003n;
    }

    @Override // com.byazt.jx.ve
    public com.byazt.zy.ve c(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar) {
        return new com.byazt.zy.sp(xVar, veVar, this);
    }
}
