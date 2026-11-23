package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes3.dex */
public class MGViewpagerV4 extends ViewPager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f65289b;

    public MGViewpagerV4(Context context) {
        super(context);
        this.f65289b = true;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        boolean z10 = this.f65289b;
        return !z10 ? super.onInterceptTouchEvent(ev) : z10;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt != null) {
                childAt.measure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(0, 0));
                int measuredHeight = childAt.getMeasuredHeight();
                if (measuredHeight > i10) {
                    i10 = measuredHeight;
                }
            }
        }
        super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(i10, 1073741824));
    }

    public void setIntercept(boolean intercept) {
        this.f65289b = intercept;
    }

    public MGViewpagerV4(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65289b = true;
    }
}
