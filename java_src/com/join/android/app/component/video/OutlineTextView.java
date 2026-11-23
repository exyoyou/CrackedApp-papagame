package com.join.android.app.component.video;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes5.dex */
public class OutlineTextView extends TextView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextPaint f35102b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextPaint f35103c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f35104d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f35105e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f35106f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f35107g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f35108h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f35109i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f35110j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f35111k;

    public OutlineTextView(Context context) {
        super(context);
        this.f35104d = "";
        this.f35105e = 0;
        this.f35109i = 1.0f;
        this.f35110j = 0.0f;
        this.f35111k = true;
        a();
    }

    private void a() {
        TextPaint textPaint = new TextPaint();
        this.f35102b = textPaint;
        textPaint.setAntiAlias(true);
        this.f35102b.setTextSize(getTextSize());
        this.f35102b.setColor(this.f35108h);
        this.f35102b.setStyle(Paint.Style.FILL);
        this.f35102b.setTypeface(getTypeface());
        TextPaint textPaint2 = new TextPaint();
        this.f35103c = textPaint2;
        textPaint2.setAntiAlias(true);
        this.f35103c.setTextSize(getTextSize());
        this.f35103c.setColor(this.f35107g);
        this.f35103c.setStyle(Paint.Style.STROKE);
        this.f35103c.setTypeface(getTypeface());
        this.f35103c.setStrokeWidth(this.f35106f);
    }

    private int b(int measureSpec) {
        int mode = View.MeasureSpec.getMode(measureSpec);
        int size = View.MeasureSpec.getSize(measureSpec);
        int iAscent = (int) this.f35103c.ascent();
        this.f35105e = iAscent;
        if (mode == 1073741824) {
            return size;
        }
        int iDescent = ((int) ((-iAscent) + this.f35103c.descent())) + getPaddingTop() + getPaddingBottom();
        return mode == Integer.MIN_VALUE ? Math.min(iDescent, size) : iDescent;
    }

    private int c(int measureSpec) {
        int mode = View.MeasureSpec.getMode(measureSpec);
        int size = View.MeasureSpec.getSize(measureSpec);
        if (mode == 1073741824) {
            return size;
        }
        int iMeasureText = ((int) this.f35103c.measureText(this.f35104d)) + getPaddingLeft() + getPaddingRight();
        return mode == Integer.MIN_VALUE ? Math.min(iMeasureText, size) : iMeasureText;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        new StaticLayout(getText(), this.f35103c, getWidth(), Layout.Alignment.ALIGN_CENTER, this.f35109i, this.f35110j, this.f35111k).draw(canvas);
        new StaticLayout(getText(), this.f35102b, getWidth(), Layout.Alignment.ALIGN_CENTER, this.f35109i, this.f35110j, this.f35111k).draw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        StaticLayout staticLayout = new StaticLayout(getText(), this.f35103c, c(widthMeasureSpec), Layout.Alignment.ALIGN_CENTER, this.f35109i, this.f35110j, this.f35111k);
        int i10 = (int) ((this.f35106f * 2.0f) + 1.0f);
        setMeasuredDimension(c(widthMeasureSpec) + i10, (b(heightMeasureSpec) * staticLayout.getLineCount()) + i10);
    }

    @Override // android.widget.TextView
    public void setShadowLayer(float radius, float dx, float dy, int color) {
        super.setShadowLayer(radius, dx, dy, color);
        this.f35106f = radius;
        this.f35107g = color;
        requestLayout();
        invalidate();
        a();
    }

    public void setText(String text) {
        super.setText((CharSequence) text);
        this.f35104d = text.toString();
        requestLayout();
        invalidate();
    }

    @Override // android.widget.TextView
    public void setTextColor(int color) {
        super.setTextColor(color);
        this.f35108h = color;
        invalidate();
        a();
    }

    @Override // android.widget.TextView
    public void setTextSize(float size) {
        super.setTextSize(size);
        requestLayout();
        invalidate();
        a();
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface tf, int style) {
        super.setTypeface(tf, style);
        requestLayout();
        invalidate();
        a();
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface tf) {
        super.setTypeface(tf);
        requestLayout();
        invalidate();
        a();
    }

    public OutlineTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f35104d = "";
        this.f35105e = 0;
        this.f35109i = 1.0f;
        this.f35110j = 0.0f;
        this.f35111k = true;
        a();
    }

    public OutlineTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f35104d = "";
        this.f35105e = 0;
        this.f35109i = 1.0f;
        this.f35110j = 0.0f;
        this.f35111k = true;
        a();
    }
}
