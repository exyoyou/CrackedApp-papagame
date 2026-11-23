package com.byazt.ete;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, 957})
public class r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13859c;
    public int tt;
    public int ve;

    private int uj() {
        return com.byazt.aas.pf.uj(com.byazt.omf.gt.getContext(), com.byazt.aas.pf.n(com.byazt.omf.gt.getContext()));
    }

    public int c() {
        return this.f13859c;
    }

    public int tt() {
        return this.tt;
    }

    public int ve() {
        return this.ve;
    }

    public void c(int i10) {
        if (i10 != 1 && i10 != 2) {
            i10 = 0;
        }
        this.f13859c = i10;
    }

    public void tt(int i10) {
        if (i10 > 0 && i10 < uj()) {
            this.tt = i10;
            return;
        }
        int i11 = this.f13859c;
        if (i11 == 1) {
            this.tt = 90;
        } else if (i11 == 2) {
            this.tt = 150;
        }
    }

    public void ve(int i10) {
        if (i10 > 0 && i10 < uj()) {
            this.ve = i10;
            return;
        }
        int i11 = this.f13859c;
        if (i11 == 1) {
            this.ve = 90;
        } else if (i11 == 2) {
            this.ve = 150;
        }
    }
}
