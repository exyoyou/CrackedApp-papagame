package com.google.android.material.drawable;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.DrawableWrapperCompat;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class i extends DrawableWrapperCompat {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f30608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f30609c;

    public i(@NonNull Drawable drawable, int i10, int i11) {
        super(drawable);
        this.f30608b = i10;
        this.f30609c = i11;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f30609c;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f30608b;
    }
}
