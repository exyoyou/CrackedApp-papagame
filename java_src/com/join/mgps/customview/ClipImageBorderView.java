package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class ClipImageBorderView extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f64490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f64491c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f64492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f64493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f64494f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f64495g;

    public ClipImageBorderView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f64492d = getWidth() - (this.f64490b * 2);
        this.f64491c = (getHeight() - this.f64492d) / 2;
        this.f64495g.setColor(Color.parseColor("#aa000000"));
        this.f64495g.setStyle(Paint.Style.FILL);
        canvas.drawRect(0.0f, 0.0f, this.f64490b, getHeight(), this.f64495g);
        canvas.drawRect(getWidth() - this.f64490b, 0.0f, getWidth(), getHeight(), this.f64495g);
        canvas.drawRect(this.f64490b, 0.0f, getWidth() - this.f64490b, this.f64491c, this.f64495g);
        canvas.drawRect(this.f64490b, getHeight() - this.f64491c, getWidth() - this.f64490b, getHeight(), this.f64495g);
        this.f64495g.setColor(this.f64493e);
        this.f64495g.setStrokeWidth(this.f64494f);
        this.f64495g.setStyle(Paint.Style.STROKE);
        canvas.drawRect(this.f64490b, this.f64491c, getWidth() - this.f64490b, getHeight() - this.f64491c, this.f64495g);
    }

    public void setHorizontalPadding(int mHorizontalPadding) {
        this.f64490b = mHorizontalPadding;
    }

    public ClipImageBorderView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ClipImageBorderView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f64493e = Color.parseColor("#FFFFFF");
        this.f64494f = 1;
        this.f64494f = (int) TypedValue.applyDimension(1, 1, getResources().getDisplayMetrics());
        Paint paint = new Paint();
        this.f64495g = paint;
        paint.setAntiAlias(true);
    }
}
