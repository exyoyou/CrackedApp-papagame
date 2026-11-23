package com.byazt.lw;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2104, 137})
public abstract class nu implements com.byazt.dr.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.dr.c f16803c;
    public com.byazt.dr.c tt;
    public com.byazt.zg.ve ve;

    public nu(com.byazt.zg.ve veVar) {
        this.ve = veVar;
    }

    public void c(com.byazt.dr.c cVar) {
        this.f16803c = cVar;
    }

    public String toString() {
        return tt();
    }

    public void tt(com.byazt.dr.c cVar) {
        this.tt = cVar;
    }

    @Override // com.byazt.dr.c
    public com.byazt.zg.n c() {
        return com.byazt.zg.a.OPERATOR_RESULT;
    }

    @Override // com.byazt.dr.c
    public String tt() {
        return this.f16803c.tt() + this.ve.c() + this.tt.tt();
    }
}
