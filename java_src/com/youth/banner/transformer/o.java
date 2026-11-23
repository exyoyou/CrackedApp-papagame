package com.youth.banner.transformer;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: loaded from: classes8.dex */
public class o extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Matrix f90306a = new Matrix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Camera f90307b = new Camera();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final float[] f90308c = new float[2];

    protected static final float g(float f10, int i10, int i11) {
        Matrix matrix = f90306a;
        matrix.reset();
        Camera camera = f90307b;
        camera.save();
        camera.rotateY(Math.abs(f10));
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate((-i10) * 0.5f, (-i11) * 0.5f);
        float f11 = i10;
        float f12 = i11;
        matrix.postTranslate(f11 * 0.5f, 0.5f * f12);
        float[] fArr = f90308c;
        fArr[0] = f11;
        fArr[1] = f12;
        matrix.mapPoints(fArr);
        return (f11 - fArr[0]) * (f10 > 0.0f ? 1.0f : -1.0f);
    }

    @Override // com.youth.banner.transformer.a
    protected void f(View view, float f10) {
        float fAbs = (f10 < 0.0f ? 30.0f : -30.0f) * Math.abs(f10);
        view.setTranslationX(g(fAbs, view.getWidth(), view.getHeight()));
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(0.0f);
        view.setRotationY(fAbs);
    }
}
