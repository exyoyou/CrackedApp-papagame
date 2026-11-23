package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes3.dex */
public class DarkFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f64773e = 159;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f64774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f64775c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SlideBottomPanel f64776d;

    public DarkFrameLayout(Context context) {
        this(context, null);
    }

    private void a(Canvas canvas) {
        this.f64775c.setColor(Color.argb(this.f64774b, 0, 0, 0));
        canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), getHeight(), this.f64775c);
    }

    public void b(int alpha) {
        this.f64774b = alpha;
        invalidate();
    }

    public void c(boolean fade) {
        this.f64774b = fade ? 143 : 0;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        a(canvas);
    }

    public int getCurrentAlpha() {
        return this.f64774b;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return this.f64776d.w();
    }

    public void setSlideBottomPanel(SlideBottomPanel slideBottomPanel) {
        this.f64776d = slideBottomPanel;
    }

    public DarkFrameLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public DarkFrameLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64774b = 0;
        this.f64775c = new Paint();
    }
}
