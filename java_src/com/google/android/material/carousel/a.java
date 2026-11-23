package com.google.android.material.carousel;

import androidx.annotation.NonNull;
import androidx.core.math.MathUtils;

/* JADX INFO: loaded from: classes5.dex */
final class a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final float f29837i = 0.1f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f29838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f29839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f29840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f29841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f29842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float f29843f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final int f29844g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final float f29845h;

    a(int i10, float f10, float f11, float f12, int i11, float f13, int i12, float f14, int i13, float f15) {
        this.f29838a = i10;
        this.f29839b = MathUtils.clamp(f10, f11, f12);
        this.f29840c = i11;
        this.f29842e = f13;
        this.f29841d = i12;
        this.f29843f = f14;
        this.f29844g = i13;
        d(f15, f11, f12, f14);
        this.f29845h = b(f14);
    }

    private float a(float f10, int i10, float f11, int i11, int i12) {
        if (i10 <= 0) {
            f11 = 0.0f;
        }
        float f12 = i11 / 2.0f;
        return (f10 - ((i10 + f12) * f11)) / (i12 + f12);
    }

    private float b(float f10) {
        if (g()) {
            return Math.abs(f10 - this.f29843f) * this.f29838a;
        }
        return Float.MAX_VALUE;
    }

    static a c(float f10, float f11, float f12, float f13, int[] iArr, float f14, int[] iArr2, float f15, int[] iArr3) {
        a aVar = null;
        int i10 = 1;
        for (int i11 : iArr3) {
            int length = iArr2.length;
            int i12 = 0;
            while (i12 < length) {
                int i13 = iArr2[i12];
                int length2 = iArr.length;
                int i14 = 0;
                while (i14 < length2) {
                    int i15 = i14;
                    int i16 = length2;
                    int i17 = i12;
                    int i18 = length;
                    a aVar2 = new a(i10, f11, f12, f13, iArr[i14], f14, i13, f15, i11, f10);
                    if (aVar == null || aVar2.f29845h < aVar.f29845h) {
                        if (aVar2.f29845h == 0.0f) {
                            return aVar2;
                        }
                        aVar = aVar2;
                    }
                    i10++;
                    i14 = i15 + 1;
                    length2 = i16;
                    i12 = i17;
                    length = i18;
                }
                i12++;
            }
        }
        return aVar;
    }

    private void d(float f10, float f11, float f12, float f13) {
        float f14 = f10 - f();
        int i10 = this.f29840c;
        if (i10 > 0 && f14 > 0.0f) {
            float f15 = this.f29839b;
            this.f29839b = f15 + Math.min(f14 / i10, f12 - f15);
        } else if (i10 > 0 && f14 < 0.0f) {
            float f16 = this.f29839b;
            this.f29839b = f16 + Math.max(f14 / i10, f11 - f16);
        }
        int i11 = this.f29840c;
        float f17 = i11 > 0 ? this.f29839b : 0.0f;
        this.f29839b = f17;
        float fA = a(f10, i11, f17, this.f29841d, this.f29844g);
        this.f29843f = fA;
        float f18 = (this.f29839b + fA) / 2.0f;
        this.f29842e = f18;
        int i12 = this.f29841d;
        if (i12 <= 0 || fA == f13) {
            return;
        }
        float f19 = (f13 - fA) * this.f29844g;
        float fMin = Math.min(Math.abs(f19), f18 * 0.1f * i12);
        if (f19 > 0.0f) {
            this.f29842e -= fMin / this.f29841d;
            this.f29843f += fMin / this.f29844g;
        } else {
            this.f29842e += fMin / this.f29841d;
            this.f29843f -= fMin / this.f29844g;
        }
    }

    private float f() {
        return (this.f29843f * this.f29844g) + (this.f29842e * this.f29841d) + (this.f29839b * this.f29840c);
    }

    private boolean g() {
        int i10 = this.f29844g;
        if (i10 <= 0 || this.f29840c <= 0 || this.f29841d <= 0) {
            return i10 <= 0 || this.f29840c <= 0 || this.f29843f > this.f29839b;
        }
        float f10 = this.f29843f;
        float f11 = this.f29842e;
        return f10 > f11 && f11 > this.f29839b;
    }

    int e() {
        return this.f29840c + this.f29841d + this.f29844g;
    }

    @NonNull
    public String toString() {
        return "Arrangement [priority=" + this.f29838a + ", smallCount=" + this.f29840c + ", smallSize=" + this.f29839b + ", mediumCount=" + this.f29841d + ", mediumSize=" + this.f29842e + ", largeCount=" + this.f29844g + ", largeSize=" + this.f29843f + ", cost=" + this.f29845h + "]";
    }
}
