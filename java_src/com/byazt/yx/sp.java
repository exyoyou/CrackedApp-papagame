package com.byazt.yx;

import com.byazt.eg.gt;
import com.byazt.eg.h;
import com.byazt.eg.m;
import com.byazt.eg.yv;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 252, 91})
public final class sp implements gt.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final yv f22470a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<gt> f22471c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final int f22472da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f22473i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f22474n;
    public final int sl;
    public final com.byazt.eg.n sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f22475t;
    public final com.byazt.iq.sp tt;
    public final com.byazt.iq.ve uj;
    public final ve ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final m f22476x;

    public sp(List<gt> list, com.byazt.iq.sp spVar, ve veVar, com.byazt.iq.ve veVar2, int i10, yv yvVar, com.byazt.eg.n nVar, m mVar, int i11, int i12, int i13) {
        this.f22471c = list;
        this.uj = veVar2;
        this.tt = spVar;
        this.ve = veVar;
        this.f22474n = i10;
        this.f22470a = yvVar;
        this.sp = nVar;
        this.f22476x = mVar;
        this.f22473i = i11;
        this.f22472da = i12;
        this.sl = i13;
    }

    public com.byazt.iq.sp a() {
        return this.tt;
    }

    @Override // com.byazt.eg.gt.c
    public yv c() {
        return this.f22470a;
    }

    @Override // com.byazt.eg.gt.c
    public com.byazt.eg.n call() {
        return this.sp;
    }

    public com.byazt.eg.i n() {
        return this.uj;
    }

    public ve sp() {
        return this.ve;
    }

    @Override // com.byazt.eg.gt.c
    public int tt() {
        return this.f22473i;
    }

    @Override // com.byazt.eg.gt.c
    public int uj() {
        return this.sl;
    }

    @Override // com.byazt.eg.gt.c
    public int ve() {
        return this.f22472da;
    }

    public m x() {
        return this.f22476x;
    }

    @Override // com.byazt.eg.gt.c
    public h c(yv yvVar) throws IOException {
        return c(yvVar, this.tt, this.ve, this.uj);
    }

    public h c(yv yvVar, com.byazt.iq.sp spVar, ve veVar, com.byazt.iq.ve veVar2) throws IOException {
        if (this.f22474n < this.f22471c.size()) {
            this.f22475t++;
            if (this.ve != null && !this.uj.c(yvVar.c())) {
                throw new IllegalStateException("network interceptor " + this.f22471c.get(this.f22474n - 1) + " must retain the same host and port");
            }
            if (this.ve != null && this.f22475t > 1) {
                throw new IllegalStateException("network interceptor " + this.f22471c.get(this.f22474n - 1) + " must call proceed() exactly once");
            }
            sp spVar2 = new sp(this.f22471c, spVar, veVar, veVar2, this.f22474n + 1, yvVar, this.sp, this.f22476x, this.f22473i, this.f22472da, this.sl);
            gt gtVar = this.f22471c.get(this.f22474n);
            h hVarC = gtVar.c(spVar2);
            if (veVar != null && this.f22474n + 1 < this.f22471c.size() && spVar2.f22475t != 1) {
                throw new IllegalStateException("network interceptor " + gtVar + " must call proceed() exactly once");
            }
            if (hVarC != null) {
                if (hVarC.x() != null) {
                    return hVarC;
                }
                throw new IllegalStateException("interceptor " + gtVar + " returned a response with no body");
            }
            throw new NullPointerException("interceptor " + gtVar + " returned a null response");
        }
        throw new AssertionError();
    }
}
