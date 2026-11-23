package com.kongzue.dialogx.util;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes3.dex */
public class o extends ValueAnimator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f74217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    float f74218c;

    public static o c(float... fArr) {
        o oVar = new o();
        oVar.setFloatValues(fArr);
        return oVar;
    }

    public float a() {
        return this.f74218c;
    }

    public float b() {
        return this.f74217b;
    }

    @Override // android.animation.ValueAnimator
    public void setFloatValues(float... fArr) {
        if (fArr.length > 1) {
            this.f74217b = fArr[0];
            this.f74218c = fArr[fArr.length - 1];
        }
        super.setFloatValues(fArr);
    }
}
