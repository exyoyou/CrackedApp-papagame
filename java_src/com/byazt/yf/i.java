package com.byazt.yf;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.PositionType.TYPE_CURVE_FIT, 42})
public class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public double f22195c;
    public double tt;

    public i(double d10, double d11) {
        this.f22195c = d10;
        this.tt = d11;
    }

    public double c() {
        return this.f22195c;
    }

    public String toString() {
        return "GMLocation{lantitude=" + this.f22195c + ", longtitude=" + this.tt + '}';
    }

    public double tt() {
        return this.tt;
    }
}
