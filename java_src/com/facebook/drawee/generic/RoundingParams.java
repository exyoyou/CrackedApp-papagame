package com.facebook.drawee.generic;

import androidx.annotation.ColorInt;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class RoundingParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RoundingMethod f27306a = RoundingMethod.BITMAP_ONLY;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f27307b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private float[] f27308c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f27309d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f27310e = 0.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f27311f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f27312g = 0.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f27313h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f27314i = false;

    public enum RoundingMethod {
        OVERLAY_COLOR,
        BITMAP_ONLY
    }

    public static RoundingParams a() {
        return new RoundingParams().x(true);
    }

    public static RoundingParams b(float topLeft, float topRight, float bottomRight, float bottomLeft) {
        return new RoundingParams().r(topLeft, topRight, bottomRight, bottomLeft);
    }

    public static RoundingParams c(float[] radii) {
        return new RoundingParams().s(radii);
    }

    public static RoundingParams d(float radius) {
        return new RoundingParams().t(radius);
    }

    private float[] h() {
        if (this.f27308c == null) {
            this.f27308c = new float[8];
        }
        return this.f27308c;
    }

    public int e() {
        return this.f27311f;
    }

    public boolean equals(@Nullable Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        RoundingParams roundingParams = (RoundingParams) o10;
        if (this.f27307b == roundingParams.f27307b && this.f27309d == roundingParams.f27309d && Float.compare(roundingParams.f27310e, this.f27310e) == 0 && this.f27311f == roundingParams.f27311f && Float.compare(roundingParams.f27312g, this.f27312g) == 0 && this.f27306a == roundingParams.f27306a && this.f27313h == roundingParams.f27313h && this.f27314i == roundingParams.f27314i) {
            return Arrays.equals(this.f27308c, roundingParams.f27308c);
        }
        return false;
    }

    public float f() {
        return this.f27310e;
    }

    @Nullable
    public float[] g() {
        return this.f27308c;
    }

    public int hashCode() {
        RoundingMethod roundingMethod = this.f27306a;
        int iHashCode = (((roundingMethod != null ? roundingMethod.hashCode() : 0) * 31) + (this.f27307b ? 1 : 0)) * 31;
        float[] fArr = this.f27308c;
        int iHashCode2 = (((iHashCode + (fArr != null ? Arrays.hashCode(fArr) : 0)) * 31) + this.f27309d) * 31;
        float f10 = this.f27310e;
        int iFloatToIntBits = (((iHashCode2 + (f10 != 0.0f ? Float.floatToIntBits(f10) : 0)) * 31) + this.f27311f) * 31;
        float f11 = this.f27312g;
        return ((((iFloatToIntBits + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0)) * 31) + (this.f27313h ? 1 : 0)) * 31) + (this.f27314i ? 1 : 0);
    }

    public int i() {
        return this.f27309d;
    }

    public float j() {
        return this.f27312g;
    }

    public boolean k() {
        return this.f27314i;
    }

    public boolean l() {
        return this.f27307b;
    }

    public RoundingMethod m() {
        return this.f27306a;
    }

    public boolean n() {
        return this.f27313h;
    }

    public RoundingParams o(@ColorInt int color, float width) {
        i.e(width >= 0.0f, "the border width cannot be < 0");
        this.f27310e = width;
        this.f27311f = color;
        return this;
    }

    public RoundingParams p(@ColorInt int color) {
        this.f27311f = color;
        return this;
    }

    public RoundingParams q(float width) {
        i.e(width >= 0.0f, "the border width cannot be < 0");
        this.f27310e = width;
        return this;
    }

    public RoundingParams r(float topLeft, float topRight, float bottomRight, float bottomLeft) {
        float[] fArrH = h();
        fArrH[1] = topLeft;
        fArrH[0] = topLeft;
        fArrH[3] = topRight;
        fArrH[2] = topRight;
        fArrH[5] = bottomRight;
        fArrH[4] = bottomRight;
        fArrH[7] = bottomLeft;
        fArrH[6] = bottomLeft;
        return this;
    }

    public RoundingParams s(float[] radii) {
        i.i(radii);
        i.e(radii.length == 8, "radii should have exactly 8 values");
        System.arraycopy(radii, 0, h(), 0, 8);
        return this;
    }

    public RoundingParams t(float radius) {
        Arrays.fill(h(), radius);
        return this;
    }

    public RoundingParams u(@ColorInt int overlayColor) {
        this.f27309d = overlayColor;
        this.f27306a = RoundingMethod.OVERLAY_COLOR;
        return this;
    }

    public RoundingParams v(float padding) {
        i.e(padding >= 0.0f, "the padding cannot be < 0");
        this.f27312g = padding;
        return this;
    }

    public RoundingParams w(boolean paintFilterBitmap) {
        this.f27314i = paintFilterBitmap;
        return this;
    }

    public RoundingParams x(boolean roundAsCircle) {
        this.f27307b = roundAsCircle;
        return this;
    }

    public RoundingParams y(RoundingMethod roundingMethod) {
        this.f27306a = roundingMethod;
        return this;
    }

    public RoundingParams z(boolean scaleDownInsideBorders) {
        this.f27313h = scaleDownInsideBorders;
        return this;
    }
}
