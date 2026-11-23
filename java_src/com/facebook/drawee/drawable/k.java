package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: loaded from: classes9.dex */
public class k extends h {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    final Matrix f27211f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f27212g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f27213h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Matrix f27214i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final RectF f27215j;

    public k(Drawable drawable, int rotationAngle) {
        this(drawable, rotationAngle, 0);
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i10;
        if (this.f27212g <= 0 && ((i10 = this.f27213h) == 0 || i10 == 1)) {
            super.draw(canvas);
            return;
        }
        int iSave = canvas.save();
        canvas.concat(this.f27211f);
        super.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int i10 = this.f27213h;
        return (i10 == 5 || i10 == 7 || this.f27212g % 180 != 0) ? super.getIntrinsicWidth() : super.getIntrinsicHeight();
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int i10 = this.f27213h;
        return (i10 == 5 || i10 == 7 || this.f27212g % 180 != 0) ? super.getIntrinsicHeight() : super.getIntrinsicWidth();
    }

    @Override // com.facebook.drawee.drawable.h, com.facebook.drawee.drawable.u
    public void o(Matrix transform) {
        w(transform);
        if (this.f27211f.isIdentity()) {
            return;
        }
        transform.preConcat(this.f27211f);
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        int i10;
        Drawable current = getCurrent();
        int i11 = this.f27212g;
        if (i11 <= 0 && ((i10 = this.f27213h) == 0 || i10 == 1)) {
            current.setBounds(bounds);
            return;
        }
        int i12 = this.f27213h;
        if (i12 == 2) {
            this.f27211f.setScale(-1.0f, 1.0f);
        } else if (i12 == 7) {
            this.f27211f.setRotate(270.0f, bounds.centerX(), bounds.centerY());
            this.f27211f.postScale(-1.0f, 1.0f);
        } else if (i12 == 4) {
            this.f27211f.setScale(1.0f, -1.0f);
        } else if (i12 != 5) {
            this.f27211f.setRotate(i11, bounds.centerX(), bounds.centerY());
        } else {
            this.f27211f.setRotate(270.0f, bounds.centerX(), bounds.centerY());
            this.f27211f.postScale(1.0f, -1.0f);
        }
        this.f27214i.reset();
        this.f27211f.invert(this.f27214i);
        this.f27215j.set(bounds);
        this.f27214i.mapRect(this.f27215j);
        RectF rectF = this.f27215j;
        current.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    public k(Drawable drawable, int rotationAngle, int exifOrientation) {
        super(drawable);
        this.f27214i = new Matrix();
        this.f27215j = new RectF();
        this.f27211f = new Matrix();
        this.f27212g = rotationAngle - (rotationAngle % 90);
        this.f27213h = (exifOrientation < 0 || exifOrientation > 8) ? 0 : exifOrientation;
    }
}
