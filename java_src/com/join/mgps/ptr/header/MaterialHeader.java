package com.join.mgps.ptr.header;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.join.mgps.ptr.PtrFrameLayout;
import com.join.mgps.ptr.PtrUIHeader;
import com.join.mgps.ptr.e;

/* JADX INFO: loaded from: classes3.dex */
public class MaterialHeader extends PtrUIHeader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.join.mgps.ptr.header.a f72019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f72020c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PtrFrameLayout f72021d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Animation f72022e;

    class a extends Animation {
        a() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float interpolatedTime, Transformation t10) {
            MaterialHeader.this.f72020c = 1.0f - interpolatedTime;
            MaterialHeader.this.f72019b.setAlpha((int) (MaterialHeader.this.f72020c * 255.0f));
            MaterialHeader.this.invalidate();
        }
    }

    class b extends e {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MaterialHeader materialHeader = MaterialHeader.this;
            materialHeader.startAnimation(materialHeader.f72022e);
        }
    }

    class c implements Animation.AnimationListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f72025b;

        c(final e val$mPtrUIHandlerHook) {
            this.f72025b = val$mPtrUIHandlerHook;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f72025b.b();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    public MaterialHeader(Context context) {
        super(context);
        this.f72020c = 1.0f;
        this.f72022e = new a();
        j();
    }

    private void j() {
        com.join.mgps.ptr.header.a aVar = new com.join.mgps.ptr.header.a(getContext(), this);
        this.f72019b = aVar;
        aVar.i(-1);
        this.f72019b.setCallback(this);
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void a(PtrFrameLayout frame) {
        this.f72019b.stop();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void b(PtrFrameLayout frame) {
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void c(PtrFrameLayout frame, boolean isUnderTouch, byte status, com.join.mgps.ptr.indicator.a ptrIndicator) {
        float fMin = Math.min(1.0f, ptrIndicator.c());
        if (status == 2) {
            this.f72019b.setAlpha((int) (255.0f * fMin));
            this.f72019b.q(true);
            this.f72019b.n(0.0f, Math.min(0.8f, fMin * 0.8f));
            this.f72019b.h(Math.min(1.0f, fMin));
            this.f72019b.k((((0.4f * fMin) - 0.25f) + (fMin * 2.0f)) * 0.5f);
            invalidate();
        }
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void d(PtrFrameLayout frame) {
        this.f72020c = 1.0f;
        this.f72019b.stop();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void e(PtrFrameLayout frame) {
        this.f72019b.setAlpha(255);
        this.f72019b.start();
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable dr) {
        if (dr == this.f72019b) {
            invalidate();
        } else {
            super.invalidateDrawable(dr);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int iSave = canvas.save();
        Rect bounds = this.f72019b.getBounds();
        canvas.translate(getPaddingLeft() + ((getMeasuredWidth() - this.f72019b.getIntrinsicWidth()) / 2), getPaddingTop());
        float f10 = this.f72020c;
        canvas.scale(f10, f10, bounds.exactCenterX(), bounds.exactCenterY());
        this.f72019b.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int intrinsicHeight = this.f72019b.getIntrinsicHeight();
        this.f72019b.setBounds(0, 0, intrinsicHeight, intrinsicHeight);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(this.f72019b.getIntrinsicHeight() + getPaddingTop() + getPaddingBottom(), 1073741824));
    }

    public void setColorSchemeColors(int[] colors) {
        this.f72019b.j(colors);
        invalidate();
    }

    public void setPtrFrameLayout(PtrFrameLayout layout) {
        b bVar = new b();
        this.f72022e.setDuration(200L);
        this.f72022e.setAnimationListener(new c(bVar));
        this.f72021d = layout;
        layout.setRefreshCompleteHook(bVar);
    }

    public MaterialHeader(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f72020c = 1.0f;
        this.f72022e = new a();
        j();
    }

    public MaterialHeader(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f72020c = 1.0f;
        this.f72022e = new a();
        j();
    }
}
