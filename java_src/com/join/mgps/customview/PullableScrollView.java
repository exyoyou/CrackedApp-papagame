package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes3.dex */
public class PullableScrollView extends ScrollView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f65483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f65484c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f65485d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f65486e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f65487f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f65488g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f65489h;

    public interface a {
        void a(ScrollView who, int l10, int t10, int oldl, int oldt);
    }

    public PullableScrollView(Context context) {
        super(context);
        this.f65484c = true;
    }

    public boolean a() {
        return this.f65483b;
    }

    @Override // android.widget.ScrollView, android.view.View
    protected float getBottomFadingEdgeStrength() {
        boolean z10 = this.f65484c;
        return super.getBottomFadingEdgeStrength();
    }

    @Override // android.widget.ScrollView, android.view.View
    protected float getTopFadingEdgeStrength() {
        boolean z10 = this.f65484c;
        return super.getTopFadingEdgeStrength();
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0) {
            this.f65487f = 0.0f;
            this.f65486e = 0.0f;
            this.f65488g = ev.getX();
            this.f65489h = ev.getY();
        } else if (action == 2) {
            float x10 = ev.getX();
            float y10 = ev.getY();
            this.f65486e += Math.abs(x10 - this.f65488g);
            float fAbs = this.f65487f + Math.abs(y10 - this.f65489h);
            this.f65487f = fAbs;
            this.f65488g = x10;
            this.f65489h = y10;
            if (this.f65486e > fAbs) {
                return false;
            }
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // android.view.View
    protected void onScrollChanged(int l10, int t10, int oldl, int oldt) {
        super.onScrollChanged(l10, t10, oldl, oldt);
        a aVar = this.f65485d;
        if (aVar != null) {
            aVar.a(this, l10, t10, oldl, oldt);
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        return super.onTouchEvent(ev);
    }

    public void setIsInnerScroll(boolean isInnerScroll) {
        this.f65483b = isInnerScroll;
    }

    public void setOnScrollChangedListener(a listener) {
        this.f65485d = listener;
    }

    public PullableScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65484c = true;
    }

    public PullableScrollView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65484c = true;
    }
}
