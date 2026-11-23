package com.byazt.nbs;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1871, 46})
public class n implements Comparable<n> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f17109c;
    public double tt;
    public int uj;
    public int ve;

    public n(String str, double d10, int i10, int i11) {
        this.f17109c = str;
        this.tt = d10;
        this.ve = i10;
        this.uj = i11;
    }

    public String c() {
        return this.f17109c;
    }

    public String toString() {
        return "{mCsjRitId:" + this.f17109c + ",mEcpm:" + this.tt + ",mLoadSort:" + this.ve + ",mShowSort:" + this.uj + "}";
    }

    public double tt() {
        return this.tt;
    }

    public int uj() {
        return this.uj;
    }

    public int ve() {
        return this.ve;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(n nVar) {
        if (nVar == null) {
            return 1;
        }
        if (this.tt > nVar.tt()) {
            return -1;
        }
        if (this.tt < nVar.tt() || this.ve > nVar.ve()) {
            return 1;
        }
        if (this.ve < nVar.ve()) {
            return -1;
        }
        if (this.uj > nVar.uj()) {
            return 1;
        }
        return this.uj < nVar.uj() ? -1 : 0;
    }
}
