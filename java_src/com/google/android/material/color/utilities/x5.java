package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class x5 implements w5 {
    @Override // com.google.android.material.color.utilities.w5
    public int a(double[] dArr) {
        return c.b(dArr[0], dArr[1], dArr[2]);
    }

    @Override // com.google.android.material.color.utilities.w5
    public double b(double[] dArr, double[] dArr2) {
        double d10 = dArr[0] - dArr2[0];
        double d11 = dArr[1] - dArr2[1];
        double d12 = dArr[2] - dArr2[2];
        return (d10 * d10) + (d11 * d11) + (d12 * d12);
    }

    @Override // com.google.android.material.color.utilities.w5
    public double[] c(int i10) {
        double[] dArrL = c.l(i10);
        return new double[]{dArrL[0], dArrL[1], dArrL[2]};
    }
}
