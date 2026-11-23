package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public final class i extends g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f31621b;

    public i(float f10) {
        this.f31621b = f10 - 0.001f;
    }

    @Override // com.google.android.material.shape.g
    boolean a() {
        return true;
    }

    @Override // com.google.android.material.shape.g
    public void b(float f10, float f11, float f12, @NonNull p pVar) {
        float fSqrt = (float) ((((double) this.f31621b) * Math.sqrt(2.0d)) / 2.0d);
        float fSqrt2 = (float) Math.sqrt(Math.pow(this.f31621b, 2.0d) - Math.pow(fSqrt, 2.0d));
        pVar.q(f11 - fSqrt, ((float) (-((((double) this.f31621b) * Math.sqrt(2.0d)) - ((double) this.f31621b)))) + fSqrt2);
        pVar.n(f11, (float) (-((((double) this.f31621b) * Math.sqrt(2.0d)) - ((double) this.f31621b))));
        pVar.n(f11 + fSqrt, ((float) (-((((double) this.f31621b) * Math.sqrt(2.0d)) - ((double) this.f31621b)))) + fSqrt2);
    }
}
