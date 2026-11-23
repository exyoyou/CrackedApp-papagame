package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.math.MathUtils;
import com.google.android.material.color.s;

/* JADX INFO: loaded from: classes5.dex */
final class j extends g<LinearProgressIndicatorSpec> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f31300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f31301c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f31302d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f31303e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
    private float f31304f;

    j(@NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
        this.f31300b = 300.0f;
    }

    private void h(@NonNull Canvas canvas, @NonNull Paint paint, float f10, float f11, @ColorInt int i10, @Px int i11, @Px int i12) {
        float fClamp = MathUtils.clamp(f10, 0.0f, 1.0f);
        float fClamp2 = MathUtils.clamp(f11, 0.0f, 1.0f);
        float f12 = z4.a.f(1.0f - this.f31304f, 1.0f, fClamp);
        float f13 = z4.a.f(1.0f - this.f31304f, 1.0f, fClamp2);
        int iClamp = (int) ((i11 * MathUtils.clamp(f12, 0.0f, 0.01f)) / 0.01f);
        int iClamp2 = (int) ((i12 * (1.0f - MathUtils.clamp(f13, 0.99f, 1.0f))) / 0.01f);
        float f14 = this.f31300b;
        int i13 = (int) ((f12 * f14) + iClamp);
        int i14 = (int) ((f13 * f14) - iClamp2);
        float f15 = (-f14) / 2.0f;
        if (i13 <= i14) {
            float f16 = this.f31302d;
            float f17 = i13 + f16;
            float f18 = i14 - f16;
            float f19 = f16 * 2.0f;
            paint.setColor(i10);
            paint.setAntiAlias(true);
            paint.setStrokeWidth(this.f31301c);
            if (f17 >= f18) {
                j(canvas, paint, new PointF(f17 + f15, 0.0f), new PointF(f18 + f15, 0.0f), f19, this.f31301c);
                return;
            }
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(this.f31303e ? Paint.Cap.ROUND : Paint.Cap.BUTT);
            float f20 = f17 + f15;
            float f21 = f18 + f15;
            canvas.drawLine(f20, 0.0f, f21, 0.0f, paint);
            if (this.f31303e || this.f31302d <= 0.0f) {
                return;
            }
            paint.setStyle(Paint.Style.FILL);
            if (f17 > 0.0f) {
                i(canvas, paint, new PointF(f20, 0.0f), f19, this.f31301c);
            }
            if (f18 < this.f31300b) {
                i(canvas, paint, new PointF(f21, 0.0f), f19, this.f31301c);
            }
        }
    }

    private void i(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull PointF pointF, float f10, float f11) {
        j(canvas, paint, pointF, null, f10, f11);
    }

    private void j(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull PointF pointF, @Nullable PointF pointF2, float f10, float f11) {
        float fMin = Math.min(f11, this.f31301c);
        float f12 = f10 / 2.0f;
        float fMin2 = Math.min(f12, (this.f31302d * fMin) / this.f31301c);
        RectF rectF = new RectF((-f10) / 2.0f, (-fMin) / 2.0f, f12, fMin / 2.0f);
        paint.setStyle(Paint.Style.FILL);
        canvas.save();
        if (pointF2 != null) {
            canvas.translate(pointF2.x, pointF2.y);
            Path path = new Path();
            path.addRoundRect(rectF, fMin2, fMin2, Path.Direction.CCW);
            canvas.clipPath(path);
            canvas.translate(-pointF2.x, -pointF2.y);
        }
        canvas.translate(pointF.x, pointF.y);
        canvas.drawRoundRect(rectF, fMin2, fMin2, paint);
        canvas.restore();
    }

    @Override // com.google.android.material.progressindicator.g
    void a(@NonNull Canvas canvas, @NonNull Rect rect, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, boolean z10, boolean z11) {
        this.f31300b = rect.width();
        float f11 = ((LinearProgressIndicatorSpec) this.f31290a).f31226a;
        canvas.translate(rect.left + (rect.width() / 2.0f), rect.top + (rect.height() / 2.0f) + Math.max(0.0f, (rect.height() - f11) / 2.0f));
        if (((LinearProgressIndicatorSpec) this.f31290a).f31223j) {
            canvas.scale(-1.0f, 1.0f);
        }
        float f12 = this.f31300b / 2.0f;
        float f13 = f11 / 2.0f;
        canvas.clipRect(-f12, -f13, f12, f13);
        S s10 = this.f31290a;
        this.f31303e = ((LinearProgressIndicatorSpec) s10).f31226a / 2 == ((LinearProgressIndicatorSpec) s10).f31227b;
        this.f31301c = ((LinearProgressIndicatorSpec) s10).f31226a * f10;
        this.f31302d = Math.min(((LinearProgressIndicatorSpec) s10).f31226a / 2, ((LinearProgressIndicatorSpec) s10).f31227b) * f10;
        if (z10 || z11) {
            if ((z10 && ((LinearProgressIndicatorSpec) this.f31290a).f31230e == 2) || (z11 && ((LinearProgressIndicatorSpec) this.f31290a).f31231f == 1)) {
                canvas.scale(1.0f, -1.0f);
            }
            if (z10 || (z11 && ((LinearProgressIndicatorSpec) this.f31290a).f31231f != 3)) {
                canvas.translate(0.0f, (((LinearProgressIndicatorSpec) this.f31290a).f31226a * (1.0f - f10)) / 2.0f);
            }
        }
        if (z11 && ((LinearProgressIndicatorSpec) this.f31290a).f31231f == 3) {
            this.f31304f = f10;
        } else {
            this.f31304f = 1.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.g
    void b(@NonNull Canvas canvas, @NonNull Paint paint, @ColorInt int i10, @IntRange(from = 0, to = 255) int i11) {
        int iA = s.a(i10, i11);
        if (((LinearProgressIndicatorSpec) this.f31290a).f31224k <= 0 || iA == 0) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(iA);
        PointF pointF = new PointF((this.f31300b / 2.0f) - (this.f31301c / 2.0f), 0.0f);
        S s10 = this.f31290a;
        i(canvas, paint, pointF, ((LinearProgressIndicatorSpec) s10).f31224k, ((LinearProgressIndicatorSpec) s10).f31224k);
    }

    @Override // com.google.android.material.progressindicator.g
    void c(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull g.a aVar, int i10) {
        int iA = s.a(aVar.f31293c, i10);
        float f10 = aVar.f31291a;
        float f11 = aVar.f31292b;
        int i11 = aVar.f31294d;
        h(canvas, paint, f10, f11, iA, i11, i11);
    }

    @Override // com.google.android.material.progressindicator.g
    void d(@NonNull Canvas canvas, @NonNull Paint paint, float f10, float f11, int i10, int i11, @Px int i12) {
        h(canvas, paint, f10, f11, s.a(i10, i11), i12, i12);
    }

    @Override // com.google.android.material.progressindicator.g
    int e() {
        return ((LinearProgressIndicatorSpec) this.f31290a).f31226a;
    }

    @Override // com.google.android.material.progressindicator.g
    int f() {
        return -1;
    }
}
