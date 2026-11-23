package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.color.s;
import com.google.android.material.internal.p0;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
class e {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @ChecksSdkIntAtLeast(api = 21)
    private static final boolean f29740u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final boolean f29741v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MaterialButton f29742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private n f29743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f29744c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f29745d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f29746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f29747f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29748g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f29749h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private PorterDuff.Mode f29750i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private ColorStateList f29751j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private ColorStateList f29752k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private ColorStateList f29753l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private Drawable f29754m;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f29758q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private LayerDrawable f29760s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f29761t;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f29755n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f29756o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f29757p = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f29759r = true;

    static {
        int i10 = Build.VERSION.SDK_INT;
        f29740u = true;
        f29741v = i10 <= 22;
    }

    e(MaterialButton materialButton, @NonNull n nVar) {
        this.f29742a = materialButton;
        this.f29743b = nVar;
    }

    private void G(@Dimension int i10, @Dimension int i11) {
        int paddingStart = ViewCompat.getPaddingStart(this.f29742a);
        int paddingTop = this.f29742a.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f29742a);
        int paddingBottom = this.f29742a.getPaddingBottom();
        int i12 = this.f29746e;
        int i13 = this.f29747f;
        this.f29747f = i11;
        this.f29746e = i10;
        if (!this.f29756o) {
            H();
        }
        ViewCompat.setPaddingRelative(this.f29742a, paddingStart, (paddingTop + i10) - i12, paddingEnd, (paddingBottom + i11) - i13);
    }

    private void H() {
        this.f29742a.setInternalBackground(a());
        MaterialShapeDrawable materialShapeDrawableF = f();
        if (materialShapeDrawableF != null) {
            materialShapeDrawableF.o0(this.f29761t);
            materialShapeDrawableF.setState(this.f29742a.getDrawableState());
        }
    }

    private void I(@NonNull n nVar) {
        if (f29741v && !this.f29756o) {
            int paddingStart = ViewCompat.getPaddingStart(this.f29742a);
            int paddingTop = this.f29742a.getPaddingTop();
            int paddingEnd = ViewCompat.getPaddingEnd(this.f29742a);
            int paddingBottom = this.f29742a.getPaddingBottom();
            H();
            ViewCompat.setPaddingRelative(this.f29742a, paddingStart, paddingTop, paddingEnd, paddingBottom);
            return;
        }
        if (f() != null) {
            f().setShapeAppearanceModel(nVar);
        }
        if (n() != null) {
            n().setShapeAppearanceModel(nVar);
        }
        if (e() != null) {
            e().setShapeAppearanceModel(nVar);
        }
    }

    private void K() {
        MaterialShapeDrawable materialShapeDrawableF = f();
        MaterialShapeDrawable materialShapeDrawableN = n();
        if (materialShapeDrawableF != null) {
            materialShapeDrawableF.F0(this.f29749h, this.f29752k);
            if (materialShapeDrawableN != null) {
                materialShapeDrawableN.E0(this.f29749h, this.f29755n ? s.d(this.f29742a, R.attr.colorSurface) : 0);
            }
        }
    }

    @NonNull
    private InsetDrawable L(Drawable drawable) {
        return new InsetDrawable(drawable, this.f29744c, this.f29746e, this.f29745d, this.f29747f);
    }

    private Drawable a() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f29743b);
        materialShapeDrawable.a0(this.f29742a.getContext());
        DrawableCompat.setTintList(materialShapeDrawable, this.f29751j);
        PorterDuff.Mode mode = this.f29750i;
        if (mode != null) {
            DrawableCompat.setTintMode(materialShapeDrawable, mode);
        }
        materialShapeDrawable.F0(this.f29749h, this.f29752k);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(this.f29743b);
        materialShapeDrawable2.setTint(0);
        materialShapeDrawable2.E0(this.f29749h, this.f29755n ? s.d(this.f29742a, R.attr.colorSurface) : 0);
        if (f29740u) {
            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(this.f29743b);
            this.f29754m = materialShapeDrawable3;
            DrawableCompat.setTint(materialShapeDrawable3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(com.google.android.material.ripple.b.e(this.f29753l), L(new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable})), this.f29754m);
            this.f29760s = rippleDrawable;
            return rippleDrawable;
        }
        com.google.android.material.ripple.a aVar = new com.google.android.material.ripple.a(this.f29743b);
        this.f29754m = aVar;
        DrawableCompat.setTintList(aVar, com.google.android.material.ripple.b.e(this.f29753l));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable, this.f29754m});
        this.f29760s = layerDrawable;
        return L(layerDrawable);
    }

    @Nullable
    private MaterialShapeDrawable g(boolean z10) {
        LayerDrawable layerDrawable = this.f29760s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f29740u ? (MaterialShapeDrawable) ((LayerDrawable) ((InsetDrawable) this.f29760s.getDrawable(0)).getDrawable()).getDrawable(!z10 ? 1 : 0) : (MaterialShapeDrawable) this.f29760s.getDrawable(!z10 ? 1 : 0);
    }

    @Nullable
    private MaterialShapeDrawable n() {
        return g(true);
    }

    void A(boolean z10) {
        this.f29755n = z10;
        K();
    }

    void B(@Nullable ColorStateList colorStateList) {
        if (this.f29752k != colorStateList) {
            this.f29752k = colorStateList;
            K();
        }
    }

    void C(int i10) {
        if (this.f29749h != i10) {
            this.f29749h = i10;
            K();
        }
    }

    void D(@Nullable ColorStateList colorStateList) {
        if (this.f29751j != colorStateList) {
            this.f29751j = colorStateList;
            if (f() != null) {
                DrawableCompat.setTintList(f(), this.f29751j);
            }
        }
    }

    void E(@Nullable PorterDuff.Mode mode) {
        if (this.f29750i != mode) {
            this.f29750i = mode;
            if (f() == null || this.f29750i == null) {
                return;
            }
            DrawableCompat.setTintMode(f(), this.f29750i);
        }
    }

    void F(boolean z10) {
        this.f29759r = z10;
    }

    void J(int i10, int i11) {
        Drawable drawable = this.f29754m;
        if (drawable != null) {
            drawable.setBounds(this.f29744c, this.f29746e, i11 - this.f29745d, i10 - this.f29747f);
        }
    }

    int b() {
        return this.f29748g;
    }

    public int c() {
        return this.f29747f;
    }

    public int d() {
        return this.f29746e;
    }

    @Nullable
    public r e() {
        LayerDrawable layerDrawable = this.f29760s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f29760s.getNumberOfLayers() > 2 ? (r) this.f29760s.getDrawable(2) : (r) this.f29760s.getDrawable(1);
    }

    @Nullable
    MaterialShapeDrawable f() {
        return g(false);
    }

    @Nullable
    ColorStateList h() {
        return this.f29753l;
    }

    @NonNull
    n i() {
        return this.f29743b;
    }

    @Nullable
    ColorStateList j() {
        return this.f29752k;
    }

    int k() {
        return this.f29749h;
    }

    ColorStateList l() {
        return this.f29751j;
    }

    PorterDuff.Mode m() {
        return this.f29750i;
    }

    boolean o() {
        return this.f29756o;
    }

    boolean p() {
        return this.f29758q;
    }

    boolean q() {
        return this.f29759r;
    }

    void r(@NonNull TypedArray typedArray) {
        this.f29744c = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetLeft, 0);
        this.f29745d = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetRight, 0);
        this.f29746e = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetTop, 0);
        this.f29747f = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetBottom, 0);
        int i10 = R.styleable.MaterialButton_cornerRadius;
        if (typedArray.hasValue(i10)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(i10, -1);
            this.f29748g = dimensionPixelSize;
            z(this.f29743b.w(dimensionPixelSize));
            this.f29757p = true;
        }
        this.f29749h = typedArray.getDimensionPixelSize(R.styleable.MaterialButton_strokeWidth, 0);
        this.f29750i = p0.u(typedArray.getInt(R.styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f29751j = com.google.android.material.resources.d.a(this.f29742a.getContext(), typedArray, R.styleable.MaterialButton_backgroundTint);
        this.f29752k = com.google.android.material.resources.d.a(this.f29742a.getContext(), typedArray, R.styleable.MaterialButton_strokeColor);
        this.f29753l = com.google.android.material.resources.d.a(this.f29742a.getContext(), typedArray, R.styleable.MaterialButton_rippleColor);
        this.f29758q = typedArray.getBoolean(R.styleable.MaterialButton_android_checkable, false);
        this.f29761t = typedArray.getDimensionPixelSize(R.styleable.MaterialButton_elevation, 0);
        this.f29759r = typedArray.getBoolean(R.styleable.MaterialButton_toggleCheckedStateOnClick, true);
        int paddingStart = ViewCompat.getPaddingStart(this.f29742a);
        int paddingTop = this.f29742a.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f29742a);
        int paddingBottom = this.f29742a.getPaddingBottom();
        if (typedArray.hasValue(R.styleable.MaterialButton_android_background)) {
            t();
        } else {
            H();
        }
        ViewCompat.setPaddingRelative(this.f29742a, paddingStart + this.f29744c, paddingTop + this.f29746e, paddingEnd + this.f29745d, paddingBottom + this.f29747f);
    }

    void s(int i10) {
        if (f() != null) {
            f().setTint(i10);
        }
    }

    void t() {
        this.f29756o = true;
        this.f29742a.setSupportBackgroundTintList(this.f29751j);
        this.f29742a.setSupportBackgroundTintMode(this.f29750i);
    }

    void u(boolean z10) {
        this.f29758q = z10;
    }

    void v(int i10) {
        if (this.f29757p && this.f29748g == i10) {
            return;
        }
        this.f29748g = i10;
        this.f29757p = true;
        z(this.f29743b.w(i10));
    }

    public void w(@Dimension int i10) {
        G(this.f29746e, i10);
    }

    public void x(@Dimension int i10) {
        G(i10, this.f29747f);
    }

    void y(@Nullable ColorStateList colorStateList) {
        if (this.f29753l != colorStateList) {
            this.f29753l = colorStateList;
            boolean z10 = f29740u;
            if (z10 && (this.f29742a.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f29742a.getBackground()).setColor(com.google.android.material.ripple.b.e(colorStateList));
            } else {
                if (z10 || !(this.f29742a.getBackground() instanceof com.google.android.material.ripple.a)) {
                    return;
                }
                ((com.google.android.material.ripple.a) this.f29742a.getBackground()).setTintList(com.google.android.material.ripple.b.e(colorStateList));
            }
        }
    }

    void z(@NonNull n nVar) {
        this.f29743b = nVar;
        I(nVar);
    }
}
