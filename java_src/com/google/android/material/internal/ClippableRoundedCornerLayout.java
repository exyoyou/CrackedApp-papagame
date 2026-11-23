package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ClippableRoundedCornerLayout extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private Path f30776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f30777c;

    public ClippableRoundedCornerLayout(@NonNull Context context) {
        super(context);
    }

    public void a() {
        this.f30776b = null;
        this.f30777c = 0.0f;
        invalidate();
    }

    public void b(float f10, float f11, float f12, float f13, float f14) {
        d(new RectF(f10, f11, f12, f13), f14);
    }

    public void c(@NonNull Rect rect, float f10) {
        b(rect.left, rect.top, rect.right, rect.bottom, f10);
    }

    public void d(@NonNull RectF rectF, float f10) {
        if (this.f30776b == null) {
            this.f30776b = new Path();
        }
        this.f30777c = f10;
        this.f30776b.reset();
        this.f30776b.addRoundRect(rectF, f10, f10, Path.Direction.CW);
        this.f30776b.close();
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.f30776b == null) {
            super.dispatchDraw(canvas);
            return;
        }
        int iSave = canvas.save();
        canvas.clipPath(this.f30776b);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
    }

    public void e(float f10) {
        b(getLeft(), getTop(), getRight(), getBottom(), f10);
    }

    public float getCornerRadius() {
        return this.f30777c;
    }

    public ClippableRoundedCornerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ClippableRoundedCornerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
