package com.google.android.material.floatingactionbutton;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.drawable.g;
import com.google.android.material.shape.n;
import com.google.android.material.shape.o;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
class c extends Drawable {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final float f30684q = 1.3333f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final Paint f30686b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Dimension
    float f30692h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ColorInt
    private int f30693i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ColorInt
    private int f30694j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ColorInt
    private int f30695k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ColorInt
    private int f30696l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ColorInt
    private int f30697m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private n f30699o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private ColorStateList f30700p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f30685a = o.k();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Path f30687c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f30688d = new Rect();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RectF f30689e = new RectF();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final RectF f30690f = new RectF();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f30691g = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f30698n = true;

    private class b extends Drawable.ConstantState {
        private b() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return c.this;
        }
    }

    c(n nVar) {
        this.f30699o = nVar;
        Paint paint = new Paint(1);
        this.f30686b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    @NonNull
    private Shader a() {
        Rect rect = this.f30688d;
        copyBounds(rect);
        float fHeight = this.f30692h / rect.height();
        return new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{ColorUtils.compositeColors(this.f30693i, this.f30697m), ColorUtils.compositeColors(this.f30694j, this.f30697m), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f30694j, 0), this.f30697m), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f30696l, 0), this.f30697m), ColorUtils.compositeColors(this.f30696l, this.f30697m), ColorUtils.compositeColors(this.f30695k, this.f30697m)}, new float[]{0.0f, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader.TileMode.CLAMP);
    }

    @NonNull
    protected RectF b() {
        this.f30690f.set(getBounds());
        return this.f30690f;
    }

    public n c() {
        return this.f30699o;
    }

    void d(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f30697m = colorStateList.getColorForState(getState(), this.f30697m);
        }
        this.f30700p = colorStateList;
        this.f30698n = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f30698n) {
            this.f30686b.setShader(a());
            this.f30698n = false;
        }
        float strokeWidth = this.f30686b.getStrokeWidth() / 2.0f;
        copyBounds(this.f30688d);
        this.f30689e.set(this.f30688d);
        float fMin = Math.min(this.f30699o.r().a(b()), this.f30689e.width() / 2.0f);
        if (this.f30699o.u(b())) {
            this.f30689e.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.f30689e, fMin, fMin, this.f30686b);
        }
    }

    public void e(@Dimension float f10) {
        if (this.f30692h != f10) {
            this.f30692h = f10;
            this.f30686b.setStrokeWidth(f10 * f30684q);
            this.f30698n = true;
            invalidateSelf();
        }
    }

    void f(@ColorInt int i10, @ColorInt int i11, @ColorInt int i12, @ColorInt int i13) {
        this.f30693i = i10;
        this.f30694j = i11;
        this.f30695k = i12;
        this.f30696l = i13;
    }

    public void g(n nVar) {
        this.f30699o = nVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f30691g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f30692h > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f30699o.u(b())) {
            outline.setRoundRect(getBounds(), this.f30699o.r().a(b()));
        } else {
            copyBounds(this.f30688d);
            this.f30689e.set(this.f30688d);
            this.f30685a.d(this.f30699o, 1.0f, this.f30689e, this.f30687c);
            g.l(outline, this.f30687c);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        if (!this.f30699o.u(b())) {
            return true;
        }
        int iRound = Math.round(this.f30692h);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f30700p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f30698n = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f30700p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f30697m)) != this.f30697m) {
            this.f30698n = true;
            this.f30697m = colorForState;
        }
        if (this.f30698n) {
            invalidateSelf();
        }
        return this.f30698n;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i10) {
        this.f30686b.setAlpha(i10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f30686b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
