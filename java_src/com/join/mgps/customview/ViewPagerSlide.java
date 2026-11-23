package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes3.dex */
public class ViewPagerSlide extends ViewPager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f65967b;

    public ViewPagerSlide(Context context) {
        super(context);
        this.f65967b = false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        boolean z10 = this.f65967b;
        return z10 ? super.onInterceptTouchEvent(ev) : z10;
    }

    public void setSlide(boolean slide) {
        this.f65967b = slide;
    }

    public ViewPagerSlide(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65967b = false;
    }
}
