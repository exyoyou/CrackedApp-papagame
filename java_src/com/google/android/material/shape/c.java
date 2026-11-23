package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class c implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f31612a;

    public c(float f10) {
        this.f31612a = f10;
    }

    @NonNull
    public static c b(@NonNull a aVar) {
        return new c(aVar.b());
    }

    private static float c(@NonNull RectF rectF) {
        return Math.min(rectF.width() / 2.0f, rectF.height() / 2.0f);
    }

    @Override // com.google.android.material.shape.d
    public float a(@NonNull RectF rectF) {
        return Math.min(this.f31612a, c(rectF));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && this.f31612a == ((c) obj).f31612a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f31612a)});
    }
}
