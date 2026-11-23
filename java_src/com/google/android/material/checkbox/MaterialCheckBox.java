package com.google.android.material.checkbox;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import com.google.android.material.R;
import com.google.android.material.color.s;
import com.google.android.material.drawable.g;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.p0;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes5.dex */
public class MaterialCheckBox extends AppCompatCheckBox {
    private static final int[] A;
    private static final int[][] B;

    @SuppressLint({"DiscouragedApi"})
    private static final int C;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f29899w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f29900x = 1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f29901y = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinkedHashSet<c> f29903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final LinkedHashSet<b> f29904c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private ColorStateList f29905d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f29906e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f29907f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f29908g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private CharSequence f29909h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private Drawable f29910i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private Drawable f29911j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f29912k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    ColorStateList f29913l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    ColorStateList f29914m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    private PorterDuff.Mode f29915n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f29916o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int[] f29917p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f29918q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private CharSequence f29919r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private CompoundButton.OnCheckedChangeListener f29920s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private final AnimatedVectorDrawableCompat f29921t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Animatable2Compat.AnimationCallback f29922u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f29898v = R.style.Widget_MaterialComponents_CompoundButton_CheckBox;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int[] f29902z = {R.attr.state_indeterminate};

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface CheckedState {
    }

    static class SavedState extends View.BaseSavedState {

        @NonNull
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f29923b;

        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @NonNull
        private String b() {
            int i10 = this.f29923b;
            if (i10 != 1) {
                return i10 != 2 ? "unchecked" : "indeterminate";
            }
            return "checked";
        }

        @NonNull
        public String toString() {
            return "MaterialCheckBox.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " CheckedState=" + b() + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeValue(Integer.valueOf(this.f29923b));
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f29923b = ((Integer) parcel.readValue(getClass().getClassLoader())).intValue();
        }
    }

    class a extends Animatable2Compat.AnimationCallback {
        a() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            super.onAnimationEnd(drawable);
            ColorStateList colorStateList = MaterialCheckBox.this.f29913l;
            if (colorStateList != null) {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationStart(Drawable drawable) {
            super.onAnimationStart(drawable);
            MaterialCheckBox materialCheckBox = MaterialCheckBox.this;
            ColorStateList colorStateList = materialCheckBox.f29913l;
            if (colorStateList != null) {
                DrawableCompat.setTint(drawable, colorStateList.getColorForState(materialCheckBox.f29917p, MaterialCheckBox.this.f29913l.getDefaultColor()));
            }
        }
    }

    public interface b {
        void a(@NonNull MaterialCheckBox materialCheckBox, int i10);
    }

    public interface c {
        void a(@NonNull MaterialCheckBox materialCheckBox, boolean z10);
    }

    static {
        int i10 = R.attr.state_error;
        A = new int[]{i10};
        B = new int[][]{new int[]{android.R.attr.state_enabled, i10}, new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};
        C = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");
    }

    public MaterialCheckBox(Context context) {
        this(context, null);
    }

    @NonNull
    private String getButtonStateDescription() {
        int i10 = this.f29916o;
        if (i10 == 1) {
            return getResources().getString(R.string.mtrl_checkbox_state_description_checked);
        }
        return i10 == 0 ? getResources().getString(R.string.mtrl_checkbox_state_description_unchecked) : getResources().getString(R.string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f29905d == null) {
            int[][] iArr = B;
            int[] iArr2 = new int[iArr.length];
            int iD = s.d(this, R.attr.colorControlActivated);
            int iD2 = s.d(this, R.attr.colorError);
            int iD3 = s.d(this, R.attr.colorSurface);
            int iD4 = s.d(this, R.attr.colorOnSurface);
            iArr2[0] = s.t(iD3, iD2, 1.0f);
            iArr2[1] = s.t(iD3, iD, 1.0f);
            iArr2[2] = s.t(iD3, iD4, 0.54f);
            iArr2[3] = s.t(iD3, iD4, 0.38f);
            iArr2[4] = s.t(iD3, iD4, 0.38f);
            this.f29905d = new ColorStateList(iArr, iArr2);
        }
        return this.f29905d;
    }

    @Nullable
    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.f29913l;
        if (colorStateList != null) {
            return colorStateList;
        }
        return super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    private boolean h(TintTypedArray tintTypedArray) {
        return tintTypedArray.getResourceId(R.styleable.MaterialCheckBox_android_button, 0) == C && tintTypedArray.getResourceId(R.styleable.MaterialCheckBox_buttonCompat, 0) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        this.f29911j.jumpToCurrentState();
    }

    private void m() {
        this.f29910i = g.d(this.f29910i, this.f29913l, CompoundButtonCompat.getButtonTintMode(this));
        this.f29911j = g.d(this.f29911j, this.f29914m, this.f29915n);
        q();
        r();
        super.setButtonDrawable(g.a(this.f29910i, this.f29911j));
        refreshDrawableState();
    }

    private void p() {
        if (Build.VERSION.SDK_INT < 30 || this.f29919r != null) {
            return;
        }
        super.setStateDescription(getButtonStateDescription());
    }

    private void q() {
        AnimatedVectorDrawableCompat animatedVectorDrawableCompat;
        if (this.f29912k) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat2 = this.f29921t;
            if (animatedVectorDrawableCompat2 != null) {
                animatedVectorDrawableCompat2.unregisterAnimationCallback(this.f29922u);
                this.f29921t.registerAnimationCallback(this.f29922u);
            }
            if (Build.VERSION.SDK_INT >= 24) {
                Drawable drawable = this.f29910i;
                if (!(drawable instanceof AnimatedStateListDrawable) || (animatedVectorDrawableCompat = this.f29921t) == null) {
                    return;
                }
                int i10 = R.id.checked;
                int i11 = R.id.unchecked;
                ((AnimatedStateListDrawable) drawable).addTransition(i10, i11, animatedVectorDrawableCompat, false);
                ((AnimatedStateListDrawable) this.f29910i).addTransition(R.id.indeterminate, i11, this.f29921t, false);
            }
        }
    }

    private void r() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        Drawable drawable = this.f29910i;
        if (drawable != null && (colorStateList2 = this.f29913l) != null) {
            DrawableCompat.setTintList(drawable, colorStateList2);
        }
        Drawable drawable2 = this.f29911j;
        if (drawable2 == null || (colorStateList = this.f29914m) == null) {
            return;
        }
        DrawableCompat.setTintList(drawable2, colorStateList);
    }

    private void s() {
    }

    public void d(@NonNull b bVar) {
        this.f29904c.add(bVar);
    }

    public void e(@NonNull c cVar) {
        this.f29903b.add(cVar);
    }

    public void f() {
        this.f29904c.clear();
    }

    public void g() {
        this.f29903b.clear();
    }

    @Override // android.widget.CompoundButton
    @Nullable
    public Drawable getButtonDrawable() {
        return this.f29910i;
    }

    @Nullable
    public Drawable getButtonIconDrawable() {
        return this.f29911j;
    }

    @Nullable
    public ColorStateList getButtonIconTintList() {
        return this.f29914m;
    }

    @NonNull
    public PorterDuff.Mode getButtonIconTintMode() {
        return this.f29915n;
    }

    @Override // android.widget.CompoundButton
    @Nullable
    public ColorStateList getButtonTintList() {
        return this.f29913l;
    }

    public int getCheckedState() {
        return this.f29916o;
    }

    @Nullable
    public CharSequence getErrorAccessibilityLabel() {
        return this.f29909h;
    }

    public boolean i() {
        return this.f29907f;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public boolean isChecked() {
        return this.f29916o == 1;
    }

    public boolean j() {
        return this.f29908g;
    }

    public boolean k() {
        return this.f29906e;
    }

    public void n(@NonNull b bVar) {
        this.f29904c.remove(bVar);
    }

    public void o(@NonNull c cVar) {
        this.f29903b.remove(cVar);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f29906e && this.f29913l == null && this.f29914m == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f29902z);
        }
        if (j()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, A);
        }
        this.f29917p = g.f(iArrOnCreateDrawableState);
        s();
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (!this.f29907f || !TextUtils.isEmpty(getText()) || (buttonDrawable = CompoundButtonCompat.getButtonDrawable(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - buttonDrawable.getIntrinsicWidth()) / 2) * (p0.s(this) ? -1 : 1);
        int iSave = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (getBackground() != null) {
            Rect bounds = buttonDrawable.getBounds();
            DrawableCompat.setHotspotBounds(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@Nullable AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && j()) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.f29909h));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCheckedState(savedState.f29923b);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f29923b = getCheckedState();
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(@DrawableRes int i10) {
        setButtonDrawable(AppCompatResources.getDrawable(getContext(), i10));
    }

    public void setButtonIconDrawable(@Nullable Drawable drawable) {
        this.f29911j = drawable;
        m();
    }

    public void setButtonIconDrawableResource(@DrawableRes int i10) {
        setButtonIconDrawable(AppCompatResources.getDrawable(getContext(), i10));
    }

    public void setButtonIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.f29914m == colorStateList) {
            return;
        }
        this.f29914m = colorStateList;
        m();
    }

    public void setButtonIconTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.f29915n == mode) {
            return;
        }
        this.f29915n = mode;
        m();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(@Nullable ColorStateList colorStateList) {
        if (this.f29913l == colorStateList) {
            return;
        }
        this.f29913l = colorStateList;
        m();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        m();
    }

    public void setCenterIfNoTextEnabled(boolean z10) {
        this.f29907f = z10;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z10) {
        setCheckedState(z10 ? 1 : 0);
    }

    public void setCheckedState(int i10) {
        AutofillManager autofillManagerA;
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.f29916o != i10) {
            this.f29916o = i10;
            super.setChecked(i10 == 1);
            refreshDrawableState();
            p();
            if (this.f29918q) {
                return;
            }
            this.f29918q = true;
            LinkedHashSet<b> linkedHashSet = this.f29904c;
            if (linkedHashSet != null) {
                Iterator<b> it2 = linkedHashSet.iterator();
                while (it2.hasNext()) {
                    it2.next().a(this, this.f29916o);
                }
            }
            if (this.f29916o != 2 && (onCheckedChangeListener = this.f29920s) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            if (Build.VERSION.SDK_INT >= 26 && (autofillManagerA = com.google.android.material.checkbox.b.a(getContext().getSystemService(com.google.android.material.checkbox.a.a()))) != null) {
                autofillManagerA.notifyValueChanged(this);
            }
            this.f29918q = false;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        s();
    }

    public void setErrorAccessibilityLabel(@Nullable CharSequence charSequence) {
        this.f29909h = charSequence;
    }

    public void setErrorAccessibilityLabelResource(@StringRes int i10) {
        setErrorAccessibilityLabel(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setErrorShown(boolean z10) {
        if (this.f29908g == z10) {
            return;
        }
        this.f29908g = z10;
        refreshDrawableState();
        Iterator<c> it2 = this.f29903b.iterator();
        while (it2.hasNext()) {
            it2.next().a(this, this.f29908g);
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f29920s = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    @RequiresApi(30)
    public void setStateDescription(@Nullable CharSequence charSequence) {
        this.f29919r = charSequence;
        if (charSequence == null) {
            p();
        } else {
            super.setStateDescription(charSequence);
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f29906e = z10;
        if (z10) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    public MaterialCheckBox(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(@Nullable Drawable drawable) {
        this.f29910i = drawable;
        this.f29912k = false;
        m();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialCheckBox(Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f29898v;
        super(a5.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f29903b = new LinkedHashSet<>();
        this.f29904c = new LinkedHashSet<>();
        this.f29921t = AnimatedVectorDrawableCompat.create(getContext(), R.drawable.mtrl_checkbox_button_checked_unchecked);
        this.f29922u = new a();
        Context context2 = getContext();
        this.f29910i = CompoundButtonCompat.getButtonDrawable(this);
        this.f29913l = getSuperButtonTintList();
        setSupportButtonTintList(null);
        TintTypedArray tintTypedArrayL = g0.l(context2, attributeSet, R.styleable.MaterialCheckBox, i10, i11, new int[0]);
        this.f29911j = tintTypedArrayL.getDrawable(R.styleable.MaterialCheckBox_buttonIcon);
        if (this.f29910i != null && g0.h(context2) && h(tintTypedArrayL)) {
            super.setButtonDrawable((Drawable) null);
            this.f29910i = AppCompatResources.getDrawable(context2, R.drawable.mtrl_checkbox_button);
            this.f29912k = true;
            if (this.f29911j == null) {
                this.f29911j = AppCompatResources.getDrawable(context2, R.drawable.mtrl_checkbox_button_icon);
            }
        }
        this.f29914m = com.google.android.material.resources.d.b(context2, tintTypedArrayL, R.styleable.MaterialCheckBox_buttonIconTint);
        this.f29915n = p0.u(tintTypedArrayL.getInt(R.styleable.MaterialCheckBox_buttonIconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f29906e = tintTypedArrayL.getBoolean(R.styleable.MaterialCheckBox_useMaterialThemeColors, false);
        this.f29907f = tintTypedArrayL.getBoolean(R.styleable.MaterialCheckBox_centerIfNoTextEnabled, true);
        this.f29908g = tintTypedArrayL.getBoolean(R.styleable.MaterialCheckBox_errorShown, false);
        this.f29909h = tintTypedArrayL.getText(R.styleable.MaterialCheckBox_errorAccessibilityLabel);
        int i12 = R.styleable.MaterialCheckBox_checkedState;
        if (tintTypedArrayL.hasValue(i12)) {
            setCheckedState(tintTypedArrayL.getInt(i12, 0));
        }
        tintTypedArrayL.recycle();
        m();
    }
}
