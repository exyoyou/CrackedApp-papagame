package com.facebook.drawee.drawable;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class a extends Drawable implements Drawable.Callback, u, t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private u f27161b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Drawable[] f27163d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d[] f27164e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f27162c = new e();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Rect f27165f = new Rect();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f27166g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f27167h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f27168i = false;

    /* JADX INFO: renamed from: com.facebook.drawee.drawable.a$a, reason: collision with other inner class name */
    class C0565a implements d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f27169b;

        C0565a(final int val$index) {
            this.f27169b = val$index;
        }

        @Override // com.facebook.drawee.drawable.d
        public Drawable m() {
            return a.this.b(this.f27169b);
        }

        @Override // com.facebook.drawee.drawable.d
        public Drawable p(Drawable newDrawable) {
            return a.this.f(this.f27169b, newDrawable);
        }
    }

    public a(Drawable[] layers) {
        int i10 = 0;
        com.facebook.common.internal.i.i(layers);
        this.f27163d = layers;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                this.f27164e = new d[drawableArr.length];
                return;
            } else {
                f.e(drawableArr[i10], this, this);
                i10++;
            }
        }
    }

    private d a(final int index) {
        return new C0565a(index);
    }

    @Nullable
    public Drawable b(int index) {
        com.facebook.common.internal.i.d(Boolean.valueOf(index >= 0));
        com.facebook.common.internal.i.d(Boolean.valueOf(index < this.f27163d.length));
        return this.f27163d[index];
    }

    public d c(int index) {
        com.facebook.common.internal.i.d(Boolean.valueOf(index >= 0));
        com.facebook.common.internal.i.d(Boolean.valueOf(index < this.f27164e.length));
        d[] dVarArr = this.f27164e;
        if (dVarArr[index] == null) {
            dVarArr[index] = a(index);
        }
        return this.f27164e[index];
    }

    public int d() {
        return this.f27163d.length;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                drawable.draw(canvas);
            }
            i10++;
        }
    }

    @Override // com.facebook.drawee.drawable.t
    public void e(u transformCallback) {
        this.f27161b = transformCallback;
    }

    @Nullable
    public Drawable f(int index, @Nullable Drawable drawable) {
        com.facebook.common.internal.i.d(Boolean.valueOf(index >= 0));
        com.facebook.common.internal.i.d(Boolean.valueOf(index < this.f27163d.length));
        Drawable drawable2 = this.f27163d[index];
        if (drawable != drawable2) {
            if (drawable != null && this.f27168i) {
                drawable.mutate();
            }
            f.e(this.f27163d[index], null, null);
            f.e(drawable, null, null);
            f.f(drawable, this.f27162c);
            f.b(drawable, this);
            f.e(drawable, this, this);
            this.f27167h = false;
            this.f27163d[index] = drawable;
            invalidateSelf();
        }
        return drawable2;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int i10 = 0;
        int iMax = -1;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                break;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                iMax = Math.max(iMax, drawable.getIntrinsicHeight());
            }
            i10++;
        }
        if (iMax > 0) {
            return iMax;
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int i10 = 0;
        int iMax = -1;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                break;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                iMax = Math.max(iMax, drawable.getIntrinsicWidth());
            }
            i10++;
        }
        if (iMax > 0) {
            return iMax;
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.f27163d.length == 0) {
            return -2;
        }
        int i10 = 1;
        int iResolveOpacity = -1;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                return iResolveOpacity;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                iResolveOpacity = Drawable.resolveOpacity(iResolveOpacity, drawable.getOpacity());
            }
            i10++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect padding) {
        int i10 = 0;
        padding.left = 0;
        padding.top = 0;
        padding.right = 0;
        padding.bottom = 0;
        Rect rect = this.f27165f;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                return true;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                drawable.getPadding(rect);
                padding.left = Math.max(padding.left, rect.left);
                padding.top = Math.max(padding.top, rect.top);
                padding.right = Math.max(padding.right, rect.right);
                padding.bottom = Math.max(padding.bottom, rect.bottom);
            }
            i10++;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable who) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (!this.f27167h) {
            this.f27166g = false;
            int i10 = 0;
            while (true) {
                Drawable[] drawableArr = this.f27163d;
                boolean z10 = true;
                if (i10 >= drawableArr.length) {
                    break;
                }
                Drawable drawable = drawableArr[i10];
                boolean z11 = this.f27166g;
                if (drawable == null || !drawable.isStateful()) {
                    z10 = false;
                }
                this.f27166g = z11 | z10;
                i10++;
            }
            this.f27167h = true;
        }
        return this.f27166g;
    }

    @Override // com.facebook.drawee.drawable.u
    public void l(RectF bounds) {
        u uVar = this.f27161b;
        if (uVar != null) {
            uVar.l(bounds);
        } else {
            bounds.set(getBounds());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                this.f27168i = true;
                return this;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                drawable.mutate();
            }
            i10++;
        }
    }

    @Override // com.facebook.drawee.drawable.u
    public void o(Matrix transform) {
        u uVar = this.f27161b;
        if (uVar != null) {
            uVar.o(transform);
        } else {
            transform.reset();
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                drawable.setBounds(bounds);
            }
            i10++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int level) {
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                return z10;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null && drawable.setLevel(level)) {
                z10 = true;
            }
            i10++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] state) {
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                return z10;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null && drawable.setState(state)) {
                z10 = true;
            }
            i10++;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable who, Runnable what, long when) {
        scheduleSelf(what, when);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.f27162c.b(alpha);
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                drawable.setAlpha(alpha);
            }
            i10++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f27162c.c(colorFilter);
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
            i10++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean dither) {
        this.f27162c.d(dither);
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                drawable.setDither(dither);
            }
            i10++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean filterBitmap) {
        this.f27162c.e(filterBitmap);
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                drawable.setFilterBitmap(filterBitmap);
            }
            i10++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void setHotspot(float x10, float y10) {
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                return;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                drawable.setHotspot(x10, y10);
            }
            i10++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean visible, boolean restart) {
        boolean visible2 = super.setVisible(visible, restart);
        int i10 = 0;
        while (true) {
            Drawable[] drawableArr = this.f27163d;
            if (i10 >= drawableArr.length) {
                return visible2;
            }
            Drawable drawable = drawableArr[i10];
            if (drawable != null) {
                drawable.setVisible(visible, restart);
            }
            i10++;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable who, Runnable what) {
        unscheduleSelf(what);
    }
}
