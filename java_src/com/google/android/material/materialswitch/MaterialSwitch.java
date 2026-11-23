package com.google.android.material.materialswitch;

import a5.a;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.material.R;
import com.google.android.material.drawable.g;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.p0;

/* JADX INFO: loaded from: classes5.dex */
public class MaterialSwitch extends SwitchCompat {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f31015o = R.style.Widget_Material3_CompoundButton_MaterialSwitch;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int[] f31016p = {R.attr.state_with_icon};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private Drawable f31017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private Drawable f31018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Px
    private int f31019d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private Drawable f31020e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private Drawable f31021f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private ColorStateList f31022g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private ColorStateList f31023h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private PorterDuff.Mode f31024i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private ColorStateList f31025j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private ColorStateList f31026k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    private PorterDuff.Mode f31027l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int[] f31028m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int[] f31029n;

    public MaterialSwitch(@NonNull Context context) {
        this(context, null);
    }

    private void a() {
        this.f31017b = g.c(this.f31017b, this.f31022g, getThumbTintMode());
        this.f31018c = g.c(this.f31018c, this.f31023h, this.f31024i);
        d();
        Drawable drawable = this.f31017b;
        Drawable drawable2 = this.f31018c;
        int i10 = this.f31019d;
        super.setThumbDrawable(g.b(drawable, drawable2, i10, i10));
        refreshDrawableState();
    }

    private void b() {
        this.f31020e = g.c(this.f31020e, this.f31025j, getTrackTintMode());
        this.f31021f = g.c(this.f31021f, this.f31026k, this.f31027l);
        d();
        Drawable layerDrawable = this.f31020e;
        if (layerDrawable != null && this.f31021f != null) {
            layerDrawable = new LayerDrawable(new Drawable[]{this.f31020e, this.f31021f});
        } else if (layerDrawable == null) {
            layerDrawable = this.f31021f;
        }
        if (layerDrawable != null) {
            setSwitchMinWidth(layerDrawable.getIntrinsicWidth());
        }
        super.setTrackDrawable(layerDrawable);
    }

    private static void c(@Nullable Drawable drawable, @Nullable ColorStateList colorStateList, @NonNull int[] iArr, @NonNull int[] iArr2, float f10) {
        if (drawable == null || colorStateList == null) {
            return;
        }
        DrawableCompat.setTint(drawable, ColorUtils.blendARGB(colorStateList.getColorForState(iArr, 0), colorStateList.getColorForState(iArr2, 0), f10));
    }

    private void d() {
        if (this.f31022g == null && this.f31023h == null && this.f31025j == null && this.f31026k == null) {
            return;
        }
        float thumbPosition = getThumbPosition();
        ColorStateList colorStateList = this.f31022g;
        if (colorStateList != null) {
            c(this.f31017b, colorStateList, this.f31028m, this.f31029n, thumbPosition);
        }
        ColorStateList colorStateList2 = this.f31023h;
        if (colorStateList2 != null) {
            c(this.f31018c, colorStateList2, this.f31028m, this.f31029n, thumbPosition);
        }
        ColorStateList colorStateList3 = this.f31025j;
        if (colorStateList3 != null) {
            c(this.f31020e, colorStateList3, this.f31028m, this.f31029n, thumbPosition);
        }
        ColorStateList colorStateList4 = this.f31026k;
        if (colorStateList4 != null) {
            c(this.f31021f, colorStateList4, this.f31028m, this.f31029n, thumbPosition);
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public Drawable getThumbDrawable() {
        return this.f31017b;
    }

    @Nullable
    public Drawable getThumbIconDrawable() {
        return this.f31018c;
    }

    @Px
    public int getThumbIconSize() {
        return this.f31019d;
    }

    @Nullable
    public ColorStateList getThumbIconTintList() {
        return this.f31023h;
    }

    @NonNull
    public PorterDuff.Mode getThumbIconTintMode() {
        return this.f31024i;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public ColorStateList getThumbTintList() {
        return this.f31022g;
    }

    @Nullable
    public Drawable getTrackDecorationDrawable() {
        return this.f31021f;
    }

    @Nullable
    public ColorStateList getTrackDecorationTintList() {
        return this.f31026k;
    }

    @NonNull
    public PorterDuff.Mode getTrackDecorationTintMode() {
        return this.f31027l;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public Drawable getTrackDrawable() {
        return this.f31020e;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public ColorStateList getTrackTintList() {
        return this.f31025j;
    }

    @Override // android.view.View
    public void invalidate() {
        d();
        super.invalidate();
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        if (this.f31018c != null) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f31016p);
        }
        this.f31028m = g.j(iArrOnCreateDrawableState);
        this.f31029n = g.f(iArrOnCreateDrawableState);
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbDrawable(@Nullable Drawable drawable) {
        this.f31017b = drawable;
        a();
    }

    public void setThumbIconDrawable(@Nullable Drawable drawable) {
        this.f31018c = drawable;
        a();
    }

    public void setThumbIconResource(@DrawableRes int i10) {
        setThumbIconDrawable(AppCompatResources.getDrawable(getContext(), i10));
    }

    public void setThumbIconSize(@Px int i10) {
        if (this.f31019d != i10) {
            this.f31019d = i10;
            a();
        }
    }

    public void setThumbIconTintList(@Nullable ColorStateList colorStateList) {
        this.f31023h = colorStateList;
        a();
    }

    public void setThumbIconTintMode(@NonNull PorterDuff.Mode mode) {
        this.f31024i = mode;
        a();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.f31022g = colorStateList;
        a();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        super.setThumbTintMode(mode);
        a();
    }

    public void setTrackDecorationDrawable(@Nullable Drawable drawable) {
        this.f31021f = drawable;
        b();
    }

    public void setTrackDecorationResource(@DrawableRes int i10) {
        setTrackDecorationDrawable(AppCompatResources.getDrawable(getContext(), i10));
    }

    public void setTrackDecorationTintList(@Nullable ColorStateList colorStateList) {
        this.f31026k = colorStateList;
        b();
    }

    public void setTrackDecorationTintMode(@NonNull PorterDuff.Mode mode) {
        this.f31027l = mode;
        b();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackDrawable(@Nullable Drawable drawable) {
        this.f31020e = drawable;
        b();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.f31025j = colorStateList;
        b();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        super.setTrackTintMode(mode);
        b();
    }

    public MaterialSwitch(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialSwitchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialSwitch(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f31015o;
        super(a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f31019d = -1;
        Context context2 = getContext();
        this.f31017b = super.getThumbDrawable();
        this.f31022g = super.getThumbTintList();
        super.setThumbTintList(null);
        this.f31020e = super.getTrackDrawable();
        this.f31025j = super.getTrackTintList();
        super.setTrackTintList(null);
        TintTypedArray tintTypedArrayL = g0.l(context2, attributeSet, R.styleable.MaterialSwitch, i10, i11, new int[0]);
        this.f31018c = tintTypedArrayL.getDrawable(R.styleable.MaterialSwitch_thumbIcon);
        this.f31019d = tintTypedArrayL.getDimensionPixelSize(R.styleable.MaterialSwitch_thumbIconSize, -1);
        this.f31023h = tintTypedArrayL.getColorStateList(R.styleable.MaterialSwitch_thumbIconTint);
        this.f31024i = p0.u(tintTypedArrayL.getInt(R.styleable.MaterialSwitch_thumbIconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f31021f = tintTypedArrayL.getDrawable(R.styleable.MaterialSwitch_trackDecoration);
        this.f31026k = tintTypedArrayL.getColorStateList(R.styleable.MaterialSwitch_trackDecorationTint);
        this.f31027l = p0.u(tintTypedArrayL.getInt(R.styleable.MaterialSwitch_trackDecorationTintMode, -1), PorterDuff.Mode.SRC_IN);
        tintTypedArrayL.recycle();
        setEnforceSwitchWidth(false);
        a();
        b();
    }
}
