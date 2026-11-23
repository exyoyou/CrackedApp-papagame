package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class b implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f31610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f31611b;

    public b(float f10, @NonNull d dVar) {
        while (dVar instanceof b) {
            dVar = ((b) dVar).f31610a;
            f10 += ((b) dVar).f31611b;
        }
        this.f31610a = dVar;
        this.f31611b = f10;
    }

    @Override // com.google.android.material.shape.d
    public float a(@NonNull RectF rectF) {
        return Math.max(0.0f, this.f31610a.a(rectF) + this.f31611b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f31610a.equals(bVar.f31610a) && this.f31611b == bVar.f31611b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31610a, Float.valueOf(this.f31611b)});
    }
}
