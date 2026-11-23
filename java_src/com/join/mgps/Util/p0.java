package com.join.mgps.Util;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* JADX INFO: loaded from: classes4.dex */
public class p0 extends Animation {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f49936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f49937c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f49938d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f49939e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Camera f49940f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f49941g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f49942h;

    public interface a {
        void a();
    }

    public p0(float fromDegrees, float toDegrees, float centerX, float centerY) {
        this.f49936b = fromDegrees;
        this.f49937c = toDegrees;
        this.f49938d = centerX;
        this.f49939e = centerY;
    }

    public void a() {
        this.f49941g = false;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float interpolatedTime, Transformation t10) {
        try {
            float f10 = this.f49936b;
            float f11 = f10 + ((this.f49937c - f10) * interpolatedTime);
            float f12 = this.f49938d;
            float f13 = this.f49939e;
            Camera camera = this.f49940f;
            Matrix matrix = t10.getMatrix();
            camera.save();
            if (f11 > 90.0f || f11 < -90.0f) {
                if (!this.f49941g) {
                    a aVar = this.f49942h;
                    if (aVar != null) {
                        aVar.a();
                    }
                    this.f49941g = true;
                }
                if (f11 > 0.0f) {
                    f11 = (f11 + 270.0f) - 90.0f;
                } else if (f11 < 0.0f) {
                    f11 = (f11 + 90.0f) - 270.0f;
                }
            }
            camera.rotateY(f11);
            camera.getMatrix(matrix);
            camera.restore();
            matrix.preTranslate(-f12, -f13);
            matrix.postTranslate(f12, f13);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b(a listener) {
        this.f49942h = listener;
    }

    @Override // android.view.animation.Animation
    public void initialize(int width, int height, int parentWidth, int parentHeight) {
        super.initialize(width, height, parentWidth, parentHeight);
        this.f49940f = new Camera();
    }
}
