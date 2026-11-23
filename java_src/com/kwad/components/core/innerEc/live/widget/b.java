package com.kwad.components.core.innerEc.live.widget;

import android.graphics.PointF;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements Interpolator {
    private int Yd = 0;
    private final PointF Ye;
    private final PointF Yf;

    public b(float f10, float f11, float f12, float f13) {
        PointF pointF = new PointF();
        this.Ye = pointF;
        PointF pointF2 = new PointF();
        this.Yf = pointF2;
        pointF.x = 0.42f;
        pointF.y = 0.0f;
        pointF2.x = 0.58f;
        pointF2.y = 1.0f;
    }

    private static double a(double d10, double d11, double d12, double d13, double d14) {
        double d15 = 1.0d - d10;
        double d16 = d10 * d10;
        double d17 = d15 * d15;
        return (d17 * d15 * 0.0d) + (d17 * 3.0d * d10 * d12) + (d15 * 3.0d * d16 * d13) + (d16 * d10 * 1.0d);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f10) {
        float f11 = f10;
        for (int i10 = this.Yd; i10 < 4096; i10++) {
            f11 = (i10 * 1.0f) / 4096.0f;
            if (a(f11, 0.0d, this.Ye.x, this.Yf.x, 1.0d) >= f10) {
                this.Yd = i10;
                break;
            }
        }
        double dA = a(f11, 0.0d, this.Ye.y, this.Yf.y, 1.0d);
        if (dA > 0.999d) {
            this.Yd = 0;
            dA = 1.0d;
        }
        return (float) dA;
    }
}
