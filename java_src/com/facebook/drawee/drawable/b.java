package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: loaded from: classes9.dex */
public class b extends h implements Runnable, c {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f27171j = 360;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f27172k = 20;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f27173f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f27174g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    float f27175h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f27176i;

    public b(Drawable drawable, int interval) {
        this(drawable, interval, true);
    }

    private int B() {
        return (int) ((20.0f / this.f27173f) * 360.0f);
    }

    private void D() {
        if (this.f27176i) {
            return;
        }
        this.f27176i = true;
        scheduleSelf(this, SystemClock.uptimeMillis() + 20);
    }

    @Override // com.facebook.drawee.drawable.c
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public b n() {
        return new b(f.a(m()), this.f27173f, this.f27174g);
    }

    public void C() {
        this.f27175h = 0.0f;
        this.f27176i = false;
        unscheduleSelf(this);
        invalidateSelf();
    }

    public void E(boolean clockwise) {
        this.f27174g = clockwise;
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int iSave = canvas.save();
        Rect bounds = getBounds();
        int i10 = bounds.right;
        int i11 = bounds.left;
        int i12 = i10 - i11;
        int i13 = bounds.bottom;
        int i14 = bounds.top;
        int i15 = i13 - i14;
        float f10 = this.f27175h;
        if (!this.f27174g) {
            f10 = 360.0f - f10;
        }
        canvas.rotate(f10, i11 + (i12 / 2), i14 + (i15 / 2));
        super.draw(canvas);
        canvas.restoreToCount(iSave);
        D();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f27176i = false;
        this.f27175h += B();
        invalidateSelf();
    }

    public b(Drawable drawable, int interval, boolean clockwise) {
        super((Drawable) com.facebook.common.internal.i.i(drawable));
        this.f27175h = 0.0f;
        this.f27176i = false;
        this.f27173f = interval;
        this.f27174g = clockwise;
    }
}
