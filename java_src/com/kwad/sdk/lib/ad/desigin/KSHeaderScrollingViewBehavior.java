package com.kwad.sdk.lib.ad.desigin;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Keep;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Keep
abstract class KSHeaderScrollingViewBehavior extends KSViewOffsetBehavior<View> {
    private int mOverlayTop;
    final Rect mTempRect1;
    final Rect mTempRect2;
    private int mVerticalLayoutGap;

    public KSHeaderScrollingViewBehavior() {
        this.mTempRect1 = new Rect();
        this.mTempRect2 = new Rect();
        this.mVerticalLayoutGap = 0;
    }

    private static int resolveGravity(int i10) {
        if (i10 == 0) {
            return 8388659;
        }
        return i10;
    }

    abstract View findFirstDependency(List<View> list);

    final int getOverlapPixelsForOffset(View view) {
        if (this.mOverlayTop == 0) {
            return 0;
        }
        float overlapRatioForOffset = getOverlapRatioForOffset(view);
        int i10 = this.mOverlayTop;
        return MathUtils.clamp((int) (overlapRatioForOffset * i10), 0, i10);
    }

    float getOverlapRatioForOffset(View view) {
        return 1.0f;
    }

    public final int getOverlayTop() {
        return this.mOverlayTop;
    }

    int getScrollRange(View view) {
        return view.getMeasuredHeight();
    }

    final int getVerticalLayoutGap() {
        return this.mVerticalLayoutGap;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSViewOffsetBehavior
    protected void layoutChild(KSCoordinatorLayout kSCoordinatorLayout, View view, int i10) {
        View viewFindFirstDependency = findFirstDependency(kSCoordinatorLayout.getDependencies(view));
        if (viewFindFirstDependency == null) {
            super.layoutChild(kSCoordinatorLayout, view, i10);
            this.mVerticalLayoutGap = 0;
            return;
        }
        KSCoordinatorLayout.LayoutParams layoutParams = (KSCoordinatorLayout.LayoutParams) view.getLayoutParams();
        Rect rect = this.mTempRect1;
        rect.set(kSCoordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, viewFindFirstDependency.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (kSCoordinatorLayout.getWidth() - kSCoordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((kSCoordinatorLayout.getHeight() + viewFindFirstDependency.getBottom()) - kSCoordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        WindowInsetsCompat lastWindowInsets = kSCoordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(kSCoordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
            rect.left += lastWindowInsets.getSystemWindowInsetLeft();
            rect.right -= lastWindowInsets.getSystemWindowInsetRight();
        }
        Rect rect2 = this.mTempRect2;
        GravityCompat.apply(resolveGravity(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i10);
        int overlapPixelsForOffset = getOverlapPixelsForOffset(viewFindFirstDependency);
        view.layout(rect2.left, rect2.top - overlapPixelsForOffset, rect2.right, rect2.bottom - overlapPixelsForOffset);
        this.mVerticalLayoutGap = rect2.top - viewFindFirstDependency.getBottom();
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean onMeasureChild(KSCoordinatorLayout kSCoordinatorLayout, View view, int i10, int i11, int i12, int i13) {
        View viewFindFirstDependency;
        int i14 = view.getLayoutParams().height;
        if ((i14 != -1 && i14 != -2) || (viewFindFirstDependency = findFirstDependency(kSCoordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        if (ViewCompat.getFitsSystemWindows(viewFindFirstDependency) && !ViewCompat.getFitsSystemWindows(view)) {
            ViewCompat.setFitsSystemWindows(view, true);
            if (ViewCompat.getFitsSystemWindows(view)) {
                view.requestLayout();
                return true;
            }
        }
        int size = View.MeasureSpec.getSize(i12);
        if (size == 0) {
            size = kSCoordinatorLayout.getHeight();
        }
        kSCoordinatorLayout.onMeasureChild(view, i10, i11, View.MeasureSpec.makeMeasureSpec((size - viewFindFirstDependency.getMeasuredHeight()) + getScrollRange(viewFindFirstDependency), i14 == -1 ? 1073741824 : Integer.MIN_VALUE), i13);
        return true;
    }

    public final void setOverlayTop(int i10) {
        this.mOverlayTop = i10;
    }

    public KSHeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempRect1 = new Rect();
        this.mTempRect2 = new Rect();
        this.mVerticalLayoutGap = 0;
    }
}
