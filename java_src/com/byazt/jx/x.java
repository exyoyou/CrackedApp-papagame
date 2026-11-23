package com.byazt.jx;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 214, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f15997c;
    public final com.byazt.kd.x tt;
    public final boolean uj;
    public final com.byazt.kd.uj ve;

    public enum c {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public x(c cVar, com.byazt.kd.x xVar, com.byazt.kd.uj ujVar, boolean z10) {
        this.f15997c = cVar;
        this.tt = xVar;
        this.ve = ujVar;
        this.uj = z10;
    }

    public c c() {
        return this.f15997c;
    }

    public com.byazt.kd.x tt() {
        return this.tt;
    }

    public boolean uj() {
        return this.uj;
    }

    public com.byazt.kd.uj ve() {
        return this.ve;
    }
}
