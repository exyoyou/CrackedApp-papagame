package com.facebook.imagepipeline.common;

import androidx.annotation.Nullable;
import com.facebook.infer.annotation.Nullsafe;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class RotationOptions {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f27757c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f27758d = 90;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f27759e = 180;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f27760f = 270;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f27761g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f27762h = -2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final RotationOptions f27763i = new RotationOptions(-1, false);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final RotationOptions f27764j = new RotationOptions(-2, false);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final RotationOptions f27765k = new RotationOptions(-1, true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f27766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f27767b;

    @Retention(RetentionPolicy.SOURCE)
    public @interface RotationAngle {
    }

    private RotationOptions(int rotation, boolean canDeferUntilRendered) {
        this.f27766a = rotation;
        this.f27767b = canDeferUntilRendered;
    }

    public static RotationOptions a() {
        return f27763i;
    }

    public static RotationOptions b() {
        return f27765k;
    }

    public static RotationOptions d() {
        return f27764j;
    }

    public static RotationOptions e(int angle) {
        return new RotationOptions(angle, false);
    }

    public boolean c() {
        return this.f27767b;
    }

    public boolean equals(@Nullable Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RotationOptions)) {
            return false;
        }
        RotationOptions rotationOptions = (RotationOptions) other;
        return this.f27766a == rotationOptions.f27766a && this.f27767b == rotationOptions.f27767b;
    }

    public int f() {
        if (h()) {
            throw new IllegalStateException("Rotation is set to use EXIF");
        }
        return this.f27766a;
    }

    public boolean g() {
        return this.f27766a != -2;
    }

    public boolean h() {
        return this.f27766a == -1;
    }

    public int hashCode() {
        return com.facebook.common.util.b.h(Integer.valueOf(this.f27766a), Boolean.valueOf(this.f27767b));
    }

    public String toString() {
        return String.format(null, "%d defer:%b", Integer.valueOf(this.f27766a), Boolean.valueOf(this.f27767b));
    }
}
