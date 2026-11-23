package com.airbnb.lottie.model.content;

import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f5797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f5798b;

    public d(float[] fArr, int[] iArr) {
        this.f5797a = fArr;
        this.f5798b = iArr;
    }

    private int b(float f10) {
        int iBinarySearch = Arrays.binarySearch(this.f5797a, f10);
        if (iBinarySearch >= 0) {
            return this.f5798b[iBinarySearch];
        }
        int i10 = -(iBinarySearch + 1);
        if (i10 == 0) {
            return this.f5798b[0];
        }
        int[] iArr = this.f5798b;
        if (i10 == iArr.length - 1) {
            return iArr[iArr.length - 1];
        }
        float[] fArr = this.f5797a;
        int i11 = i10 - 1;
        float f11 = fArr[i11];
        return com.airbnb.lottie.utils.d.c((f10 - f11) / (fArr[i10] - f11), iArr[i11], iArr[i10]);
    }

    public d a(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            iArr[i10] = b(fArr[i10]);
        }
        return new d(fArr, iArr);
    }

    public int[] c() {
        return this.f5798b;
    }

    public float[] d() {
        return this.f5797a;
    }

    public int e() {
        return this.f5798b.length;
    }

    public void f(d dVar, d dVar2, float f10) {
        int[] iArr;
        if (dVar.f5798b.length != dVar2.f5798b.length) {
            throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + dVar.f5798b.length + " vs " + dVar2.f5798b.length + ")");
        }
        int i10 = 0;
        while (true) {
            iArr = dVar.f5798b;
            if (i10 >= iArr.length) {
                break;
            }
            this.f5797a[i10] = com.airbnb.lottie.utils.k.k(dVar.f5797a[i10], dVar2.f5797a[i10], f10);
            this.f5798b[i10] = com.airbnb.lottie.utils.d.c(f10, dVar.f5798b[i10], dVar2.f5798b[i10]);
            i10++;
        }
        int length = iArr.length;
        while (true) {
            float[] fArr = this.f5797a;
            if (length >= fArr.length) {
                return;
            }
            int[] iArr2 = dVar.f5798b;
            fArr[length] = fArr[iArr2.length - 1];
            int[] iArr3 = this.f5798b;
            iArr3[length] = iArr3[iArr2.length - 1];
            length++;
        }
    }
}
