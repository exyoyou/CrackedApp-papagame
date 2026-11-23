package com.byazt.biq;

import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.byazt.kcl.a;
import com.byazt.omf.gt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 12, 54})
public class ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f11936a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11938n;
    public final com.byazt.fcd.c sp;
    public final int uj;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11937c = 0;
    public int tt = 0;
    public int ve = 1000;

    public ve(boolean z10, ic icVar, a aVar, com.byazt.fcd.c cVar) {
        this.f11936a = aVar;
        this.sp = cVar;
        this.uj = z10 ? gt.tt().uj(nb.t(icVar)) : gt.tt().n(nb.t(icVar));
    }

    public int a() {
        return this.tt;
    }

    public long c() {
        return this.f11936a.h();
    }

    public int i() {
        return this.ve;
    }

    public int n() {
        return this.f11937c;
    }

    public void sp() {
        this.f11937c++;
    }

    public int tt() {
        return this.f11938n;
    }

    public int uj() {
        return this.sp.pf();
    }

    public int ve() {
        return this.uj;
    }

    public void x() {
        this.tt++;
    }

    public void c(int i10) {
        this.f11938n += i10;
    }

    public void tt(int i10) {
        this.tt = i10;
    }

    public void ve(int i10) {
        this.ve = i10;
    }
}
