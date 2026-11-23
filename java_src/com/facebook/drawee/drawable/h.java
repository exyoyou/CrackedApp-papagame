package com.facebook.drawee.drawable;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class h extends Drawable implements Drawable.Callback, u, t, d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Matrix f27200e = new Matrix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private Drawable f27201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f27202c = new e();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    protected u f27203d;

    public h(@Nullable Drawable drawable) {
        this.f27201b = drawable;
        f.e(drawable, this, this);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f27201b;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    @Override // com.facebook.drawee.drawable.t
    public void e(u transformCallback) {
        this.f27203d = transformCallback;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        Drawable drawable = this.f27201b;
        return drawable == null ? super.getConstantState() : drawable.getConstantState();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable getCurrent() {
        return this.f27201b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f27201b;
        return drawable == null ? super.getIntrinsicHeight() : drawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f27201b;
        return drawable == null ? super.getIntrinsicWidth() : drawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f27201b;
        if (drawable == null) {
            return 0;
        }
        return drawable.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect padding) {
        Drawable drawable = this.f27201b;
        return drawable == null ? super.getPadding(padding) : drawable.getPadding(padding);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable who) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f27201b;
        if (drawable == null) {
            return false;
        }
        return drawable.isStateful();
    }

    @Override // com.facebook.drawee.drawable.u
    public void l(RectF bounds) {
        u uVar = this.f27203d;
        if (uVar != null) {
            uVar.l(bounds);
        } else {
            bounds.set(getBounds());
        }
    }

    @Override // com.facebook.drawee.drawable.d
    @Nullable
    public Drawable m() {
        return getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f27201b;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // com.facebook.drawee.drawable.u
    public void o(Matrix transform) {
        w(transform);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        Drawable drawable = this.f27201b;
        if (drawable != null) {
            drawable.setBounds(bounds);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int level) {
        Drawable drawable = this.f27201b;
        return drawable == null ? super.onLevelChange(level) : drawable.setLevel(level);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] state) {
        Drawable drawable = this.f27201b;
        return drawable == null ? super.onStateChange(state) : drawable.setState(state);
    }

    @Override // com.facebook.drawee.drawable.d
    @Nullable
    public Drawable p(@Nullable Drawable newDrawable) {
        return y(newDrawable);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable who, Runnable what, long when) {
        scheduleSelf(what, when);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.f27202c.b(alpha);
        Drawable drawable = this.f27201b;
        if (drawable != null) {
            drawable.setAlpha(alpha);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f27202c.c(colorFilter);
        Drawable drawable = this.f27201b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean dither) {
        this.f27202c.d(dither);
        Drawable drawable = this.f27201b;
        if (drawable != null) {
            drawable.setDither(dither);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean filterBitmap) {
        this.f27202c.e(filterBitmap);
        Drawable drawable = this.f27201b;
        if (drawable != null) {
            drawable.setFilterBitmap(filterBitmap);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void setHotspot(float x10, float y10) {
        Drawable drawable = this.f27201b;
        if (drawable != null) {
            drawable.setHotspot(x10, y10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean visible, boolean restart) {
        boolean visible2 = super.setVisible(visible, restart);
        Drawable drawable = this.f27201b;
        return drawable == null ? visible2 : drawable.setVisible(visible, restart);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable who, Runnable what) {
        unscheduleSelf(what);
    }

    protected void w(Matrix transform) {
        u uVar = this.f27203d;
        if (uVar != null) {
            uVar.o(transform);
        } else {
            transform.reset();
        }
    }

    public void x(RectF outBounds) {
        Matrix matrix = f27200e;
        w(matrix);
        outBounds.set(getBounds());
        matrix.mapRect(outBounds);
    }

    @Nullable
    public Drawable y(@Nullable Drawable newDelegate) {
        Drawable drawableZ = z(newDelegate);
        invalidateSelf();
        return drawableZ;
    }

    @Nullable
    protected Drawable z(@Nullable Drawable newDelegate) {
        Drawable drawable = this.f27201b;
        f.e(drawable, null, null);
        f.e(newDelegate, null, null);
        f.f(newDelegate, this.f27202c);
        f.b(newDelegate, this);
        f.e(newDelegate, this, this);
        this.f27201b = newDelegate;
        return drawable;
    }
}
