package com.haima.hmcp.widgets.virtualkey;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import com.haima.hmcp.beans.PointCoord;

/* JADX INFO: loaded from: classes5.dex */
public class NormalVirtualKeyView extends BaseVirtualKeyView {
    public NormalVirtualKeyView(Context context) {
        super(context);
    }

    @Override // com.haima.hmcp.widgets.virtualkey.BaseVirtualKeyView
    public void drawVirtualKey(Canvas canvas, PointCoord pointCoord, float f10, float f11) {
        setupPaint();
        canvas.save();
        if (pointCoord.f33823w == 0 || pointCoord.f33822h == 0) {
            pointCoord.f33823w = 54;
            pointCoord.f33822h = 54;
        }
        float f12 = pointCoord.f33824x;
        float f13 = this.surfaceWidth;
        int i10 = pointCoord.f33823w;
        float f14 = ((f12 * f13) * f10) - ((i10 * f10) / 2.0f);
        float f15 = pointCoord.f33825y;
        float f16 = this.surfaceHeight;
        int i11 = pointCoord.f33822h;
        float f17 = ((f15 * f16) * f11) - ((i11 * f11) / 2.0f);
        float f18 = f12 * f13 * f10;
        float f19 = f15 * f16 * f11;
        float f20 = ((i10 * f10) + f14) - f14;
        canvas.drawCircle(f18, f19, Math.min(f20 / 2.0f, (((i11 * f11) + f17) - f17) / 2.0f), this.buttonPaint);
        if (!TextUtils.isEmpty(pointCoord.buttonName)) {
            float f21 = f20 * 0.8f;
            float textSize = this.textPaint.getTextSize();
            float fMeasureText = this.textPaint.measureText(pointCoord.buttonName);
            if (fMeasureText > f21) {
                this.textPaint.setTextSize(textSize * (f21 / fMeasureText));
            }
            Paint.FontMetrics fontMetrics = this.textPaint.getFontMetrics();
            float f22 = fontMetrics.bottom;
            canvas.drawText(pointCoord.buttonName, f18, (f19 + ((f22 - fontMetrics.top) / 2.0f)) - f22, this.textPaint);
        }
        canvas.restore();
    }

    @Override // com.haima.hmcp.widgets.virtualkey.BaseVirtualKeyView
    protected void setupPaint() {
    }
}
