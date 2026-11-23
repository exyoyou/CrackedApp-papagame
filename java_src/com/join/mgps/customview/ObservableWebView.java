package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.join.mgps.enums.ScrollState;

/* JADX INFO: loaded from: classes3.dex */
public class ObservableWebView extends WebView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f65428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65429c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ScrollState f65430d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f65431e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    float f65432f;

    public ObservableWebView(Context context) {
        super(context);
        this.f65428b = getClass().getSimpleName();
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int l10, int t10, int oldl, int oldt) {
        super.onScrollChanged(l10, t10, oldl, oldt);
        int i10 = this.f65429c;
        if (i10 < t10) {
            this.f65430d = ScrollState.UP;
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (t10 < i10) {
            this.f65430d = ScrollState.DOWN;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getScrollY()=");
            sb2.append(getScrollY());
            if (getScrollY() == 0) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        this.f65429c = t10;
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        int actionMasked = ev.getActionMasked();
        if (actionMasked == 0) {
            this.f65431e = ev.getX();
            this.f65432f = ev.getY();
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (actionMasked == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
        } else if (actionMasked == 2) {
            if (Math.abs(ev.getX() - this.f65431e) > Math.abs(ev.getY() - this.f65432f)) {
                getParent().requestDisallowInterceptTouchEvent(false);
            } else {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (getScrollY() == 0) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        return super.onTouchEvent(ev);
    }

    public ObservableWebView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65428b = getClass().getSimpleName();
    }

    public ObservableWebView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65428b = getClass().getSimpleName();
    }
}
