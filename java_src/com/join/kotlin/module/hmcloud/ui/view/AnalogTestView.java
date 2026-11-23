package com.join.kotlin.module.hmcloud.ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.internal.view.SupportMenu;

/* JADX INFO: loaded from: classes4.dex */
public class AnalogTestView extends View {
    private float axisX;
    private float axisY;
    int backgroundColor;
    private boolean drawEdge;
    private boolean drawThumb;
    int foreground;
    private boolean limitEdge;
    int strokeColor;
    int thumbColor;

    public AnalogTestView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.drawThumb = false;
        this.drawEdge = false;
        this.limitEdge = true;
        this.backgroundColor = 651745496;
        this.strokeColor = 100663295;
        this.foreground = -9991425;
        this.thumbColor = -9991425;
        init();
    }

    public void draw(float axisX, float axisY) {
        this.axisX = axisX;
        this.axisY = axisY;
        postInvalidate();
    }

    public void drawThumb(boolean draw) {
        this.drawThumb = draw;
        postInvalidate();
    }

    void init() {
        this.backgroundColor = Color.parseColor("#26D8D8D8");
        this.foreground = Color.parseColor("#ff678AFF");
        this.thumbColor = Color.parseColor("#80678AFF");
        this.strokeColor = Color.parseColor("#05FFFFFF");
    }

    /* JADX WARN: Code duplicated, block: B:16:0x00f1 A[Catch: Exception -> 0x014a, TryCatch #0 {Exception -> 0x014a, blocks: (B:3:0x0015, B:5:0x003d, B:7:0x0041, B:9:0x0071, B:11:0x0075, B:14:0x0099, B:16:0x00f1, B:18:0x0111), top: B:24:0x0015 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x010f  */
    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        boolean z10;
        float fCos;
        float f10;
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int i10 = measuredWidth / 2;
        int i11 = measuredHeight / 2;
        int iMin = Math.min(i10, i11);
        float f11 = i10;
        try {
            float f12 = this.axisX;
            float f13 = iMin;
            float f14 = f11 + (f12 * f13);
            float f15 = i11;
            float f16 = this.axisY;
            float fSin = f15 + (f16 * f13);
            float f17 = (5.6f * f13) / 100.0f;
            if (Math.sqrt((f12 * f12) + (f16 * f16)) > 1.0d) {
                if (this.drawEdge) {
                    Paint paint = new Paint();
                    paint.setAntiAlias(true);
                    paint.setColor(SupportMenu.CATEGORY_MASK);
                    paint.setStyle(Paint.Style.STROKE);
                    paint.setStrokeWidth(2.0f);
                    z10 = true;
                    canvas.drawRect(0.0f, 0.0f, measuredWidth, measuredHeight, paint);
                } else {
                    z10 = true;
                }
                if (this.limitEdge) {
                    double dAtan2 = Math.atan2(this.axisY, this.axisX);
                    double d10 = f13 - f17;
                    fCos = ((float) (Math.cos(dAtan2) * d10)) + f11;
                    fSin = f15 + ((float) (d10 * Math.sin(dAtan2)));
                }
                Paint paint2 = new Paint();
                paint2.setAntiAlias(z10);
                paint2.setColor(this.backgroundColor);
                paint2.setStyle(Paint.Style.FILL);
                paint2.setStrokeWidth(3.0f);
                canvas.drawCircle(f11, f15, f13, paint2);
                Paint paint3 = new Paint();
                paint3.setAntiAlias(z10);
                paint3.setColor(this.strokeColor);
                paint3.setStrokeWidth(2.0f);
                paint3.setStyle(Paint.Style.STROKE);
                canvas.drawCircle(f11, f15, f13, paint3);
                paint3.setStyle(Paint.Style.FILL);
                float f18 = iMin * 2;
                canvas.drawLine(0.0f, f15, f18, f15, paint3);
                canvas.drawLine(f11, 0.0f, f11, f18, paint3);
                if (this.drawThumb) {
                    Paint paint4 = new Paint();
                    paint4.setAntiAlias(z10);
                    paint4.setColor(this.thumbColor);
                    paint4.setStyle(Paint.Style.FILL);
                    f10 = 3.0f;
                    paint4.setStrokeWidth(3.0f);
                    canvas.drawCircle(f11, f15, iMin / 2, paint4);
                } else {
                    f10 = 3.0f;
                }
                Paint paint5 = new Paint();
                paint5.setAntiAlias(z10);
                paint5.setColor(this.foreground);
                paint5.setStyle(Paint.Style.FILL);
                paint5.setStrokeWidth(2.0f);
                canvas.drawLine(f11, f15, fCos, fSin, paint5);
                Paint paint6 = new Paint();
                paint6.setAntiAlias(z10);
                paint6.setColor(this.foreground);
                paint6.setStyle(Paint.Style.FILL);
                paint6.setStrokeWidth(f10);
                canvas.drawCircle(fCos, fSin, f17, paint6);
                super.onDraw(canvas);
            }
            f14 = f14;
            z10 = true;
            fCos = f14;
            Paint paint7 = new Paint();
            paint7.setAntiAlias(z10);
            paint7.setColor(this.backgroundColor);
            paint7.setStyle(Paint.Style.FILL);
            paint7.setStrokeWidth(3.0f);
            canvas.drawCircle(f11, f15, f13, paint7);
            Paint paint8 = new Paint();
            paint8.setAntiAlias(z10);
            paint8.setColor(this.strokeColor);
            paint8.setStrokeWidth(2.0f);
            paint8.setStyle(Paint.Style.STROKE);
            canvas.drawCircle(f11, f15, f13, paint8);
            paint8.setStyle(Paint.Style.FILL);
            float f19 = iMin * 2;
            canvas.drawLine(0.0f, f15, f19, f15, paint8);
            canvas.drawLine(f11, 0.0f, f11, f19, paint8);
            if (this.drawThumb) {
                Paint paint9 = new Paint();
                paint9.setAntiAlias(z10);
                paint9.setColor(this.thumbColor);
                paint9.setStyle(Paint.Style.FILL);
                f10 = 3.0f;
                paint9.setStrokeWidth(3.0f);
                canvas.drawCircle(f11, f15, iMin / 2, paint9);
            } else {
                f10 = 3.0f;
            }
            Paint paint10 = new Paint();
            paint10.setAntiAlias(z10);
            paint10.setColor(this.foreground);
            paint10.setStyle(Paint.Style.FILL);
            paint10.setStrokeWidth(2.0f);
            canvas.drawLine(f11, f15, fCos, fSin, paint10);
            Paint paint11 = new Paint();
            paint11.setAntiAlias(z10);
            paint11.setColor(this.foreground);
            paint11.setStyle(Paint.Style.FILL);
            paint11.setStrokeWidth(f10);
            canvas.drawCircle(fCos, fSin, f17, paint11);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        super.onDraw(canvas);
    }

    public AnalogTestView(Context context) {
        super(context);
        this.drawThumb = false;
        this.drawEdge = false;
        this.limitEdge = true;
        this.backgroundColor = 651745496;
        this.strokeColor = 100663295;
        this.foreground = -9991425;
        this.thumbColor = -9991425;
        init();
    }
}
