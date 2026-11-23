package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import com.google.android.material.color.s;

/* JADX INFO: loaded from: classes5.dex */
final class c extends g<CircularProgressIndicatorSpec> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final float f31233g = 0.01f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f31234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f31235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f31236d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f31237e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
    private float f31238f;

    c(@NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
    }

    private void h(@NonNull Canvas canvas, @NonNull Paint paint, float f10, float f11, @ColorInt int i10, @Px int i11, @Px int i12) {
        float f12 = f11 >= f10 ? f11 - f10 : (f11 + 1.0f) - f10;
        float f13 = f10 % 1.0f;
        if (this.f31238f < 1.0f) {
            float f14 = f13 + f12;
            if (f14 > 1.0f) {
                h(canvas, paint, f13, 1.0f, i10, i11, 0);
                h(canvas, paint, 1.0f, f14, i10, 0, i12);
                return;
            }
        }
        float degrees = (float) Math.toDegrees(this.f31235c / this.f31236d);
        if (f13 == 0.0f && f12 >= 0.99f) {
            f12 += ((f12 - 0.99f) * ((degrees * 2.0f) / 360.0f)) / f31233g;
        }
        float f15 = z4.a.f(1.0f - this.f31238f, 1.0f, f13);
        float f16 = z4.a.f(0.0f, this.f31238f, f12);
        float degrees2 = (float) Math.toDegrees(i11 / this.f31236d);
        float degrees3 = ((f16 * 360.0f) - degrees2) - ((float) Math.toDegrees(i12 / this.f31236d));
        float f17 = (f15 * 360.0f) + degrees2;
        if (degrees3 <= 0.0f) {
            return;
        }
        paint.setAntiAlias(true);
        paint.setColor(i10);
        paint.setStrokeWidth(this.f31234b);
        float f18 = degrees * 2.0f;
        if (degrees3 < f18) {
            float f19 = degrees3 / f18;
            paint.setStyle(Paint.Style.FILL);
            j(canvas, paint, f17 + (degrees * f19), this.f31235c * 2.0f, this.f31234b, f19);
            return;
        }
        float f20 = this.f31236d;
        RectF rectF = new RectF(-f20, -f20, f20, f20);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(this.f31237e ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        float f21 = f17 + degrees;
        canvas.drawArc(rectF, f21, degrees3 - f18, false, paint);
        if (this.f31237e || this.f31235c <= 0.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        i(canvas, paint, f21, this.f31235c * 2.0f, this.f31234b);
        i(canvas, paint, (f17 + degrees3) - degrees, this.f31235c * 2.0f, this.f31234b);
    }

    private void i(@NonNull Canvas canvas, @NonNull Paint paint, float f10, float f11, float f12) {
        j(canvas, paint, f10, f11, f12, 1.0f);
    }

    private void j(@NonNull Canvas canvas, @NonNull Paint paint, float f10, float f11, float f12, float f13) {
        float fMin = (int) Math.min(f12, this.f31234b);
        float f14 = f11 / 2.0f;
        float fMin2 = Math.min(f14, (this.f31235c * fMin) / this.f31234b);
        RectF rectF = new RectF((-fMin) / 2.0f, (-f11) / 2.0f, fMin / 2.0f, f14);
        canvas.save();
        double d10 = f10;
        canvas.translate((float) (((double) this.f31236d) * Math.cos(Math.toRadians(d10))), (float) (((double) this.f31236d) * Math.sin(Math.toRadians(d10))));
        canvas.rotate(f10);
        canvas.scale(f13, f13);
        canvas.drawRoundRect(rectF, fMin2, fMin2, paint);
        canvas.restore();
    }

    private int k() {
        S s10 = this.f31290a;
        return ((CircularProgressIndicatorSpec) s10).f31218h + (((CircularProgressIndicatorSpec) s10).f31219i * 2);
    }

    @Override // com.google.android.material.progressindicator.g
    void a(@NonNull Canvas canvas, @NonNull Rect rect, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, boolean z10, boolean z11) {
        float fWidth = rect.width() / f();
        float fHeight = rect.height() / e();
        S s10 = this.f31290a;
        float f11 = (((CircularProgressIndicatorSpec) s10).f31218h / 2.0f) + ((CircularProgressIndicatorSpec) s10).f31219i;
        canvas.translate((f11 * fWidth) + rect.left, (f11 * fHeight) + rect.top);
        canvas.rotate(-90.0f);
        canvas.scale(fWidth, fHeight);
        if (((CircularProgressIndicatorSpec) this.f31290a).f31220j != 0) {
            canvas.scale(1.0f, -1.0f);
        }
        float f12 = -f11;
        canvas.clipRect(f12, f12, f11, f11);
        S s11 = this.f31290a;
        this.f31237e = ((CircularProgressIndicatorSpec) s11).f31226a / 2 <= ((CircularProgressIndicatorSpec) s11).f31227b;
        this.f31234b = ((CircularProgressIndicatorSpec) s11).f31226a * f10;
        this.f31235c = Math.min(((CircularProgressIndicatorSpec) s11).f31226a / 2, ((CircularProgressIndicatorSpec) s11).f31227b) * f10;
        S s12 = this.f31290a;
        float f13 = (((CircularProgressIndicatorSpec) s12).f31218h - ((CircularProgressIndicatorSpec) s12).f31226a) / 2.0f;
        this.f31236d = f13;
        if (z10 || z11) {
            if ((z10 && ((CircularProgressIndicatorSpec) s12).f31230e == 2) || (z11 && ((CircularProgressIndicatorSpec) s12).f31231f == 1)) {
                this.f31236d = f13 + (((1.0f - f10) * ((CircularProgressIndicatorSpec) s12).f31226a) / 2.0f);
            } else if ((z10 && ((CircularProgressIndicatorSpec) s12).f31230e == 1) || (z11 && ((CircularProgressIndicatorSpec) s12).f31231f == 2)) {
                this.f31236d = f13 - (((1.0f - f10) * ((CircularProgressIndicatorSpec) s12).f31226a) / 2.0f);
            }
        }
        if (z11 && ((CircularProgressIndicatorSpec) s12).f31231f == 3) {
            this.f31238f = f10;
        } else {
            this.f31238f = 1.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.g
    void b(@NonNull Canvas canvas, @NonNull Paint paint, @ColorInt int i10, @IntRange(from = 0, to = 255) int i11) {
    }

    @Override // com.google.android.material.progressindicator.g
    void c(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull g.a aVar, @IntRange(from = 0, to = 255) int i10) {
        int iA = s.a(aVar.f31293c, i10);
        float f10 = aVar.f31291a;
        float f11 = aVar.f31292b;
        int i11 = aVar.f31294d;
        h(canvas, paint, f10, f11, iA, i11, i11);
    }

    @Override // com.google.android.material.progressindicator.g
    void d(@NonNull Canvas canvas, @NonNull Paint paint, float f10, float f11, @ColorInt int i10, @IntRange(from = 0, to = 255) int i11, int i12) {
        h(canvas, paint, f10, f11, s.a(i10, i11), i12, i12);
    }

    @Override // com.google.android.material.progressindicator.g
    int e() {
        return k();
    }

    @Override // com.google.android.material.progressindicator.g
    int f() {
        return k();
    }
}
