package com.facebook.rebound;

/* JADX INFO: loaded from: classes9.dex */
public class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final /* synthetic */ boolean f28815e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double f28816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final double f28817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f28818c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f28819d;

    public d(double d10, double d11) {
        this.f28818c = d10;
        this.f28819d = d11;
        double dK = k(j(d11 / 1.7d, 0.0d, 20.0d), 0.0d, 0.8d);
        double dK2 = k(j(d10 / 1.7d, 0.0d, 20.0d), 0.5d, 200.0d);
        this.f28816a = dK2;
        this.f28817b = l(dK, d(dK2), 0.01d);
    }

    private double a(double d10) {
        return ((Math.pow(d10, 3.0d) * 7.0E-4d) - (Math.pow(d10, 2.0d) * 0.031d)) + (d10 * 0.64d) + 1.28d;
    }

    private double b(double d10) {
        return ((Math.pow(d10, 3.0d) * 4.4E-5d) - (Math.pow(d10, 2.0d) * 0.006d)) + (d10 * 0.36d) + 2.0d;
    }

    private double c(double d10) {
        return ((Math.pow(d10, 3.0d) * 4.5E-7d) - (Math.pow(d10, 2.0d) * 3.32E-4d)) + (d10 * 0.1078d) + 5.84d;
    }

    private double d(double d10) {
        if (d10 <= 18.0d) {
            return a(d10);
        }
        if (d10 > 18.0d && d10 <= 44.0d) {
            return b(d10);
        }
        if (d10 > 44.0d) {
            return c(d10);
        }
        return 0.0d;
    }

    private double i(double d10, double d11, double d12) {
        return (d12 * d10) + ((1.0d - d10) * d11);
    }

    private double j(double d10, double d11, double d12) {
        return (d10 - d11) / (d12 - d11);
    }

    private double k(double d10, double d11, double d12) {
        return d11 + (d10 * (d12 - d11));
    }

    private double l(double d10, double d11, double d12) {
        return i((2.0d * d10) - (d10 * d10), d11, d12);
    }

    public double e() {
        return this.f28819d;
    }

    public double f() {
        return this.f28817b;
    }

    public double g() {
        return this.f28816a;
    }

    public double h() {
        return this.f28818c;
    }
}
