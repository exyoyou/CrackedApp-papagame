package com.byazt.ete;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 127})
public class iu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13771c;
    public int tt;
    public int ve;
    public int uj = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13772n = 0;

    private int a() {
        return com.byazt.aas.pf.uj(com.byazt.omf.gt.getContext(), com.byazt.aas.pf.n(com.byazt.omf.gt.getContext()));
    }

    private int sp() {
        return com.byazt.aas.pf.uj(com.byazt.omf.gt.getContext(), com.byazt.aas.pf.uj(com.byazt.omf.gt.getContext()));
    }

    public int c() {
        return this.f13771c;
    }

    public int n() {
        return this.f13772n;
    }

    public int tt() {
        return this.tt;
    }

    public int uj() {
        return this.uj == 2 ? 2 : 1;
    }

    public int ve() {
        return this.ve;
    }

    public void c(int i10) {
        if (i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4) {
            this.f13771c = i10;
        } else {
            this.f13771c = 2;
        }
    }

    public void n(int i10) {
        this.f13772n = i10;
    }

    public void tt(int i10) {
        if (i10 <= 0 || i10 >= sp()) {
            this.tt = 16;
        } else {
            this.tt = i10;
        }
    }

    public void uj(int i10) {
        this.uj = i10;
    }

    public void ve(int i10) {
        if (i10 > 0 && i10 < a()) {
            this.ve = i10;
            return;
        }
        int i11 = this.f13771c;
        if (i11 == 3 || i11 == 4) {
            this.ve = 30;
        } else {
            this.ve = 16;
        }
    }

    public static boolean c(ic icVar) {
        return (icVar == null || icVar.cg() == null || icVar.cg().n() != 1) ? false : true;
    }
}
