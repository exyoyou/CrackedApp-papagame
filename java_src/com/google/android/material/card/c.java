package com.google.android.material.card;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.color.s;
import com.google.android.material.motion.j;
import com.google.android.material.resources.d;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.e;
import com.google.android.material.shape.f;
import com.google.android.material.shape.m;
import com.google.android.material.shape.n;
import com.zyyoona7.wheel.WheelView;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
class c {
    private static final double A = Math.cos(Math.toRadians(45.0d));
    private static final float B = 1.5f;
    private static final int C = 2;
    private static final Drawable D;
    public static final int E = 300;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f29778z = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final MaterialCardView f29779a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final MaterialShapeDrawable f29781c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final MaterialShapeDrawable f29782d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Dimension
    private int f29783e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Dimension
    private int f29784f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29785g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Dimension
    private int f29786h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private Drawable f29787i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private Drawable f29788j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private ColorStateList f29789k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private ColorStateList f29790l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private n f29791m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private ColorStateList f29792n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private Drawable f29793o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private LayerDrawable f29794p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private MaterialShapeDrawable f29795q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private MaterialShapeDrawable f29796r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f29798t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private ValueAnimator f29799u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final TimeInterpolator f29800v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final int f29801w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int f29802x;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final Rect f29780b = new Rect();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f29797s = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f29803y = 0.0f;

    class a extends InsetDrawable {
        a(Drawable drawable, int i10, int i11, int i12, int i13) {
            super(drawable, i10, i11, i12, i13);
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumHeight() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumWidth() {
            return -1;
        }

        @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean getPadding(Rect rect) {
            return false;
        }
    }

    static {
        D = Build.VERSION.SDK_INT <= 28 ? new ColorDrawable() : null;
    }

    public c(@NonNull MaterialCardView materialCardView, AttributeSet attributeSet, int i10, @StyleRes int i11) {
        this.f29779a = materialCardView;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(materialCardView.getContext(), attributeSet, i10, i11);
        this.f29781c = materialShapeDrawable;
        materialShapeDrawable.a0(materialCardView.getContext());
        materialShapeDrawable.w0(WheelView.W2);
        n.b bVarV = materialShapeDrawable.getShapeAppearanceModel().v();
        TypedArray typedArrayObtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, R.styleable.CardView, i10, R.style.CardView);
        int i12 = R.styleable.CardView_cardCornerRadius;
        if (typedArrayObtainStyledAttributes.hasValue(i12)) {
            bVarV.o(typedArrayObtainStyledAttributes.getDimension(i12, 0.0f));
        }
        this.f29782d = new MaterialShapeDrawable();
        Z(bVarV.m());
        this.f29800v = j.g(materialCardView.getContext(), R.attr.motionEasingLinearInterpolator, com.google.android.material.animation.b.f29367a);
        this.f29801w = j.f(materialCardView.getContext(), R.attr.motionDurationShort2, 300);
        this.f29802x = j.f(materialCardView.getContext(), R.attr.motionDurationShort1, 300);
        typedArrayObtainStyledAttributes.recycle();
    }

    @NonNull
    private Drawable D(Drawable drawable) {
        int iCeil;
        int iCeil2;
        if (this.f29779a.getUseCompatPadding()) {
            iCeil2 = (int) Math.ceil(f());
            iCeil = (int) Math.ceil(e());
        } else {
            iCeil = 0;
            iCeil2 = 0;
        }
        return new a(drawable, iCeil, iCeil2, iCeil, iCeil2);
    }

    private boolean G() {
        return (this.f29785g & 80) == 80;
    }

    private boolean H() {
        return (this.f29785g & GravityCompat.END) == 8388613;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f29788j.setAlpha((int) (255.0f * fFloatValue));
        this.f29803y = fFloatValue;
    }

    private float c() {
        return Math.max(Math.max(d(this.f29791m.q(), this.f29781c.T()), d(this.f29791m.s(), this.f29781c.U())), Math.max(d(this.f29791m.k(), this.f29781c.v()), d(this.f29791m.i(), this.f29781c.u())));
    }

    private float d(e eVar, float f10) {
        if (eVar instanceof m) {
            return (float) ((1.0d - A) * ((double) f10));
        }
        if (eVar instanceof f) {
            return f10 / 2.0f;
        }
        return 0.0f;
    }

    private boolean d0() {
        return this.f29779a.getPreventCornerOverlap() && !g();
    }

    private float e() {
        return this.f29779a.getMaxCardElevation() + (e0() ? c() : 0.0f);
    }

    private boolean e0() {
        return this.f29779a.getPreventCornerOverlap() && g() && this.f29779a.getUseCompatPadding();
    }

    private float f() {
        return (this.f29779a.getMaxCardElevation() * B) + (e0() ? c() : 0.0f);
    }

    private boolean f0() {
        if (this.f29779a.isClickable()) {
            return true;
        }
        View view = this.f29779a;
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    private boolean g() {
        return this.f29781c.f0();
    }

    @NonNull
    private Drawable h() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        MaterialShapeDrawable materialShapeDrawableJ = j();
        this.f29795q = materialShapeDrawableJ;
        materialShapeDrawableJ.p0(this.f29789k);
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, this.f29795q);
        return stateListDrawable;
    }

    @NonNull
    private Drawable i() {
        if (!com.google.android.material.ripple.b.f31369a) {
            return h();
        }
        this.f29796r = j();
        return new RippleDrawable(this.f29789k, null, this.f29796r);
    }

    @NonNull
    private MaterialShapeDrawable j() {
        return new MaterialShapeDrawable(this.f29791m);
    }

    private void j0(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 23 || !(this.f29779a.getForeground() instanceof InsetDrawable)) {
            this.f29779a.setForeground(D(drawable));
        } else {
            ((InsetDrawable) this.f29779a.getForeground()).setDrawable(drawable);
        }
    }

    private void l0() {
        Drawable drawable;
        if (com.google.android.material.ripple.b.f31369a && (drawable = this.f29793o) != null) {
            ((RippleDrawable) drawable).setColor(this.f29789k);
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = this.f29795q;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.p0(this.f29789k);
        }
    }

    @NonNull
    private Drawable t() {
        if (this.f29793o == null) {
            this.f29793o = i();
        }
        if (this.f29794p == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f29793o, this.f29782d, this.f29788j});
            this.f29794p = layerDrawable;
            layerDrawable.setId(2, R.id.mtrl_card_checked_layer_id);
        }
        return this.f29794p;
    }

    private float v() {
        if (this.f29779a.getPreventCornerOverlap() && this.f29779a.getUseCompatPadding()) {
            return (float) ((1.0d - A) * ((double) this.f29779a.getCardViewRadius()));
        }
        return 0.0f;
    }

    @Nullable
    ColorStateList A() {
        return this.f29792n;
    }

    @Dimension
    int B() {
        return this.f29786h;
    }

    @NonNull
    Rect C() {
        return this.f29780b;
    }

    boolean E() {
        return this.f29797s;
    }

    boolean F() {
        return this.f29798t;
    }

    void J(@NonNull TypedArray typedArray) {
        ColorStateList colorStateListA = d.a(this.f29779a.getContext(), typedArray, R.styleable.MaterialCardView_strokeColor);
        this.f29792n = colorStateListA;
        if (colorStateListA == null) {
            this.f29792n = ColorStateList.valueOf(-1);
        }
        this.f29786h = typedArray.getDimensionPixelSize(R.styleable.MaterialCardView_strokeWidth, 0);
        boolean z10 = typedArray.getBoolean(R.styleable.MaterialCardView_android_checkable, false);
        this.f29798t = z10;
        this.f29779a.setLongClickable(z10);
        this.f29790l = d.a(this.f29779a.getContext(), typedArray, R.styleable.MaterialCardView_checkedIconTint);
        R(d.e(this.f29779a.getContext(), typedArray, R.styleable.MaterialCardView_checkedIcon));
        U(typedArray.getDimensionPixelSize(R.styleable.MaterialCardView_checkedIconSize, 0));
        T(typedArray.getDimensionPixelSize(R.styleable.MaterialCardView_checkedIconMargin, 0));
        this.f29785g = typedArray.getInteger(R.styleable.MaterialCardView_checkedIconGravity, 8388661);
        ColorStateList colorStateListA2 = d.a(this.f29779a.getContext(), typedArray, R.styleable.MaterialCardView_rippleColor);
        this.f29789k = colorStateListA2;
        if (colorStateListA2 == null) {
            this.f29789k = ColorStateList.valueOf(s.d(this.f29779a, R.attr.colorControlHighlight));
        }
        N(d.a(this.f29779a.getContext(), typedArray, R.styleable.MaterialCardView_cardForegroundColor));
        l0();
        i0();
        m0();
        this.f29779a.setBackgroundInternal(D(this.f29781c));
        Drawable drawableT = f0() ? t() : this.f29782d;
        this.f29787i = drawableT;
        this.f29779a.setForeground(D(drawableT));
    }

    void K(int i10, int i11) {
        int iCeil;
        int iCeil2;
        int i12;
        int i13;
        if (this.f29794p != null) {
            if (this.f29779a.getUseCompatPadding()) {
                iCeil = (int) Math.ceil(f() * 2.0f);
                iCeil2 = (int) Math.ceil(e() * 2.0f);
            } else {
                iCeil = 0;
                iCeil2 = 0;
            }
            int i14 = H() ? ((i10 - this.f29783e) - this.f29784f) - iCeil2 : this.f29783e;
            int i15 = G() ? this.f29783e : ((i11 - this.f29783e) - this.f29784f) - iCeil;
            int i16 = H() ? this.f29783e : ((i10 - this.f29783e) - this.f29784f) - iCeil2;
            int i17 = G() ? ((i11 - this.f29783e) - this.f29784f) - iCeil : this.f29783e;
            if (ViewCompat.getLayoutDirection(this.f29779a) == 1) {
                i13 = i16;
                i12 = i14;
            } else {
                i12 = i16;
                i13 = i14;
            }
            this.f29794p.setLayerInset(2, i13, i17, i12, i15);
        }
    }

    void L(boolean z10) {
        this.f29797s = z10;
    }

    void M(ColorStateList colorStateList) {
        this.f29781c.p0(colorStateList);
    }

    void N(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.f29782d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        materialShapeDrawable.p0(colorStateList);
    }

    void O(boolean z10) {
        this.f29798t = z10;
    }

    public void P(boolean z10) {
        Q(z10, false);
    }

    public void Q(boolean z10, boolean z11) {
        Drawable drawable = this.f29788j;
        if (drawable != null) {
            if (z11) {
                b(z10);
            } else {
                drawable.setAlpha(z10 ? 255 : 0);
                this.f29803y = z10 ? 1.0f : 0.0f;
            }
        }
    }

    void R(@Nullable Drawable drawable) {
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
            this.f29788j = drawableMutate;
            DrawableCompat.setTintList(drawableMutate, this.f29790l);
            P(this.f29779a.isChecked());
        } else {
            this.f29788j = D;
        }
        LayerDrawable layerDrawable = this.f29794p;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(R.id.mtrl_card_checked_layer_id, this.f29788j);
        }
    }

    void S(int i10) {
        this.f29785g = i10;
        K(this.f29779a.getMeasuredWidth(), this.f29779a.getMeasuredHeight());
    }

    void T(@Dimension int i10) {
        this.f29783e = i10;
    }

    void U(@Dimension int i10) {
        this.f29784f = i10;
    }

    void V(@Nullable ColorStateList colorStateList) {
        this.f29790l = colorStateList;
        Drawable drawable = this.f29788j;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
        }
    }

    void W(float f10) {
        Z(this.f29791m.w(f10));
        this.f29787i.invalidateSelf();
        if (e0() || d0()) {
            h0();
        }
        if (e0()) {
            k0();
        }
    }

    void X(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        this.f29781c.q0(f10);
        MaterialShapeDrawable materialShapeDrawable = this.f29782d;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.q0(f10);
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.f29796r;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.q0(f10);
        }
    }

    void Y(@Nullable ColorStateList colorStateList) {
        this.f29789k = colorStateList;
        l0();
    }

    void Z(@NonNull n nVar) {
        this.f29791m = nVar;
        this.f29781c.setShapeAppearanceModel(nVar);
        MaterialShapeDrawable materialShapeDrawable = this.f29781c;
        materialShapeDrawable.v0(!materialShapeDrawable.f0());
        MaterialShapeDrawable materialShapeDrawable2 = this.f29782d;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.setShapeAppearanceModel(nVar);
        }
        MaterialShapeDrawable materialShapeDrawable3 = this.f29796r;
        if (materialShapeDrawable3 != null) {
            materialShapeDrawable3.setShapeAppearanceModel(nVar);
        }
        MaterialShapeDrawable materialShapeDrawable4 = this.f29795q;
        if (materialShapeDrawable4 != null) {
            materialShapeDrawable4.setShapeAppearanceModel(nVar);
        }
    }

    void a0(ColorStateList colorStateList) {
        if (this.f29792n == colorStateList) {
            return;
        }
        this.f29792n = colorStateList;
        m0();
    }

    public void b(boolean z10) {
        float f10 = z10 ? 1.0f : 0.0f;
        float f11 = z10 ? 1.0f - this.f29803y : this.f29803y;
        ValueAnimator valueAnimator = this.f29799u;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f29799u = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f29803y, f10);
        this.f29799u = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.card.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f29777b.I(valueAnimator2);
            }
        });
        this.f29799u.setInterpolator(this.f29800v);
        this.f29799u.setDuration((long) ((z10 ? this.f29801w : this.f29802x) * f11));
        this.f29799u.start();
    }

    void b0(@Dimension int i10) {
        if (i10 == this.f29786h) {
            return;
        }
        this.f29786h = i10;
        m0();
    }

    void c0(int i10, int i11, int i12, int i13) {
        this.f29780b.set(i10, i11, i12, i13);
        h0();
    }

    void g0() {
        Drawable drawable = this.f29787i;
        Drawable drawableT = f0() ? t() : this.f29782d;
        this.f29787i = drawableT;
        if (drawable != drawableT) {
            j0(drawableT);
        }
    }

    void h0() {
        int iC = (int) ((d0() || e0() ? c() : 0.0f) - v());
        MaterialCardView materialCardView = this.f29779a;
        Rect rect = this.f29780b;
        materialCardView.i(rect.left + iC, rect.top + iC, rect.right + iC, rect.bottom + iC);
    }

    void i0() {
        this.f29781c.o0(this.f29779a.getCardElevation());
    }

    @RequiresApi(api = 23)
    void k() {
        Drawable drawable = this.f29793o;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i10 = bounds.bottom;
            this.f29793o.setBounds(bounds.left, bounds.top, bounds.right, i10 - 1);
            this.f29793o.setBounds(bounds.left, bounds.top, bounds.right, i10);
        }
    }

    void k0() {
        if (!E()) {
            this.f29779a.setBackgroundInternal(D(this.f29781c));
        }
        this.f29779a.setForeground(D(this.f29787i));
    }

    @NonNull
    MaterialShapeDrawable l() {
        return this.f29781c;
    }

    ColorStateList m() {
        return this.f29781c.z();
    }

    void m0() {
        this.f29782d.F0(this.f29786h, this.f29792n);
    }

    ColorStateList n() {
        return this.f29782d.z();
    }

    @Nullable
    Drawable o() {
        return this.f29788j;
    }

    int p() {
        return this.f29785g;
    }

    @Dimension
    int q() {
        return this.f29783e;
    }

    @Dimension
    int r() {
        return this.f29784f;
    }

    @Nullable
    ColorStateList s() {
        return this.f29790l;
    }

    float u() {
        return this.f29781c.T();
    }

    @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
    float w() {
        return this.f29781c.A();
    }

    @Nullable
    ColorStateList x() {
        return this.f29789k;
    }

    n y() {
        return this.f29791m;
    }

    @ColorInt
    int z() {
        ColorStateList colorStateList = this.f29792n;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }
}
