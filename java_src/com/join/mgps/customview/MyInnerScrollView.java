package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes3.dex */
public class MyInnerScrollView extends ScrollView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PullableScrollView f65314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f65315c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65316d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f65317e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f65318f;

    public interface a {
        void a();
    }

    public MyInnerScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65316d = 0;
        this.f65317e = 10;
    }

    private int getScrollRange() {
        if (getChildCount() > 0) {
            return Math.max(0, getChildAt(0).getHeight() - getHeight());
        }
        return 0;
    }

    private void setParentScrollAble(boolean flag) {
        if (this.f65314b.a()) {
            this.f65314b.requestDisallowInterceptTouchEvent(!flag);
        }
    }

    public void a() {
        overScrollBy(0, -this.f65316d, 0, getScrollY(), 0, getScrollRange(), 0, 0, true);
        this.f65316d = 0;
    }

    public void b(View targetView) {
        int top = (targetView.getTop() - this.f65317e) - getScrollY();
        this.f65316d = top;
        overScrollBy(0, top, 0, getScrollY(), 0, getScrollRange(), 0, 0, true);
    }

    public PullableScrollView getParentScrollView() {
        return this.f65314b;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method onInterceptTouchEvent() called.parentScrollView=");
        sb2.append(this.f65314b);
        PullableScrollView pullableScrollView = this.f65314b;
        if (pullableScrollView == null) {
            return super.onInterceptTouchEvent(ev);
        }
        if (!pullableScrollView.a()) {
            setParentScrollAble(true);
        } else {
            if (ev.getAction() == 0) {
                this.f65318f = (int) ev.getY();
                setParentScrollAble(false);
                return super.onInterceptTouchEvent(ev);
            }
            if (ev.getAction() == 1) {
                setParentScrollAble(true);
            } else {
                ev.getAction();
            }
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // android.view.View
    protected void onScrollChanged(int l10, int t10, int oldl, int oldt) {
        a aVar;
        try {
            if (t10 + getHeight() < computeVerticalScrollRange() - 300 || (aVar = this.f65315c) == null) {
                return;
            }
            aVar.a();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        View childAt = getChildAt(0);
        if (this.f65314b != null && ev.getAction() == 2) {
            int measuredHeight = childAt.getMeasuredHeight() - getMeasuredHeight();
            int scrollY = getScrollY();
            int y10 = (int) ev.getY();
            int i10 = this.f65318f;
            if (i10 < y10) {
                if (scrollY <= 0) {
                    setParentScrollAble(true);
                    return false;
                }
                setParentScrollAble(false);
            } else if (i10 > y10) {
                if (scrollY >= measuredHeight) {
                    setParentScrollAble(true);
                    return false;
                }
                setParentScrollAble(false);
            }
            this.f65318f = y10;
        }
        return super.onTouchEvent(ev);
    }

    public void setParentScrollView(PullableScrollView parentScrollView) {
        this.f65314b = parentScrollView;
    }

    public void setScrollBottomListener(a scrollBottomListener) {
        this.f65315c = scrollBottomListener;
    }
}
