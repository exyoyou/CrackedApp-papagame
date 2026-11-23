package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.p0;
import com.google.android.material.shape.j;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes5.dex */
public class MaterialButton extends AppCompatButton implements Checkable, r {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f29695r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f29696s = 2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f29697t = 3;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f29698u = 4;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f29699v = 16;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f29700w = 32;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final String f29701x = "MaterialButton";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final e f29703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final LinkedHashSet<a> f29704c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private b f29705d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private PorterDuff.Mode f29706e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private ColorStateList f29707f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private Drawable f29708g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private String f29709h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Px
    private int f29710i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Px
    private int f29711j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Px
    private int f29712k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Px
    private int f29713l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f29714m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f29715n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f29716o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int[] f29693p = {R.attr.state_checkable};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int[] f29694q = {R.attr.state_checked};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f29702y = com.google.android.material.R.style.Widget_MaterialComponents_Button;

    @Retention(RetentionPolicy.SOURCE)
    public @interface IconGravity {
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f29717b;

        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void a(@NonNull Parcel parcel) {
            this.f29717b = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f29717b ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            a(parcel);
        }
    }

    public interface a {
        void a(MaterialButton materialButton, boolean z10);
    }

    interface b {
        void a(MaterialButton materialButton, boolean z10);
    }

    public MaterialButton(@NonNull Context context) {
        this(context, null);
    }

    private boolean d() {
        int i10 = this.f29716o;
        return i10 == 3 || i10 == 4;
    }

    private boolean e() {
        int i10 = this.f29716o;
        return i10 == 1 || i10 == 2;
    }

    private boolean f() {
        int i10 = this.f29716o;
        return i10 == 16 || i10 == 32;
    }

    private boolean g() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        if (textAlignment == 1) {
            return getGravityTextAlignment();
        }
        if (textAlignment == 6 || textAlignment == 3) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (gravity != 1) {
            return (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float fMax = 0.0f;
        for (int i10 = 0; i10 < lineCount; i10++) {
            fMax = Math.max(fMax, getLayout().getLineWidth(i10));
        }
        return (int) Math.ceil(fMax);
    }

    private boolean i() {
        e eVar = this.f29703b;
        return (eVar == null || eVar.o()) ? false : true;
    }

    private void k() {
        if (e()) {
            TextViewCompat.setCompoundDrawablesRelative(this, this.f29708g, null, null, null);
        } else if (d()) {
            TextViewCompat.setCompoundDrawablesRelative(this, null, null, this.f29708g, null);
        } else if (f()) {
            TextViewCompat.setCompoundDrawablesRelative(this, null, this.f29708g, null, null);
        }
    }

    private void l(boolean z10) {
        Drawable drawable = this.f29708g;
        boolean z11 = true;
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
            this.f29708g = drawableMutate;
            DrawableCompat.setTintList(drawableMutate, this.f29707f);
            PorterDuff.Mode mode = this.f29706e;
            if (mode != null) {
                DrawableCompat.setTintMode(this.f29708g, mode);
            }
            int intrinsicWidth = this.f29710i;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f29708g.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f29710i;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f29708g.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f29708g;
            int i10 = this.f29711j;
            int i11 = this.f29712k;
            drawable2.setBounds(i10, i11, intrinsicWidth + i10, intrinsicHeight + i11);
            this.f29708g.setVisible(true, z10);
        }
        if (z10) {
            k();
            return;
        }
        Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this);
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        if ((!e() || drawable3 == this.f29708g) && ((!d() || drawable5 == this.f29708g) && (!f() || drawable4 == this.f29708g))) {
            z11 = false;
        }
        if (z11) {
            k();
        }
    }

    private void m(int i10, int i11) {
        if (this.f29708g == null || getLayout() == null) {
            return;
        }
        if (!e() && !d()) {
            if (f()) {
                this.f29711j = 0;
                if (this.f29716o == 16) {
                    this.f29712k = 0;
                    l(false);
                    return;
                }
                int intrinsicHeight = this.f29710i;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.f29708g.getIntrinsicHeight();
                }
                int iMax = Math.max(0, (((((i11 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.f29713l) - getPaddingBottom()) / 2);
                if (this.f29712k != iMax) {
                    this.f29712k = iMax;
                    l(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f29712k = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i12 = this.f29716o;
        if (i12 == 1 || i12 == 3 || ((i12 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i12 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f29711j = 0;
            l(false);
            return;
        }
        int intrinsicWidth = this.f29710i;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f29708g.getIntrinsicWidth();
        }
        int textLayoutWidth = ((((i10 - getTextLayoutWidth()) - ViewCompat.getPaddingEnd(this)) - intrinsicWidth) - this.f29713l) - ViewCompat.getPaddingStart(this);
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        if (g() != (this.f29716o == 4)) {
            textLayoutWidth = -textLayoutWidth;
        }
        if (this.f29711j != textLayoutWidth) {
            this.f29711j = textLayoutWidth;
            l(false);
        }
    }

    public void a(@NonNull a aVar) {
        this.f29704c.add(aVar);
    }

    public void b() {
        this.f29704c.clear();
    }

    public boolean c() {
        e eVar = this.f29703b;
        return eVar != null && eVar.p();
    }

    @NonNull
    String getA11yClassName() {
        if (TextUtils.isEmpty(this.f29709h)) {
            return (c() ? CompoundButton.class : Button.class).getName();
        }
        return this.f29709h;
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Px
    public int getCornerRadius() {
        if (i()) {
            return this.f29703b.b();
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f29708g;
    }

    public int getIconGravity() {
        return this.f29716o;
    }

    @Px
    public int getIconPadding() {
        return this.f29713l;
    }

    @Px
    public int getIconSize() {
        return this.f29710i;
    }

    public ColorStateList getIconTint() {
        return this.f29707f;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f29706e;
    }

    @Dimension
    public int getInsetBottom() {
        return this.f29703b.c();
    }

    @Dimension
    public int getInsetTop() {
        return this.f29703b.d();
    }

    @Nullable
    public ColorStateList getRippleColor() {
        if (i()) {
            return this.f29703b.h();
        }
        return null;
    }

    @Override // com.google.android.material.shape.r
    @NonNull
    public n getShapeAppearanceModel() {
        if (i()) {
            return this.f29703b.i();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (i()) {
            return this.f29703b.j();
        }
        return null;
    }

    @Px
    public int getStrokeWidth() {
        if (i()) {
            return this.f29703b.k();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        return i() ? this.f29703b.l() : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return i() ? this.f29703b.m() : super.getSupportBackgroundTintMode();
    }

    public boolean h() {
        return this.f29703b.q();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f29714m;
    }

    public void j(@NonNull a aVar) {
        this.f29704c.remove(aVar);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (i()) {
            j.f(this, this.f29703b.f());
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (c()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f29693p);
        }
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f29694q);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(c());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        e eVar;
        super.onLayout(z10, i10, i11, i12, i13);
        if (Build.VERSION.SDK_INT == 21 && (eVar = this.f29703b) != null) {
            eVar.J(i13 - i11, i12 - i10);
        }
        m(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.f29717b);
    }

    @Override // android.widget.TextView, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f29717b = this.f29714m;
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        m(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public boolean performClick() {
        if (this.f29703b.q()) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f29708g != null) {
            if (this.f29708g.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    void setA11yClassName(@Nullable String str) {
        this.f29709h = str;
    }

    @Override // android.view.View
    public void setBackground(@NonNull Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i10) {
        if (i()) {
            this.f29703b.s(i10);
        } else {
            super.setBackgroundColor(i10);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(@NonNull Drawable drawable) {
        if (!i()) {
            super.setBackgroundDrawable(drawable);
        } else if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
        } else {
            this.f29703b.t();
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(@DrawableRes int i10) {
        setBackgroundDrawable(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z10) {
        if (i()) {
            this.f29703b.u(z10);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        if (c() && isEnabled() && this.f29714m != z10) {
            this.f29714m = z10;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                ((MaterialButtonToggleGroup) getParent()).p(this, this.f29714m);
            }
            if (this.f29715n) {
                return;
            }
            this.f29715n = true;
            Iterator<a> it2 = this.f29704c.iterator();
            while (it2.hasNext()) {
                it2.next().a(this, this.f29714m);
            }
            this.f29715n = false;
        }
    }

    public void setCornerRadius(@Px int i10) {
        if (i()) {
            this.f29703b.v(i10);
        }
    }

    public void setCornerRadiusResource(@DimenRes int i10) {
        if (i()) {
            setCornerRadius(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f10) {
        super.setElevation(f10);
        if (i()) {
            this.f29703b.f().o0(f10);
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (this.f29708g != drawable) {
            this.f29708g = drawable;
            l(true);
            m(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i10) {
        if (this.f29716o != i10) {
            this.f29716o = i10;
            m(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(@Px int i10) {
        if (this.f29713l != i10) {
            this.f29713l = i10;
            setCompoundDrawablePadding(i10);
        }
    }

    public void setIconResource(@DrawableRes int i10) {
        setIcon(i10 != 0 ? AppCompatResources.getDrawable(getContext(), i10) : null);
    }

    public void setIconSize(@Px int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f29710i != i10) {
            this.f29710i = i10;
            l(true);
        }
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f29707f != colorStateList) {
            this.f29707f = colorStateList;
            l(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f29706e != mode) {
            this.f29706e = mode;
            l(false);
        }
    }

    public void setIconTintResource(@ColorRes int i10) {
        setIconTint(AppCompatResources.getColorStateList(getContext(), i10));
    }

    public void setInsetBottom(@Dimension int i10) {
        this.f29703b.w(i10);
    }

    public void setInsetTop(@Dimension int i10) {
        this.f29703b.x(i10);
    }

    void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    void setOnPressedChangeListenerInternal(@Nullable b bVar) {
        this.f29705d = bVar;
    }

    @Override // android.view.View
    public void setPressed(boolean z10) {
        b bVar = this.f29705d;
        if (bVar != null) {
            bVar.a(this, z10);
        }
        super.setPressed(z10);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (i()) {
            this.f29703b.y(colorStateList);
        }
    }

    public void setRippleColorResource(@ColorRes int i10) {
        if (i()) {
            setRippleColor(AppCompatResources.getColorStateList(getContext(), i10));
        }
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(@NonNull n nVar) {
        if (!i()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f29703b.z(nVar);
    }

    void setShouldDrawSurfaceColorStroke(boolean z10) {
        if (i()) {
            this.f29703b.A(z10);
        }
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (i()) {
            this.f29703b.B(colorStateList);
        }
    }

    public void setStrokeColorResource(@ColorRes int i10) {
        if (i()) {
            setStrokeColor(AppCompatResources.getColorStateList(getContext(), i10));
        }
    }

    public void setStrokeWidth(@Px int i10) {
        if (i()) {
            this.f29703b.C(i10);
        }
    }

    public void setStrokeWidthResource(@DimenRes int i10) {
        if (i()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (i()) {
            this.f29703b.D(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (i()) {
            this.f29703b.E(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // android.view.View
    @RequiresApi(17)
    public void setTextAlignment(int i10) {
        super.setTextAlignment(i10);
        m(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z10) {
        this.f29703b.F(z10);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f29714m);
    }

    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.materialButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f29702y;
        super(a5.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f29704c = new LinkedHashSet<>();
        this.f29714m = false;
        this.f29715n = false;
        Context context2 = getContext();
        TypedArray typedArrayK = g0.k(context2, attributeSet, com.google.android.material.R.styleable.MaterialButton, i10, i11, new int[0]);
        this.f29713l = typedArrayK.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialButton_iconPadding, 0);
        this.f29706e = p0.u(typedArrayK.getInt(com.google.android.material.R.styleable.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f29707f = com.google.android.material.resources.d.a(getContext(), typedArrayK, com.google.android.material.R.styleable.MaterialButton_iconTint);
        this.f29708g = com.google.android.material.resources.d.e(getContext(), typedArrayK, com.google.android.material.R.styleable.MaterialButton_icon);
        this.f29716o = typedArrayK.getInteger(com.google.android.material.R.styleable.MaterialButton_iconGravity, 1);
        this.f29710i = typedArrayK.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialButton_iconSize, 0);
        e eVar = new e(this, n.e(context2, attributeSet, i10, i11).m());
        this.f29703b = eVar;
        eVar.r(typedArrayK);
        typedArrayK.recycle();
        setCompoundDrawablePadding(this.f29713l);
        l(this.f29708g != null);
    }
}
