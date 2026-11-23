package com.join.mgps.customview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;

/* JADX INFO: loaded from: classes3.dex */
public class u0 extends ImageSpan {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f67002b;

    public u0(Drawable drawable) {
        super(drawable);
        this.f67002b = 1.0f;
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence text, int start, int end, float x10, int top, int y10, int bottom, Paint paint) {
        Drawable drawable = getDrawable();
        canvas.save();
        int i10 = ((bottom - top) - drawable.getBounds().bottom) / 2;
        float f10 = this.f67002b;
        canvas.translate(x10, f10 > 1.0f ? (int) ((top + i10) - (i10 * (f10 - 1.0f))) : top + i10);
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence text, int start, int end, Paint.FontMetricsInt fontMetricsInt) {
        Rect bounds = getDrawable().getBounds();
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
            int i10 = fontMetricsInt2.bottom - fontMetricsInt2.top;
            int i11 = (bounds.bottom - bounds.top) / 2;
            int i12 = i10 / 4;
            int i13 = i11 - i12;
            int i14 = -(i11 + i12);
            fontMetricsInt.ascent = i14;
            fontMetricsInt.top = i14;
            fontMetricsInt.bottom = i13;
            fontMetricsInt.descent = i13;
        }
        return bounds.right;
    }

    public u0(Drawable drawable, float lineSpacingMultiplier) {
        super(drawable);
        this.f67002b = lineSpacingMultiplier;
    }
}
