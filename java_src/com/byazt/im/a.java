package com.byazt.im;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1352, 34})
public class a extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f15388a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f15389i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f15390n;
    public long sp;
    public com.byazt.ete.c uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f15391x;

    public a(com.byazt.ete.c cVar, boolean z10) {
        this.uj = cVar;
        if (cVar != null && cVar.tt() != null && !this.uj.tt().isEmpty()) {
            this.tt = this.uj.tt().get(0);
        }
        this.f15390n = z10;
    }

    public long a() {
        return this.f15388a;
    }

    public long i() {
        return this.f15389i;
    }

    public boolean n() {
        return this.f15390n;
    }

    public long sp() {
        return this.sp;
    }

    public void tt(long j10) {
        this.f15388a = j10;
    }

    public com.byazt.ete.c uj() {
        return this.uj;
    }

    public void ve(long j10) {
        this.sp = j10;
    }

    public long x() {
        return this.f15391x;
    }

    public void n(long j10) {
        this.f15389i = j10;
    }

    public void uj(long j10) {
        this.f15391x = j10;
    }
}
