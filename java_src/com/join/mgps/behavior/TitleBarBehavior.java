package com.join.mgps.behavior;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class TitleBarBehavior extends CoordinatorLayout.Behavior {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Rect f64138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Rect f64139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f64140d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f64141e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f64142f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f64143g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f64144h;

    public TitleBarBehavior(Context context) {
        this(context, null);
    }

    private static int resolveGravity(int gravity) {
        if (gravity == 0) {
            return 8388659;
        }
        return gravity;
    }

    AppBarLayout findFirstDependency(List<View> views) {
        int size = views.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = views.get(i10);
            if (view instanceof AppBarLayout) {
                return (AppBarLayout) view;
            }
        }
        return null;
    }

    int getScrollRange(View v10) {
        return v10 instanceof AppBarLayout ? ((AppBarLayout) v10).getTotalScrollRange() : v10.getMeasuredHeight();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean layoutDependsOn(@NonNull CoordinatorLayout parent, @NonNull View child, @NonNull View dependency) {
        return dependency instanceof AppBarLayout;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onDependentViewChanged(@NonNull CoordinatorLayout parent, @NonNull View child, @NonNull View dependency) {
        this.f64144h = this.f64143g + this.f64142f + this.f64140d;
        if (dependency.getBottom() >= this.f64144h) {
            ViewCompat.offsetTopAndBottom(child, (dependency.getBottom() - child.getTop()) - this.f64140d);
            this.f64141e = true;
        } else {
            this.f64141e = false;
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout parent, @NonNull View child, int layoutDirection) {
        AppBarLayout appBarLayoutFindFirstDependency = findFirstDependency(parent.getDependencies(child));
        if (appBarLayoutFindFirstDependency == null) {
            parent.onLayoutChild(child, layoutDirection);
            return true;
        }
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) child.getLayoutParams();
        Rect rect = this.f64138b;
        rect.set(parent.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, appBarLayoutFindFirstDependency.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (parent.getWidth() - parent.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((parent.getHeight() + appBarLayoutFindFirstDependency.getBottom()) - parent.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        WindowInsetsCompat lastWindowInsets = parent.getLastWindowInsets();
        if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(parent) && !ViewCompat.getFitsSystemWindows(child)) {
            rect.left += lastWindowInsets.getSystemWindowInsetLeft();
            rect.right -= lastWindowInsets.getSystemWindowInsetRight();
        }
        Rect rect2 = this.f64139c;
        if (this.f64141e) {
            GravityCompat.apply(resolveGravity(layoutParams.gravity), child.getMeasuredWidth(), child.getMeasuredHeight(), rect, rect2, layoutDirection);
            child.layout(rect2.left, rect2.top - this.f64140d, rect2.right, rect2.bottom);
            return true;
        }
        int i10 = rect2.left;
        int i11 = this.f64144h;
        int i12 = this.f64140d;
        child.layout(i10, i11 - i12, rect2.right, rect2.bottom - i12);
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(CoordinatorLayout parent, View child, int parentWidthMeasureSpec, int widthUsed, int parentHeightMeasureSpec, int heightUsed) {
        AppBarLayout appBarLayoutFindFirstDependency;
        int i10 = child.getLayoutParams().height;
        if ((i10 != -1 && i10 != -2) || (appBarLayoutFindFirstDependency = findFirstDependency(parent.getDependencies(child))) == null) {
            return false;
        }
        if (ViewCompat.getFitsSystemWindows(appBarLayoutFindFirstDependency) && !ViewCompat.getFitsSystemWindows(child)) {
            ViewCompat.setFitsSystemWindows(child, true);
            if (ViewCompat.getFitsSystemWindows(child)) {
                child.requestLayout();
                return true;
            }
        }
        int size = View.MeasureSpec.getSize(parentHeightMeasureSpec);
        if (size == 0) {
            size = parent.getHeight();
        }
        parent.onMeasureChild(child, parentWidthMeasureSpec, widthUsed, View.MeasureSpec.makeMeasureSpec((size - appBarLayoutFindFirstDependency.getMeasuredHeight()) + getScrollRange(appBarLayoutFindFirstDependency), i10 == -1 ? 1073741824 : Integer.MIN_VALUE), heightUsed);
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View child, @NonNull View directTargetChild, @NonNull View target, int axes, int type) {
        return false;
    }

    public void setOverlayTop(int overlayTop) {
        this.f64140d = overlayTop;
    }

    public TitleBarBehavior(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64138b = new Rect();
        this.f64139c = new Rect();
        this.f64140d = 60;
        this.f64141e = true;
        this.f64142f = 0;
        this.f64143g = 0;
        this.f64144h = 0;
        this.f64143g = (int) context.getResources().getDimension(R.dimen.wdp96);
        this.f64142f = context.getResources().getDimensionPixelSize(context.getResources().getIdentifier("status_bar_height", "dimen", "android"));
    }
}
