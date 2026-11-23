package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes3.dex */
public class ViewPagerCompat extends ViewPager {
    public ViewPagerCompat(Context context) {
        super(context);
    }

    @Override // androidx.viewpager.widget.ViewPager
    protected boolean canScroll(View v10, boolean checkV, int dx, int x10, int y10) {
        int i10;
        if (v10 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) v10;
            int scrollX = v10.getScrollX();
            int scrollY = v10.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i11 = x10 + scrollX;
                if (i11 >= childAt.getLeft() && i11 < childAt.getRight() && (i10 = y10 + scrollY) >= childAt.getTop() && i10 < childAt.getBottom() && canScroll(childAt, true, dx, i11 - childAt.getLeft(), i10 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (checkV) {
            return v10 instanceof ViewPager ? v10.canScrollHorizontally(-dx) : ViewCompat.canScrollHorizontally(v10, -dx);
        }
        return false;
    }

    public ViewPagerCompat(Context context, AttributeSet attrs) {
        super(context, attrs);
    }
}
