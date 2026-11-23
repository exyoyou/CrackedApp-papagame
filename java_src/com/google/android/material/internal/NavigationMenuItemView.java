package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class NavigationMenuItemView extends ForegroundLinearLayout implements MenuView.ItemView {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int[] f30788s = {R.attr.state_checked};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f30789h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f30790i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f30791j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f30792k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final CheckedTextView f30793l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private FrameLayout f30794m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private MenuItemImpl f30795n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ColorStateList f30796o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f30797p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Drawable f30798q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final AccessibilityDelegateCompat f30799r;

    class a extends AccessibilityDelegateCompat {
        a() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCheckable(NavigationMenuItemView.this.f30791j);
        }
    }

    public NavigationMenuItemView(@NonNull Context context) {
        this(context, null);
    }

    private void a() {
        if (e()) {
            this.f30793l.setVisibility(8);
            FrameLayout frameLayout = this.f30794m;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) layoutParams).width = -1;
                this.f30794m.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.f30793l.setVisibility(0);
        FrameLayout frameLayout2 = this.f30794m;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) layoutParams2).width = -2;
            this.f30794m.setLayoutParams(layoutParams2);
        }
    }

    @Nullable
    private StateListDrawable b() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f30788s, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    private boolean e() {
        return this.f30795n.getTitle() == null && this.f30795n.getIcon() == null && this.f30795n.getActionView() != null;
    }

    private void setActionView(@Nullable View view) {
        if (view != null) {
            if (this.f30794m == null) {
                this.f30794m = (FrameLayout) ((ViewStub) findViewById(com.google.android.material.R.id.design_menu_item_action_area_stub)).inflate();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.f30794m.removeAllViews();
            this.f30794m.addView(view);
        }
    }

    public void c(@NonNull MenuItemImpl menuItemImpl, boolean z10) {
        this.f30792k = z10;
        initialize(menuItemImpl, 0);
    }

    public void d() {
        FrameLayout frameLayout = this.f30794m;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.f30793l.setCompoundDrawables(null, null, null, null);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f30795n;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(@NonNull MenuItemImpl menuItemImpl, int i10) {
        this.f30795n = menuItemImpl;
        if (menuItemImpl.getItemId() > 0) {
            setId(menuItemImpl.getItemId());
        }
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ViewCompat.setBackground(this, b());
        }
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setTitle(menuItemImpl.getTitle());
        setIcon(menuItemImpl.getIcon());
        setActionView(menuItemImpl.getActionView());
        setContentDescription(menuItemImpl.getContentDescription());
        TooltipCompat.setTooltipText(this, menuItemImpl.getTooltipText());
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        MenuItemImpl menuItemImpl = this.f30795n;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f30795n.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f30788s);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z10) {
        refreshDrawableState();
        if (this.f30791j != z10) {
            this.f30791j = z10;
            this.f30799r.sendAccessibilityEvent(this.f30793l, 2048);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z10) {
        refreshDrawableState();
        this.f30793l.setChecked(z10);
        CheckedTextView checkedTextView = this.f30793l;
        checkedTextView.setTypeface(checkedTextView.getTypeface(), (z10 && this.f30792k) ? 1 : 0);
    }

    public void setHorizontalPadding(int i10) {
        setPadding(i10, getPaddingTop(), i10, getPaddingBottom());
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            if (this.f30797p) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = DrawableCompat.wrap(drawable).mutate();
                DrawableCompat.setTintList(drawable, this.f30796o);
            }
            int i10 = this.f30789h;
            drawable.setBounds(0, 0, i10, i10);
        } else if (this.f30790i) {
            if (this.f30798q == null) {
                Drawable drawable2 = ResourcesCompat.getDrawable(getResources(), com.google.android.material.R.drawable.navigation_empty_icon, getContext().getTheme());
                this.f30798q = drawable2;
                if (drawable2 != null) {
                    int i11 = this.f30789h;
                    drawable2.setBounds(0, 0, i11, i11);
                }
            }
            drawable = this.f30798q;
        }
        TextViewCompat.setCompoundDrawablesRelative(this.f30793l, drawable, null, null, null);
    }

    public void setIconPadding(int i10) {
        this.f30793l.setCompoundDrawablePadding(i10);
    }

    public void setIconSize(@Dimension int i10) {
        this.f30789h = i10;
    }

    void setIconTintList(ColorStateList colorStateList) {
        this.f30796o = colorStateList;
        this.f30797p = colorStateList != null;
        MenuItemImpl menuItemImpl = this.f30795n;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    public void setMaxLines(int i10) {
        this.f30793l.setMaxLines(i10);
    }

    public void setNeedsEmptyIcon(boolean z10) {
        this.f30790i = z10;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z10, char c10) {
    }

    public void setTextAppearance(int i10) {
        TextViewCompat.setTextAppearance(this.f30793l, i10);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f30793l.setTextColor(colorStateList);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        this.f30793l.setText(charSequence);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f30792k = true;
        a aVar = new a();
        this.f30799r = aVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(com.google.android.material.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(com.google.android.material.R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(com.google.android.material.R.id.design_menu_item_text);
        this.f30793l = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        ViewCompat.setAccessibilityDelegate(checkedTextView, aVar);
    }
}
