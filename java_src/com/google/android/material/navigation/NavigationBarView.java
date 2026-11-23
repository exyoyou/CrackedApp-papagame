package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.drawable.g;
import com.google.android.material.internal.g0;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.j;
import com.google.android.material.shape.n;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
public abstract class NavigationBarView extends FrameLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f31135h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f31136i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f31137j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f31138k = 2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f31139l = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final d f31140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final NavigationBarMenuView f31141c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final NavigationBarPresenter f31142d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private MenuInflater f31143e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c f31144f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b f31145g;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface LabelVisibility {
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        Bundle f31146b;

        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
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

        private void a(@NonNull Parcel parcel, ClassLoader classLoader) {
            this.f31146b = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeBundle(this.f31146b);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader == null ? getClass().getClassLoader() : classLoader);
        }
    }

    class a implements MenuBuilder.Callback {
        a() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            if (NavigationBarView.this.f31145g == null || menuItem.getItemId() != NavigationBarView.this.getSelectedItemId()) {
                return (NavigationBarView.this.f31144f == null || NavigationBarView.this.f31144f.a(menuItem)) ? false : true;
            }
            NavigationBarView.this.f31145g.a(menuItem);
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    public interface b {
        void a(@NonNull MenuItem menuItem);
    }

    public interface c {
        boolean a(@NonNull MenuItem menuItem);
    }

    public NavigationBarView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(a5.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        NavigationBarPresenter navigationBarPresenter = new NavigationBarPresenter();
        this.f31142d = navigationBarPresenter;
        Context context2 = getContext();
        int[] iArr = R.styleable.NavigationBarView;
        int i12 = R.styleable.NavigationBarView_itemTextAppearanceInactive;
        int i13 = R.styleable.NavigationBarView_itemTextAppearanceActive;
        TintTypedArray tintTypedArrayL = g0.l(context2, attributeSet, iArr, i10, i11, i12, i13);
        d dVar = new d(context2, getClass(), getMaxItemCount());
        this.f31140b = dVar;
        NavigationBarMenuView navigationBarMenuViewC = c(context2);
        this.f31141c = navigationBarMenuViewC;
        navigationBarPresenter.b(navigationBarMenuViewC);
        navigationBarPresenter.a(1);
        navigationBarMenuViewC.setPresenter(navigationBarPresenter);
        dVar.addMenuPresenter(navigationBarPresenter);
        navigationBarPresenter.initForMenu(getContext(), dVar);
        int i14 = R.styleable.NavigationBarView_itemIconTint;
        if (tintTypedArrayL.hasValue(i14)) {
            navigationBarMenuViewC.setIconTintList(tintTypedArrayL.getColorStateList(i14));
        } else {
            navigationBarMenuViewC.setIconTintList(navigationBarMenuViewC.d(android.R.attr.textColorSecondary));
        }
        setItemIconSize(tintTypedArrayL.getDimensionPixelSize(R.styleable.NavigationBarView_itemIconSize, getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_bar_item_default_icon_size)));
        if (tintTypedArrayL.hasValue(i12)) {
            setItemTextAppearanceInactive(tintTypedArrayL.getResourceId(i12, 0));
        }
        if (tintTypedArrayL.hasValue(i13)) {
            setItemTextAppearanceActive(tintTypedArrayL.getResourceId(i13, 0));
        }
        setItemTextAppearanceActiveBoldEnabled(tintTypedArrayL.getBoolean(R.styleable.NavigationBarView_itemTextAppearanceActiveBoldEnabled, true));
        int i15 = R.styleable.NavigationBarView_itemTextColor;
        if (tintTypedArrayL.hasValue(i15)) {
            setItemTextColor(tintTypedArrayL.getColorStateList(i15));
        }
        Drawable background = getBackground();
        ColorStateList colorStateListG = g.g(background);
        if (background == null || colorStateListG != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(n.e(context2, attributeSet, i10, i11).m());
            if (colorStateListG != null) {
                materialShapeDrawable.p0(colorStateListG);
            }
            materialShapeDrawable.a0(context2);
            ViewCompat.setBackground(this, materialShapeDrawable);
        }
        int i16 = R.styleable.NavigationBarView_itemPaddingTop;
        if (tintTypedArrayL.hasValue(i16)) {
            setItemPaddingTop(tintTypedArrayL.getDimensionPixelSize(i16, 0));
        }
        int i17 = R.styleable.NavigationBarView_itemPaddingBottom;
        if (tintTypedArrayL.hasValue(i17)) {
            setItemPaddingBottom(tintTypedArrayL.getDimensionPixelSize(i17, 0));
        }
        int i18 = R.styleable.NavigationBarView_activeIndicatorLabelPadding;
        if (tintTypedArrayL.hasValue(i18)) {
            setActiveIndicatorLabelPadding(tintTypedArrayL.getDimensionPixelSize(i18, 0));
        }
        int i19 = R.styleable.NavigationBarView_elevation;
        if (tintTypedArrayL.hasValue(i19)) {
            setElevation(tintTypedArrayL.getDimensionPixelSize(i19, 0));
        }
        DrawableCompat.setTintList(getBackground().mutate(), com.google.android.material.resources.d.b(context2, tintTypedArrayL, R.styleable.NavigationBarView_backgroundTint));
        setLabelVisibilityMode(tintTypedArrayL.getInteger(R.styleable.NavigationBarView_labelVisibilityMode, -1));
        int resourceId = tintTypedArrayL.getResourceId(R.styleable.NavigationBarView_itemBackground, 0);
        if (resourceId != 0) {
            navigationBarMenuViewC.setItemBackgroundRes(resourceId);
        } else {
            setItemRippleColor(com.google.android.material.resources.d.b(context2, tintTypedArrayL, R.styleable.NavigationBarView_itemRippleColor));
        }
        int resourceId2 = tintTypedArrayL.getResourceId(R.styleable.NavigationBarView_itemActiveIndicatorStyle, 0);
        if (resourceId2 != 0) {
            setItemActiveIndicatorEnabled(true);
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId2, R.styleable.NavigationBarActiveIndicator);
            setItemActiveIndicatorWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NavigationBarActiveIndicator_android_width, 0));
            setItemActiveIndicatorHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.NavigationBarActiveIndicator_android_height, 0));
            setItemActiveIndicatorMarginHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.NavigationBarActiveIndicator_marginHorizontal, 0));
            setItemActiveIndicatorColor(com.google.android.material.resources.d.a(context2, typedArrayObtainStyledAttributes, R.styleable.NavigationBarActiveIndicator_android_color));
            setItemActiveIndicatorShapeAppearance(n.b(context2, typedArrayObtainStyledAttributes.getResourceId(R.styleable.NavigationBarActiveIndicator_shapeAppearance, 0), 0).m());
            typedArrayObtainStyledAttributes.recycle();
        }
        int i20 = R.styleable.NavigationBarView_menu;
        if (tintTypedArrayL.hasValue(i20)) {
            f(tintTypedArrayL.getResourceId(i20, 0));
        }
        tintTypedArrayL.recycle();
        addView(navigationBarMenuViewC);
        dVar.setCallback(new a());
    }

    private MenuInflater getMenuInflater() {
        if (this.f31143e == null) {
            this.f31143e = new SupportMenuInflater(getContext());
        }
        return this.f31143e;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected abstract NavigationBarMenuView c(@NonNull Context context);

    @Nullable
    public BadgeDrawable d(int i10) {
        return this.f31141c.h(i10);
    }

    @NonNull
    public BadgeDrawable e(int i10) {
        return this.f31141c.i(i10);
    }

    public void f(int i10) {
        this.f31142d.c(true);
        getMenuInflater().inflate(i10, this.f31140b);
        this.f31142d.c(false);
        this.f31142d.updateMenuView(true);
    }

    public boolean g() {
        return this.f31141c.getItemActiveIndicatorEnabled();
    }

    @Px
    public int getActiveIndicatorLabelPadding() {
        return this.f31141c.getActiveIndicatorLabelPadding();
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.f31141c.getItemActiveIndicatorColor();
    }

    @Px
    public int getItemActiveIndicatorHeight() {
        return this.f31141c.getItemActiveIndicatorHeight();
    }

    @Px
    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f31141c.getItemActiveIndicatorMarginHorizontal();
    }

    @Nullable
    public n getItemActiveIndicatorShapeAppearance() {
        return this.f31141c.getItemActiveIndicatorShapeAppearance();
    }

    @Px
    public int getItemActiveIndicatorWidth() {
        return this.f31141c.getItemActiveIndicatorWidth();
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f31141c.getItemBackground();
    }

    @DrawableRes
    @Deprecated
    public int getItemBackgroundResource() {
        return this.f31141c.getItemBackgroundRes();
    }

    @Dimension
    public int getItemIconSize() {
        return this.f31141c.getItemIconSize();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f31141c.getIconTintList();
    }

    @Px
    public int getItemPaddingBottom() {
        return this.f31141c.getItemPaddingBottom();
    }

    @Px
    public int getItemPaddingTop() {
        return this.f31141c.getItemPaddingTop();
    }

    @Nullable
    public ColorStateList getItemRippleColor() {
        return this.f31141c.getItemRippleColor();
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f31141c.getItemTextAppearanceActive();
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f31141c.getItemTextAppearanceInactive();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f31141c.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f31141c.getLabelVisibilityMode();
    }

    public abstract int getMaxItemCount();

    @NonNull
    public Menu getMenu() {
        return this.f31140b;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public MenuView getMenuView() {
        return this.f31141c;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public NavigationBarPresenter getPresenter() {
        return this.f31142d;
    }

    @IdRes
    public int getSelectedItemId() {
        return this.f31141c.getSelectedItemId();
    }

    public void h(int i10) {
        this.f31141c.m(i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.e(this);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f31140b.restorePresenterStates(savedState.f31146b);
    }

    @Override // android.view.View
    @NonNull
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f31146b = bundle;
        this.f31140b.savePresenterStates(bundle);
        return savedState;
    }

    public void setActiveIndicatorLabelPadding(@Px int i10) {
        this.f31141c.setActiveIndicatorLabelPadding(i10);
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        j.d(this, f10);
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.f31141c.setItemActiveIndicatorColor(colorStateList);
    }

    public void setItemActiveIndicatorEnabled(boolean z10) {
        this.f31141c.setItemActiveIndicatorEnabled(z10);
    }

    public void setItemActiveIndicatorHeight(@Px int i10) {
        this.f31141c.setItemActiveIndicatorHeight(i10);
    }

    public void setItemActiveIndicatorMarginHorizontal(@Px int i10) {
        this.f31141c.setItemActiveIndicatorMarginHorizontal(i10);
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable n nVar) {
        this.f31141c.setItemActiveIndicatorShapeAppearance(nVar);
    }

    public void setItemActiveIndicatorWidth(@Px int i10) {
        this.f31141c.setItemActiveIndicatorWidth(i10);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f31141c.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(@DrawableRes int i10) {
        this.f31141c.setItemBackgroundRes(i10);
    }

    public void setItemIconSize(@Dimension int i10) {
        this.f31141c.setItemIconSize(i10);
    }

    public void setItemIconSizeRes(@DimenRes int i10) {
        setItemIconSize(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f31141c.setIconTintList(colorStateList);
    }

    public void setItemOnTouchListener(int i10, @Nullable View.OnTouchListener onTouchListener) {
        this.f31141c.setItemOnTouchListener(i10, onTouchListener);
    }

    public void setItemPaddingBottom(@Px int i10) {
        this.f31141c.setItemPaddingBottom(i10);
    }

    public void setItemPaddingTop(@Px int i10) {
        this.f31141c.setItemPaddingTop(i10);
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        this.f31141c.setItemRippleColor(colorStateList);
    }

    public void setItemTextAppearanceActive(@StyleRes int i10) {
        this.f31141c.setItemTextAppearanceActive(i10);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z10) {
        this.f31141c.setItemTextAppearanceActiveBoldEnabled(z10);
    }

    public void setItemTextAppearanceInactive(@StyleRes int i10) {
        this.f31141c.setItemTextAppearanceInactive(i10);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f31141c.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i10) {
        if (this.f31141c.getLabelVisibilityMode() != i10) {
            this.f31141c.setLabelVisibilityMode(i10);
            this.f31142d.updateMenuView(false);
        }
    }

    public void setOnItemReselectedListener(@Nullable b bVar) {
        this.f31145g = bVar;
    }

    public void setOnItemSelectedListener(@Nullable c cVar) {
        this.f31144f = cVar;
    }

    public void setSelectedItemId(@IdRes int i10) {
        MenuItem menuItemFindItem = this.f31140b.findItem(i10);
        if (menuItemFindItem == null || this.f31140b.performItemAction(menuItemFindItem, this.f31142d, 0)) {
            return;
        }
        menuItemFindItem.setChecked(true);
    }
}
