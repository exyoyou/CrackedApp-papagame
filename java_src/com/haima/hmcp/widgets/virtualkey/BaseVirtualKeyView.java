package com.haima.hmcp.widgets.virtualkey;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.TypedValue;
import com.haima.hmcp.beans.PointCoord;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseVirtualKeyView {
    protected Paint buttonPaint;
    protected Context context;
    protected float surfaceHeight;
    protected float surfaceWidth;
    protected Paint textPaint;
    protected final int DEFAULT_KEY_WIDTH = 54;
    protected final int DEFAULT_KEY_HEIGHT = 54;

    public BaseVirtualKeyView(Context context) {
        this.context = context;
        Paint paint = new Paint();
        this.buttonPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.buttonPaint.setAntiAlias(true);
        this.buttonPaint.setColor(Color.parseColor("#3B4A59"));
        this.buttonPaint.setFilterBitmap(true);
        this.buttonPaint.setDither(true);
        Paint paint2 = new Paint();
        this.textPaint = paint2;
        paint2.setColor(-1);
        this.textPaint.setTextSize(TypedValue.applyDimension(2, 20.0f, context.getResources().getDisplayMetrics()));
        this.textPaint.setTextAlign(Paint.Align.CENTER);
        this.textPaint.setAntiAlias(true);
        this.textPaint.setSubpixelText(true);
        this.textPaint.setFilterBitmap(true);
        this.textPaint.setDither(true);
    }

    public abstract void drawVirtualKey(Canvas canvas, PointCoord pointCoord, float f10, float f11);

    public void setSurfaceSize(float f10, float f11) {
        this.surfaceWidth = f10;
        this.surfaceHeight = f11;
    }

    protected abstract void setupPaint();
}
