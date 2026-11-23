package com.kwad.sdk.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes2.dex */
public class f extends ViewPager {
    private int btE;
    private boolean btF;

    public f(@NonNull Context context) {
        super(context);
        this.btF = false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean canScrollHorizontally(int i10) {
        if (this.btF) {
            return super.canScrollHorizontally(i10);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.btF) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int x10 = (int) motionEvent.getX();
        int action = motionEvent.getAction();
        if (action == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 2) {
            int i10 = x10 - this.btE;
            if (getCurrentItem() == 0 && i10 > 0) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        this.btE = x10;
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.btF && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.btF && super.onTouchEvent(motionEvent);
    }

    public void setScrollable(boolean z10) {
        this.btF = z10;
    }

    public f(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.btF = false;
    }
}
