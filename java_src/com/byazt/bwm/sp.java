package com.byazt.bwm;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 33, 91})
public abstract class sp implements Comparable<sp>, Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12131c;
    public String tt;

    public sp(String str, int i10) {
        this.f12131c = 0;
        this.f12131c = i10 == 0 ? 5 : i10;
        this.tt = str;
    }

    public void c(int i10) {
        this.f12131c = i10;
    }

    public int c() {
        return this.f12131c;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(sp spVar) {
        if (c() < spVar.c()) {
            return 1;
        }
        return c() >= spVar.c() ? -1 : 0;
    }

    public sp(String str) {
        this.f12131c = 5;
        this.tt = str;
    }
}
