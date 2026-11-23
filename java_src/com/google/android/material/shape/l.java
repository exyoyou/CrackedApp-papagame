package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class l implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f31624a;

    public l(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        this.f31624a = f10;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static l b(@NonNull RectF rectF, @NonNull d dVar) {
        return dVar instanceof l ? (l) dVar : new l(dVar.a(rectF) / c(rectF));
    }

    private static float c(@NonNull RectF rectF) {
        return Math.min(rectF.width(), rectF.height());
    }

    @Override // com.google.android.material.shape.d
    public float a(@NonNull RectF rectF) {
        return this.f31624a * c(rectF);
    }

    @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
    public float d() {
        return this.f31624a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l) && this.f31624a == ((l) obj).f31624a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f31624a)});
    }
}
