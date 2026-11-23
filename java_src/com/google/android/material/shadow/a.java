package com.google.android.material.shadow;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.appcompat.graphics.drawable.DrawableWrapperCompat;
import androidx.core.content.ContextCompat;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public class a extends DrawableWrapperCompat {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final double f31523r = Math.cos(Math.toRadians(45.0d));

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final float f31524s = 1.5f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static final float f31525t = 0.25f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    static final float f31526u = 0.5f;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static final float f31527v = 1.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    final Paint f31528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    final Paint f31529c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    final RectF f31530d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f31531e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Path f31532f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float f31533g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f31534h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f31535i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f31536j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f31537k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f31538l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f31539m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f31540n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f31541o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f31542p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f31543q;

    public a(Context context, Drawable drawable, float f10, float f11, float f12) {
        super(drawable);
        this.f31537k = true;
        this.f31541o = true;
        this.f31543q = false;
        this.f31538l = ContextCompat.getColor(context, R.color.design_fab_shadow_start_color);
        this.f31539m = ContextCompat.getColor(context, R.color.design_fab_shadow_mid_color);
        this.f31540n = ContextCompat.getColor(context, R.color.design_fab_shadow_end_color);
        Paint paint = new Paint(5);
        this.f31528b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f31531e = Math.round(f10);
        this.f31530d = new RectF();
        Paint paint2 = new Paint(paint);
        this.f31529c = paint2;
        paint2.setAntiAlias(false);
        p(f11, f12);
    }

    private void a(@NonNull Rect rect) {
        float f10 = this.f31534h;
        float f11 = f31524s * f10;
        this.f31530d.set(rect.left + f10, rect.top + f11, rect.right - f10, rect.bottom - f11);
        Drawable drawable = getDrawable();
        RectF rectF = this.f31530d;
        drawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        b();
    }

    private void b() {
        float f10 = this.f31531e;
        RectF rectF = new RectF(-f10, -f10, f10, f10);
        RectF rectF2 = new RectF(rectF);
        float f11 = this.f31535i;
        rectF2.inset(-f11, -f11);
        Path path = this.f31532f;
        if (path == null) {
            this.f31532f = new Path();
        } else {
            path.reset();
        }
        this.f31532f.setFillType(Path.FillType.EVEN_ODD);
        this.f31532f.moveTo(-this.f31531e, 0.0f);
        this.f31532f.rLineTo(-this.f31535i, 0.0f);
        this.f31532f.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f31532f.arcTo(rectF, 270.0f, -90.0f, false);
        this.f31532f.close();
        float f12 = -rectF2.top;
        if (f12 > 0.0f) {
            float f13 = this.f31531e / f12;
            this.f31528b.setShader(new RadialGradient(0.0f, 0.0f, f12, new int[]{0, this.f31538l, this.f31539m, this.f31540n}, new float[]{0.0f, f13, ((1.0f - f13) / 2.0f) + f13, 1.0f}, Shader.TileMode.CLAMP));
        }
        this.f31529c.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.f31538l, this.f31539m, this.f31540n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f31529c.setAntiAlias(false);
    }

    public static float c(float f10, float f11, boolean z10) {
        return z10 ? (float) (((double) f10) + ((1.0d - f31523r) * ((double) f11))) : f10;
    }

    public static float d(float f10, float f11, boolean z10) {
        return z10 ? (float) (((double) (f10 * f31524s)) + ((1.0d - f31523r) * ((double) f11))) : f10 * f31524s;
    }

    private void e(@NonNull Canvas canvas) {
        int iSave = canvas.save();
        canvas.rotate(this.f31542p, this.f31530d.centerX(), this.f31530d.centerY());
        float f10 = this.f31531e;
        float f11 = (-f10) - this.f31535i;
        float f12 = f10 * 2.0f;
        boolean z10 = this.f31530d.width() - f12 > 0.0f;
        boolean z11 = this.f31530d.height() - f12 > 0.0f;
        float f13 = this.f31536j;
        float f14 = f10 / ((f13 - (0.5f * f13)) + f10);
        float f15 = f10 / ((f13 - (f31525t * f13)) + f10);
        float f16 = f10 / ((f13 - (f13 * 1.0f)) + f10);
        int iSave2 = canvas.save();
        RectF rectF = this.f31530d;
        canvas.translate(rectF.left + f10, rectF.top + f10);
        canvas.scale(f14, f15);
        canvas.drawPath(this.f31532f, this.f31528b);
        if (z10) {
            canvas.scale(1.0f / f14, 1.0f);
            canvas.drawRect(0.0f, f11, this.f31530d.width() - f12, -this.f31531e, this.f31529c);
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        RectF rectF2 = this.f31530d;
        canvas.translate(rectF2.right - f10, rectF2.bottom - f10);
        canvas.scale(f14, f16);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f31532f, this.f31528b);
        if (z10) {
            canvas.scale(1.0f / f14, 1.0f);
            canvas.drawRect(0.0f, f11, this.f31530d.width() - f12, (-this.f31531e) + this.f31535i, this.f31529c);
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        RectF rectF3 = this.f31530d;
        canvas.translate(rectF3.left + f10, rectF3.bottom - f10);
        canvas.scale(f14, r6);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f31532f, this.f31528b);
        if (z11) {
            canvas.scale(1.0f / f16, 1.0f);
            canvas.drawRect(0.0f, f11, this.f31530d.height() - f12, -this.f31531e, this.f31529c);
        }
        canvas.restoreToCount(iSave4);
        int iSave5 = canvas.save();
        RectF rectF4 = this.f31530d;
        canvas.translate(rectF4.right - f10, rectF4.top + f10);
        canvas.scale(f14, f15);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f31532f, this.f31528b);
        if (z11) {
            canvas.scale(1.0f / f15, 1.0f);
            canvas.drawRect(0.0f, f11, this.f31530d.height() - f12, -this.f31531e, this.f31529c);
        }
        canvas.restoreToCount(iSave5);
        canvas.restoreToCount(iSave);
    }

    private static int q(float f10) {
        int iRound = Math.round(f10);
        return iRound % 2 == 1 ? iRound - 1 : iRound;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f31537k) {
            a(getBounds());
            this.f31537k = false;
        }
        e(canvas);
        super.draw(canvas);
    }

    public float f() {
        return this.f31531e;
    }

    public float g() {
        return this.f31534h;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        int iCeil = (int) Math.ceil(d(this.f31534h, this.f31531e, this.f31541o));
        int iCeil2 = (int) Math.ceil(c(this.f31534h, this.f31531e, this.f31541o));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    public float h() {
        float f10 = this.f31534h;
        return (Math.max(f10, this.f31531e + ((f10 * f31524s) / 2.0f)) * 2.0f) + (this.f31534h * f31524s * 2.0f);
    }

    public float i() {
        float f10 = this.f31534h;
        return (Math.max(f10, this.f31531e + (f10 / 2.0f)) * 2.0f) + (this.f31534h * 2.0f);
    }

    public float j() {
        return this.f31536j;
    }

    public void k(boolean z10) {
        this.f31541o = z10;
        invalidateSelf();
    }

    public void l(float f10) {
        float fRound = Math.round(f10);
        if (this.f31531e == fRound) {
            return;
        }
        this.f31531e = fRound;
        this.f31537k = true;
        invalidateSelf();
    }

    public void m(float f10) {
        p(this.f31536j, f10);
    }

    public final void n(float f10) {
        if (this.f31542p != f10) {
            this.f31542p = f10;
            invalidateSelf();
        }
    }

    public void o(float f10) {
        p(f10, this.f31534h);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f31537k = true;
    }

    public void p(float f10, float f11) {
        if (f10 < 0.0f || f11 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float fQ = q(f10);
        float fQ2 = q(f11);
        if (fQ > fQ2) {
            if (!this.f31543q) {
                this.f31543q = true;
            }
            fQ = fQ2;
        }
        if (this.f31536j == fQ && this.f31534h == fQ2) {
            return;
        }
        this.f31536j = fQ;
        this.f31534h = fQ2;
        this.f31535i = Math.round(fQ * f31524s);
        this.f31533g = fQ2;
        this.f31537k = true;
        invalidateSelf();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        super.setAlpha(i10);
        this.f31528b.setAlpha(i10);
        this.f31529c.setAlpha(i10);
    }
}
