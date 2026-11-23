package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double f30250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final double f30251b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f30252c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f30253d;

    public e(double d10, double d11, double d12, double d13) {
        this.f30250a = d10;
        this.f30251b = d11;
        this.f30252c = d12;
        this.f30253d = d13;
    }

    public double a(double d10) {
        if (d10 <= -1.0d) {
            return this.f30250a;
        }
        if (d10 < 0.0d) {
            return v5.d(this.f30250a, this.f30251b, (d10 - (-1.0d)) / 1.0d);
        }
        if (d10 < 0.5d) {
            return v5.d(this.f30251b, this.f30252c, (d10 - 0.0d) / 0.5d);
        }
        return d10 < 1.0d ? v5.d(this.f30252c, this.f30253d, (d10 - 0.5d) / 0.5d) : this.f30253d;
    }
}
