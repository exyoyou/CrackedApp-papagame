package com.airbnb.lottie.model;

import android.annotation.SuppressLint;
import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PointF f5722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PointF f5723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PointF f5724c;

    public a() {
        this.f5722a = new PointF();
        this.f5723b = new PointF();
        this.f5724c = new PointF();
    }

    public PointF a() {
        return this.f5722a;
    }

    public PointF b() {
        return this.f5723b;
    }

    public PointF c() {
        return this.f5724c;
    }

    public void d(float f10, float f11) {
        this.f5722a.set(f10, f11);
    }

    public void e(float f10, float f11) {
        this.f5723b.set(f10, f11);
    }

    public void f(a aVar) {
        PointF pointF = aVar.f5724c;
        g(pointF.x, pointF.y);
        PointF pointF2 = aVar.f5722a;
        d(pointF2.x, pointF2.y);
        PointF pointF3 = aVar.f5723b;
        e(pointF3.x, pointF3.y);
    }

    public void g(float f10, float f11) {
        this.f5724c.set(f10, f11);
    }

    @NonNull
    @SuppressLint({"DefaultLocale"})
    public String toString() {
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", Float.valueOf(this.f5724c.x), Float.valueOf(this.f5724c.y), Float.valueOf(this.f5722a.x), Float.valueOf(this.f5722a.y), Float.valueOf(this.f5723b.x), Float.valueOf(this.f5723b.y));
    }

    public a(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f5722a = pointF;
        this.f5723b = pointF2;
        this.f5724c = pointF3;
    }
}
