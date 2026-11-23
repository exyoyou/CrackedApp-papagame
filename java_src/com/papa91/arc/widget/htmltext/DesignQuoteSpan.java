package com.papa91.arc.widget.htmltext;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.style.LeadingMarginSpan;
import android.text.style.LineBackgroundSpan;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public class DesignQuoteSpan implements LeadingMarginSpan, LineBackgroundSpan {
    private int backgroundColor;
    private float gap;
    private int stripColor;
    private float stripeWidth;

    DesignQuoteSpan(int i10, int i11, float f10, float f11) {
        this.backgroundColor = i10;
        this.stripColor = i11;
        this.stripeWidth = f10;
        this.gap = f11;
    }

    @Override // android.text.style.LineBackgroundSpan
    public void drawBackground(@NonNull Canvas canvas, @NonNull Paint paint, int i10, int i11, int i12, int i13, int i14, @NonNull CharSequence charSequence, int i15, int i16, int i17) {
        int color = paint.getColor();
        paint.setColor(this.backgroundColor);
        canvas.drawRect(i10, i12, i11, i14, paint);
        paint.setColor(color);
    }

    @Override // android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i10, int i11, int i12, int i13, int i14, CharSequence charSequence, int i15, int i16, boolean z10, Layout layout) {
        Paint.Style style = paint.getStyle();
        int color = paint.getColor();
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.stripColor);
        float f10 = i10;
        canvas.drawRect(f10, i12, (i11 * this.stripeWidth) + f10, i14, paint);
        paint.setStyle(style);
        paint.setColor(color);
    }

    @Override // android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z10) {
        return (int) (this.stripeWidth + this.gap);
    }
}
