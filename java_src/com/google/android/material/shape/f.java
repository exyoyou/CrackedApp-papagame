package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public class f extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    float f31613a;

    public f() {
        this.f31613a = -1.0f;
    }

    @Override // com.google.android.material.shape.e
    public void b(@NonNull p pVar, float f10, float f11, float f12) {
        pVar.r(0.0f, f12 * f11, 180.0f, 180.0f - f10);
        double d10 = f12;
        double d11 = f11;
        pVar.n((float) (Math.sin(Math.toRadians(f10)) * d10 * d11), (float) (Math.sin(Math.toRadians(90.0f - f10)) * d10 * d11));
    }

    @Deprecated
    public f(float f10) {
        this.f31613a = f10;
    }
}
