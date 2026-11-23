package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes3.dex */
public class BannerViewPager extends ViewPager {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f64353f = 5;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected ViewPager f64354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f64355c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f64356d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f64357e;

    public BannerViewPager(Context context) {
        super(context);
        this.f64354b = null;
        this.f64356d = 0.0f;
        this.f64357e = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0 || action == 1) {
            this.f64356d = 0.0f;
            this.f64357e = false;
        } else if (action == 2) {
            float f10 = this.f64356d;
            if (f10 != 0.0f) {
                this.f64356d = f10 - ev.getX();
            }
            if (Math.abs(this.f64356d) > 5.0f) {
                this.f64357e = true;
            }
            getParent().requestDisallowInterceptTouchEvent(this.f64357e);
            this.f64356d = ev.getX();
        }
        return super.dispatchTouchEvent(ev);
    }

    public int getTotalSize() {
        return this.f64355c;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    public void setTotalSize(int totalSize) {
        this.f64355c = totalSize;
    }

    public BannerViewPager(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64354b = null;
        this.f64356d = 0.0f;
        this.f64357e = false;
    }
}
