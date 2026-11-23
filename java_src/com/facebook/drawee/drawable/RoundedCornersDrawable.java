package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class RoundedCornersDrawable extends h implements m {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    Type f27143f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final RectF f27144g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private RectF f27145h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private Matrix f27146i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float[] f27147j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @VisibleForTesting
    final float[] f27148k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @VisibleForTesting
    final Paint f27149l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f27150m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f27151n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f27152o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f27153p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f27154q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f27155r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f27156s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Path f27157t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Path f27158u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final RectF f27159v;

    public enum Type {
        OVERLAY_COLOR,
        CLIPPING
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f27160a;

        static {
            int[] iArr = new int[Type.values().length];
            f27160a = iArr;
            try {
                iArr[Type.CLIPPING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27160a[Type.OVERLAY_COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public RoundedCornersDrawable(Drawable drawable) {
        super((Drawable) com.facebook.common.internal.i.i(drawable));
        this.f27143f = Type.OVERLAY_COLOR;
        this.f27144g = new RectF();
        this.f27147j = new float[8];
        this.f27148k = new float[8];
        this.f27149l = new Paint(1);
        this.f27150m = false;
        this.f27151n = 0.0f;
        this.f27152o = 0;
        this.f27153p = 0;
        this.f27154q = 0.0f;
        this.f27155r = false;
        this.f27156s = false;
        this.f27157t = new Path();
        this.f27158u = new Path();
        this.f27159v = new RectF();
    }

    private void D() {
        float[] fArr;
        this.f27157t.reset();
        this.f27158u.reset();
        this.f27159v.set(getBounds());
        RectF rectF = this.f27159v;
        float f10 = this.f27154q;
        rectF.inset(f10, f10);
        if (this.f27143f == Type.OVERLAY_COLOR) {
            this.f27157t.addRect(this.f27159v, Path.Direction.CW);
        }
        if (this.f27150m) {
            this.f27157t.addCircle(this.f27159v.centerX(), this.f27159v.centerY(), Math.min(this.f27159v.width(), this.f27159v.height()) / 2.0f, Path.Direction.CW);
        } else {
            this.f27157t.addRoundRect(this.f27159v, this.f27147j, Path.Direction.CW);
        }
        RectF rectF2 = this.f27159v;
        float f11 = this.f27154q;
        rectF2.inset(-f11, -f11);
        RectF rectF3 = this.f27159v;
        float f12 = this.f27151n;
        rectF3.inset(f12 / 2.0f, f12 / 2.0f);
        if (this.f27150m) {
            this.f27158u.addCircle(this.f27159v.centerX(), this.f27159v.centerY(), Math.min(this.f27159v.width(), this.f27159v.height()) / 2.0f, Path.Direction.CW);
        } else {
            int i10 = 0;
            while (true) {
                fArr = this.f27148k;
                if (i10 >= fArr.length) {
                    break;
                }
                fArr[i10] = (this.f27147j[i10] + this.f27154q) - (this.f27151n / 2.0f);
                i10++;
            }
            this.f27158u.addRoundRect(this.f27159v, fArr, Path.Direction.CW);
        }
        RectF rectF4 = this.f27159v;
        float f13 = this.f27151n;
        rectF4.inset((-f13) / 2.0f, (-f13) / 2.0f);
    }

    public int A() {
        return this.f27153p;
    }

    public void B(int overlayColor) {
        this.f27153p = overlayColor;
        invalidateSelf();
    }

    public void C(Type type) {
        this.f27143f = type;
        D();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.m
    public void a(int color, float width) {
        this.f27152o = color;
        this.f27151n = width;
        D();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean b() {
        return this.f27155r;
    }

    @Override // com.facebook.drawee.drawable.m
    public void c(boolean isCircle) {
        this.f27150m = isCircle;
        D();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.m
    public void d(float padding) {
        this.f27154q = padding;
        D();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f27144g.set(getBounds());
        int i10 = a.f27160a[this.f27143f.ordinal()];
        if (i10 == 1) {
            int iSave = canvas.save();
            canvas.clipPath(this.f27157t);
            super.draw(canvas);
            canvas.restoreToCount(iSave);
        } else if (i10 == 2) {
            if (this.f27155r) {
                RectF rectF = this.f27145h;
                if (rectF == null) {
                    this.f27145h = new RectF(this.f27144g);
                    this.f27146i = new Matrix();
                } else {
                    rectF.set(this.f27144g);
                }
                RectF rectF2 = this.f27145h;
                float f10 = this.f27151n;
                rectF2.inset(f10, f10);
                this.f27146i.setRectToRect(this.f27144g, this.f27145h, Matrix.ScaleToFit.FILL);
                int iSave2 = canvas.save();
                canvas.clipRect(this.f27144g);
                canvas.concat(this.f27146i);
                super.draw(canvas);
                canvas.restoreToCount(iSave2);
            } else {
                super.draw(canvas);
            }
            this.f27149l.setStyle(Paint.Style.FILL);
            this.f27149l.setColor(this.f27153p);
            this.f27149l.setStrokeWidth(0.0f);
            this.f27149l.setFilterBitmap(g());
            this.f27157t.setFillType(Path.FillType.EVEN_ODD);
            canvas.drawPath(this.f27157t, this.f27149l);
            if (this.f27150m) {
                float fWidth = ((this.f27144g.width() - this.f27144g.height()) + this.f27151n) / 2.0f;
                float fHeight = ((this.f27144g.height() - this.f27144g.width()) + this.f27151n) / 2.0f;
                if (fWidth > 0.0f) {
                    RectF rectF3 = this.f27144g;
                    float f11 = rectF3.left;
                    canvas.drawRect(f11, rectF3.top, f11 + fWidth, rectF3.bottom, this.f27149l);
                    RectF rectF4 = this.f27144g;
                    float f12 = rectF4.right;
                    canvas.drawRect(f12 - fWidth, rectF4.top, f12, rectF4.bottom, this.f27149l);
                }
                if (fHeight > 0.0f) {
                    RectF rectF5 = this.f27144g;
                    float f13 = rectF5.left;
                    float f14 = rectF5.top;
                    canvas.drawRect(f13, f14, rectF5.right, f14 + fHeight, this.f27149l);
                    RectF rectF6 = this.f27144g;
                    float f15 = rectF6.left;
                    float f16 = rectF6.bottom;
                    canvas.drawRect(f15, f16 - fHeight, rectF6.right, f16, this.f27149l);
                }
            }
        }
        if (this.f27152o != 0) {
            this.f27149l.setStyle(Paint.Style.STROKE);
            this.f27149l.setColor(this.f27152o);
            this.f27149l.setStrokeWidth(this.f27151n);
            this.f27157t.setFillType(Path.FillType.EVEN_ODD);
            canvas.drawPath(this.f27158u, this.f27149l);
        }
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean g() {
        return this.f27156s;
    }

    @Override // com.facebook.drawee.drawable.m
    public boolean h() {
        return this.f27150m;
    }

    @Override // com.facebook.drawee.drawable.m
    public int i() {
        return this.f27152o;
    }

    @Override // com.facebook.drawee.drawable.m
    public void j(boolean paintFilterBitmap) {
        if (this.f27156s != paintFilterBitmap) {
            this.f27156s = paintFilterBitmap;
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.m
    public float k() {
        return this.f27151n;
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        D();
    }

    @Override // com.facebook.drawee.drawable.m
    public float[] q() {
        return this.f27147j;
    }

    @Override // com.facebook.drawee.drawable.m
    public void r(boolean scaleDownInsideBorders) {
        this.f27155r = scaleDownInsideBorders;
        D();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.m
    public void setRadius(float radius) {
        Arrays.fill(this.f27147j, radius);
        D();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.m
    public float t() {
        return this.f27154q;
    }

    @Override // com.facebook.drawee.drawable.m
    public void v(float[] radii) {
        if (radii == null) {
            Arrays.fill(this.f27147j, 0.0f);
        } else {
            com.facebook.common.internal.i.e(radii.length == 8, "radii should have exactly 8 values");
            System.arraycopy(radii, 0, this.f27147j, 0, 8);
        }
        D();
        invalidateSelf();
    }
}
