package com.facebook.drawee.drawable;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class o extends Drawable implements m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float[] f27227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    final float[] f27228c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    float[] f27229d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    final Paint f27230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f27231f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f27232g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f27233h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f27234i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f27235j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f27236k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @VisibleForTesting
    final Path f27237l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @VisibleForTesting
    final Path f27238m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f27239n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final RectF f27240o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f27241p;

    public o(int color) {
        this.f27227b = new float[8];
        this.f27228c = new float[8];
        this.f27230e = new Paint(1);
        this.f27231f = false;
        this.f27232g = 0.0f;
        this.f27233h = 0.0f;
        this.f27234i = 0;
        this.f27235j = false;
        this.f27236k = false;
        this.f27237l = new Path();
        this.f27238m = new Path();
        this.f27239n = 0;
        this.f27240o = new RectF();
        this.f27241p = 255;
        l(color);
    }

    @TargetApi(11)
    public static o e(ColorDrawable colorDrawable) {
        return new o(colorDrawable.getColor());
    }

    private void m() {
        float[] fArr;
        float[] fArr2;
        this.f27237l.reset();
        this.f27238m.reset();
        this.f27240o.set(getBounds());
        RectF rectF = this.f27240o;
        float f10 = this.f27232g;
        rectF.inset(f10 / 2.0f, f10 / 2.0f);
        int i10 = 0;
        if (this.f27231f) {
            this.f27238m.addCircle(this.f27240o.centerX(), this.f27240o.centerY(), Math.min(this.f27240o.width(), this.f27240o.height()) / 2.0f, Path.Direction.CW);
        } else {
            int i11 = 0;
            while (true) {
                fArr = this.f27228c;
                if (i11 >= fArr.length) {
                    break;
                }
                fArr[i11] = (this.f27227b[i11] + this.f27233h) - (this.f27232g / 2.0f);
                i11++;
            }
            this.f27238m.addRoundRect(this.f27240o, fArr, Path.Direction.CW);
        }
        RectF rectF2 = this.f27240o;
        float f11 = this.f27232g;
        rectF2.inset((-f11) / 2.0f, (-f11) / 2.0f);
        float f12 = this.f27233h + (this.f27235j ? this.f27232g : 0.0f);
        this.f27240o.inset(f12, f12);
        if (this.f27231f) {
            this.f27237l.addCircle(this.f27240o.centerX(), this.f27240o.centerY(), Math.min(this.f27240o.width(), this.f27240o.height()) / 2.0f, Path.Direction.CW);
        } else if (this.f27235j) {
            if (this.f27229d == null) {
                this.f27229d = new float[8];
            }
            while (true) {
                fArr2 = this.f27229d;
                if (i10 >= fArr2.length) {
                    break;
                }
                fArr2[i10] = this.f27227b[i10] - this.f27232g;
                i10++;
            }
            this.f27237l.addRoundRect(this.f27240o, fArr2, Path.Direction.CW);
        } else {
            this.f27237l.addRoundRect(this.f27240o, this.f27227b, Path.Direction.CW);
        }
        float f13 = -f12;
        this.f27240o.inset(f13, f13);
    }

    @Override // com.facebook.drawee.drawable.m
    public void a(int color, float width) {
        if (this.f27234i != color) {
            this.f27234i = color;
            invalidateSelf();
        }
        if (this.f27232g != width) {
            this.f27232g = width;
            m();
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean b() {
        return this.f27235j;
    }

    @Override // com.facebook.drawee.drawable.m
    public void c(boolean isCircle) {
        this.f27231f = isCircle;
        m();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.m
    public void d(float padding) {
        if (this.f27233h != padding) {
            this.f27233h = padding;
            m();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f27230e.setColor(f.d(this.f27239n, this.f27241p));
        this.f27230e.setStyle(Paint.Style.FILL);
        this.f27230e.setFilterBitmap(g());
        canvas.drawPath(this.f27237l, this.f27230e);
        if (this.f27232g != 0.0f) {
            this.f27230e.setColor(f.d(this.f27234i, this.f27241p));
            this.f27230e.setStyle(Paint.Style.STROKE);
            this.f27230e.setStrokeWidth(this.f27232g);
            canvas.drawPath(this.f27238m, this.f27230e);
        }
    }

    public int f() {
        return this.f27239n;
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean g() {
        return this.f27236k;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f27241p;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return f.c(f.d(this.f27239n, this.f27241p));
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean h() {
        return this.f27231f;
    }

    @Override // com.facebook.drawee.drawable.m
    public int i() {
        return this.f27234i;
    }

    @Override // com.facebook.drawee.drawable.m
    public void j(boolean paintFilterBitmap) {
        if (this.f27236k != paintFilterBitmap) {
            this.f27236k = paintFilterBitmap;
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.m
    public float k() {
        return this.f27232g;
    }

    public void l(int color) {
        if (this.f27239n != color) {
            this.f27239n = color;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        m();
    }

    @Override // com.facebook.drawee.drawable.m
    public float[] q() {
        return this.f27227b;
    }

    @Override // com.facebook.drawee.drawable.m
    public void r(boolean scaleDownInsideBorders) {
        if (this.f27235j != scaleDownInsideBorders) {
            this.f27235j = scaleDownInsideBorders;
            m();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        if (alpha != this.f27241p) {
            this.f27241p = alpha;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // com.facebook.drawee.drawable.m
    public void setRadius(float radius) {
        com.facebook.common.internal.i.e(radius >= 0.0f, "radius should be non negative");
        Arrays.fill(this.f27227b, radius);
        m();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.m
    public float t() {
        return this.f27233h;
    }

    @Override // com.facebook.drawee.drawable.m
    public void v(float[] radii) {
        if (radii == null) {
            Arrays.fill(this.f27227b, 0.0f);
        } else {
            com.facebook.common.internal.i.e(radii.length == 8, "radii should have exactly 8 values");
            System.arraycopy(radii, 0, this.f27227b, 0, 8);
        }
        m();
        invalidateSelf();
    }

    public o(float[] radii, int color) {
        this(color);
        v(radii);
    }

    public o(float radius, int color) {
        this(color);
        setRadius(radius);
    }
}
