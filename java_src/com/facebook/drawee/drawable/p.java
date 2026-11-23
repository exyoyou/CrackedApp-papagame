package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
public abstract class p extends Drawable implements m, t {

    @Nullable
    private u D;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Drawable f27242b;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    float[] f27252l;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    RectF f27257q;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    Matrix f27263w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    Matrix f27264x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f27243c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f27244d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected float f27245e = 0.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final Path f27246f = new Path();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f27247g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f27248h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected final Path f27249i = new Path();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float[] f27250j = new float[8];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @VisibleForTesting
    final float[] f27251k = new float[8];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @VisibleForTesting
    final RectF f27253m = new RectF();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @VisibleForTesting
    final RectF f27254n = new RectF();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @VisibleForTesting
    final RectF f27255o = new RectF();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @VisibleForTesting
    final RectF f27256p = new RectF();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @VisibleForTesting
    final Matrix f27258r = new Matrix();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @VisibleForTesting
    final Matrix f27259s = new Matrix();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @VisibleForTesting
    final Matrix f27260t = new Matrix();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @VisibleForTesting
    final Matrix f27261u = new Matrix();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @VisibleForTesting
    final Matrix f27262v = new Matrix();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @VisibleForTesting
    final Matrix f27265y = new Matrix();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f27266z = 0.0f;
    private boolean A = false;
    private boolean B = false;
    private boolean C = true;

    p(Drawable drawable) {
        this.f27242b = drawable;
    }

    @Override // com.facebook.drawee.drawable.m
    public void a(int color, float width) {
        if (this.f27248h == color && this.f27245e == width) {
            return;
        }
        this.f27248h = color;
        this.f27245e = width;
        this.C = true;
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean b() {
        return this.A;
    }

    @Override // com.facebook.drawee.drawable.m
    public void c(boolean isCircle) {
        this.f27243c = isCircle;
        this.C = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        this.f27242b.clearColorFilter();
    }

    @Override // com.facebook.drawee.drawable.m
    public void d(float padding) {
        if (this.f27266z != padding) {
            this.f27266z = padding;
            this.C = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("RoundedDrawable#draw");
        }
        this.f27242b.draw(canvas);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    @Override // com.facebook.drawee.drawable.t
    public void e(@Nullable u transformCallback) {
        this.D = transformCallback;
    }

    @VisibleForTesting
    boolean f() {
        return this.f27243c || this.f27244d || this.f27245e > 0.0f;
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean g() {
        return this.B;
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(api = 19)
    public int getAlpha() {
        return this.f27242b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    @RequiresApi(api = 21)
    public ColorFilter getColorFilter() {
        return this.f27242b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f27242b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f27242b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f27242b.getOpacity();
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean h() {
        return this.f27243c;
    }

    @Override // com.facebook.drawee.drawable.m
    public int i() {
        return this.f27248h;
    }

    @Override // com.facebook.drawee.drawable.m
    public void j(boolean paintFilterBitmap) {
        if (this.B != paintFilterBitmap) {
            this.B = paintFilterBitmap;
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.m
    public float k() {
        return this.f27245e;
    }

    protected void l() {
        float[] fArr;
        if (this.C) {
            this.f27249i.reset();
            RectF rectF = this.f27253m;
            float f10 = this.f27245e;
            rectF.inset(f10 / 2.0f, f10 / 2.0f);
            if (this.f27243c) {
                this.f27249i.addCircle(this.f27253m.centerX(), this.f27253m.centerY(), Math.min(this.f27253m.width(), this.f27253m.height()) / 2.0f, Path.Direction.CW);
            } else {
                int i10 = 0;
                while (true) {
                    fArr = this.f27251k;
                    if (i10 >= fArr.length) {
                        break;
                    }
                    fArr[i10] = (this.f27250j[i10] + this.f27266z) - (this.f27245e / 2.0f);
                    i10++;
                }
                this.f27249i.addRoundRect(this.f27253m, fArr, Path.Direction.CW);
            }
            RectF rectF2 = this.f27253m;
            float f11 = this.f27245e;
            rectF2.inset((-f11) / 2.0f, (-f11) / 2.0f);
            this.f27246f.reset();
            float f12 = this.f27266z + (this.A ? this.f27245e : 0.0f);
            this.f27253m.inset(f12, f12);
            if (this.f27243c) {
                this.f27246f.addCircle(this.f27253m.centerX(), this.f27253m.centerY(), Math.min(this.f27253m.width(), this.f27253m.height()) / 2.0f, Path.Direction.CW);
            } else if (this.A) {
                if (this.f27252l == null) {
                    this.f27252l = new float[8];
                }
                for (int i11 = 0; i11 < this.f27251k.length; i11++) {
                    this.f27252l[i11] = this.f27250j[i11] - this.f27245e;
                }
                this.f27246f.addRoundRect(this.f27253m, this.f27252l, Path.Direction.CW);
            } else {
                this.f27246f.addRoundRect(this.f27253m, this.f27250j, Path.Direction.CW);
            }
            float f13 = -f12;
            this.f27253m.inset(f13, f13);
            this.f27246f.setFillType(Path.FillType.WINDING);
            this.C = false;
        }
    }

    protected void m() {
        Matrix matrix;
        u uVar = this.D;
        if (uVar != null) {
            uVar.o(this.f27260t);
            this.D.l(this.f27253m);
        } else {
            this.f27260t.reset();
            this.f27253m.set(getBounds());
        }
        this.f27255o.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        this.f27256p.set(this.f27242b.getBounds());
        this.f27258r.setRectToRect(this.f27255o, this.f27256p, Matrix.ScaleToFit.FILL);
        if (this.A) {
            RectF rectF = this.f27257q;
            if (rectF == null) {
                this.f27257q = new RectF(this.f27253m);
            } else {
                rectF.set(this.f27253m);
            }
            RectF rectF2 = this.f27257q;
            float f10 = this.f27245e;
            rectF2.inset(f10, f10);
            if (this.f27263w == null) {
                this.f27263w = new Matrix();
            }
            this.f27263w.setRectToRect(this.f27253m, this.f27257q, Matrix.ScaleToFit.FILL);
        } else {
            Matrix matrix2 = this.f27263w;
            if (matrix2 != null) {
                matrix2.reset();
            }
        }
        if (!this.f27260t.equals(this.f27261u) || !this.f27258r.equals(this.f27259s) || ((matrix = this.f27263w) != null && !matrix.equals(this.f27264x))) {
            this.f27247g = true;
            this.f27260t.invert(this.f27262v);
            this.f27265y.set(this.f27260t);
            if (this.A) {
                this.f27265y.postConcat(this.f27263w);
            }
            this.f27265y.preConcat(this.f27258r);
            this.f27261u.set(this.f27260t);
            this.f27259s.set(this.f27258r);
            if (this.A) {
                Matrix matrix3 = this.f27264x;
                if (matrix3 == null) {
                    this.f27264x = new Matrix(this.f27263w);
                } else {
                    matrix3.set(this.f27263w);
                }
            } else {
                Matrix matrix4 = this.f27264x;
                if (matrix4 != null) {
                    matrix4.reset();
                }
            }
        }
        if (this.f27253m.equals(this.f27254n)) {
            return;
        }
        this.C = true;
        this.f27254n.set(this.f27253m);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        this.f27242b.setBounds(bounds);
    }

    @Override // com.facebook.drawee.drawable.m
    public float[] q() {
        return this.f27250j;
    }

    @Override // com.facebook.drawee.drawable.m
    public void r(boolean scaleDownInsideBorders) {
        if (this.A != scaleDownInsideBorders) {
            this.A = scaleDownInsideBorders;
            this.C = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.f27242b.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int color, @NonNull PorterDuff.Mode mode) {
        this.f27242b.setColorFilter(color, mode);
    }

    @Override // com.facebook.drawee.drawable.m
    public void setRadius(float radius) {
        com.facebook.common.internal.i.o(radius >= 0.0f);
        Arrays.fill(this.f27250j, radius);
        this.f27244d = radius != 0.0f;
        this.C = true;
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.m
    public float t() {
        return this.f27266z;
    }

    @Override // com.facebook.drawee.drawable.m
    public void v(float[] radii) {
        if (radii == null) {
            Arrays.fill(this.f27250j, 0.0f);
            this.f27244d = false;
        } else {
            com.facebook.common.internal.i.e(radii.length == 8, "radii should have exactly 8 values");
            System.arraycopy(radii, 0, this.f27250j, 0, 8);
            this.f27244d = false;
            for (int i10 = 0; i10 < 8; i10++) {
                this.f27244d |= radii[i10] > 0.0f;
            }
        }
        this.C = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f27242b.setColorFilter(colorFilter);
    }
}
