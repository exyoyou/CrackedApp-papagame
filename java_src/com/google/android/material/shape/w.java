package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public class w extends g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f31722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f31723c;

    public w(float f10, boolean z10) {
        this.f31722b = f10;
        this.f31723c = z10;
    }

    @Override // com.google.android.material.shape.g
    public void b(float f10, float f11, float f12, @NonNull p pVar) {
        if (!this.f31723c) {
            float f13 = this.f31722b;
            pVar.o(f11 - (f13 * f12), 0.0f, f11, (-f13) * f12);
            pVar.o(f11 + (this.f31722b * f12), 0.0f, f10, 0.0f);
        } else {
            pVar.n(f11 - (this.f31722b * f12), 0.0f);
            float f14 = this.f31722b;
            pVar.o(f11, f14 * f12, (f14 * f12) + f11, 0.0f);
            pVar.n(f10, 0.0f);
        }
    }
}
