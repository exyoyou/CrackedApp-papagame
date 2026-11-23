package com.haima.hmcp.virtual.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirtualAlignLineView extends View {
    public static final int LAND_DIRECTION = 0;
    public static final int PORTRAIT_DIRECTION = 1;
    private Paint mAlignPaint;
    private int mDirection;
    private int mLandY;
    private int mPortraitX;
    private int mScreenHeight;
    private int mScreenWidth;

    public HmVirtualAlignLineView(Context context) {
        super(context);
    }

    private void drawLandLine(Canvas canvas, int i10) {
        float f10 = i10;
        canvas.drawLine(0.0f, f10, this.mScreenWidth, f10, this.mAlignPaint);
    }

    private void drawPortraitLine(Canvas canvas, int i10) {
        float f10 = i10;
        canvas.drawLine(f10, 0.0f, f10, this.mScreenHeight, this.mAlignPaint);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i10 = this.mDirection;
        if (i10 == 0) {
            drawLandLine(canvas, this.mLandY);
        } else if (i10 == 1) {
            drawPortraitLine(canvas, this.mPortraitX);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    public void setDirection(int i10) {
        this.mDirection = i10;
    }

    public void setLandY(int i10) {
        this.mLandY = i10;
    }

    public void setPortraitX(int i10) {
        this.mPortraitX = i10;
    }

    public HmVirtualAlignLineView(Context context, int i10, int i11) {
        super(context);
        Paint paint = new Paint();
        this.mAlignPaint = paint;
        paint.setStrokeWidth(2.0f);
        this.mAlignPaint.setColor(11075556);
        this.mAlignPaint.setStyle(Paint.Style.STROKE);
        this.mAlignPaint.setAlpha(153);
        this.mAlignPaint.setPathEffect(new DashPathEffect(new float[]{10.0f, 10.0f}, 0.0f));
        this.mAlignPaint.setAntiAlias(true);
        this.mScreenWidth = i10;
        this.mScreenHeight = i11;
    }
}
