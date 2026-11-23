package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
public final class k extends g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f31622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f31623c;

    public k(@NonNull g gVar, float f10) {
        this.f31622b = gVar;
        this.f31623c = f10;
    }

    @Override // com.google.android.material.shape.g
    boolean a() {
        return this.f31622b.a();
    }

    @Override // com.google.android.material.shape.g
    public void b(float f10, float f11, float f12, @NonNull p pVar) {
        this.f31622b.b(f10, f11 - this.f31623c, f12, pVar);
    }
}
