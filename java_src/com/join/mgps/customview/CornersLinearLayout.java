package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class CornersLinearLayout extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f64683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f64684c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f64685d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f64686e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f64687f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f64688g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64689h;

    public CornersLinearLayout(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.save();
        Path path = new Path();
        RectF rectF = new RectF(0.0f, 0.0f, this.f64688g, this.f64689h);
        float f10 = this.f64683b;
        if (f10 > 0.0f) {
            path.addRoundRect(rectF, f10, f10, Path.Direction.CCW);
        } else {
            float f11 = this.f64684c;
            float f12 = this.f64685d;
            float f13 = this.f64687f;
            float f14 = this.f64686e;
            path.addRoundRect(rectF, new float[]{f11, f11, f12, f12, f13, f13, f14, f14}, Path.Direction.CCW);
        }
        canvas.clipPath(path);
        super.draw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.f64688g = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.f64689h = measuredHeight;
        setMeasuredDimension(this.f64688g, measuredHeight);
    }

    public CornersLinearLayout(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CornersLinearLayout(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.CornersLinearLayout);
        this.f64683b = typedArrayObtainStyledAttributes.getDimension(4, 0.0f);
        this.f64684c = typedArrayObtainStyledAttributes.getDimension(2, 0.0f);
        this.f64685d = typedArrayObtainStyledAttributes.getDimension(3, 0.0f);
        this.f64687f = typedArrayObtainStyledAttributes.getDimension(1, 0.0f);
        this.f64686e = typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }
}
