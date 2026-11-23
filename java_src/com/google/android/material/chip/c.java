package com.google.android.material.chip;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.AnimatorRes;
import androidx.annotation.AttrRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.XmlRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.text.BidiFormatter;
import com.google.android.material.animation.i;
import com.google.android.material.color.s;
import com.google.android.material.drawable.g;
import com.google.android.material.internal.d0;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.p0;
import com.google.android.material.resources.d;
import com.google.android.material.resources.e;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.haima.hmcp.Constants;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class c extends MaterialShapeDrawable implements TintAwareDrawable, Drawable.Callback, d0.b {
    private static final boolean D2 = false;
    private static final String F2 = "http://schemas.android.com/apk/res-auto";
    private static final int G2 = 24;
    private boolean A2;
    private int B2;
    private boolean C2;

    @Nullable
    private ColorStateList F;

    @Nullable
    private ColorStateList G;
    private float H;
    private float I;

    @Nullable
    private ColorStateList J;
    private float K;

    @Nullable
    private ColorStateList L;
    private float L1;

    @Nullable
    private CharSequence M;
    private boolean N;

    @Nullable
    private Drawable O;

    @Nullable
    private ColorStateList P;
    private float Q;
    private boolean R;
    private float R1;
    private boolean S;

    @Nullable
    private Drawable T;

    @Nullable
    private Drawable U;

    @Nullable
    private ColorStateList V;
    private float V1;
    private float W;

    @Nullable
    private CharSequence X;
    private boolean Y;
    private boolean Z;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    @NonNull
    private final Context f29967a2;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    @Nullable
    private ColorStateList f29968b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private final Paint f29969b2;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    @Nullable
    private final Paint f29970c2;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    private final Paint.FontMetrics f29971d2;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    private final RectF f29972e2;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    @Nullable
    private i f29973f1;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    private final PointF f29974f2;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    private final Path f29975g2;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    @NonNull
    private final d0 f29976h2;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    @Nullable
    private i f29977i1;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    @ColorInt
    private int f29978i2;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    @ColorInt
    private int f29979j2;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    @ColorInt
    private int f29980k2;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private float f29981l1;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    @ColorInt
    private int f29982l2;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    @ColorInt
    private int f29983m2;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    @ColorInt
    private int f29984n2;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    private boolean f29985o2;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    @Nullable
    private Drawable f29986p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private float f29987p1;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    @ColorInt
    private int f29988p2;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private float f29989q1;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    private int f29990q2;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private float f29991r1;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    @Nullable
    private ColorFilter f29992r2;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    @Nullable
    private PorterDuffColorFilter f29993s2;

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    @Nullable
    private ColorStateList f29994t2;

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    @Nullable
    private PorterDuff.Mode f29995u2;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private float f29996v1;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    private int[] f29997v2;

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    private boolean f29998w2;

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    @Nullable
    private ColorStateList f29999x2;

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    @NonNull
    private WeakReference<a> f30000y2;

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    private TextUtils.TruncateAt f30001z2;
    private static final int[] E2 = {R.attr.state_enabled};
    private static final ShapeDrawable H2 = new ShapeDrawable(new OvalShape());

    public interface a {
        void a();
    }

    private c(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(context, attributeSet, i10, i11);
        this.I = -1.0f;
        this.f29969b2 = new Paint(1);
        this.f29971d2 = new Paint.FontMetrics();
        this.f29972e2 = new RectF();
        this.f29974f2 = new PointF();
        this.f29975g2 = new Path();
        this.f29990q2 = 255;
        this.f29995u2 = PorterDuff.Mode.SRC_IN;
        this.f30000y2 = new WeakReference<>(null);
        a0(context);
        this.f29967a2 = context;
        d0 d0Var = new d0(this);
        this.f29976h2 = d0Var;
        this.M = "";
        d0Var.g().density = context.getResources().getDisplayMetrics().density;
        this.f29970c2 = null;
        int[] iArr = E2;
        setState(iArr);
        g3(iArr);
        this.A2 = true;
        if (com.google.android.material.ripple.b.f31369a) {
            H2.setTint(-1);
        }
    }

    private float H1() {
        Drawable drawable = this.f29985o2 ? this.f29986p0 : this.O;
        float fCeil = this.Q;
        if (fCeil <= 0.0f && drawable != null) {
            fCeil = (float) Math.ceil(p0.i(this.f29967a2, 24));
            if (drawable.getIntrinsicHeight() <= fCeil) {
                return drawable.getIntrinsicHeight();
            }
        }
        return fCeil;
    }

    private float I1() {
        Drawable drawable = this.f29985o2 ? this.f29986p0 : this.O;
        float f10 = this.Q;
        return (f10 > 0.0f || drawable == null) ? f10 : drawable.getIntrinsicWidth();
    }

    private boolean M3() {
        return this.Z && this.f29986p0 != null && this.f29985o2;
    }

    private boolean N3() {
        return this.N && this.O != null;
    }

    private boolean O3() {
        return this.S && this.T != null;
    }

    private void P3(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void Q0(@Nullable Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.T) {
            if (drawable.isStateful()) {
                drawable.setState(E1());
            }
            DrawableCompat.setTintList(drawable, this.V);
            return;
        }
        Drawable drawable2 = this.O;
        if (drawable == drawable2 && this.R) {
            DrawableCompat.setTintList(drawable2, this.P);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    private void Q3() {
        this.f29999x2 = this.f29998w2 ? com.google.android.material.ripple.b.e(this.L) : null;
    }

    private void R0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (N3() || M3()) {
            float f10 = this.f29981l1 + this.f29987p1;
            float fI1 = I1();
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f11 = rect.left + f10;
                rectF.left = f11;
                rectF.right = f11 + fI1;
            } else {
                float f12 = rect.right - f10;
                rectF.right = f12;
                rectF.left = f12 - fI1;
            }
            float fH1 = H1();
            float fExactCenterY = rect.exactCenterY() - (fH1 / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fH1;
        }
    }

    @TargetApi(21)
    private void R3() {
        this.U = new RippleDrawable(com.google.android.material.ripple.b.e(O1()), this.T, H2);
    }

    private void T0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.set(rect);
        if (O3()) {
            float f10 = this.V1 + this.R1 + this.W + this.L1 + this.f29996v1;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = rect.right - f10;
            } else {
                rectF.left = rect.left + f10;
            }
        }
    }

    private void U0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (O3()) {
            float f10 = this.V1 + this.R1;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f11 = rect.right - f10;
                rectF.right = f11;
                rectF.left = f11 - this.W;
            } else {
                float f12 = rect.left + f10;
                rectF.left = f12;
                rectF.right = f12 + this.W;
            }
            float fExactCenterY = rect.exactCenterY();
            float f13 = this.W;
            float f14 = fExactCenterY - (f13 / 2.0f);
            rectF.top = f14;
            rectF.bottom = f14 + f13;
        }
    }

    @Nullable
    private ColorFilter U1() {
        ColorFilter colorFilter = this.f29992r2;
        return colorFilter != null ? colorFilter : this.f29993s2;
    }

    private void U2(@Nullable ColorStateList colorStateList) {
        if (this.F != colorStateList) {
            this.F = colorStateList;
            onStateChange(getState());
        }
    }

    private void V0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (O3()) {
            float f10 = this.V1 + this.R1 + this.W + this.L1 + this.f29996v1;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f11 = rect.right;
                rectF.right = f11;
                rectF.left = f11 - f10;
            } else {
                int i10 = rect.left;
                rectF.left = i10;
                rectF.right = i10 + f10;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private static boolean W1(@Nullable int[] iArr, @AttrRes int i10) {
        if (iArr == null) {
            return false;
        }
        for (int i11 : iArr) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    private void X0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (this.M != null) {
            float fS0 = this.f29981l1 + S0() + this.f29991r1;
            float fW0 = this.V1 + W0() + this.f29996v1;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.left = rect.left + fS0;
                rectF.right = rect.right - fW0;
            } else {
                rectF.left = rect.left + fW0;
                rectF.right = rect.right - fS0;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private float Y0() {
        this.f29976h2.g().getFontMetrics(this.f29971d2);
        Paint.FontMetrics fontMetrics = this.f29971d2;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private boolean a1() {
        return this.Z && this.f29986p0 != null && this.Y;
    }

    @NonNull
    public static c b1(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        c cVar = new c(context, attributeSet, i10, i11);
        cVar.j2(attributeSet, i10, i11);
        return cVar;
    }

    @NonNull
    public static c c1(@NonNull Context context, @XmlRes int i10) {
        AttributeSet attributeSetK = g.k(context, i10, "chip");
        int styleAttribute = attributeSetK.getStyleAttribute();
        if (styleAttribute == 0) {
            styleAttribute = com.google.android.material.R.style.Widget_MaterialComponents_Chip_Entry;
        }
        return b1(context, attributeSetK, com.google.android.material.R.attr.chipStandaloneStyle, styleAttribute);
    }

    private void d1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (M3()) {
            R0(rect, this.f29972e2);
            RectF rectF = this.f29972e2;
            float f10 = rectF.left;
            float f11 = rectF.top;
            canvas.translate(f10, f11);
            this.f29986p0.setBounds(0, 0, (int) this.f29972e2.width(), (int) this.f29972e2.height());
            this.f29986p0.draw(canvas);
            canvas.translate(-f10, -f11);
        }
    }

    private void e1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.C2) {
            return;
        }
        this.f29969b2.setColor(this.f29979j2);
        this.f29969b2.setStyle(Paint.Style.FILL);
        this.f29969b2.setColorFilter(U1());
        this.f29972e2.set(rect);
        canvas.drawRoundRect(this.f29972e2, p1(), p1(), this.f29969b2);
    }

    private void f1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (N3()) {
            R0(rect, this.f29972e2);
            RectF rectF = this.f29972e2;
            float f10 = rectF.left;
            float f11 = rectF.top;
            canvas.translate(f10, f11);
            this.O.setBounds(0, 0, (int) this.f29972e2.width(), (int) this.f29972e2.height());
            this.O.draw(canvas);
            canvas.translate(-f10, -f11);
        }
    }

    private void g1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.K <= 0.0f || this.C2) {
            return;
        }
        this.f29969b2.setColor(this.f29982l2);
        this.f29969b2.setStyle(Paint.Style.STROKE);
        if (!this.C2) {
            this.f29969b2.setColorFilter(U1());
        }
        RectF rectF = this.f29972e2;
        float f10 = rect.left;
        float f11 = this.K;
        rectF.set(f10 + (f11 / 2.0f), rect.top + (f11 / 2.0f), rect.right - (f11 / 2.0f), rect.bottom - (f11 / 2.0f));
        float f12 = this.I - (this.K / 2.0f);
        canvas.drawRoundRect(this.f29972e2, f12, f12, this.f29969b2);
    }

    private static boolean g2(@Nullable ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private void h1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.C2) {
            return;
        }
        this.f29969b2.setColor(this.f29978i2);
        this.f29969b2.setStyle(Paint.Style.FILL);
        this.f29972e2.set(rect);
        canvas.drawRoundRect(this.f29972e2, p1(), p1(), this.f29969b2);
    }

    private static boolean h2(@Nullable Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    private void i1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (O3()) {
            U0(rect, this.f29972e2);
            RectF rectF = this.f29972e2;
            float f10 = rectF.left;
            float f11 = rectF.top;
            canvas.translate(f10, f11);
            this.T.setBounds(0, 0, (int) this.f29972e2.width(), (int) this.f29972e2.height());
            if (com.google.android.material.ripple.b.f31369a) {
                this.U.setBounds(this.T.getBounds());
                this.U.jumpToCurrentState();
                this.U.draw(canvas);
            } else {
                this.T.draw(canvas);
            }
            canvas.translate(-f10, -f11);
        }
    }

    private static boolean i2(@Nullable e eVar) {
        return (eVar == null || eVar.i() == null || !eVar.i().isStateful()) ? false : true;
    }

    private void j1(@NonNull Canvas canvas, @NonNull Rect rect) {
        this.f29969b2.setColor(this.f29983m2);
        this.f29969b2.setStyle(Paint.Style.FILL);
        this.f29972e2.set(rect);
        if (!this.C2) {
            canvas.drawRoundRect(this.f29972e2, p1(), p1(), this.f29969b2);
        } else {
            h(new RectF(rect), this.f29975g2);
            super.r(canvas, this.f29969b2, this.f29975g2, w());
        }
    }

    private void j2(@Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        TypedArray typedArrayK = g0.k(this.f29967a2, attributeSet, com.google.android.material.R.styleable.Chip, i10, i11, new int[0]);
        this.C2 = typedArrayK.hasValue(com.google.android.material.R.styleable.Chip_shapeAppearance);
        U2(d.a(this.f29967a2, typedArrayK, com.google.android.material.R.styleable.Chip_chipSurfaceColor));
        w2(d.a(this.f29967a2, typedArrayK, com.google.android.material.R.styleable.Chip_chipBackgroundColor));
        M2(typedArrayK.getDimension(com.google.android.material.R.styleable.Chip_chipMinHeight, 0.0f));
        int i12 = com.google.android.material.R.styleable.Chip_chipCornerRadius;
        if (typedArrayK.hasValue(i12)) {
            y2(typedArrayK.getDimension(i12, 0.0f));
        }
        Q2(d.a(this.f29967a2, typedArrayK, com.google.android.material.R.styleable.Chip_chipStrokeColor));
        S2(typedArrayK.getDimension(com.google.android.material.R.styleable.Chip_chipStrokeWidth, 0.0f));
        u3(d.a(this.f29967a2, typedArrayK, com.google.android.material.R.styleable.Chip_rippleColor));
        z3(typedArrayK.getText(com.google.android.material.R.styleable.Chip_android_text));
        e eVarH = d.h(this.f29967a2, typedArrayK, com.google.android.material.R.styleable.Chip_android_textAppearance);
        eVarH.l(typedArrayK.getDimension(com.google.android.material.R.styleable.Chip_android_textSize, eVarH.j()));
        if (Build.VERSION.SDK_INT < 23) {
            eVarH.k(d.a(this.f29967a2, typedArrayK, com.google.android.material.R.styleable.Chip_android_textColor));
        }
        A3(eVarH);
        int i13 = typedArrayK.getInt(com.google.android.material.R.styleable.Chip_android_ellipsize, 0);
        if (i13 == 1) {
            m3(TextUtils.TruncateAt.START);
        } else if (i13 == 2) {
            m3(TextUtils.TruncateAt.MIDDLE);
        } else if (i13 == 3) {
            m3(TextUtils.TruncateAt.END);
        }
        L2(typedArrayK.getBoolean(com.google.android.material.R.styleable.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(F2, "chipIconEnabled") != null && attributeSet.getAttributeValue(F2, "chipIconVisible") == null) {
            L2(typedArrayK.getBoolean(com.google.android.material.R.styleable.Chip_chipIconEnabled, false));
        }
        C2(d.e(this.f29967a2, typedArrayK, com.google.android.material.R.styleable.Chip_chipIcon));
        int i14 = com.google.android.material.R.styleable.Chip_chipIconTint;
        if (typedArrayK.hasValue(i14)) {
            I2(d.a(this.f29967a2, typedArrayK, i14));
        }
        G2(typedArrayK.getDimension(com.google.android.material.R.styleable.Chip_chipIconSize, -1.0f));
        k3(typedArrayK.getBoolean(com.google.android.material.R.styleable.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(F2, "closeIconEnabled") != null && attributeSet.getAttributeValue(F2, "closeIconVisible") == null) {
            k3(typedArrayK.getBoolean(com.google.android.material.R.styleable.Chip_closeIconEnabled, false));
        }
        V2(d.e(this.f29967a2, typedArrayK, com.google.android.material.R.styleable.Chip_closeIcon));
        h3(d.a(this.f29967a2, typedArrayK, com.google.android.material.R.styleable.Chip_closeIconTint));
        c3(typedArrayK.getDimension(com.google.android.material.R.styleable.Chip_closeIconSize, 0.0f));
        m2(typedArrayK.getBoolean(com.google.android.material.R.styleable.Chip_android_checkable, false));
        v2(typedArrayK.getBoolean(com.google.android.material.R.styleable.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(F2, "checkedIconEnabled") != null && attributeSet.getAttributeValue(F2, "checkedIconVisible") == null) {
            v2(typedArrayK.getBoolean(com.google.android.material.R.styleable.Chip_checkedIconEnabled, false));
        }
        o2(d.e(this.f29967a2, typedArrayK, com.google.android.material.R.styleable.Chip_checkedIcon));
        int i15 = com.google.android.material.R.styleable.Chip_checkedIconTint;
        if (typedArrayK.hasValue(i15)) {
            s2(d.a(this.f29967a2, typedArrayK, i15));
        }
        x3(i.c(this.f29967a2, typedArrayK, com.google.android.material.R.styleable.Chip_showMotionSpec));
        n3(i.c(this.f29967a2, typedArrayK, com.google.android.material.R.styleable.Chip_hideMotionSpec));
        O2(typedArrayK.getDimension(com.google.android.material.R.styleable.Chip_chipStartPadding, 0.0f));
        r3(typedArrayK.getDimension(com.google.android.material.R.styleable.Chip_iconStartPadding, 0.0f));
        p3(typedArrayK.getDimension(com.google.android.material.R.styleable.Chip_iconEndPadding, 0.0f));
        I3(typedArrayK.getDimension(com.google.android.material.R.styleable.Chip_textStartPadding, 0.0f));
        E3(typedArrayK.getDimension(com.google.android.material.R.styleable.Chip_textEndPadding, 0.0f));
        e3(typedArrayK.getDimension(com.google.android.material.R.styleable.Chip_closeIconStartPadding, 0.0f));
        Z2(typedArrayK.getDimension(com.google.android.material.R.styleable.Chip_closeIconEndPadding, 0.0f));
        A2(typedArrayK.getDimension(com.google.android.material.R.styleable.Chip_chipEndPadding, 0.0f));
        t3(typedArrayK.getDimensionPixelSize(com.google.android.material.R.styleable.Chip_android_maxWidth, Integer.MAX_VALUE));
        typedArrayK.recycle();
    }

    private void k1(@NonNull Canvas canvas, @NonNull Rect rect) {
        Paint paint = this.f29970c2;
        if (paint != null) {
            paint.setColor(ColorUtils.setAlphaComponent(-16777216, 127));
            canvas.drawRect(rect, this.f29970c2);
            if (N3() || M3()) {
                R0(rect, this.f29972e2);
                canvas.drawRect(this.f29972e2, this.f29970c2);
            }
            if (this.M != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.f29970c2);
            }
            if (O3()) {
                U0(rect, this.f29972e2);
                canvas.drawRect(this.f29972e2, this.f29970c2);
            }
            this.f29970c2.setColor(ColorUtils.setAlphaComponent(SupportMenu.CATEGORY_MASK, 127));
            T0(rect, this.f29972e2);
            canvas.drawRect(this.f29972e2, this.f29970c2);
            this.f29970c2.setColor(ColorUtils.setAlphaComponent(Constants.LEVEL_SDK, 127));
            V0(rect, this.f29972e2);
            canvas.drawRect(this.f29972e2, this.f29970c2);
        }
    }

    private void l1(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.M != null) {
            Paint.Align alignZ0 = Z0(rect, this.f29974f2);
            X0(rect, this.f29972e2);
            if (this.f29976h2.e() != null) {
                this.f29976h2.g().drawableState = getState();
                this.f29976h2.o(this.f29967a2);
            }
            this.f29976h2.g().setTextAlign(alignZ0);
            int iSave = 0;
            boolean z10 = Math.round(this.f29976h2.h(Q1().toString())) > Math.round(this.f29972e2.width());
            if (z10) {
                iSave = canvas.save();
                canvas.clipRect(this.f29972e2);
            }
            CharSequence charSequenceEllipsize = this.M;
            if (z10 && this.f30001z2 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.f29976h2.g(), this.f29972e2.width(), this.f30001z2);
            }
            CharSequence charSequence = charSequenceEllipsize;
            int length = charSequence.length();
            PointF pointF = this.f29974f2;
            canvas.drawText(charSequence, 0, length, pointF.x, pointF.y, this.f29976h2.g());
            if (z10) {
                canvas.restoreToCount(iSave);
            }
        }
    }

    private boolean l2(@NonNull int[] iArr, @NonNull int[] iArr2) {
        boolean z10;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList = this.F;
        int iL = l(colorStateList != null ? colorStateList.getColorForState(iArr, this.f29978i2) : 0);
        boolean state = true;
        if (this.f29978i2 != iL) {
            this.f29978i2 = iL;
            zOnStateChange = true;
        }
        ColorStateList colorStateList2 = this.G;
        int iL2 = l(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f29979j2) : 0);
        if (this.f29979j2 != iL2) {
            this.f29979j2 = iL2;
            zOnStateChange = true;
        }
        int iS = s.s(iL, iL2);
        if ((this.f29980k2 != iS) | (z() == null)) {
            this.f29980k2 = iS;
            p0(ColorStateList.valueOf(iS));
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.J;
        int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f29982l2) : 0;
        if (this.f29982l2 != colorForState) {
            this.f29982l2 = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.f29999x2 == null || !com.google.android.material.ripple.b.f(iArr)) ? 0 : this.f29999x2.getColorForState(iArr, this.f29983m2);
        if (this.f29983m2 != colorForState2) {
            this.f29983m2 = colorForState2;
            if (this.f29998w2) {
                zOnStateChange = true;
            }
        }
        int colorForState3 = (this.f29976h2.e() == null || this.f29976h2.e().i() == null) ? 0 : this.f29976h2.e().i().getColorForState(iArr, this.f29984n2);
        if (this.f29984n2 != colorForState3) {
            this.f29984n2 = colorForState3;
            zOnStateChange = true;
        }
        boolean z11 = W1(getState(), R.attr.state_checked) && this.Y;
        if (this.f29985o2 == z11 || this.f29986p0 == null) {
            z10 = false;
        } else {
            float fS0 = S0();
            this.f29985o2 = z11;
            if (fS0 != S0()) {
                zOnStateChange = true;
                z10 = true;
            } else {
                zOnStateChange = true;
                z10 = false;
            }
        }
        ColorStateList colorStateList4 = this.f29994t2;
        int colorForState4 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.f29988p2) : 0;
        if (this.f29988p2 != colorForState4) {
            this.f29988p2 = colorForState4;
            this.f29993s2 = g.o(this, this.f29994t2, this.f29995u2);
        } else {
            state = zOnStateChange;
        }
        if (h2(this.O)) {
            state |= this.O.setState(iArr);
        }
        if (h2(this.f29986p0)) {
            state |= this.f29986p0.setState(iArr);
        }
        if (h2(this.T)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.T.setState(iArr3);
        }
        if (com.google.android.material.ripple.b.f31369a && h2(this.U)) {
            state |= this.U.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z10) {
            k2();
        }
        return state;
    }

    @Nullable
    public CharSequence A1() {
        return this.X;
    }

    public void A2(float f10) {
        if (this.V1 != f10) {
            this.V1 = f10;
            invalidateSelf();
            k2();
        }
    }

    public void A3(@Nullable e eVar) {
        this.f29976h2.l(eVar, this.f29967a2);
    }

    public float B1() {
        return this.R1;
    }

    public void B2(@DimenRes int i10) {
        A2(this.f29967a2.getResources().getDimension(i10));
    }

    public void B3(@StyleRes int i10) {
        A3(new e(this.f29967a2, i10));
    }

    public float C1() {
        return this.W;
    }

    public void C2(@Nullable Drawable drawable) {
        Drawable drawableR1 = r1();
        if (drawableR1 != drawable) {
            float fS0 = S0();
            this.O = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float fS1 = S0();
            P3(drawableR1);
            if (N3()) {
                Q0(this.O);
            }
            invalidateSelf();
            if (fS0 != fS1) {
                k2();
            }
        }
    }

    public void C3(@ColorInt int i10) {
        D3(ColorStateList.valueOf(i10));
    }

    public float D1() {
        return this.L1;
    }

    @Deprecated
    public void D2(boolean z10) {
        L2(z10);
    }

    public void D3(@Nullable ColorStateList colorStateList) {
        e eVarR1 = R1();
        if (eVarR1 != null) {
            eVarR1.k(colorStateList);
            invalidateSelf();
        }
    }

    @NonNull
    public int[] E1() {
        return this.f29997v2;
    }

    @Deprecated
    public void E2(@BoolRes int i10) {
        K2(i10);
    }

    public void E3(float f10) {
        if (this.f29996v1 != f10) {
            this.f29996v1 = f10;
            invalidateSelf();
            k2();
        }
    }

    @Nullable
    public ColorStateList F1() {
        return this.V;
    }

    public void F2(@DrawableRes int i10) {
        C2(AppCompatResources.getDrawable(this.f29967a2, i10));
    }

    public void F3(@DimenRes int i10) {
        E3(this.f29967a2.getResources().getDimension(i10));
    }

    public void G1(@NonNull RectF rectF) {
        V0(getBounds(), rectF);
    }

    public void G2(float f10) {
        if (this.Q != f10) {
            float fS0 = S0();
            this.Q = f10;
            float fS1 = S0();
            invalidateSelf();
            if (fS0 != fS1) {
                k2();
            }
        }
    }

    public void G3(@StringRes int i10) {
        z3(this.f29967a2.getResources().getString(i10));
    }

    public void H2(@DimenRes int i10) {
        G2(this.f29967a2.getResources().getDimension(i10));
    }

    public void H3(@Dimension float f10) {
        e eVarR1 = R1();
        if (eVarR1 != null) {
            eVarR1.l(f10);
            this.f29976h2.g().setTextSize(f10);
            a();
        }
    }

    public void I2(@Nullable ColorStateList colorStateList) {
        this.R = true;
        if (this.P != colorStateList) {
            this.P = colorStateList;
            if (N3()) {
                DrawableCompat.setTintList(this.O, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void I3(float f10) {
        if (this.f29991r1 != f10) {
            this.f29991r1 = f10;
            invalidateSelf();
            k2();
        }
    }

    public TextUtils.TruncateAt J1() {
        return this.f30001z2;
    }

    public void J2(@ColorRes int i10) {
        I2(AppCompatResources.getColorStateList(this.f29967a2, i10));
    }

    public void J3(@DimenRes int i10) {
        I3(this.f29967a2.getResources().getDimension(i10));
    }

    @Nullable
    public i K1() {
        return this.f29977i1;
    }

    public void K2(@BoolRes int i10) {
        L2(this.f29967a2.getResources().getBoolean(i10));
    }

    public void K3(boolean z10) {
        if (this.f29998w2 != z10) {
            this.f29998w2 = z10;
            Q3();
            onStateChange(getState());
        }
    }

    public float L1() {
        return this.f29989q1;
    }

    public void L2(boolean z10) {
        if (this.N != z10) {
            boolean zN3 = N3();
            this.N = z10;
            boolean zN4 = N3();
            if (zN3 != zN4) {
                if (zN4) {
                    Q0(this.O);
                } else {
                    P3(this.O);
                }
                invalidateSelf();
                k2();
            }
        }
    }

    boolean L3() {
        return this.A2;
    }

    public float M1() {
        return this.f29987p1;
    }

    public void M2(float f10) {
        if (this.H != f10) {
            this.H = f10;
            invalidateSelf();
            k2();
        }
    }

    @Px
    public int N1() {
        return this.B2;
    }

    public void N2(@DimenRes int i10) {
        M2(this.f29967a2.getResources().getDimension(i10));
    }

    @Nullable
    public ColorStateList O1() {
        return this.L;
    }

    public void O2(float f10) {
        if (this.f29981l1 != f10) {
            this.f29981l1 = f10;
            invalidateSelf();
            k2();
        }
    }

    @Nullable
    public i P1() {
        return this.f29973f1;
    }

    public void P2(@DimenRes int i10) {
        O2(this.f29967a2.getResources().getDimension(i10));
    }

    @Nullable
    public CharSequence Q1() {
        return this.M;
    }

    public void Q2(@Nullable ColorStateList colorStateList) {
        if (this.J != colorStateList) {
            this.J = colorStateList;
            if (this.C2) {
                G0(colorStateList);
            }
            onStateChange(getState());
        }
    }

    @Nullable
    public e R1() {
        return this.f29976h2.e();
    }

    public void R2(@ColorRes int i10) {
        Q2(AppCompatResources.getColorStateList(this.f29967a2, i10));
    }

    float S0() {
        if (N3() || M3()) {
            return this.f29987p1 + I1() + this.f29989q1;
        }
        return 0.0f;
    }

    public float S1() {
        return this.f29996v1;
    }

    public void S2(float f10) {
        if (this.K != f10) {
            this.K = f10;
            this.f29969b2.setStrokeWidth(f10);
            if (this.C2) {
                super.J0(f10);
            }
            invalidateSelf();
        }
    }

    public float T1() {
        return this.f29991r1;
    }

    public void T2(@DimenRes int i10) {
        S2(this.f29967a2.getResources().getDimension(i10));
    }

    public boolean V1() {
        return this.f29998w2;
    }

    public void V2(@Nullable Drawable drawable) {
        Drawable drawableZ1 = z1();
        if (drawableZ1 != drawable) {
            float fW0 = W0();
            this.T = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            if (com.google.android.material.ripple.b.f31369a) {
                R3();
            }
            float fW1 = W0();
            P3(drawableZ1);
            if (O3()) {
                Q0(this.T);
            }
            invalidateSelf();
            if (fW0 != fW1) {
                k2();
            }
        }
    }

    float W0() {
        if (O3()) {
            return this.L1 + this.W + this.R1;
        }
        return 0.0f;
    }

    public void W2(@Nullable CharSequence charSequence) {
        if (this.X != charSequence) {
            this.X = BidiFormatter.getInstance().unicodeWrap(charSequence);
            invalidateSelf();
        }
    }

    public boolean X1() {
        return this.Y;
    }

    @Deprecated
    public void X2(boolean z10) {
        k3(z10);
    }

    @Deprecated
    public boolean Y1() {
        return Z1();
    }

    @Deprecated
    public void Y2(@BoolRes int i10) {
        j3(i10);
    }

    @NonNull
    Paint.Align Z0(@NonNull Rect rect, @NonNull PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.M != null) {
            float fS0 = this.f29981l1 + S0() + this.f29991r1;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                pointF.x = rect.left + fS0;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - fS0;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - Y0();
        }
        return align;
    }

    public boolean Z1() {
        return this.Z;
    }

    public void Z2(float f10) {
        if (this.R1 != f10) {
            this.R1 = f10;
            invalidateSelf();
            if (O3()) {
                k2();
            }
        }
    }

    @Override // com.google.android.material.internal.d0.b
    public void a() {
        k2();
        invalidateSelf();
    }

    @Deprecated
    public boolean a2() {
        return b2();
    }

    public void a3(@DimenRes int i10) {
        Z2(this.f29967a2.getResources().getDimension(i10));
    }

    public boolean b2() {
        return this.N;
    }

    public void b3(@DrawableRes int i10) {
        V2(AppCompatResources.getDrawable(this.f29967a2, i10));
    }

    @Deprecated
    public boolean c2() {
        return e2();
    }

    public void c3(float f10) {
        if (this.W != f10) {
            this.W = f10;
            invalidateSelf();
            if (O3()) {
                k2();
            }
        }
    }

    public boolean d2() {
        return h2(this.T);
    }

    public void d3(@DimenRes int i10) {
        c3(this.f29967a2.getResources().getDimension(i10));
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i10 = this.f29990q2;
        int iA = i10 < 255 ? v4.a.a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i10) : 0;
        h1(canvas, bounds);
        e1(canvas, bounds);
        if (this.C2) {
            super.draw(canvas);
        }
        g1(canvas, bounds);
        j1(canvas, bounds);
        f1(canvas, bounds);
        d1(canvas, bounds);
        if (this.A2) {
            l1(canvas, bounds);
        }
        i1(canvas, bounds);
        k1(canvas, bounds);
        if (this.f29990q2 < 255) {
            canvas.restoreToCount(iA);
        }
    }

    public boolean e2() {
        return this.S;
    }

    public void e3(float f10) {
        if (this.L1 != f10) {
            this.L1 = f10;
            invalidateSelf();
            if (O3()) {
                k2();
            }
        }
    }

    boolean f2() {
        return this.C2;
    }

    public void f3(@DimenRes int i10) {
        e3(this.f29967a2.getResources().getDimension(i10));
    }

    public boolean g3(@NonNull int[] iArr) {
        if (Arrays.equals(this.f29997v2, iArr)) {
            return false;
        }
        this.f29997v2 = iArr;
        if (O3()) {
            return l2(getState(), iArr);
        }
        return false;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f29990q2;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.f29992r2;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.H;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.f29981l1 + S0() + this.f29991r1 + this.f29976h2.h(Q1().toString()) + this.f29996v1 + W0() + this.V1), this.B2);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.C2) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.I);
        } else {
            outline.setRoundRect(bounds, this.I);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    public void h3(@Nullable ColorStateList colorStateList) {
        if (this.V != colorStateList) {
            this.V = colorStateList;
            if (O3()) {
                DrawableCompat.setTintList(this.T, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void i3(@ColorRes int i10) {
        h3(AppCompatResources.getColorStateList(this.f29967a2, i10));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return g2(this.F) || g2(this.G) || g2(this.J) || (this.f29998w2 && g2(this.f29999x2)) || i2(this.f29976h2.e()) || a1() || h2(this.O) || h2(this.f29986p0) || g2(this.f29994t2);
    }

    public void j3(@BoolRes int i10) {
        k3(this.f29967a2.getResources().getBoolean(i10));
    }

    protected void k2() {
        a aVar = this.f30000y2.get();
        if (aVar != null) {
            aVar.a();
        }
    }

    public void k3(boolean z10) {
        if (this.S != z10) {
            boolean zO3 = O3();
            this.S = z10;
            boolean zO4 = O3();
            if (zO3 != zO4) {
                if (zO4) {
                    Q0(this.T);
                } else {
                    P3(this.T);
                }
                invalidateSelf();
                k2();
            }
        }
    }

    public void l3(@Nullable a aVar) {
        this.f30000y2 = new WeakReference<>(aVar);
    }

    @Nullable
    public Drawable m1() {
        return this.f29986p0;
    }

    public void m2(boolean z10) {
        if (this.Y != z10) {
            this.Y = z10;
            float fS0 = S0();
            if (!z10 && this.f29985o2) {
                this.f29985o2 = false;
            }
            float fS1 = S0();
            invalidateSelf();
            if (fS0 != fS1) {
                k2();
            }
        }
    }

    public void m3(@Nullable TextUtils.TruncateAt truncateAt) {
        this.f30001z2 = truncateAt;
    }

    @Nullable
    public ColorStateList n1() {
        return this.f29968b1;
    }

    public void n2(@BoolRes int i10) {
        m2(this.f29967a2.getResources().getBoolean(i10));
    }

    public void n3(@Nullable i iVar) {
        this.f29977i1 = iVar;
    }

    @Nullable
    public ColorStateList o1() {
        return this.G;
    }

    public void o2(@Nullable Drawable drawable) {
        if (this.f29986p0 != drawable) {
            float fS0 = S0();
            this.f29986p0 = drawable;
            float fS1 = S0();
            P3(this.f29986p0);
            Q0(this.f29986p0);
            invalidateSelf();
            if (fS0 != fS1) {
                k2();
            }
        }
    }

    public void o3(@AnimatorRes int i10) {
        n3(i.d(this.f29967a2, i10));
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i10) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i10);
        if (N3()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.O, i10);
        }
        if (M3()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f29986p0, i10);
        }
        if (O3()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.T, i10);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        boolean zOnLevelChange = super.onLevelChange(i10);
        if (N3()) {
            zOnLevelChange |= this.O.setLevel(i10);
        }
        if (M3()) {
            zOnLevelChange |= this.f29986p0.setLevel(i10);
        }
        if (O3()) {
            zOnLevelChange |= this.T.setLevel(i10);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.d0.b
    public boolean onStateChange(@NonNull int[] iArr) {
        if (this.C2) {
            super.onStateChange(iArr);
        }
        return l2(iArr, E1());
    }

    public float p1() {
        return this.C2 ? T() : this.I;
    }

    @Deprecated
    public void p2(boolean z10) {
        v2(z10);
    }

    public void p3(float f10) {
        if (this.f29989q1 != f10) {
            float fS0 = S0();
            this.f29989q1 = f10;
            float fS1 = S0();
            invalidateSelf();
            if (fS0 != fS1) {
                k2();
            }
        }
    }

    public float q1() {
        return this.V1;
    }

    @Deprecated
    public void q2(@BoolRes int i10) {
        v2(this.f29967a2.getResources().getBoolean(i10));
    }

    public void q3(@DimenRes int i10) {
        p3(this.f29967a2.getResources().getDimension(i10));
    }

    @Nullable
    public Drawable r1() {
        Drawable drawable = this.O;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    public void r2(@DrawableRes int i10) {
        o2(AppCompatResources.getDrawable(this.f29967a2, i10));
    }

    public void r3(float f10) {
        if (this.f29987p1 != f10) {
            float fS0 = S0();
            this.f29987p1 = f10;
            float fS1 = S0();
            invalidateSelf();
            if (fS0 != fS1) {
                k2();
            }
        }
    }

    public float s1() {
        return this.Q;
    }

    public void s2(@Nullable ColorStateList colorStateList) {
        if (this.f29968b1 != colorStateList) {
            this.f29968b1 = colorStateList;
            if (a1()) {
                DrawableCompat.setTintList(this.f29986p0, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void s3(@DimenRes int i10) {
        r3(this.f29967a2.getResources().getDimension(i10));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j10);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (this.f29990q2 != i10) {
            this.f29990q2 = i10;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.f29992r2 != colorFilter) {
            this.f29992r2 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        if (this.f29994t2 != colorStateList) {
            this.f29994t2 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.f29995u2 != mode) {
            this.f29995u2 = mode;
            this.f29993s2 = g.o(this, this.f29994t2, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        if (N3()) {
            visible |= this.O.setVisible(z10, z11);
        }
        if (M3()) {
            visible |= this.f29986p0.setVisible(z10, z11);
        }
        if (O3()) {
            visible |= this.T.setVisible(z10, z11);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Nullable
    public ColorStateList t1() {
        return this.P;
    }

    public void t2(@ColorRes int i10) {
        s2(AppCompatResources.getColorStateList(this.f29967a2, i10));
    }

    public void t3(@Px int i10) {
        this.B2 = i10;
    }

    public float u1() {
        return this.H;
    }

    public void u2(@BoolRes int i10) {
        v2(this.f29967a2.getResources().getBoolean(i10));
    }

    public void u3(@Nullable ColorStateList colorStateList) {
        if (this.L != colorStateList) {
            this.L = colorStateList;
            Q3();
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public float v1() {
        return this.f29981l1;
    }

    public void v2(boolean z10) {
        if (this.Z != z10) {
            boolean zM3 = M3();
            this.Z = z10;
            boolean zM4 = M3();
            if (zM3 != zM4) {
                if (zM4) {
                    Q0(this.f29986p0);
                } else {
                    P3(this.f29986p0);
                }
                invalidateSelf();
                k2();
            }
        }
    }

    public void v3(@ColorRes int i10) {
        u3(AppCompatResources.getColorStateList(this.f29967a2, i10));
    }

    @Nullable
    public ColorStateList w1() {
        return this.J;
    }

    public void w2(@Nullable ColorStateList colorStateList) {
        if (this.G != colorStateList) {
            this.G = colorStateList;
            onStateChange(getState());
        }
    }

    void w3(boolean z10) {
        this.A2 = z10;
    }

    public float x1() {
        return this.K;
    }

    public void x2(@ColorRes int i10) {
        w2(AppCompatResources.getColorStateList(this.f29967a2, i10));
    }

    public void x3(@Nullable i iVar) {
        this.f29973f1 = iVar;
    }

    public void y1(@NonNull RectF rectF) {
        T0(getBounds(), rectF);
    }

    @Deprecated
    public void y2(float f10) {
        if (this.I != f10) {
            this.I = f10;
            setShapeAppearanceModel(getShapeAppearanceModel().w(f10));
        }
    }

    public void y3(@AnimatorRes int i10) {
        x3(i.d(this.f29967a2, i10));
    }

    @Nullable
    public Drawable z1() {
        Drawable drawable = this.T;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    @Deprecated
    public void z2(@DimenRes int i10) {
        y2(this.f29967a2.getResources().getDimension(i10));
    }

    public void z3(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (TextUtils.equals(this.M, charSequence)) {
            return;
        }
        this.M = charSequence;
        this.f29976h2.n(true);
        invalidateSelf();
        k2();
    }
}
