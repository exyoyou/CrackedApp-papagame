package com.join.android.app.component.photoviewer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes5.dex */
public class HackyViewPager extends ViewPager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f35000b = "HackyViewPager";

    public HackyViewPager(Context context) {
        super(context);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        try {
            return super.onInterceptTouchEvent(ev);
        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException unused) {
            return false;
        }
    }

    public HackyViewPager(Context context, AttributeSet attrs) {
        super(context, attrs);
    }
}
