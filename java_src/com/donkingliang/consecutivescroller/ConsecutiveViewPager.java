package com.donkingliang.consecutivescroller;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class ConsecutiveViewPager extends ViewPager implements a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f26216b;

    public ConsecutiveViewPager(@NonNull Context context) {
        super(context);
    }

    private void a(View child) {
        child.setVerticalScrollBarEnabled(false);
        child.setHorizontalScrollBarEnabled(false);
        child.setOverScrollMode(2);
        ViewCompat.setNestedScrollingEnabled(child, false);
    }

    private boolean b() {
        ViewParent parent = getParent();
        if (!(parent instanceof ConsecutiveScrollerLayout)) {
            return false;
        }
        ConsecutiveScrollerLayout consecutiveScrollerLayout = (ConsecutiveScrollerLayout) parent;
        return consecutiveScrollerLayout.indexOfChild(this) == consecutiveScrollerLayout.getChildCount() - 1;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        super.addView(child, index, params);
        if (e.t(this)) {
            a(child);
            if (child instanceof ViewGroup) {
                ((ViewGroup) child).setClipToPadding(false);
            }
        }
    }

    public int getAdjustHeight() {
        return this.f26216b;
    }

    @Override // com.donkingliang.consecutivescroller.a
    public View getCurrentScrollerView() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getX() == getScrollX() + getPaddingLeft()) {
                return childAt;
            }
        }
        return this;
    }

    @Override // com.donkingliang.consecutivescroller.a
    public List<View> getScrolledViews() {
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        if (childCount > 0) {
            for (int i10 = 0; i10 < childCount; i10++) {
                arrayList.add(getChildAt(i10));
            }
        }
        return arrayList;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (!b() || this.f26216b <= 0) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        } else {
            super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(View.getDefaultSize(0, heightMeasureSpec) - this.f26216b, View.MeasureSpec.getMode(heightMeasureSpec)));
        }
    }

    public void setAdjustHeight(int adjustHeight) {
        if (this.f26216b != adjustHeight) {
            this.f26216b = adjustHeight;
            requestLayout();
        }
    }

    public ConsecutiveViewPager(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }
}
