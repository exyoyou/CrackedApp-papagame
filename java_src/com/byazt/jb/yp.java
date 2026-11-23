package com.byazt.jb;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 63, 215})
public final class yp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15807c;
    public final int[] tt = new int[10];

    public void c() {
        this.f15807c = 0;
        Arrays.fill(this.tt, 0);
    }

    public int tt(int i10) {
        return this.tt[i10];
    }

    public int uj(int i10) {
        return (this.f15807c & 32) != 0 ? this.tt[5] : i10;
    }

    public int ve() {
        if ((this.f15807c & 2) != 0) {
            return this.tt[1];
        }
        return -1;
    }

    public int tt() {
        return Integer.bitCount(this.f15807c);
    }

    public int uj() {
        if ((this.f15807c & 128) != 0) {
            return this.tt[7];
        }
        return 65535;
    }

    public int ve(int i10) {
        return (this.f15807c & 16) != 0 ? this.tt[4] : i10;
    }

    public yp c(int i10, int i11) {
        if (i10 >= 0) {
            int[] iArr = this.tt;
            if (i10 < iArr.length) {
                this.f15807c = (1 << i10) | this.f15807c;
                iArr[i10] = i11;
            }
        }
        return this;
    }

    public boolean c(int i10) {
        return ((1 << i10) & this.f15807c) != 0;
    }

    public void c(yp ypVar) {
        for (int i10 = 0; i10 < 10; i10++) {
            if (ypVar.c(i10)) {
                c(i10, ypVar.tt(i10));
            }
        }
    }
}
