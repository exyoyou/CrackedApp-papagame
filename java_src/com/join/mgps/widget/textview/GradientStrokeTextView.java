package com.join.mgps.widget.textview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.text.TextPaint;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;

/* JADX INFO: loaded from: classes3.dex */
public class GradientStrokeTextView extends AppCompatTextView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f73367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f73368c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f73369d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f73370e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f73371f;

    public GradientStrokeTextView(Context context) {
        super(context);
        e(null);
    }

    private void e(AttributeSet attrs) {
        this.f73367b = getCurrentTextColor();
        this.f73368c = getCurrentTextColor();
        this.f73369d = 0;
        this.f73370e = 0.0f;
        this.f73371f = 0;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        TextPaint paint = getPaint();
        paint.setShader(this.f73371f == 0 ? new LinearGradient(0.0f, 0.0f, 0.0f, getHeight(), this.f73367b, this.f73368c, Shader.TileMode.CLAMP) : new LinearGradient(0.0f, 0.0f, getWidth(), 0.0f, this.f73367b, this.f73368c, Shader.TileMode.CLAMP));
        if (this.f73370e > 0.0f && this.f73369d != 0) {
            Paint paint2 = new Paint();
            paint2.set(paint);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(this.f73370e);
            paint2.setColor(this.f73369d);
            paint2.setAntiAlias(true);
            canvas.drawText(getText().toString(), getPaddingLeft(), getHeight() - getPaddingBottom(), paint2);
        }
        canvas.drawText(getText().toString(), getPaddingLeft(), getHeight() - getPaddingBottom(), paint);
    }

    public void setGradientColors(int start, int end) {
        this.f73367b = start;
        this.f73368c = end;
        invalidate();
    }

    public void setGradientOrientation(int orientation) {
        this.f73371f = orientation;
        invalidate();
    }

    public void setStroke(float width, int color) {
        this.f73370e = width;
        this.f73369d = color;
        invalidate();
    }

    public GradientStrokeTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        e(attrs);
    }

    public GradientStrokeTextView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        e(attrs);
    }
}
