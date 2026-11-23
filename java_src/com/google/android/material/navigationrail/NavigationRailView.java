package com.google.android.material.navigationrail;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
import com.google.android.material.animation.b;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.p0;
import com.google.android.material.navigation.NavigationBarView;
import com.google.android.material.resources.d;

/* JADX INFO: loaded from: classes5.dex */
public class NavigationRailView extends NavigationBarView {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final int f31179r = 49;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final int f31180s = 7;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f31181t = 49;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    static final int f31182u = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f31183m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private View f31184n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private Boolean f31185o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private Boolean f31186p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private Boolean f31187q;

    class a implements p0.d {
        a() {
        }

        @Override // com.google.android.material.internal.p0.d
        @NonNull
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull p0.e eVar) {
            Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
            NavigationRailView navigationRailView = NavigationRailView.this;
            if (navigationRailView.t(navigationRailView.f31185o)) {
                eVar.f30956b += insets.top;
            }
            NavigationRailView navigationRailView2 = NavigationRailView.this;
            if (navigationRailView2.t(navigationRailView2.f31186p)) {
                eVar.f30958d += insets.bottom;
            }
            NavigationRailView navigationRailView3 = NavigationRailView.this;
            if (navigationRailView3.t(navigationRailView3.f31187q)) {
                eVar.f30955a += p0.s(view) ? insets.right : insets.left;
            }
            eVar.a(view);
            return windowInsetsCompat;
        }
    }

    public NavigationRailView(@NonNull Context context) {
        this(context, null);
    }

    private NavigationRailMenuView getNavigationRailMenuView() {
        return (NavigationRailMenuView) getMenuView();
    }

    private void o() {
        p0.h(this, new a());
    }

    private boolean q() {
        View view = this.f31184n;
        return (view == null || view.getVisibility() == 8) ? false : true;
    }

    private int r(int i10) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i10) == 1073741824 || suggestedMinimumWidth <= 0) {
            return i10;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), suggestedMinimumWidth + getPaddingLeft() + getPaddingRight()), 1073741824);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean t(Boolean bool) {
        return bool != null ? bool.booleanValue() : ViewCompat.getFitsSystemWindows(this);
    }

    @Nullable
    public View getHeaderView() {
        return this.f31184n;
    }

    public int getItemMinimumHeight() {
        return ((NavigationRailMenuView) getMenuView()).getItemMinimumHeight();
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 7;
    }

    public int getMenuGravity() {
        return getNavigationRailMenuView().getMenuGravity();
    }

    public void m(@LayoutRes int i10) {
        n(LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) this, false));
    }

    public void n(@NonNull View view) {
        s();
        this.f31184n = view;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        layoutParams.topMargin = this.f31183m;
        addView(view, 0, layoutParams);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        NavigationRailMenuView navigationRailMenuView = getNavigationRailMenuView();
        int i14 = 0;
        if (q()) {
            int bottom = this.f31184n.getBottom() + this.f31183m;
            int top = navigationRailMenuView.getTop();
            if (top < bottom) {
                i14 = bottom - top;
            }
        } else if (navigationRailMenuView.s()) {
            i14 = this.f31183m;
        }
        if (i14 > 0) {
            navigationRailMenuView.layout(navigationRailMenuView.getLeft(), navigationRailMenuView.getTop() + i14, navigationRailMenuView.getRight(), navigationRailMenuView.getBottom() + i14);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iR = r(i10);
        super.onMeasure(iR, i11);
        if (q()) {
            measureChild(getNavigationRailMenuView(), iR, View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.f31184n.getMeasuredHeight()) - this.f31183m, Integer.MIN_VALUE));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.navigation.NavigationBarView
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public NavigationRailMenuView c(@NonNull Context context) {
        return new NavigationRailMenuView(context);
    }

    public void s() {
        View view = this.f31184n;
        if (view != null) {
            removeView(view);
            this.f31184n = null;
        }
    }

    public void setItemMinimumHeight(@Px int i10) {
        ((NavigationRailMenuView) getMenuView()).setItemMinimumHeight(i10);
    }

    public void setMenuGravity(int i10) {
        getNavigationRailMenuView().setMenuGravity(i10);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.navigationRailStyle);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R.style.Widget_MaterialComponents_NavigationRailView);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f31185o = null;
        this.f31186p = null;
        this.f31187q = null;
        this.f31183m = getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_rail_margin);
        Context context2 = getContext();
        TintTypedArray tintTypedArrayL = g0.l(context2, attributeSet, R.styleable.NavigationRailView, i10, i11, new int[0]);
        int resourceId = tintTypedArrayL.getResourceId(R.styleable.NavigationRailView_headerLayout, 0);
        if (resourceId != 0) {
            m(resourceId);
        }
        setMenuGravity(tintTypedArrayL.getInt(R.styleable.NavigationRailView_menuGravity, 49));
        int i12 = R.styleable.NavigationRailView_itemMinHeight;
        if (tintTypedArrayL.hasValue(i12)) {
            setItemMinimumHeight(tintTypedArrayL.getDimensionPixelSize(i12, -1));
        }
        int i13 = R.styleable.NavigationRailView_paddingTopSystemWindowInsets;
        if (tintTypedArrayL.hasValue(i13)) {
            this.f31185o = Boolean.valueOf(tintTypedArrayL.getBoolean(i13, false));
        }
        int i14 = R.styleable.NavigationRailView_paddingBottomSystemWindowInsets;
        if (tintTypedArrayL.hasValue(i14)) {
            this.f31186p = Boolean.valueOf(tintTypedArrayL.getBoolean(i14, false));
        }
        int i15 = R.styleable.NavigationRailView_paddingStartSystemWindowInsets;
        if (tintTypedArrayL.hasValue(i15)) {
            this.f31187q = Boolean.valueOf(tintTypedArrayL.getBoolean(i15, false));
        }
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.m3_navigation_rail_item_padding_top_with_large_font);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.m3_navigation_rail_item_padding_bottom_with_large_font);
        float fB = b.b(0.0f, 1.0f, 0.3f, 1.0f, d.f(context2) - 1.0f);
        float fC = b.c(getItemPaddingTop(), dimensionPixelOffset, fB);
        float fC2 = b.c(getItemPaddingBottom(), dimensionPixelOffset2, fB);
        setItemPaddingTop(Math.round(fC));
        setItemPaddingBottom(Math.round(fC2));
        tintTypedArrayL.recycle();
        o();
    }
}
