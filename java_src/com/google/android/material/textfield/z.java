package com.google.android.material.textfield;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.p0;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"ViewConstructor"})
class z extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextInputLayout f32276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TextView f32277c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private CharSequence f32278d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CheckableImageButton f32279e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ColorStateList f32280f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PorterDuff.Mode f32281g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f32282h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private ImageView.ScaleType f32283i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View.OnLongClickListener f32284j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f32285k;

    z(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        super(textInputLayout.getContext());
        this.f32276b = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.START));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f32279e = checkableImageButton;
        u.e(checkableImageButton);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f32277c = appCompatTextView;
        j(tintTypedArray);
        i(tintTypedArray);
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    private void D() {
        int i10 = (this.f32278d == null || this.f32285k) ? 8 : 0;
        setVisibility(this.f32279e.getVisibility() == 0 || i10 == 0 ? 0 : 8);
        this.f32277c.setVisibility(i10);
        this.f32276b.G0();
    }

    private void i(TintTypedArray tintTypedArray) {
        this.f32277c.setVisibility(8);
        this.f32277c.setId(R.id.textinput_prefix_text);
        this.f32277c.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ViewCompat.setAccessibilityLiveRegion(this.f32277c, 1);
        p(tintTypedArray.getResourceId(R.styleable.TextInputLayout_prefixTextAppearance, 0));
        int i10 = R.styleable.TextInputLayout_prefixTextColor;
        if (tintTypedArray.hasValue(i10)) {
            q(tintTypedArray.getColorStateList(i10));
        }
        o(tintTypedArray.getText(R.styleable.TextInputLayout_prefixText));
    }

    private void j(TintTypedArray tintTypedArray) {
        if (com.google.android.material.resources.d.j(getContext())) {
            MarginLayoutParamsCompat.setMarginEnd((ViewGroup.MarginLayoutParams) this.f32279e.getLayoutParams(), 0);
        }
        v(null);
        w(null);
        int i10 = R.styleable.TextInputLayout_startIconTint;
        if (tintTypedArray.hasValue(i10)) {
            this.f32280f = com.google.android.material.resources.d.b(getContext(), tintTypedArray, i10);
        }
        int i11 = R.styleable.TextInputLayout_startIconTintMode;
        if (tintTypedArray.hasValue(i11)) {
            this.f32281g = p0.u(tintTypedArray.getInt(i11, -1), null);
        }
        int i12 = R.styleable.TextInputLayout_startIconDrawable;
        if (tintTypedArray.hasValue(i12)) {
            t(tintTypedArray.getDrawable(i12));
            int i13 = R.styleable.TextInputLayout_startIconContentDescription;
            if (tintTypedArray.hasValue(i13)) {
                s(tintTypedArray.getText(i13));
            }
            r(tintTypedArray.getBoolean(R.styleable.TextInputLayout_startIconCheckable, true));
        }
        u(tintTypedArray.getDimensionPixelSize(R.styleable.TextInputLayout_startIconMinSize, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size)));
        int i14 = R.styleable.TextInputLayout_startIconScaleType;
        if (tintTypedArray.hasValue(i14)) {
            x(u.b(tintTypedArray.getInt(i14, -1)));
        }
    }

    void A(boolean z10) {
        if (l() != z10) {
            this.f32279e.setVisibility(z10 ? 0 : 8);
            C();
            D();
        }
    }

    void B(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.f32277c.getVisibility() != 0) {
            accessibilityNodeInfoCompat.setTraversalAfter(this.f32279e);
        } else {
            accessibilityNodeInfoCompat.setLabelFor(this.f32277c);
            accessibilityNodeInfoCompat.setTraversalAfter(this.f32277c);
        }
    }

    void C() {
        EditText editText = this.f32276b.f32109e;
        if (editText == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f32277c, l() ? 0 : ViewCompat.getPaddingStart(editText), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    @Nullable
    CharSequence a() {
        return this.f32278d;
    }

    @Nullable
    ColorStateList b() {
        return this.f32277c.getTextColors();
    }

    int c() {
        return ViewCompat.getPaddingStart(this) + ViewCompat.getPaddingStart(this.f32277c) + (l() ? this.f32279e.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) this.f32279e.getLayoutParams()) : 0);
    }

    @NonNull
    TextView d() {
        return this.f32277c;
    }

    @Nullable
    CharSequence e() {
        return this.f32279e.getContentDescription();
    }

    @Nullable
    Drawable f() {
        return this.f32279e.getDrawable();
    }

    int g() {
        return this.f32282h;
    }

    @NonNull
    ImageView.ScaleType h() {
        return this.f32283i;
    }

    boolean k() {
        return this.f32279e.a();
    }

    boolean l() {
        return this.f32279e.getVisibility() == 0;
    }

    void m(boolean z10) {
        this.f32285k = z10;
        D();
    }

    void n() {
        u.d(this.f32276b, this.f32279e, this.f32280f);
    }

    void o(@Nullable CharSequence charSequence) {
        this.f32278d = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f32277c.setText(charSequence);
        D();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        C();
    }

    void p(@StyleRes int i10) {
        TextViewCompat.setTextAppearance(this.f32277c, i10);
    }

    void q(@NonNull ColorStateList colorStateList) {
        this.f32277c.setTextColor(colorStateList);
    }

    void r(boolean z10) {
        this.f32279e.setCheckable(z10);
    }

    void s(@Nullable CharSequence charSequence) {
        if (e() != charSequence) {
            this.f32279e.setContentDescription(charSequence);
        }
    }

    void t(@Nullable Drawable drawable) {
        this.f32279e.setImageDrawable(drawable);
        if (drawable != null) {
            u.a(this.f32276b, this.f32279e, this.f32280f, this.f32281g);
            A(true);
            n();
        } else {
            A(false);
            v(null);
            w(null);
            s(null);
        }
    }

    void u(@Px int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i10 != this.f32282h) {
            this.f32282h = i10;
            u.g(this.f32279e, i10);
        }
    }

    void v(@Nullable View.OnClickListener onClickListener) {
        u.h(this.f32279e, onClickListener, this.f32284j);
    }

    void w(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f32284j = onLongClickListener;
        u.i(this.f32279e, onLongClickListener);
    }

    void x(@NonNull ImageView.ScaleType scaleType) {
        this.f32283i = scaleType;
        u.j(this.f32279e, scaleType);
    }

    void y(@Nullable ColorStateList colorStateList) {
        if (this.f32280f != colorStateList) {
            this.f32280f = colorStateList;
            u.a(this.f32276b, this.f32279e, colorStateList, this.f32281g);
        }
    }

    void z(@Nullable PorterDuff.Mode mode) {
        if (this.f32281g != mode) {
            this.f32281g = mode;
            u.a(this.f32276b, this.f32279e, this.f32280f, mode);
        }
    }
}
