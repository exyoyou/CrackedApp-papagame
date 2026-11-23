package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.cardview.widget.CardView;
import com.google.android.material.color.utilities.d;
import com.google.android.material.internal.g0;
import com.google.android.material.shape.j;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
public class MaterialCardView extends CardView implements Checkable, r {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int[] f29762g = {R.attr.state_checkable};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int[] f29763h = {R.attr.state_checked};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int[] f29764i = {com.google.android.material.R.attr.state_dragged};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f29765j = com.google.android.material.R.style.Widget_MaterialComponents_CardView;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f29766k = "MaterialCardView";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f29767l = "androidx.cardview.widget.CardView";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f29768m = 8388659;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f29769n = 8388691;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f29770o = 8388661;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f29771p = 8388693;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final c f29772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f29773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f29774d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f29775e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f29776f;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CheckedIconGravity {
    }

    public interface a {
        void a(MaterialCardView materialCardView, boolean z10);
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }

    private void f() {
        if (Build.VERSION.SDK_INT > 26) {
            this.f29772b.k();
        }
    }

    @NonNull
    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f29772b.l().getBounds());
        return rectF;
    }

    public boolean g() {
        c cVar = this.f29772b;
        return cVar != null && cVar.F();
    }

    @Override // androidx.cardview.widget.CardView
    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return this.f29772b.m();
    }

    @NonNull
    public ColorStateList getCardForegroundColor() {
        return this.f29772b.n();
    }

    float getCardViewRadius() {
        return super.getRadius();
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.f29772b.o();
    }

    public int getCheckedIconGravity() {
        return this.f29772b.p();
    }

    @Dimension
    public int getCheckedIconMargin() {
        return this.f29772b.q();
    }

    @Dimension
    public int getCheckedIconSize() {
        return this.f29772b.r();
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.f29772b.s();
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.f29772b.C().bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.f29772b.C().left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.f29772b.C().right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.f29772b.C().top;
    }

    @FloatRange(from = 0.0d, to = d.f30216a)
    public float getProgress() {
        return this.f29772b.w();
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.f29772b.u();
    }

    public ColorStateList getRippleColor() {
        return this.f29772b.x();
    }

    @Override // com.google.android.material.shape.r
    @NonNull
    public n getShapeAppearanceModel() {
        return this.f29772b.y();
    }

    @ColorInt
    @Deprecated
    public int getStrokeColor() {
        return this.f29772b.z();
    }

    @Nullable
    public ColorStateList getStrokeColorStateList() {
        return this.f29772b.A();
    }

    @Dimension
    public int getStrokeWidth() {
        return this.f29772b.B();
    }

    public boolean h() {
        return this.f29775e;
    }

    void i(int i10, int i11, int i12, int i13) {
        super.setContentPadding(i10, i11, i12, i13);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f29774d;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f29772b.g0();
        j.f(this, this.f29772b.l());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 3);
        if (g()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f29762g);
        }
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f29763h);
        }
        if (h()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f29764i);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(f29767l);
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(f29767l);
        accessibilityNodeInfo.setCheckable(g());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.f29772b.K(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f29773c) {
            if (!this.f29772b.E()) {
                this.f29772b.L(true);
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@ColorInt int i10) {
        this.f29772b.M(ColorStateList.valueOf(i10));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f10) {
        super.setCardElevation(f10);
        this.f29772b.i0();
    }

    public void setCardForegroundColor(@Nullable ColorStateList colorStateList) {
        this.f29772b.N(colorStateList);
    }

    public void setCheckable(boolean z10) {
        this.f29772b.O(z10);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        if (this.f29774d != z10) {
            toggle();
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        this.f29772b.R(drawable);
    }

    public void setCheckedIconGravity(int i10) {
        if (this.f29772b.p() != i10) {
            this.f29772b.S(i10);
        }
    }

    public void setCheckedIconMargin(@Dimension int i10) {
        this.f29772b.T(i10);
    }

    public void setCheckedIconMarginResource(@DimenRes int i10) {
        if (i10 != -1) {
            this.f29772b.T(getResources().getDimensionPixelSize(i10));
        }
    }

    public void setCheckedIconResource(@DrawableRes int i10) {
        this.f29772b.R(AppCompatResources.getDrawable(getContext(), i10));
    }

    public void setCheckedIconSize(@Dimension int i10) {
        this.f29772b.U(i10);
    }

    public void setCheckedIconSizeResource(@DimenRes int i10) {
        if (i10 != 0) {
            this.f29772b.U(getResources().getDimensionPixelSize(i10));
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        this.f29772b.V(colorStateList);
    }

    @Override // android.view.View
    public void setClickable(boolean z10) {
        super.setClickable(z10);
        c cVar = this.f29772b;
        if (cVar != null) {
            cVar.g0();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setContentPadding(int i10, int i11, int i12, int i13) {
        this.f29772b.c0(i10, i11, i12, i13);
    }

    public void setDragged(boolean z10) {
        if (this.f29775e != z10) {
            this.f29775e = z10;
            refreshDrawableState();
            f();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f10) {
        super.setMaxCardElevation(f10);
        this.f29772b.k0();
    }

    public void setOnCheckedChangeListener(@Nullable a aVar) {
        this.f29776f = aVar;
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z10) {
        super.setPreventCornerOverlap(z10);
        this.f29772b.k0();
        this.f29772b.h0();
    }

    public void setProgress(@FloatRange(from = 0.0d, to = d.f30216a) float f10) {
        this.f29772b.X(f10);
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f10) {
        super.setRadius(f10);
        this.f29772b.W(f10);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        this.f29772b.Y(colorStateList);
    }

    public void setRippleColorResource(@ColorRes int i10) {
        this.f29772b.Y(AppCompatResources.getColorStateList(getContext(), i10));
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(@NonNull n nVar) {
        setClipToOutline(nVar.u(getBoundsAsRectF()));
        this.f29772b.Z(nVar);
    }

    public void setStrokeColor(@ColorInt int i10) {
        setStrokeColor(ColorStateList.valueOf(i10));
    }

    public void setStrokeWidth(@Dimension int i10) {
        this.f29772b.b0(i10);
        invalidate();
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z10) {
        super.setUseCompatPadding(z10);
        this.f29772b.k0();
        this.f29772b.h0();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (g() && isEnabled()) {
            this.f29774d = !this.f29774d;
            refreshDrawableState();
            f();
            this.f29772b.Q(this.f29774d, true);
            a aVar = this.f29776f;
            if (aVar != null) {
                aVar.a(this, this.f29774d);
            }
        }
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.materialCardViewStyle);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        this.f29772b.M(colorStateList);
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f29772b.a0(colorStateList);
        invalidate();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialCardView(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f29765j;
        super(a5.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f29774d = false;
        this.f29775e = false;
        this.f29773c = true;
        TypedArray typedArrayK = g0.k(getContext(), attributeSet, com.google.android.material.R.styleable.MaterialCardView, i10, i11, new int[0]);
        c cVar = new c(this, attributeSet, i10, i11);
        this.f29772b = cVar;
        cVar.M(super.getCardBackgroundColor());
        cVar.c0(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        cVar.J(typedArrayK);
        typedArrayK.recycle();
    }
}
