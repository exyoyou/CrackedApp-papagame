package com.join.mgps.anim;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* JADX INFO: loaded from: classes3.dex */
public class a extends Animation {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f64076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f64077c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f64078d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f64079e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f64080f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f64081g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Camera f64082h;

    public a(float fromDegrees, float toDegrees, float centerX, float centerY, float depthZ, boolean reverse) {
        this.f64076b = fromDegrees;
        this.f64077c = toDegrees;
        this.f64078d = centerX;
        this.f64079e = centerY;
        this.f64080f = depthZ;
        this.f64081g = reverse;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float interpolatedTime, Transformation t10) {
        float f10 = this.f64076b;
        float f11 = f10 + ((this.f64077c - f10) * interpolatedTime);
        float f12 = this.f64078d;
        float f13 = this.f64079e;
        Camera camera = this.f64082h;
        Matrix matrix = t10.getMatrix();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(interpolatedTime);
        sb2.append("");
        camera.save();
        if (this.f64081g) {
            camera.translate(0.0f, 0.0f, this.f64080f * interpolatedTime);
        } else {
            camera.translate(0.0f, 0.0f, this.f64080f * (1.0f - interpolatedTime));
        }
        camera.rotateY(f11);
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate(-f12, -f13);
        matrix.postTranslate(f12, f13);
    }

    @Override // android.view.animation.Animation
    public void initialize(int width, int height, int parentWidth, int parentHeight) {
        super.initialize(width, height, parentWidth, parentHeight);
        this.f64082h = new Camera();
    }
}
