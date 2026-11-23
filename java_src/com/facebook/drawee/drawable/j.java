package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class j extends h {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Matrix f27207f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private Matrix f27208g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f27209h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f27210i;

    public j(Drawable drawable, Matrix matrix) {
        super((Drawable) com.facebook.common.internal.i.i(drawable));
        this.f27209h = 0;
        this.f27210i = 0;
        this.f27207f = matrix;
    }

    private void A() {
        Drawable current = getCurrent();
        Rect bounds = getBounds();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.f27209h = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.f27210i = intrinsicHeight;
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            current.setBounds(bounds);
            this.f27208g = null;
        } else {
            current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            this.f27208g = this.f27207f;
        }
    }

    private void B() {
        if (this.f27209h == getCurrent().getIntrinsicWidth() && this.f27210i == getCurrent().getIntrinsicHeight()) {
            return;
        }
        A();
    }

    public Matrix C() {
        return this.f27207f;
    }

    public void D(Matrix matrix) {
        this.f27207f = matrix;
        A();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        B();
        if (this.f27208g == null) {
            super.draw(canvas);
            return;
        }
        int iSave = canvas.save();
        canvas.clipRect(getBounds());
        canvas.concat(this.f27208g);
        super.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // com.facebook.drawee.drawable.h, com.facebook.drawee.drawable.u
    public void o(Matrix transform) {
        super.o(transform);
        Matrix matrix = this.f27208g;
        if (matrix != null) {
            transform.preConcat(matrix);
        }
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        A();
    }

    @Override // com.facebook.drawee.drawable.h
    public Drawable y(@Nullable Drawable newDelegate) {
        Drawable drawableY = super.y(newDelegate);
        A();
        return drawableY;
    }
}
