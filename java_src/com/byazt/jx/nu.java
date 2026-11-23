package com.byazt.jx;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 214, 137})
public class nu implements ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15978c;
    public final int tt;
    public final boolean uj;
    public final com.byazt.kd.x ve;

    public nu(String str, int i10, com.byazt.kd.x xVar, boolean z10) {
        this.f15978c = str;
        this.tt = i10;
        this.ve = xVar;
        this.uj = z10;
    }

    public String c() {
        return this.f15978c;
    }

    public String toString() {
        return "ShapePath{name=" + this.f15978c + ", index=" + this.tt + '}';
    }

    public com.byazt.kd.x tt() {
        return this.ve;
    }

    public boolean ve() {
        return this.uj;
    }

    @Override // com.byazt.jx.ve
    public com.byazt.zy.ve c(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar) {
        return new com.byazt.zy.rh(xVar, veVar, this);
    }
}
