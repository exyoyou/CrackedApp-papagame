package com.google.android.material.carousel;

import android.content.Context;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f29857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f29858b;

    static int[] a(int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr2[i10] = iArr[i10] * 2;
        }
        return iArr2;
    }

    @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
    static float b(float f10, float f11, float f12) {
        return 1.0f - ((f10 - f12) / (f11 - f12));
    }

    public float c() {
        return this.f29858b;
    }

    public float d() {
        return this.f29857a;
    }

    void e(Context context) {
        float fH = this.f29857a;
        if (fH <= 0.0f) {
            fH = h.h(context);
        }
        this.f29857a = fH;
        float fG = this.f29858b;
        if (fG <= 0.0f) {
            fG = h.g(context);
        }
        this.f29858b = fG;
    }

    boolean f() {
        return true;
    }

    abstract k g(@NonNull b bVar, @NonNull View view);

    public void h(float f10) {
        this.f29858b = f10;
    }

    public void i(float f10) {
        this.f29857a = f10;
    }

    boolean j(b bVar, int i10) {
        return false;
    }
}
