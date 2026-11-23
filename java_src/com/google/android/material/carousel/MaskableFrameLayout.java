package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.math.MathUtils;
import com.google.android.material.shape.s;

/* JADX INFO: loaded from: classes5.dex */
public class MaskableFrameLayout extends FrameLayout implements m, com.google.android.material.shape.r {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f29830h = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f29831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f29832c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private q f29833d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private com.google.android.material.shape.n f29834e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final s f29835f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private Boolean f29836g;

    public MaskableFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.material.shape.d d(com.google.android.material.shape.d dVar) {
        return dVar instanceof com.google.android.material.shape.a ? com.google.android.material.shape.c.b((com.google.android.material.shape.a) dVar) : dVar;
    }

    private void e() {
        this.f29835f.f(this, this.f29832c);
        q qVar = this.f29833d;
        if (qVar != null) {
            qVar.a(this.f29832c);
        }
    }

    private void f() {
        if (this.f29831b != -1.0f) {
            float fB = com.google.android.material.animation.b.b(0.0f, getWidth() / 2.0f, 0.0f, 1.0f, this.f29831b);
            setMaskRectF(new RectF(fB, 0.0f, getWidth() - fB, getHeight()));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        this.f29835f.e(canvas, new v4.a.InterfaceC1251a() { // from class: com.google.android.material.carousel.n
            @Override // v4.a.InterfaceC1251a
            public final void a(Canvas canvas2) {
                this.f29893a.c(canvas2);
            }
        });
    }

    @Override // android.view.View
    public void getFocusedRect(Rect rect) {
        RectF rectF = this.f29832c;
        rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    @Override // com.google.android.material.carousel.m
    @NonNull
    public RectF getMaskRectF() {
        return this.f29832c;
    }

    @Override // com.google.android.material.carousel.m
    @Deprecated
    public float getMaskXPercentage() {
        return this.f29831b;
    }

    @Override // com.google.android.material.shape.r
    @NonNull
    public com.google.android.material.shape.n getShapeAppearanceModel() {
        return this.f29834e;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Boolean bool = this.f29836g;
        if (bool != null) {
            this.f29835f.h(this, bool.booleanValue());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f29836g = Boolean.valueOf(this.f29835f.c());
        this.f29835f.h(this, true);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (this.f29831b != -1.0f) {
            f();
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f29832c.isEmpty() && motionEvent.getAction() == 0) {
            if (!this.f29832c.contains(motionEvent.getX(), motionEvent.getY())) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setForceCompatClipping(boolean z10) {
        this.f29835f.h(this, z10);
    }

    @Override // com.google.android.material.carousel.m
    public void setMaskRectF(@NonNull RectF rectF) {
        this.f29832c.set(rectF);
        e();
    }

    @Override // com.google.android.material.carousel.m
    @Deprecated
    public void setMaskXPercentage(float f10) {
        float fClamp = MathUtils.clamp(f10, 0.0f, 1.0f);
        if (this.f29831b != fClamp) {
            this.f29831b = fClamp;
            f();
        }
    }

    @Override // com.google.android.material.carousel.m
    public void setOnMaskChangedListener(@Nullable q qVar) {
        this.f29833d = qVar;
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(@NonNull com.google.android.material.shape.n nVar) {
        com.google.android.material.shape.n nVarY = nVar.y(new com.google.android.material.shape.n.c() { // from class: com.google.android.material.carousel.o
            @Override // com.google.android.material.shape.n.c
            public final com.google.android.material.shape.d a(com.google.android.material.shape.d dVar) {
                return MaskableFrameLayout.d(dVar);
            }
        });
        this.f29834e = nVarY;
        this.f29835f.g(this, nVarY);
    }

    public MaskableFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaskableFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f29831b = -1.0f;
        this.f29832c = new RectF();
        this.f29835f = s.a(this);
        this.f29836g = null;
        setShapeAppearanceModel(com.google.android.material.shape.n.f(context, attributeSet, i10, 0, 0).m());
    }
}
