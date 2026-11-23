package com.join.android.app.component.optimizetext;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public class StaticLayoutView extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Layout f34984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34985c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f34986d;

    public StaticLayoutView(Context context) {
        super(context);
        this.f34984b = null;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        Layout layout = this.f34984b;
        if (layout != null) {
            layout.draw(canvas, null, null, 0);
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        Layout layout = this.f34984b;
        if (layout != null) {
            setMeasuredDimension(layout.getWidth(), this.f34984b.getHeight());
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    public void setLayout(Layout layout) {
        if (layout == null) {
            return;
        }
        this.f34984b = layout;
        if (layout.getWidth() == this.f34985c && this.f34984b.getHeight() == this.f34986d) {
            return;
        }
        this.f34985c = this.f34984b.getWidth();
        this.f34986d = this.f34984b.getHeight();
        requestLayout();
    }

    public StaticLayoutView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f34984b = null;
    }

    public StaticLayoutView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f34984b = null;
    }
}
