package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class b {

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private static final String f30842v0 = "CollapsingTextHelper";

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private static final String f30843w0 = "…";

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private static final float f30844x0 = 0.5f;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private static final boolean f30845y0 = false;
    private Typeface A;
    private Typeface B;
    private Typeface C;
    private com.google.android.material.resources.a D;
    private com.google.android.material.resources.a E;

    @Nullable
    private CharSequence G;

    @Nullable
    private CharSequence H;
    private boolean I;
    private boolean K;

    @Nullable
    private Bitmap L;
    private Paint M;
    private float N;
    private float O;
    private float P;
    private float Q;
    private float R;
    private int S;
    private int[] T;
    private boolean U;

    @NonNull
    private final TextPaint V;

    @NonNull
    private final TextPaint W;
    private TimeInterpolator X;
    private TimeInterpolator Y;
    private float Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f30847a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private float f30848a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f30849b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private float f30850b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f30851c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private ColorStateList f30852c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f30853d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private float f30854d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f30855e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private float f30856e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f30857f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private float f30858f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final Rect f30859g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private ColorStateList f30860g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final Rect f30861h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private float f30862h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final RectF f30863i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private float f30864i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private float f30866j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private StaticLayout f30868k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private float f30870l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private float f30872m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ColorStateList f30873n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private float f30874n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ColorStateList f30875o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private CharSequence f30876o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f30877p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f30879q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f30881r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f30883s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f30885t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    @Nullable
    private c0 f30886t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f30887u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f30888v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Typeface f30889w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Typeface f30890x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Typeface f30891y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Typeface f30892z;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private static final boolean f30841u0 = false;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    @NonNull
    private static final Paint f30846z0 = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f30865j = 16;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f30867k = 16;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f30869l = 15.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f30871m = 15.0f;
    private TextUtils.TruncateAt F = TextUtils.TruncateAt.END;
    private boolean J = true;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private int f30878p0 = 1;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private float f30880q0 = 0.0f;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private float f30882r0 = 1.0f;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private int f30884s0 = StaticLayoutBuilderCompat.f30809o;

    class a implements com.google.android.material.resources.a.InterfaceC0606a {
        a() {
        }

        @Override // com.google.android.material.resources.a.InterfaceC0606a
        public void a(Typeface typeface) {
            b.this.n0(typeface);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.internal.b$b, reason: collision with other inner class name */
    class C0603b implements com.google.android.material.resources.a.InterfaceC0606a {
        C0603b() {
        }

        @Override // com.google.android.material.resources.a.InterfaceC0606a
        public void a(Typeface typeface) {
            b.this.y0(typeface);
        }
    }

    public b(View view) {
        this.f30847a = view;
        TextPaint textPaint = new TextPaint(129);
        this.V = textPaint;
        this.W = new TextPaint(textPaint);
        this.f30861h = new Rect();
        this.f30859g = new Rect();
        this.f30863i = new RectF();
        this.f30855e = e();
        a0(view.getContext().getResources().getConfiguration());
    }

    private void E0(float f10) {
        h(f10);
        boolean z10 = f30841u0 && this.N != 1.0f;
        this.K = z10;
        if (z10) {
            n();
        }
        ViewCompat.postInvalidateOnAnimation(this.f30847a);
    }

    private Layout.Alignment N() {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f30865j, this.I ? 1 : 0) & 7;
        if (absoluteGravity == 1) {
            return Layout.Alignment.ALIGN_CENTER;
        }
        if (absoluteGravity != 5) {
            return this.I ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
        }
        return this.I ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
    }

    private void Q(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.f30871m);
        textPaint.setTypeface(this.f30889w);
        textPaint.setLetterSpacing(this.f30862h0);
    }

    private boolean Q0() {
        return this.f30878p0 > 1 && (!this.I || this.f30851c) && !this.K;
    }

    private void R(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.f30869l);
        textPaint.setTypeface(this.f30892z);
        textPaint.setLetterSpacing(this.f30864i0);
    }

    private void T(float f10) {
        if (this.f30851c) {
            this.f30863i.set(f10 < this.f30855e ? this.f30859g : this.f30861h);
            return;
        }
        this.f30863i.left = Z(this.f30859g.left, this.f30861h.left, f10, this.X);
        this.f30863i.top = Z(this.f30879q, this.f30881r, f10, this.X);
        this.f30863i.right = Z(this.f30859g.right, this.f30861h.right, f10, this.X);
        this.f30863i.bottom = Z(this.f30859g.bottom, this.f30861h.bottom, f10, this.X);
    }

    private static boolean U(float f10, float f11) {
        return Math.abs(f10 - f11) < 1.0E-5f;
    }

    private boolean V() {
        return ViewCompat.getLayoutDirection(this.f30847a) == 1;
    }

    private boolean Y(@NonNull CharSequence charSequence, boolean z10) {
        return (z10 ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
    }

    private static float Z(float f10, float f11, float f12, @Nullable TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f12 = timeInterpolator.getInterpolation(f12);
        }
        return com.google.android.material.animation.b.a(f10, f11, f12);
    }

    @ColorInt
    private static int a(@ColorInt int i10, @ColorInt int i11, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        float f11 = 1.0f - f10;
        return Color.argb(Math.round((Color.alpha(i10) * f11) + (Color.alpha(i11) * f10)), Math.round((Color.red(i10) * f11) + (Color.red(i11) * f10)), Math.round((Color.green(i10) * f11) + (Color.green(i11) * f10)), Math.round((Color.blue(i10) * f11) + (Color.blue(i11) * f10)));
    }

    private void b(boolean z10) {
        StaticLayout staticLayout;
        i(1.0f, z10);
        CharSequence charSequence = this.H;
        if (charSequence != null && (staticLayout = this.f30868k0) != null) {
            this.f30876o0 = TextUtils.ellipsize(charSequence, this.V, staticLayout.getWidth(), this.F);
        }
        CharSequence charSequence2 = this.f30876o0;
        float fB0 = 0.0f;
        if (charSequence2 != null) {
            this.f30870l0 = b0(this.V, charSequence2);
        } else {
            this.f30870l0 = 0.0f;
        }
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f30867k, this.I ? 1 : 0);
        int i10 = absoluteGravity & 112;
        if (i10 == 48) {
            this.f30881r = this.f30861h.top;
        } else if (i10 != 80) {
            this.f30881r = this.f30861h.centerY() - ((this.V.descent() - this.V.ascent()) / 2.0f);
        } else {
            this.f30881r = this.f30861h.bottom + this.V.ascent();
        }
        int i11 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i11 == 1) {
            this.f30885t = this.f30861h.centerX() - (this.f30870l0 / 2.0f);
        } else if (i11 != 5) {
            this.f30885t = this.f30861h.left;
        } else {
            this.f30885t = this.f30861h.right - this.f30870l0;
        }
        i(0.0f, z10);
        StaticLayout staticLayout2 = this.f30868k0;
        float height = staticLayout2 != null ? staticLayout2.getHeight() : 0.0f;
        StaticLayout staticLayout3 = this.f30868k0;
        if (staticLayout3 == null || this.f30878p0 <= 1) {
            CharSequence charSequence3 = this.H;
            if (charSequence3 != null) {
                fB0 = b0(this.V, charSequence3);
            }
        } else {
            fB0 = staticLayout3.getWidth();
        }
        StaticLayout staticLayout4 = this.f30868k0;
        this.f30877p = staticLayout4 != null ? staticLayout4.getLineCount() : 0;
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.f30865j, this.I ? 1 : 0);
        int i12 = absoluteGravity2 & 112;
        if (i12 == 48) {
            this.f30879q = this.f30859g.top;
        } else if (i12 != 80) {
            this.f30879q = this.f30859g.centerY() - (height / 2.0f);
        } else {
            this.f30879q = (this.f30859g.bottom - height) + this.V.descent();
        }
        int i13 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i13 == 1) {
            this.f30883s = this.f30859g.centerX() - (fB0 / 2.0f);
        } else if (i13 != 5) {
            this.f30883s = this.f30859g.left;
        } else {
            this.f30883s = this.f30859g.right - fB0;
        }
        j();
        E0(this.f30849b);
    }

    private float b0(TextPaint textPaint, CharSequence charSequence) {
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    private void c() {
        g(this.f30849b);
    }

    private float d(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        float f11 = this.f30855e;
        return f10 <= f11 ? com.google.android.material.animation.b.b(1.0f, 0.0f, this.f30853d, f11, f10) : com.google.android.material.animation.b.b(0.0f, 1.0f, f11, 1.0f, f10);
    }

    private float e() {
        float f10 = this.f30853d;
        return f10 + ((1.0f - f10) * 0.5f);
    }

    private static boolean e0(@NonNull Rect rect, int i10, int i11, int i12, int i13) {
        return rect.left == i10 && rect.top == i11 && rect.right == i12 && rect.bottom == i13;
    }

    private boolean f(@NonNull CharSequence charSequence) {
        boolean zV = V();
        return this.J ? Y(charSequence, zV) : zV;
    }

    private void g(float f10) {
        float f11;
        T(f10);
        if (!this.f30851c) {
            this.f30887u = Z(this.f30883s, this.f30885t, f10, this.X);
            this.f30888v = Z(this.f30879q, this.f30881r, f10, this.X);
            E0(f10);
            f11 = f10;
        } else if (f10 < this.f30855e) {
            this.f30887u = this.f30883s;
            this.f30888v = this.f30879q;
            E0(0.0f);
            f11 = 0.0f;
        } else {
            this.f30887u = this.f30885t;
            this.f30888v = this.f30881r - Math.max(0, this.f30857f);
            E0(1.0f);
            f11 = 1.0f;
        }
        TimeInterpolator timeInterpolator = com.google.android.material.animation.b.f29368b;
        j0(1.0f - Z(0.0f, 1.0f, 1.0f - f10, timeInterpolator));
        u0(Z(1.0f, 0.0f, f10, timeInterpolator));
        if (this.f30875o != this.f30873n) {
            this.V.setColor(a(y(), w(), f11));
        } else {
            this.V.setColor(w());
        }
        int i10 = Build.VERSION.SDK_INT;
        float f12 = this.f30862h0;
        float f13 = this.f30864i0;
        if (f12 != f13) {
            this.V.setLetterSpacing(Z(f13, f12, f10, timeInterpolator));
        } else {
            this.V.setLetterSpacing(f12);
        }
        this.P = Z(this.f30854d0, this.Z, f10, null);
        this.Q = Z(this.f30856e0, this.f30848a0, f10, null);
        this.R = Z(this.f30858f0, this.f30850b0, f10, null);
        int iA = a(x(this.f30860g0), x(this.f30852c0), f10);
        this.S = iA;
        this.V.setShadowLayer(this.P, this.Q, this.R, iA);
        if (this.f30851c) {
            this.V.setAlpha((int) (d(f10) * this.V.getAlpha()));
            if (i10 >= 31) {
                TextPaint textPaint = this.V;
                textPaint.setShadowLayer(this.P, this.Q, this.R, com.google.android.material.color.s.a(this.S, textPaint.getAlpha()));
            }
        }
        ViewCompat.postInvalidateOnAnimation(this.f30847a);
    }

    private void h(float f10) {
        i(f10, false);
    }

    private void i(float f10, boolean z10) {
        float f11;
        float f12;
        Typeface typeface;
        if (this.G == null) {
            return;
        }
        float fWidth = this.f30861h.width();
        float fWidth2 = this.f30859g.width();
        if (U(f10, 1.0f)) {
            f11 = this.f30871m;
            f12 = this.f30862h0;
            this.N = 1.0f;
            typeface = this.f30889w;
        } else {
            float f13 = this.f30869l;
            float f14 = this.f30864i0;
            Typeface typeface2 = this.f30892z;
            if (U(f10, 0.0f)) {
                this.N = 1.0f;
            } else {
                this.N = Z(this.f30869l, this.f30871m, f10, this.Y) / this.f30869l;
            }
            float f15 = this.f30871m / this.f30869l;
            fWidth = (z10 || this.f30851c || fWidth2 * f15 <= fWidth) ? fWidth2 : Math.min(fWidth / f15, fWidth2);
            f11 = f13;
            f12 = f14;
            typeface = typeface2;
        }
        boolean z11 = false;
        if (fWidth > 0.0f) {
            boolean z12 = this.O != f11;
            boolean z13 = this.f30866j0 != f12;
            boolean z14 = this.C != typeface;
            StaticLayout staticLayout = this.f30868k0;
            boolean z15 = z12 || z13 || (staticLayout != null && (fWidth > ((float) staticLayout.getWidth()) ? 1 : (fWidth == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z14 || this.U;
            this.O = f11;
            this.f30866j0 = f12;
            this.C = typeface;
            this.U = false;
            this.V.setLinearText(this.N != 1.0f);
            z11 = z15;
        }
        if (this.H == null || z11) {
            this.V.setTextSize(this.O);
            this.V.setTypeface(this.C);
            this.V.setLetterSpacing(this.f30866j0);
            this.I = f(this.G);
            StaticLayout staticLayoutK = k(Q0() ? this.f30878p0 : 1, fWidth, this.I);
            this.f30868k0 = staticLayoutK;
            this.H = staticLayoutK.getText();
        }
    }

    private void j() {
        Bitmap bitmap = this.L;
        if (bitmap != null) {
            bitmap.recycle();
            this.L = null;
        }
    }

    private void j0(float f10) {
        this.f30872m0 = f10;
        ViewCompat.postInvalidateOnAnimation(this.f30847a);
    }

    private StaticLayout k(int i10, float f10, boolean z10) {
        StaticLayout staticLayoutA;
        try {
            staticLayoutA = StaticLayoutBuilderCompat.c(this.G, this.V, (int) f10).e(this.F).i(z10).d(i10 == 1 ? Layout.Alignment.ALIGN_NORMAL : N()).h(false).k(i10).j(this.f30880q0, this.f30882r0).g(this.f30884s0).m(this.f30886t0).a();
        } catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException e10) {
            e10.getCause().getMessage();
            staticLayoutA = null;
        }
        return (StaticLayout) Preconditions.checkNotNull(staticLayoutA);
    }

    private void m(@NonNull Canvas canvas, float f10, float f11) {
        int alpha = this.V.getAlpha();
        canvas.translate(f10, f11);
        if (!this.f30851c) {
            this.V.setAlpha((int) (this.f30874n0 * alpha));
            if (Build.VERSION.SDK_INT >= 31) {
                TextPaint textPaint = this.V;
                textPaint.setShadowLayer(this.P, this.Q, this.R, com.google.android.material.color.s.a(this.S, textPaint.getAlpha()));
            }
            this.f30868k0.draw(canvas);
        }
        if (!this.f30851c) {
            this.V.setAlpha((int) (this.f30872m0 * alpha));
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 31) {
            TextPaint textPaint2 = this.V;
            textPaint2.setShadowLayer(this.P, this.Q, this.R, com.google.android.material.color.s.a(this.S, textPaint2.getAlpha()));
        }
        int lineBaseline = this.f30868k0.getLineBaseline(0);
        CharSequence charSequence = this.f30876o0;
        float f12 = lineBaseline;
        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f12, this.V);
        if (i10 >= 31) {
            this.V.setShadowLayer(this.P, this.Q, this.R, this.S);
        }
        if (this.f30851c) {
            return;
        }
        String strTrim = this.f30876o0.toString().trim();
        if (strTrim.endsWith(f30843w0)) {
            strTrim = strTrim.substring(0, strTrim.length() - 1);
        }
        String str = strTrim;
        this.V.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.f30868k0.getLineEnd(0), str.length()), 0.0f, f12, (Paint) this.V);
    }

    private void n() {
        if (this.L != null || this.f30859g.isEmpty() || TextUtils.isEmpty(this.H)) {
            return;
        }
        g(0.0f);
        int width = this.f30868k0.getWidth();
        int height = this.f30868k0.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.L = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.f30868k0.draw(new Canvas(this.L));
        if (this.M == null) {
            this.M = new Paint(3);
        }
    }

    private boolean o0(Typeface typeface) {
        com.google.android.material.resources.a aVar = this.E;
        if (aVar != null) {
            aVar.c();
        }
        if (this.f30891y == typeface) {
            return false;
        }
        this.f30891y = typeface;
        Typeface typefaceB = com.google.android.material.resources.j.b(this.f30847a.getContext().getResources().getConfiguration(), typeface);
        this.f30890x = typefaceB;
        if (typefaceB == null) {
            typefaceB = this.f30891y;
        }
        this.f30889w = typefaceB;
        return true;
    }

    private float s(int i10, int i11) {
        if (i11 == 17 || (i11 & 7) == 1) {
            return (i10 / 2.0f) - (this.f30870l0 / 2.0f);
        }
        if ((i11 & GravityCompat.END) == 8388613 || (i11 & 5) == 5) {
            return this.I ? this.f30861h.left : this.f30861h.right - this.f30870l0;
        }
        return this.I ? this.f30861h.right - this.f30870l0 : this.f30861h.left;
    }

    private float t(@NonNull RectF rectF, int i10, int i11) {
        if (i11 == 17 || (i11 & 7) == 1) {
            return (i10 / 2.0f) + (this.f30870l0 / 2.0f);
        }
        if ((i11 & GravityCompat.END) == 8388613 || (i11 & 5) == 5) {
            return this.I ? rectF.left + this.f30870l0 : this.f30861h.right;
        }
        return this.I ? this.f30861h.right : rectF.left + this.f30870l0;
    }

    private void u0(float f10) {
        this.f30874n0 = f10;
        ViewCompat.postInvalidateOnAnimation(this.f30847a);
    }

    @ColorInt
    private int x(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.T;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    @ColorInt
    private int y() {
        return x(this.f30873n);
    }

    private boolean z0(Typeface typeface) {
        com.google.android.material.resources.a aVar = this.D;
        if (aVar != null) {
            aVar.c();
        }
        if (this.B == typeface) {
            return false;
        }
        this.B = typeface;
        Typeface typefaceB = com.google.android.material.resources.j.b(this.f30847a.getContext().getResources().getConfiguration(), typeface);
        this.A = typefaceB;
        if (typefaceB == null) {
            typefaceB = this.B;
        }
        this.f30892z = typefaceB;
        return true;
    }

    public ColorStateList A() {
        return this.f30873n;
    }

    public void A0(float f10) {
        float fClamp = MathUtils.clamp(f10, 0.0f, 1.0f);
        if (fClamp != this.f30849b) {
            this.f30849b = fClamp;
            c();
        }
    }

    public float B() {
        R(this.W);
        return (-this.W.ascent()) + this.W.descent();
    }

    public void B0(boolean z10) {
        this.f30851c = z10;
    }

    public int C() {
        return this.f30865j;
    }

    public void C0(float f10) {
        this.f30853d = f10;
        this.f30855e = e();
    }

    public float D() {
        R(this.W);
        return -this.W.ascent();
    }

    @RequiresApi(23)
    public void D0(int i10) {
        this.f30884s0 = i10;
    }

    public float E() {
        return this.f30869l;
    }

    public Typeface F() {
        Typeface typeface = this.f30892z;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    @RequiresApi(23)
    public void F0(float f10) {
        this.f30880q0 = f10;
    }

    public float G() {
        return this.f30849b;
    }

    @RequiresApi(23)
    public void G0(@FloatRange(from = 0.0d) float f10) {
        this.f30882r0 = f10;
    }

    public float H() {
        return this.f30855e;
    }

    public void H0(int i10) {
        if (i10 != this.f30878p0) {
            this.f30878p0 = i10;
            j();
            c0();
        }
    }

    @RequiresApi(23)
    public int I() {
        return this.f30884s0;
    }

    public void I0(TimeInterpolator timeInterpolator) {
        this.X = timeInterpolator;
        c0();
    }

    public int J() {
        StaticLayout staticLayout = this.f30868k0;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    public void J0(boolean z10) {
        this.J = z10;
    }

    @RequiresApi(23)
    public float K() {
        return this.f30868k0.getSpacingAdd();
    }

    public final boolean K0(int[] iArr) {
        this.T = iArr;
        if (!X()) {
            return false;
        }
        c0();
        return true;
    }

    @RequiresApi(23)
    public float L() {
        return this.f30868k0.getSpacingMultiplier();
    }

    @RequiresApi(23)
    public void L0(@Nullable c0 c0Var) {
        if (this.f30886t0 != c0Var) {
            this.f30886t0 = c0Var;
            d0(true);
        }
    }

    public int M() {
        return this.f30878p0;
    }

    public void M0(@Nullable CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.G, charSequence)) {
            this.G = charSequence;
            this.H = null;
            j();
            c0();
        }
    }

    public void N0(TimeInterpolator timeInterpolator) {
        this.Y = timeInterpolator;
        c0();
    }

    @Nullable
    public TimeInterpolator O() {
        return this.X;
    }

    public void O0(@NonNull TextUtils.TruncateAt truncateAt) {
        this.F = truncateAt;
        c0();
    }

    @Nullable
    public CharSequence P() {
        return this.G;
    }

    public void P0(Typeface typeface) {
        boolean zO0 = o0(typeface);
        boolean zZ0 = z0(typeface);
        if (zO0 || zZ0) {
            c0();
        }
    }

    @NonNull
    public TextUtils.TruncateAt S() {
        return this.F;
    }

    public boolean W() {
        return this.J;
    }

    public final boolean X() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f30875o;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f30873n) != null && colorStateList.isStateful());
    }

    public void a0(@NonNull Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.f30891y;
            if (typeface != null) {
                this.f30890x = com.google.android.material.resources.j.b(configuration, typeface);
            }
            Typeface typeface2 = this.B;
            if (typeface2 != null) {
                this.A = com.google.android.material.resources.j.b(configuration, typeface2);
            }
            Typeface typeface3 = this.f30890x;
            if (typeface3 == null) {
                typeface3 = this.f30891y;
            }
            this.f30889w = typeface3;
            Typeface typeface4 = this.A;
            if (typeface4 == null) {
                typeface4 = this.B;
            }
            this.f30892z = typeface4;
            d0(true);
        }
    }

    public void c0() {
        d0(false);
    }

    public void d0(boolean z10) {
        if ((this.f30847a.getHeight() <= 0 || this.f30847a.getWidth() <= 0) && !z10) {
            return;
        }
        b(z10);
        c();
    }

    public void f0(@Nullable ColorStateList colorStateList) {
        if (this.f30875o == colorStateList && this.f30873n == colorStateList) {
            return;
        }
        this.f30875o = colorStateList;
        this.f30873n = colorStateList;
        c0();
    }

    public void g0(int i10, int i11, int i12, int i13) {
        if (e0(this.f30861h, i10, i11, i12, i13)) {
            return;
        }
        this.f30861h.set(i10, i11, i12, i13);
        this.U = true;
    }

    public void h0(@NonNull Rect rect) {
        g0(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void i0(int i10) {
        com.google.android.material.resources.e eVar = new com.google.android.material.resources.e(this.f30847a.getContext(), i10);
        if (eVar.i() != null) {
            this.f30875o = eVar.i();
        }
        if (eVar.j() != 0.0f) {
            this.f30871m = eVar.j();
        }
        ColorStateList colorStateList = eVar.f31344c;
        if (colorStateList != null) {
            this.f30852c0 = colorStateList;
        }
        this.f30848a0 = eVar.f31349h;
        this.f30850b0 = eVar.f31350i;
        this.Z = eVar.f31351j;
        this.f30862h0 = eVar.f31353l;
        com.google.android.material.resources.a aVar = this.E;
        if (aVar != null) {
            aVar.c();
        }
        this.E = new com.google.android.material.resources.a(new a(), eVar.e());
        eVar.h(this.f30847a.getContext(), this.E);
        c0();
    }

    public void k0(ColorStateList colorStateList) {
        if (this.f30875o != colorStateList) {
            this.f30875o = colorStateList;
            c0();
        }
    }

    public void l(@NonNull Canvas canvas) {
        int iSave = canvas.save();
        if (this.H == null || this.f30863i.width() <= 0.0f || this.f30863i.height() <= 0.0f) {
            return;
        }
        this.V.setTextSize(this.O);
        float f10 = this.f30887u;
        float f11 = this.f30888v;
        boolean z10 = this.K && this.L != null;
        float f12 = this.N;
        if (f12 != 1.0f && !this.f30851c) {
            canvas.scale(f12, f12, f10, f11);
        }
        if (z10) {
            canvas.drawBitmap(this.L, f10, f11, this.M);
            canvas.restoreToCount(iSave);
            return;
        }
        if (!Q0() || (this.f30851c && this.f30849b <= this.f30855e)) {
            canvas.translate(f10, f11);
            this.f30868k0.draw(canvas);
        } else {
            m(canvas, this.f30887u - this.f30868k0.getLineStart(0), f11);
        }
        canvas.restoreToCount(iSave);
    }

    public void l0(int i10) {
        if (this.f30867k != i10) {
            this.f30867k = i10;
            c0();
        }
    }

    public void m0(float f10) {
        if (this.f30871m != f10) {
            this.f30871m = f10;
            c0();
        }
    }

    public void n0(Typeface typeface) {
        if (o0(typeface)) {
            c0();
        }
    }

    public void o(@NonNull RectF rectF, int i10, int i11) {
        this.I = f(this.G);
        rectF.left = Math.max(s(i10, i11), this.f30861h.left);
        rectF.top = this.f30861h.top;
        rectF.right = Math.min(t(rectF, i10, i11), this.f30861h.right);
        rectF.bottom = this.f30861h.top + r();
    }

    public ColorStateList p() {
        return this.f30875o;
    }

    public void p0(int i10) {
        this.f30857f = i10;
    }

    public int q() {
        return this.f30867k;
    }

    public void q0(int i10, int i11, int i12, int i13) {
        if (e0(this.f30859g, i10, i11, i12, i13)) {
            return;
        }
        this.f30859g.set(i10, i11, i12, i13);
        this.U = true;
    }

    public float r() {
        Q(this.W);
        return -this.W.ascent();
    }

    public void r0(@NonNull Rect rect) {
        q0(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void s0(float f10) {
        if (this.f30864i0 != f10) {
            this.f30864i0 = f10;
            c0();
        }
    }

    public void t0(int i10) {
        com.google.android.material.resources.e eVar = new com.google.android.material.resources.e(this.f30847a.getContext(), i10);
        if (eVar.i() != null) {
            this.f30873n = eVar.i();
        }
        if (eVar.j() != 0.0f) {
            this.f30869l = eVar.j();
        }
        ColorStateList colorStateList = eVar.f31344c;
        if (colorStateList != null) {
            this.f30860g0 = colorStateList;
        }
        this.f30856e0 = eVar.f31349h;
        this.f30858f0 = eVar.f31350i;
        this.f30854d0 = eVar.f31351j;
        this.f30864i0 = eVar.f31353l;
        com.google.android.material.resources.a aVar = this.D;
        if (aVar != null) {
            aVar.c();
        }
        this.D = new com.google.android.material.resources.a(new C0603b(), eVar.e());
        eVar.h(this.f30847a.getContext(), this.D);
        c0();
    }

    public float u() {
        return this.f30871m;
    }

    public Typeface v() {
        Typeface typeface = this.f30889w;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public void v0(ColorStateList colorStateList) {
        if (this.f30873n != colorStateList) {
            this.f30873n = colorStateList;
            c0();
        }
    }

    @ColorInt
    public int w() {
        return x(this.f30875o);
    }

    public void w0(int i10) {
        if (this.f30865j != i10) {
            this.f30865j = i10;
            c0();
        }
    }

    public void x0(float f10) {
        if (this.f30869l != f10) {
            this.f30869l = f10;
            c0();
        }
    }

    public void y0(Typeface typeface) {
        if (z0(typeface)) {
            c0();
        }
    }

    public int z() {
        return this.f30877p;
    }
}
