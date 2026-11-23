package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class r extends h {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    s.c f27267f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    Object f27268g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    PointF f27269h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @VisibleForTesting
    int f27270i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @VisibleForTesting
    int f27271j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    Matrix f27272k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Matrix f27273l;

    public r(@Nullable Drawable drawable, s.c scaleType) {
        super(drawable);
        this.f27269h = null;
        this.f27270i = 0;
        this.f27271j = 0;
        this.f27273l = new Matrix();
        this.f27267f = scaleType;
    }

    private void B() {
        boolean z10;
        s.c cVar = this.f27267f;
        boolean z11 = true;
        if (cVar instanceof s.o) {
            Object state = ((s.o) cVar).getState();
            z10 = state == null || !state.equals(this.f27268g);
            this.f27268g = state;
        } else {
            z10 = false;
        }
        Drawable current = getCurrent();
        if (current == null) {
            return;
        }
        if (this.f27270i == current.getIntrinsicWidth() && this.f27271j == current.getIntrinsicHeight()) {
            z11 = false;
        }
        if (z11 || z10) {
            A();
        }
    }

    @VisibleForTesting
    void A() {
        Drawable current = getCurrent();
        if (current == null) {
            this.f27271j = 0;
            this.f27270i = 0;
            this.f27272k = null;
            return;
        }
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.f27270i = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.f27271j = intrinsicHeight;
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            current.setBounds(bounds);
            this.f27272k = null;
            return;
        }
        if (intrinsicWidth == iWidth && intrinsicHeight == iHeight) {
            current.setBounds(bounds);
            this.f27272k = null;
        } else {
            if (this.f27267f == s.c.f27284a) {
                current.setBounds(bounds);
                this.f27272k = null;
                return;
            }
            current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            s.c cVar = this.f27267f;
            Matrix matrix = this.f27273l;
            PointF pointF = this.f27269h;
            cVar.a(matrix, bounds, intrinsicWidth, intrinsicHeight, pointF != null ? pointF.x : 0.5f, pointF != null ? pointF.y : 0.5f);
            this.f27272k = this.f27273l;
        }
    }

    @Nullable
    public PointF C() {
        return this.f27269h;
    }

    public s.c D() {
        return this.f27267f;
    }

    public void E(@Nullable PointF focusPoint) {
        if (com.facebook.common.internal.h.a(this.f27269h, focusPoint)) {
            return;
        }
        if (focusPoint == null) {
            this.f27269h = null;
        } else {
            if (this.f27269h == null) {
                this.f27269h = new PointF();
            }
            this.f27269h.set(focusPoint);
        }
        A();
        invalidateSelf();
    }

    public void F(s.c scaleType) {
        if (com.facebook.common.internal.h.a(this.f27267f, scaleType)) {
            return;
        }
        this.f27267f = scaleType;
        this.f27268g = null;
        A();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        B();
        if (this.f27272k == null) {
            super.draw(canvas);
            return;
        }
        int iSave = canvas.save();
        canvas.clipRect(getBounds());
        canvas.concat(this.f27272k);
        super.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // com.facebook.drawee.drawable.h, com.facebook.drawee.drawable.u
    public void o(Matrix transform) {
        w(transform);
        B();
        Matrix matrix = this.f27272k;
        if (matrix != null) {
            transform.preConcat(matrix);
        }
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        A();
    }

    @Override // com.facebook.drawee.drawable.h
    @Nullable
    public Drawable y(@Nullable Drawable newDelegate) {
        Drawable drawableY = super.y(newDelegate);
        A();
        return drawableY;
    }

    public r(@Nullable Drawable drawable, s.c scaleType, @Nullable PointF focusPoint) {
        super(drawable);
        this.f27269h = null;
        this.f27270i = 0;
        this.f27271j = 0;
        this.f27273l = new Matrix();
        this.f27267f = scaleType;
        this.f27269h = focusPoint;
    }
}
