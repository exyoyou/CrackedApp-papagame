package com.join.mgps.customview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;

/* JADX INFO: loaded from: classes3.dex */
public class t0 extends ImageSpan {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f66995b;

    public t0(Drawable d10) {
        super(d10);
        this.f66995b = -1;
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence text, int start, int end, float x10, int top, int y10, int bottom, Paint paint) {
        float textSize = paint.getTextSize();
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        int iCeil = (int) Math.ceil(fontMetrics.descent - fontMetrics.ascent);
        int iRound = Math.round(paint.measureText(text, start, end));
        getDrawable().setBounds(0, 0, iRound, iCeil);
        Drawable drawable = getDrawable();
        getDrawable().setBounds(0, 0, iRound, iCeil);
        canvas.save();
        int i10 = ((bottom - top) - drawable.getBounds().bottom) / 2;
        canvas.translate(x10, (int) ((top + i10) - (i10 * 0.20000005f)));
        drawable.draw(canvas);
        canvas.restore();
        canvas.save();
        paint.setColor(this.f66995b);
        paint.setTextSize(textSize * 0.8f);
        Paint.FontMetrics fontMetrics2 = paint.getFontMetrics();
        int iCeil2 = (int) Math.ceil(fontMetrics2.descent - fontMetrics2.ascent);
        String string = text.subSequence(start, end).toString();
        canvas.drawText(string, x10 + ((iRound - paint.measureText(string)) / 2.0f), y10 - ((iCeil - iCeil2) / 4), paint);
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
        return Math.round(paint.measureText(text, start, end));
    }

    public t0(Drawable d10, int fontColor) {
        super(d10);
        this.f66995b = fontColor;
    }
}
