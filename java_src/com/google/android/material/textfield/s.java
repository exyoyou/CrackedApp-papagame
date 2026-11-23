package com.google.android.material.textfield;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.p0;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"ViewConstructor"})
class s extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final TextInputLayout f32206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final FrameLayout f32207c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final CheckableImageButton f32208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ColorStateList f32209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PorterDuff.Mode f32210f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View.OnLongClickListener f32211g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final CheckableImageButton f32212h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final d f32213i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f32214j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final LinkedHashSet<TextInputLayout.g> f32215k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ColorStateList f32216l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private PorterDuff.Mode f32217m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f32218n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    private ImageView.ScaleType f32219o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View.OnLongClickListener f32220p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private CharSequence f32221q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    private final TextView f32222r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f32223s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private EditText f32224t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private final AccessibilityManager f32225u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private AccessibilityManagerCompat.TouchExplorationStateChangeListener f32226v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final TextWatcher f32227w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final TextInputLayout.f f32228x;

    class a extends com.google.android.material.internal.f0 {
        a() {
        }

        @Override // com.google.android.material.internal.f0, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            s.this.o().a(editable);
        }

        @Override // com.google.android.material.internal.f0, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            s.this.o().b(charSequence, i10, i11, i12);
        }
    }

    class b implements TextInputLayout.f {
        b() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(@NonNull TextInputLayout textInputLayout) {
            if (s.this.f32224t == textInputLayout.getEditText()) {
                return;
            }
            if (s.this.f32224t != null) {
                s.this.f32224t.removeTextChangedListener(s.this.f32227w);
                if (s.this.f32224t.getOnFocusChangeListener() == s.this.o().e()) {
                    s.this.f32224t.setOnFocusChangeListener(null);
                }
            }
            s.this.f32224t = textInputLayout.getEditText();
            if (s.this.f32224t != null) {
                s.this.f32224t.addTextChangedListener(s.this.f32227w);
            }
            s.this.o().n(s.this.f32224t);
            s sVar = s.this;
            sVar.m0(sVar.o());
        }
    }

    class c implements View.OnAttachStateChangeListener {
        c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            s.this.h();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            s.this.R();
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final SparseArray<t> f32232a = new SparseArray<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final s f32233b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f32234c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f32235d;

        d(s sVar, TintTypedArray tintTypedArray) {
            this.f32233b = sVar;
            this.f32234c = tintTypedArray.getResourceId(R.styleable.TextInputLayout_endIconDrawable, 0);
            this.f32235d = tintTypedArray.getResourceId(R.styleable.TextInputLayout_passwordToggleDrawable, 0);
        }

        private t b(int i10) {
            if (i10 == -1) {
                return new g(this.f32233b);
            }
            if (i10 == 0) {
                return new w(this.f32233b);
            }
            if (i10 == 1) {
                return new y(this.f32233b, this.f32235d);
            }
            if (i10 == 2) {
                return new f(this.f32233b);
            }
            if (i10 == 3) {
                return new q(this.f32233b);
            }
            throw new IllegalArgumentException("Invalid end icon mode: " + i10);
        }

        t c(int i10) {
            t tVar = this.f32232a.get(i10);
            if (tVar != null) {
                return tVar;
            }
            t tVarB = b(i10);
            this.f32232a.append(i10, tVarB);
            return tVarB;
        }
    }

    s(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        super(textInputLayout.getContext());
        this.f32214j = 0;
        this.f32215k = new LinkedHashSet<>();
        this.f32227w = new a();
        b bVar = new b();
        this.f32228x = bVar;
        this.f32225u = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f32206b = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.END));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f32207c = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        CheckableImageButton checkableImageButtonK = k(this, layoutInflaterFrom, R.id.text_input_error_icon);
        this.f32208d = checkableImageButtonK;
        CheckableImageButton checkableImageButtonK2 = k(frameLayout, layoutInflaterFrom, R.id.text_input_end_icon);
        this.f32212h = checkableImageButtonK2;
        this.f32213i = new d(this, tintTypedArray);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f32222r = appCompatTextView;
        E(tintTypedArray);
        D(tintTypedArray);
        F(tintTypedArray);
        frameLayout.addView(checkableImageButtonK2);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(checkableImageButtonK);
        textInputLayout.i(bVar);
        addOnAttachStateChangeListener(new c());
    }

    private void B0() {
        this.f32207c.setVisibility((this.f32212h.getVisibility() != 0 || J()) ? 8 : 0);
        setVisibility(I() || J() || ((this.f32221q == null || this.f32223s) ? '\b' : (char) 0) == 0 ? 0 : 8);
    }

    private void C0() {
        this.f32208d.setVisibility(u() != null && this.f32206b.T() && this.f32206b.v0() ? 0 : 8);
        B0();
        D0();
        if (C()) {
            return;
        }
        this.f32206b.G0();
    }

    private void D(TintTypedArray tintTypedArray) {
        int i10 = R.styleable.TextInputLayout_passwordToggleEnabled;
        if (!tintTypedArray.hasValue(i10)) {
            int i11 = R.styleable.TextInputLayout_endIconTint;
            if (tintTypedArray.hasValue(i11)) {
                this.f32216l = com.google.android.material.resources.d.b(getContext(), tintTypedArray, i11);
            }
            int i12 = R.styleable.TextInputLayout_endIconTintMode;
            if (tintTypedArray.hasValue(i12)) {
                this.f32217m = p0.u(tintTypedArray.getInt(i12, -1), null);
            }
        }
        int i13 = R.styleable.TextInputLayout_endIconMode;
        if (tintTypedArray.hasValue(i13)) {
            Z(tintTypedArray.getInt(i13, 0));
            int i14 = R.styleable.TextInputLayout_endIconContentDescription;
            if (tintTypedArray.hasValue(i14)) {
                V(tintTypedArray.getText(i14));
            }
            T(tintTypedArray.getBoolean(R.styleable.TextInputLayout_endIconCheckable, true));
        } else if (tintTypedArray.hasValue(i10)) {
            int i15 = R.styleable.TextInputLayout_passwordToggleTint;
            if (tintTypedArray.hasValue(i15)) {
                this.f32216l = com.google.android.material.resources.d.b(getContext(), tintTypedArray, i15);
            }
            int i16 = R.styleable.TextInputLayout_passwordToggleTintMode;
            if (tintTypedArray.hasValue(i16)) {
                this.f32217m = p0.u(tintTypedArray.getInt(i16, -1), null);
            }
            Z(tintTypedArray.getBoolean(i10, false) ? 1 : 0);
            V(tintTypedArray.getText(R.styleable.TextInputLayout_passwordToggleContentDescription));
        }
        Y(tintTypedArray.getDimensionPixelSize(R.styleable.TextInputLayout_endIconMinSize, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size)));
        int i17 = R.styleable.TextInputLayout_endIconScaleType;
        if (tintTypedArray.hasValue(i17)) {
            c0(u.b(tintTypedArray.getInt(i17, -1)));
        }
    }

    private void E(TintTypedArray tintTypedArray) {
        int i10 = R.styleable.TextInputLayout_errorIconTint;
        if (tintTypedArray.hasValue(i10)) {
            this.f32209e = com.google.android.material.resources.d.b(getContext(), tintTypedArray, i10);
        }
        int i11 = R.styleable.TextInputLayout_errorIconTintMode;
        if (tintTypedArray.hasValue(i11)) {
            this.f32210f = p0.u(tintTypedArray.getInt(i11, -1), null);
        }
        int i12 = R.styleable.TextInputLayout_errorIconDrawable;
        if (tintTypedArray.hasValue(i12)) {
            h0(tintTypedArray.getDrawable(i12));
        }
        this.f32208d.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        ViewCompat.setImportantForAccessibility(this.f32208d, 2);
        this.f32208d.setClickable(false);
        this.f32208d.setPressable(false);
        this.f32208d.setFocusable(false);
    }

    private void E0() {
        int visibility = this.f32222r.getVisibility();
        int i10 = (this.f32221q == null || this.f32223s) ? 8 : 0;
        if (visibility != i10) {
            o().q(i10 == 0);
        }
        B0();
        this.f32222r.setVisibility(i10);
        this.f32206b.G0();
    }

    private void F(TintTypedArray tintTypedArray) {
        this.f32222r.setVisibility(8);
        this.f32222r.setId(R.id.textinput_suffix_text);
        this.f32222r.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        ViewCompat.setAccessibilityLiveRegion(this.f32222r, 1);
        v0(tintTypedArray.getResourceId(R.styleable.TextInputLayout_suffixTextAppearance, 0));
        int i10 = R.styleable.TextInputLayout_suffixTextColor;
        if (tintTypedArray.hasValue(i10)) {
            w0(tintTypedArray.getColorStateList(i10));
        }
        u0(tintTypedArray.getText(R.styleable.TextInputLayout_suffixText));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        AccessibilityManager accessibilityManager;
        AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListener = this.f32226v;
        if (touchExplorationStateChangeListener == null || (accessibilityManager = this.f32225u) == null) {
            return;
        }
        AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(accessibilityManager, touchExplorationStateChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.f32226v == null || this.f32225u == null || !ViewCompat.isAttachedToWindow(this)) {
            return;
        }
        AccessibilityManagerCompat.addTouchExplorationStateChangeListener(this.f32225u, this.f32226v);
    }

    private CheckableImageButton k(ViewGroup viewGroup, LayoutInflater layoutInflater, @IdRes int i10) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R.layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i10);
        u.e(checkableImageButton);
        if (com.google.android.material.resources.d.j(getContext())) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        return checkableImageButton;
    }

    private void l(int i10) {
        Iterator<TextInputLayout.g> it2 = this.f32215k.iterator();
        while (it2.hasNext()) {
            it2.next().a(this.f32206b, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0(t tVar) {
        if (this.f32224t == null) {
            return;
        }
        if (tVar.e() != null) {
            this.f32224t.setOnFocusChangeListener(tVar.e());
        }
        if (tVar.g() != null) {
            this.f32212h.setOnFocusChangeListener(tVar.g());
        }
    }

    private int v(t tVar) {
        int i10 = this.f32213i.f32234c;
        return i10 == 0 ? tVar.d() : i10;
    }

    private void x0(@NonNull t tVar) {
        tVar.s();
        this.f32226v = tVar.h();
        h();
    }

    private void y0(@NonNull t tVar) {
        R();
        this.f32226v = null;
        tVar.u();
    }

    private void z0(boolean z10) {
        if (!z10 || p() == null) {
            u.a(this.f32206b, this.f32212h, this.f32216l, this.f32217m);
            return;
        }
        Drawable drawableMutate = DrawableCompat.wrap(p()).mutate();
        DrawableCompat.setTint(drawableMutate, this.f32206b.getErrorCurrentTextColors());
        this.f32212h.setImageDrawable(drawableMutate);
    }

    int A() {
        return ViewCompat.getPaddingEnd(this) + ViewCompat.getPaddingEnd(this.f32222r) + ((I() || J()) ? this.f32212h.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) this.f32212h.getLayoutParams()) : 0);
    }

    void A0(boolean z10) {
        if (this.f32214j == 1) {
            this.f32212h.performClick();
            if (z10) {
                this.f32212h.jumpDrawablesToCurrentState();
            }
        }
    }

    TextView B() {
        return this.f32222r;
    }

    boolean C() {
        return this.f32214j != 0;
    }

    void D0() {
        if (this.f32206b.f32109e == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f32222r, getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), this.f32206b.f32109e.getPaddingTop(), (I() || J()) ? 0 : ViewCompat.getPaddingEnd(this.f32206b.f32109e), this.f32206b.f32109e.getPaddingBottom());
    }

    boolean G() {
        return this.f32212h.a();
    }

    boolean H() {
        return C() && this.f32212h.isChecked();
    }

    boolean I() {
        return this.f32207c.getVisibility() == 0 && this.f32212h.getVisibility() == 0;
    }

    boolean J() {
        return this.f32208d.getVisibility() == 0;
    }

    boolean K() {
        return this.f32214j == 1;
    }

    void L(boolean z10) {
        this.f32223s = z10;
        E0();
    }

    void M() {
        C0();
        O();
        N();
        if (o().t()) {
            z0(this.f32206b.v0());
        }
    }

    void N() {
        u.d(this.f32206b, this.f32212h, this.f32216l);
    }

    void O() {
        u.d(this.f32206b, this.f32208d, this.f32209e);
    }

    void P(boolean z10) {
        boolean z11;
        boolean zIsActivated;
        boolean zIsChecked;
        t tVarO = o();
        boolean z12 = true;
        if (!tVarO.l() || (zIsChecked = this.f32212h.isChecked()) == tVarO.m()) {
            z11 = false;
        } else {
            this.f32212h.setChecked(!zIsChecked);
            z11 = true;
        }
        if (!tVarO.j() || (zIsActivated = this.f32212h.isActivated()) == tVarO.k()) {
            z12 = z11;
        } else {
            S(!zIsActivated);
        }
        if (z10 || z12) {
            N();
        }
    }

    void Q(@NonNull TextInputLayout.g gVar) {
        this.f32215k.remove(gVar);
    }

    void S(boolean z10) {
        this.f32212h.setActivated(z10);
    }

    void T(boolean z10) {
        this.f32212h.setCheckable(z10);
    }

    void U(@StringRes int i10) {
        V(i10 != 0 ? getResources().getText(i10) : null);
    }

    void V(@Nullable CharSequence charSequence) {
        if (n() != charSequence) {
            this.f32212h.setContentDescription(charSequence);
        }
    }

    void W(@DrawableRes int i10) {
        X(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    void X(@Nullable Drawable drawable) {
        this.f32212h.setImageDrawable(drawable);
        if (drawable != null) {
            u.a(this.f32206b, this.f32212h, this.f32216l, this.f32217m);
            N();
        }
    }

    void Y(@Px int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (i10 != this.f32218n) {
            this.f32218n = i10;
            u.g(this.f32212h, i10);
            u.g(this.f32208d, i10);
        }
    }

    void Z(int i10) {
        if (this.f32214j == i10) {
            return;
        }
        y0(o());
        int i11 = this.f32214j;
        this.f32214j = i10;
        l(i11);
        f0(i10 != 0);
        t tVarO = o();
        W(v(tVarO));
        U(tVarO.c());
        T(tVarO.l());
        if (!tVarO.i(this.f32206b.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + this.f32206b.getBoxBackgroundMode() + " is not supported by the end icon mode " + i10);
        }
        x0(tVarO);
        a0(tVarO.f());
        EditText editText = this.f32224t;
        if (editText != null) {
            tVarO.n(editText);
            m0(tVarO);
        }
        u.a(this.f32206b, this.f32212h, this.f32216l, this.f32217m);
        P(true);
    }

    void a0(@Nullable View.OnClickListener onClickListener) {
        u.h(this.f32212h, onClickListener, this.f32220p);
    }

    void b0(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f32220p = onLongClickListener;
        u.i(this.f32212h, onLongClickListener);
    }

    void c0(@NonNull ImageView.ScaleType scaleType) {
        this.f32219o = scaleType;
        u.j(this.f32212h, scaleType);
        u.j(this.f32208d, scaleType);
    }

    void d0(@Nullable ColorStateList colorStateList) {
        if (this.f32216l != colorStateList) {
            this.f32216l = colorStateList;
            u.a(this.f32206b, this.f32212h, colorStateList, this.f32217m);
        }
    }

    void e0(@Nullable PorterDuff.Mode mode) {
        if (this.f32217m != mode) {
            this.f32217m = mode;
            u.a(this.f32206b, this.f32212h, this.f32216l, mode);
        }
    }

    void f0(boolean z10) {
        if (I() != z10) {
            this.f32212h.setVisibility(z10 ? 0 : 8);
            B0();
            D0();
            this.f32206b.G0();
        }
    }

    void g(@NonNull TextInputLayout.g gVar) {
        this.f32215k.add(gVar);
    }

    void g0(@DrawableRes int i10) {
        h0(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
        O();
    }

    void h0(@Nullable Drawable drawable) {
        this.f32208d.setImageDrawable(drawable);
        C0();
        u.a(this.f32206b, this.f32208d, this.f32209e, this.f32210f);
    }

    void i() {
        this.f32212h.performClick();
        this.f32212h.jumpDrawablesToCurrentState();
    }

    void i0(@Nullable View.OnClickListener onClickListener) {
        u.h(this.f32208d, onClickListener, this.f32211g);
    }

    void j() {
        this.f32215k.clear();
    }

    void j0(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f32211g = onLongClickListener;
        u.i(this.f32208d, onLongClickListener);
    }

    void k0(@Nullable ColorStateList colorStateList) {
        if (this.f32209e != colorStateList) {
            this.f32209e = colorStateList;
            u.a(this.f32206b, this.f32208d, colorStateList, this.f32210f);
        }
    }

    void l0(@Nullable PorterDuff.Mode mode) {
        if (this.f32210f != mode) {
            this.f32210f = mode;
            u.a(this.f32206b, this.f32208d, this.f32209e, mode);
        }
    }

    @Nullable
    CheckableImageButton m() {
        if (J()) {
            return this.f32208d;
        }
        if (C() && I()) {
            return this.f32212h;
        }
        return null;
    }

    @Nullable
    CharSequence n() {
        return this.f32212h.getContentDescription();
    }

    void n0(@StringRes int i10) {
        o0(i10 != 0 ? getResources().getText(i10) : null);
    }

    t o() {
        return this.f32213i.c(this.f32214j);
    }

    void o0(@Nullable CharSequence charSequence) {
        this.f32212h.setContentDescription(charSequence);
    }

    @Nullable
    Drawable p() {
        return this.f32212h.getDrawable();
    }

    void p0(@DrawableRes int i10) {
        q0(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    int q() {
        return this.f32218n;
    }

    void q0(@Nullable Drawable drawable) {
        this.f32212h.setImageDrawable(drawable);
    }

    int r() {
        return this.f32214j;
    }

    void r0(boolean z10) {
        if (z10 && this.f32214j != 1) {
            Z(1);
        } else {
            if (z10) {
                return;
            }
            Z(0);
        }
    }

    @NonNull
    ImageView.ScaleType s() {
        return this.f32219o;
    }

    void s0(@Nullable ColorStateList colorStateList) {
        this.f32216l = colorStateList;
        u.a(this.f32206b, this.f32212h, colorStateList, this.f32217m);
    }

    CheckableImageButton t() {
        return this.f32212h;
    }

    void t0(@Nullable PorterDuff.Mode mode) {
        this.f32217m = mode;
        u.a(this.f32206b, this.f32212h, this.f32216l, mode);
    }

    Drawable u() {
        return this.f32208d.getDrawable();
    }

    void u0(@Nullable CharSequence charSequence) {
        this.f32221q = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f32222r.setText(charSequence);
        E0();
    }

    void v0(@StyleRes int i10) {
        TextViewCompat.setTextAppearance(this.f32222r, i10);
    }

    @Nullable
    CharSequence w() {
        return this.f32212h.getContentDescription();
    }

    void w0(@NonNull ColorStateList colorStateList) {
        this.f32222r.setTextColor(colorStateList);
    }

    @Nullable
    Drawable x() {
        return this.f32212h.getDrawable();
    }

    @Nullable
    CharSequence y() {
        return this.f32221q;
    }

    @Nullable
    ColorStateList z() {
        return this.f32222r.getTextColors();
    }
}
