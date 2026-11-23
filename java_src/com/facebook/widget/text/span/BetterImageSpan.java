package com.facebook.widget.text.span;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ReplacementSpan;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes9.dex */
public class BetterImageSpan extends ReplacementSpan {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f29074h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f29075i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f29076j = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f29077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f29078c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Rect f29079d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f29080e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Paint.FontMetricsInt f29081f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Drawable f29082g;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BetterImageSpanAlignment {
    }

    public BetterImageSpan(Drawable drawable) {
        this(drawable, 1);
    }

    private int b(Paint.FontMetricsInt fm2) {
        int i10 = this.f29080e;
        if (i10 == 0) {
            return fm2.descent - this.f29078c;
        }
        if (i10 != 2) {
            return -this.f29078c;
        }
        int i11 = fm2.descent;
        int i12 = fm2.ascent;
        return i12 + (((i11 - i12) - this.f29078c) / 2);
    }

    public static final int c(int alignment) {
        if (alignment != 0) {
            return alignment != 2 ? 1 : 2;
        }
        return 0;
    }

    public Drawable a() {
        return this.f29082g;
    }

    public void d() {
        Rect bounds = this.f29082g.getBounds();
        this.f29079d = bounds;
        this.f29077b = bounds.width();
        this.f29078c = this.f29079d.height();
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence text, int start, int end, float x10, int top, int y10, int bottom, Paint paint) {
        paint.getFontMetricsInt(this.f29081f);
        int iB = y10 + b(this.f29081f);
        canvas.translate(x10, iB);
        this.f29082g.draw(canvas);
        canvas.translate(-x10, -iB);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence text, int start, int end, @Nullable Paint.FontMetricsInt fontMetrics) {
        d();
        if (fontMetrics == null) {
            return this.f29077b;
        }
        int iB = b(fontMetrics);
        int i10 = this.f29078c + iB;
        if (iB < fontMetrics.ascent) {
            fontMetrics.ascent = iB;
        }
        if (iB < fontMetrics.top) {
            fontMetrics.top = iB;
        }
        if (i10 > fontMetrics.descent) {
            fontMetrics.descent = i10;
        }
        if (i10 > fontMetrics.bottom) {
            fontMetrics.bottom = i10;
        }
        return this.f29077b;
    }

    public BetterImageSpan(Drawable drawable, int verticalAlignment) {
        this.f29081f = new Paint.FontMetricsInt();
        this.f29082g = drawable;
        this.f29080e = verticalAlignment;
        d();
    }
}
