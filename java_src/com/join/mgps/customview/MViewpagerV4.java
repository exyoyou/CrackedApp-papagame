package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes3.dex */
public class MViewpagerV4 extends ViewPager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f65299b;

    public MViewpagerV4(Context context) {
        super(context);
        this.f65299b = true;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        boolean z10 = this.f65299b;
        return !z10 ? super.onInterceptTouchEvent(ev) : z10;
    }

    public void setIntercept(boolean intercept) {
        this.f65299b = intercept;
    }

    public MViewpagerV4(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65299b = true;
    }
}
