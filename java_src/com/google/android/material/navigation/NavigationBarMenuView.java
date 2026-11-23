package com.google.android.material.navigation;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.util.Pools;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.e0;
import com.google.android.material.motion.j;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.n;
import java.util.HashSet;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public abstract class NavigationBarMenuView extends ViewGroup implements MenuView {
    private static final int G = 5;
    private static final int H = -1;
    private static final int[] I = {R.attr.state_checked};
    private static final int[] J = {-16842910};
    private int A;
    private n B;
    private boolean C;
    private ColorStateList D;
    private NavigationBarPresenter E;
    private MenuBuilder F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final TransitionSet f31103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final View.OnClickListener f31104c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Pools.Pool<NavigationBarItemView> f31105d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final SparseArray<View.OnTouchListener> f31106e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f31107f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private NavigationBarItemView[] f31108g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f31109h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f31110i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private ColorStateList f31111j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Dimension
    private int f31112k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ColorStateList f31113l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private final ColorStateList f31114m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @StyleRes
    private int f31115n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @StyleRes
    private int f31116o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f31117p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Drawable f31118q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private ColorStateList f31119r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f31120s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    private final SparseArray<BadgeDrawable> f31121t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f31122u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f31123v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f31124w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f31125x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f31126y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f31127z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MenuItemImpl itemData = ((NavigationBarItemView) view).getItemData();
            if (NavigationBarMenuView.this.F.performItemAction(itemData, NavigationBarMenuView.this.E, 0)) {
                return;
            }
            itemData.setChecked(true);
        }
    }

    public NavigationBarMenuView(@NonNull Context context) {
        super(context);
        this.f31105d = new Pools.SynchronizedPool(5);
        this.f31106e = new SparseArray<>(5);
        this.f31109h = 0;
        this.f31110i = 0;
        this.f31121t = new SparseArray<>(5);
        this.f31122u = -1;
        this.f31123v = -1;
        this.f31124w = -1;
        this.C = false;
        this.f31114m = d(R.attr.textColorSecondary);
        if (isInEditMode()) {
            this.f31103b = null;
        } else {
            AutoTransition autoTransition = new AutoTransition();
            this.f31103b = autoTransition;
            autoTransition.setOrdering(0);
            autoTransition.setDuration(j.f(getContext(), com.google.android.material.R.attr.motionDurationMedium4, getResources().getInteger(com.google.android.material.R.integer.material_motion_duration_long_1)));
            autoTransition.setInterpolator(j.g(getContext(), com.google.android.material.R.attr.motionEasingStandard, com.google.android.material.animation.b.f29368b));
            autoTransition.addTransition(new e0());
        }
        this.f31104c = new a();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    @Nullable
    private Drawable e() {
        if (this.B == null || this.D == null) {
            return null;
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.B);
        materialShapeDrawable.p0(this.D);
        return materialShapeDrawable;
    }

    private NavigationBarItemView getNewItem() {
        NavigationBarItemView navigationBarItemViewAcquire = this.f31105d.acquire();
        return navigationBarItemViewAcquire == null ? f(getContext()) : navigationBarItemViewAcquire;
    }

    private boolean l(int i10) {
        return i10 != -1;
    }

    private void n() {
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < this.F.size(); i10++) {
            hashSet.add(Integer.valueOf(this.F.getItem(i10).getItemId()));
        }
        for (int i11 = 0; i11 < this.f31121t.size(); i11++) {
            int iKeyAt = this.f31121t.keyAt(i11);
            if (!hashSet.contains(Integer.valueOf(iKeyAt))) {
                this.f31121t.delete(iKeyAt);
            }
        }
    }

    private void r(int i10) {
        if (l(i10)) {
            return;
        }
        throw new IllegalArgumentException(i10 + " is not a valid view id");
    }

    private void setBadgeIfNeeded(@NonNull NavigationBarItemView navigationBarItemView) {
        BadgeDrawable badgeDrawable;
        int id2 = navigationBarItemView.getId();
        if (l(id2) && (badgeDrawable = this.f31121t.get(id2)) != null) {
            navigationBarItemView.setBadge(badgeDrawable);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void c() {
        removeAllViews();
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView != null) {
                    this.f31105d.release(navigationBarItemView);
                    navigationBarItemView.f();
                }
            }
        }
        if (this.F.size() == 0) {
            this.f31109h = 0;
            this.f31110i = 0;
            this.f31108g = null;
            return;
        }
        n();
        this.f31108g = new NavigationBarItemView[this.F.size()];
        boolean zK = k(this.f31107f, this.F.getVisibleItems().size());
        for (int i10 = 0; i10 < this.F.size(); i10++) {
            this.E.c(true);
            this.F.getItem(i10).setCheckable(true);
            this.E.c(false);
            NavigationBarItemView newItem = getNewItem();
            this.f31108g[i10] = newItem;
            newItem.setIconTintList(this.f31111j);
            newItem.setIconSize(this.f31112k);
            newItem.setTextColor(this.f31114m);
            newItem.setTextAppearanceInactive(this.f31115n);
            newItem.setTextAppearanceActive(this.f31116o);
            newItem.setTextAppearanceActiveBoldEnabled(this.f31117p);
            newItem.setTextColor(this.f31113l);
            int i11 = this.f31122u;
            if (i11 != -1) {
                newItem.setItemPaddingTop(i11);
            }
            int i12 = this.f31123v;
            if (i12 != -1) {
                newItem.setItemPaddingBottom(i12);
            }
            int i13 = this.f31124w;
            if (i13 != -1) {
                newItem.setActiveIndicatorLabelPadding(i13);
            }
            newItem.setActiveIndicatorWidth(this.f31126y);
            newItem.setActiveIndicatorHeight(this.f31127z);
            newItem.setActiveIndicatorMarginHorizontal(this.A);
            newItem.setActiveIndicatorDrawable(e());
            newItem.setActiveIndicatorResizeable(this.C);
            newItem.setActiveIndicatorEnabled(this.f31125x);
            Drawable drawable = this.f31118q;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.f31120s);
            }
            newItem.setItemRippleColor(this.f31119r);
            newItem.setShifting(zK);
            newItem.setLabelVisibilityMode(this.f31107f);
            MenuItemImpl menuItemImpl = (MenuItemImpl) this.F.getItem(i10);
            newItem.initialize(menuItemImpl, 0);
            newItem.setItemPosition(i10);
            int itemId = menuItemImpl.getItemId();
            newItem.setOnTouchListener(this.f31106e.get(itemId));
            newItem.setOnClickListener(this.f31104c);
            int i14 = this.f31109h;
            if (i14 != 0 && itemId == i14) {
                this.f31110i = i10;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        int iMin = Math.min(this.F.size() - 1, this.f31110i);
        this.f31110i = iMin;
        this.F.getItem(iMin).setChecked(true);
    }

    @Nullable
    public ColorStateList d(int i10) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i10, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i11 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = J;
        return new ColorStateList(new int[][]{iArr, I, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i11, defaultColor});
    }

    @NonNull
    protected abstract NavigationBarItemView f(@NonNull Context context);

    @Nullable
    public NavigationBarItemView g(int i10) {
        r(i10);
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr == null) {
            return null;
        }
        for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
            if (navigationBarItemView.getId() == i10) {
                return navigationBarItemView;
            }
        }
        return null;
    }

    @Px
    public int getActiveIndicatorLabelPadding() {
        return this.f31124w;
    }

    SparseArray<BadgeDrawable> getBadgeDrawables() {
        return this.f31121t;
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.f31111j;
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.D;
    }

    public boolean getItemActiveIndicatorEnabled() {
        return this.f31125x;
    }

    @Px
    public int getItemActiveIndicatorHeight() {
        return this.f31127z;
    }

    @Px
    public int getItemActiveIndicatorMarginHorizontal() {
        return this.A;
    }

    @Nullable
    public n getItemActiveIndicatorShapeAppearance() {
        return this.B;
    }

    @Px
    public int getItemActiveIndicatorWidth() {
        return this.f31126y;
    }

    @Nullable
    public Drawable getItemBackground() {
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        return (navigationBarItemViewArr == null || navigationBarItemViewArr.length <= 0) ? this.f31118q : navigationBarItemViewArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.f31120s;
    }

    @Dimension
    public int getItemIconSize() {
        return this.f31112k;
    }

    @Px
    public int getItemPaddingBottom() {
        return this.f31123v;
    }

    @Px
    public int getItemPaddingTop() {
        return this.f31122u;
    }

    @Nullable
    public ColorStateList getItemRippleColor() {
        return this.f31119r;
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f31116o;
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f31115n;
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f31113l;
    }

    public int getLabelVisibilityMode() {
        return this.f31107f;
    }

    @Nullable
    protected MenuBuilder getMenu() {
        return this.F;
    }

    public int getSelectedItemId() {
        return this.f31109h;
    }

    protected int getSelectedItemPosition() {
        return this.f31110i;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public int getWindowAnimations() {
        return 0;
    }

    @Nullable
    public BadgeDrawable h(int i10) {
        return this.f31121t.get(i10);
    }

    BadgeDrawable i(int i10) {
        r(i10);
        BadgeDrawable badgeDrawableF = this.f31121t.get(i10);
        if (badgeDrawableF == null) {
            badgeDrawableF = BadgeDrawable.f(getContext());
            this.f31121t.put(i10, badgeDrawableF);
        }
        NavigationBarItemView navigationBarItemViewG = g(i10);
        if (navigationBarItemViewG != null) {
            navigationBarItemViewG.setBadge(badgeDrawableF);
        }
        return badgeDrawableF;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public void initialize(@NonNull MenuBuilder menuBuilder) {
        this.F = menuBuilder;
    }

    protected boolean j() {
        return this.C;
    }

    protected boolean k(int i10, int i11) {
        if (i10 == -1) {
            if (i11 > 3) {
                return true;
            }
        } else if (i10 == 0) {
            return true;
        }
        return false;
    }

    void m(int i10) {
        r(i10);
        NavigationBarItemView navigationBarItemViewG = g(i10);
        if (navigationBarItemViewG != null) {
            navigationBarItemViewG.n();
        }
        this.f31121t.put(i10, null);
    }

    void o(SparseArray<BadgeDrawable> sparseArray) {
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            int iKeyAt = sparseArray.keyAt(i10);
            if (this.f31121t.indexOfKey(iKeyAt) < 0) {
                this.f31121t.append(iKeyAt, sparseArray.get(iKeyAt));
            }
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                BadgeDrawable badgeDrawable = this.f31121t.get(navigationBarItemView.getId());
                if (badgeDrawable != null) {
                    navigationBarItemView.setBadge(badgeDrawable);
                }
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.F.getVisibleItems().size(), false, 1));
    }

    void p(int i10) {
        int size = this.F.size();
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = this.F.getItem(i11);
            if (i10 == item.getItemId()) {
                this.f31109h = i10;
                this.f31110i = i11;
                item.setChecked(true);
                return;
            }
        }
    }

    public void q() {
        TransitionSet transitionSet;
        MenuBuilder menuBuilder = this.F;
        if (menuBuilder == null || this.f31108g == null) {
            return;
        }
        int size = menuBuilder.size();
        if (size != this.f31108g.length) {
            c();
            return;
        }
        int i10 = this.f31109h;
        for (int i11 = 0; i11 < size; i11++) {
            MenuItem item = this.F.getItem(i11);
            if (item.isChecked()) {
                this.f31109h = item.getItemId();
                this.f31110i = i11;
            }
        }
        if (i10 != this.f31109h && (transitionSet = this.f31103b) != null) {
            TransitionManager.beginDelayedTransition(this, transitionSet);
        }
        boolean zK = k(this.f31107f, this.F.getVisibleItems().size());
        for (int i12 = 0; i12 < size; i12++) {
            this.E.c(true);
            this.f31108g[i12].setLabelVisibilityMode(this.f31107f);
            this.f31108g[i12].setShifting(zK);
            this.f31108g[i12].initialize((MenuItemImpl) this.F.getItem(i12), 0);
            this.E.c(false);
        }
    }

    public void setActiveIndicatorLabelPadding(@Px int i10) {
        this.f31124w = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorLabelPadding(i10);
            }
        }
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f31111j = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.D = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(e());
            }
        }
    }

    public void setItemActiveIndicatorEnabled(boolean z10) {
        this.f31125x = z10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorEnabled(z10);
            }
        }
    }

    public void setItemActiveIndicatorHeight(@Px int i10) {
        this.f31127z = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorHeight(i10);
            }
        }
    }

    public void setItemActiveIndicatorMarginHorizontal(@Px int i10) {
        this.A = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorMarginHorizontal(i10);
            }
        }
    }

    protected void setItemActiveIndicatorResizeable(boolean z10) {
        this.C = z10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorResizeable(z10);
            }
        }
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable n nVar) {
        this.B = nVar;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(e());
            }
        }
    }

    public void setItemActiveIndicatorWidth(@Px int i10) {
        this.f31126y = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorWidth(i10);
            }
        }
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f31118q = drawable;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i10) {
        this.f31120s = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(i10);
            }
        }
    }

    public void setItemIconSize(@Dimension int i10) {
        this.f31112k = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconSize(i10);
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void setItemOnTouchListener(int i10, @Nullable View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            this.f31106e.remove(i10);
        } else {
            this.f31106e.put(i10, onTouchListener);
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView.getItemData().getItemId() == i10) {
                    navigationBarItemView.setOnTouchListener(onTouchListener);
                }
            }
        }
    }

    public void setItemPaddingBottom(@Px int i10) {
        this.f31123v = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingBottom(i10);
            }
        }
    }

    public void setItemPaddingTop(@Px int i10) {
        this.f31122u = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingTop(i10);
            }
        }
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        this.f31119r = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemRippleColor(colorStateList);
            }
        }
    }

    public void setItemTextAppearanceActive(@StyleRes int i10) {
        this.f31116o = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActive(i10);
                ColorStateList colorStateList = this.f31113l;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z10) {
        this.f31117p = z10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActiveBoldEnabled(z10);
            }
        }
    }

    public void setItemTextAppearanceInactive(@StyleRes int i10) {
        this.f31115n = i10;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceInactive(i10);
                ColorStateList colorStateList = this.f31113l;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f31113l = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31108g;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i10) {
        this.f31107f = i10;
    }

    public void setPresenter(@NonNull NavigationBarPresenter navigationBarPresenter) {
        this.E = navigationBarPresenter;
    }
}
