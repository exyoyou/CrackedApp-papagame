package com.facebook.imagepipeline.common;

import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float f27797e = 0.6666667f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f27800c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f27801d;

    public e(int width, int height) {
        this(width, height, 2048.0f);
    }

    @Nullable
    public static e a(int width, int height) {
        if (width <= 0 || height <= 0) {
            return null;
        }
        return new e(width, height);
    }

    @Nullable
    public static e b(int size) {
        if (size <= 0) {
            return null;
        }
        return new e(size, size);
    }

    public boolean equals(@Nullable Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof e)) {
            return false;
        }
        e eVar = (e) other;
        return this.f27798a == eVar.f27798a && this.f27799b == eVar.f27799b;
    }

    public int hashCode() {
        return com.facebook.common.util.b.b(this.f27798a, this.f27799b);
    }

    public String toString() {
        return String.format(null, "%dx%d", Integer.valueOf(this.f27798a), Integer.valueOf(this.f27799b));
    }

    public e(int width, int height, float maxBitmapSize) {
        this(width, height, maxBitmapSize, 0.6666667f);
    }

    public e(int width, int height, float maxBitmapSize, float roundUpFraction) {
        i.d(Boolean.valueOf(width > 0));
        i.d(Boolean.valueOf(height > 0));
        this.f27798a = width;
        this.f27799b = height;
        this.f27800c = maxBitmapSize;
        this.f27801d = roundUpFraction;
    }
}
