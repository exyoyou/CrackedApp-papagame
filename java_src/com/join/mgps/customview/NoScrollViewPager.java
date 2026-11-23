package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes3.dex */
public class NoScrollViewPager extends ViewPager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f65396b;

    public NoScrollViewPager(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65396b = false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent arg0) {
        if (this.f65396b) {
            return false;
        }
        return super.onInterceptTouchEvent(arg0);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent arg0) {
        if (this.f65396b) {
            return false;
        }
        return super.onTouchEvent(arg0);
    }

    @Override // android.view.View
    public void scrollTo(int x10, int y10) {
        super.scrollTo(x10, y10);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int item, boolean smoothScroll) {
        super.setCurrentItem(item, smoothScroll);
    }

    public void setNoScroll(boolean noScroll) {
        this.f65396b = noScroll;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int item) {
        super.setCurrentItem(item);
    }

    public NoScrollViewPager(Context context) {
        super(context);
        this.f65396b = false;
    }
}
