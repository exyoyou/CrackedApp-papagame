package com.google.android.material.animation;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public class h implements TypeEvaluator<Matrix> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f29377a = new float[9];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float[] f29378b = new float[9];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix f29379c = new Matrix();

    @Override // android.animation.TypeEvaluator
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Matrix evaluate(float f10, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
        matrix.getValues(this.f29377a);
        matrix2.getValues(this.f29378b);
        for (int i10 = 0; i10 < 9; i10++) {
            float[] fArr = this.f29378b;
            float f11 = fArr[i10];
            float f12 = this.f29377a[i10];
            fArr[i10] = f12 + ((f11 - f12) * f10);
        }
        this.f29379c.setValues(this.f29378b);
        return this.f29379c;
    }
}
