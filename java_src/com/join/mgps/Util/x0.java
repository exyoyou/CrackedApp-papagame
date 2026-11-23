package com.join.mgps.Util;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes4.dex */
public class x0 implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f50117a;

    public x0() {
        this.f50117a = 0.7f;
    }

    private static float a(float t10) {
        return t10 * t10 * 8.0f;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float t10) {
        return (float) ((Math.pow(2.0d, (-10.0f) * t10) * Math.sin((((double) (t10 - 0.1f)) * 6.283185307179586d) / ((double) 0.4f))) + 1.0d);
    }

    public x0(float numbe2) {
        this.f50117a = numbe2;
    }
}
