package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class u6 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final u6 f30353k = a(50.0d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double f30354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final double f30355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f30356c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f30357d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final double f30358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final double f30359f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final double[] f30360g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final double f30361h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final double f30362i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final double f30363j;

    private u6(double d10, double d11, double d12, double d13, double d14, double d15, double[] dArr, double d16, double d17, double d18) {
        this.f30359f = d10;
        this.f30354a = d11;
        this.f30355b = d12;
        this.f30356c = d13;
        this.f30357d = d14;
        this.f30358e = d15;
        this.f30360g = dArr;
        this.f30361h = d16;
        this.f30362i = d17;
        this.f30363j = d18;
    }

    public static u6 a(double d10) {
        return l(c.r(), (c.t(50.0d) * 63.66197723675813d) / 100.0d, d10, 2.0d, false);
    }

    public static u6 l(double[] dArr, double d10, double d11, double d12, boolean z10) {
        double dMax = Math.max(0.1d, d11);
        double[][] dArr2 = b.f30192k;
        double d13 = dArr[0];
        double[] dArr3 = dArr2[0];
        double d14 = dArr3[0] * d13;
        double d15 = dArr[1];
        double d16 = d14 + (dArr3[1] * d15);
        double d17 = dArr[2];
        double d18 = d16 + (dArr3[2] * d17);
        double[] dArr4 = dArr2[1];
        double d19 = (dArr4[0] * d13) + (dArr4[1] * d15) + (dArr4[2] * d17);
        double[] dArr5 = dArr2[2];
        double d20 = (d13 * dArr5[0]) + (d15 * dArr5[1]) + (d17 * dArr5[2]);
        double d21 = (d12 / 10.0d) + 0.8d;
        double d22 = d21 >= 0.9d ? v5.d(0.59d, 0.69d, (d21 - 0.9d) * 10.0d) : v5.d(0.525d, 0.59d, (d21 - 0.8d) * 10.0d);
        double dA = v5.a(0.0d, 1.0d, z10 ? 1.0d : (1.0d - (Math.exp(((-d10) - 42.0d) / 92.0d) * 0.2777777777777778d)) * d21);
        double[] dArr6 = {(((100.0d / d18) * dA) + 1.0d) - dA, (((100.0d / d19) * dA) + 1.0d) - dA, (((100.0d / d20) * dA) + 1.0d) - dA};
        double d23 = 5.0d * d10;
        double d24 = 1.0d / (d23 + 1.0d);
        double d25 = d24 * d24 * d24 * d24;
        double d26 = 1.0d - d25;
        double dCbrt = (d25 * d10) + (0.1d * d26 * d26 * Math.cbrt(d23));
        double dT = c.t(dMax) / dArr[1];
        double dSqrt = Math.sqrt(dT) + 1.48d;
        double dPow = 0.725d / Math.pow(dT, 0.2d);
        double dPow2 = Math.pow(((dArr6[2] * dCbrt) * d20) / 100.0d, 0.42d);
        double[] dArr7 = {Math.pow(((dArr6[0] * dCbrt) * d18) / 100.0d, 0.42d), Math.pow(((dArr6[1] * dCbrt) * d19) / 100.0d, 0.42d), dPow2};
        double d27 = dArr7[0];
        double d28 = (d27 * 400.0d) / (d27 + 27.13d);
        double d29 = dArr7[1];
        return new u6(dT, ((d28 * 2.0d) + ((d29 * 400.0d) / (d29 + 27.13d)) + (((400.0d * dPow2) / (dPow2 + 27.13d)) * 0.05d)) * dPow, dPow, dPow, d22, d21, dArr6, dCbrt, Math.pow(dCbrt, 0.25d), dSqrt);
    }

    public double b() {
        return this.f30354a;
    }

    double c() {
        return this.f30357d;
    }

    double d() {
        return this.f30361h;
    }

    public double e() {
        return this.f30362i;
    }

    public double f() {
        return this.f30359f;
    }

    public double g() {
        return this.f30355b;
    }

    double h() {
        return this.f30358e;
    }

    double i() {
        return this.f30356c;
    }

    public double[] j() {
        return this.f30360g;
    }

    double k() {
        return this.f30363j;
    }
}
