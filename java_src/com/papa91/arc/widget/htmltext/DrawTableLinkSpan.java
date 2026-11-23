package com.papa91.arc.widget.htmltext;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;

/* JADX INFO: loaded from: classes2.dex */
public class DrawTableLinkSpan extends ReplacementSpan {
    private static final String DEFAULT_TABLE_LINK_TEXT = "";
    private static int DEFAULT_TEXT_COLOR = -16776961;
    private static float DEFAULT_TEXT_SIZE = 80.0f;
    protected String mTableLinkText = "";
    protected float mTextSize = DEFAULT_TEXT_SIZE;
    protected int mTextColor = DEFAULT_TEXT_COLOR;

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint) {
        Paint paint2 = new Paint();
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(this.mTextColor);
        paint2.setAntiAlias(true);
        paint2.setTextSize(this.mTextSize);
        canvas.drawText(this.mTableLinkText, f10, i14, paint2);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        String str = this.mTableLinkText;
        int iMeasureText = (int) paint.measureText(str, 0, str.length());
        this.mTextSize = paint.getTextSize();
        return iMeasureText;
    }

    public String getTableLinkText() {
        return this.mTableLinkText;
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    public float getTextSize() {
        return this.mTextSize;
    }

    public DrawTableLinkSpan newInstance() {
        DrawTableLinkSpan drawTableLinkSpan = new DrawTableLinkSpan();
        drawTableLinkSpan.setTableLinkText(this.mTableLinkText);
        drawTableLinkSpan.setTextSize(this.mTextSize);
        drawTableLinkSpan.setTextColor(this.mTextColor);
        return drawTableLinkSpan;
    }

    public void setTableLinkText(String str) {
        this.mTableLinkText = str;
    }

    public void setTextColor(int i10) {
        this.mTextColor = i10;
    }

    public void setTextSize(float f10) {
        this.mTextSize = f10;
    }
}
