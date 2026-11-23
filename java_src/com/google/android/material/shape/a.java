package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f31609a;

    public a(float f10) {
        this.f31609a = f10;
    }

    @Override // com.google.android.material.shape.d
    public float a(@NonNull RectF rectF) {
        return this.f31609a;
    }

    public float b() {
        return this.f31609a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f31609a == ((a) obj).f31609a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f31609a)});
    }
}
