package com.join.android.app.component.photoviewer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes5.dex */
public class MultiTouchViewPager extends ViewPager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f35016b;

    public MultiTouchViewPager(Context context) {
        super(context);
        this.f35016b = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@NonNull MotionEvent ev) {
        if (ev.getPointerCount() <= 1 || !this.f35016b) {
            return super.dispatchTouchEvent(ev);
        }
        requestDisallowInterceptTouchEvent(false);
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(ev);
        requestDisallowInterceptTouchEvent(true);
        return zDispatchTouchEvent;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        this.f35016b = disallowIntercept;
        super.requestDisallowInterceptTouchEvent(disallowIntercept);
    }

    public MultiTouchViewPager(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f35016b = false;
    }
}
