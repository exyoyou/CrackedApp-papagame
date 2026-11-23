package com.byazt.jx;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 214, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float[] f15996c;
    public final int[] tt;

    public uj(float[] fArr, int[] iArr) {
        this.f15996c = fArr;
        this.tt = iArr;
    }

    public float[] c() {
        return this.f15996c;
    }

    public int[] tt() {
        return this.tt;
    }

    public int ve() {
        return this.tt.length;
    }

    public void c(uj ujVar, uj ujVar2, float f10) {
        if (ujVar.tt.length == ujVar2.tt.length) {
            for (int i10 = 0; i10 < ujVar.tt.length; i10++) {
                this.f15996c[i10] = com.byazt.kk.i.c(ujVar.f15996c[i10], ujVar2.f15996c[i10], f10);
                this.tt[i10] = com.byazt.kk.uj.c(f10, ujVar.tt[i10], ujVar2.tt[i10]);
            }
            return;
        }
        throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + ujVar.tt.length + " vs " + ujVar2.tt.length + ")");
    }

    public uj c(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            iArr[i10] = c(fArr[i10]);
        }
        return new uj(fArr, iArr);
    }

    private int c(float f10) {
        int iBinarySearch = Arrays.binarySearch(this.f15996c, f10);
        if (iBinarySearch >= 0) {
            return this.tt[iBinarySearch];
        }
        int i10 = -(iBinarySearch + 1);
        if (i10 == 0) {
            return this.tt[0];
        }
        int[] iArr = this.tt;
        if (i10 == iArr.length - 1) {
            return iArr[iArr.length - 1];
        }
        float[] fArr = this.f15996c;
        int i11 = i10 - 1;
        float f11 = fArr[i11];
        return com.byazt.kk.uj.c((f10 - f11) / (fArr[i10] - f11), iArr[i11], iArr[i10]);
    }
}
