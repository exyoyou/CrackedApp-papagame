package com.join.mgps.ptr.header;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.join.mgps.ptr.PtrFrameLayout;
import com.join.mgps.ptr.PtrUIHeader;

/* JADX INFO: loaded from: classes3.dex */
public class RentalsSunHeaderView extends PtrUIHeader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f72027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PtrFrameLayout f72028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.join.mgps.ptr.indicator.b f72029d;

    public RentalsSunHeaderView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        f();
    }

    private void f() {
        this.f72027b = new b(getContext(), this);
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void a(PtrFrameLayout frame) {
        float fN = this.f72029d.N();
        this.f72027b.stop();
        this.f72027b.g(this.f72029d.d());
        this.f72027b.i(fN);
        invalidate();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void b(PtrFrameLayout frame) {
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void c(PtrFrameLayout frame, boolean isUnderTouch, byte status, com.join.mgps.ptr.indicator.a ptrIndicator) {
        float fN = this.f72029d.N();
        this.f72027b.g(this.f72029d.d());
        this.f72027b.i(fN);
        invalidate();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void d(PtrFrameLayout frame) {
        this.f72027b.h();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void e(PtrFrameLayout frame) {
        this.f72027b.start();
        float fN = this.f72029d.N();
        this.f72027b.g(this.f72029d.d());
        this.f72027b.i(fN);
        invalidate();
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable dr) {
        if (dr == this.f72027b) {
            invalidate();
        } else {
            super.invalidateDrawable(dr);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f72027b.draw(canvas);
        this.f72029d.N();
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        this.f72027b.setBounds(paddingLeft, paddingTop, (right + paddingLeft) - left, (bottom + paddingTop) - top);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(((this.f72027b.e() * 5) / 4) + getPaddingTop() + getPaddingBottom(), 1073741824));
    }

    public void setUp(PtrFrameLayout ptrFrameLayout) {
        this.f72028c = ptrFrameLayout;
        com.join.mgps.ptr.indicator.b bVar = new com.join.mgps.ptr.indicator.b();
        this.f72029d = bVar;
        this.f72028c.setPtrIndicator(bVar);
    }

    public RentalsSunHeaderView(Context context) {
        super(context);
        f();
    }

    public RentalsSunHeaderView(Context context, AttributeSet attrs) {
        super(context, attrs);
        f();
    }
}
