package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;
import androidx.core.view.MotionEventCompat;
import com.join.mgps.enums.ScrollState;

/* JADX INFO: loaded from: classes3.dex */
public class ObservableScrollView extends ScrollView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f65418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.join.mgps.callbacks.o f65419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65420d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ScrollState f65422f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f65423g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f65424h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f65425i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f65426j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    float f65427k;

    public ObservableScrollView(Context context) {
        super(context);
        this.f65418b = getClass().getSimpleName();
        this.f65425i = false;
    }

    public int getCurrentScrollY() {
        return this.f65421e;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (MotionEventCompat.getActionMasked(ev) == 0) {
            this.f65424h = false;
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // android.view.View
    protected void onScrollChanged(int l10, int t10, int oldl, int oldt) {
        super.onScrollChanged(l10, t10, oldl, oldt);
        com.join.mgps.callbacks.o oVar = this.f65419c;
        if (oVar != null) {
            oVar.a(t10, this.f65423g, this.f65424h);
        }
        if (this.f65423g) {
            this.f65423g = false;
        }
        int i10 = this.f65420d;
        if (i10 < t10) {
            this.f65422f = ScrollState.UP;
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (t10 < i10) {
            this.f65422f = ScrollState.DOWN;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getScrollY()=");
            sb2.append(getScrollY());
            if (getScrollY() == 0) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        this.f65420d = t10;
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        int actionMasked = ev.getActionMasked();
        if (actionMasked == 0) {
            this.f65425i = false;
            this.f65426j = ev.getX();
            this.f65427k = ev.getY();
            this.f65424h = true;
            this.f65423g = true;
            com.join.mgps.callbacks.o oVar = this.f65419c;
            if (oVar != null) {
                oVar.b();
            }
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (actionMasked == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
        } else if (actionMasked == 2) {
            if (Math.abs(ev.getX() - this.f65426j) > Math.abs(ev.getY() - this.f65427k)) {
                getParent().requestDisallowInterceptTouchEvent(false);
            } else {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (getScrollY() == 0) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
            this.f65425i = true;
        } else if (actionMasked == 3) {
            this.f65424h = false;
            com.join.mgps.callbacks.o oVar2 = this.f65419c;
            if (oVar2 != null) {
                oVar2.c(this.f65422f);
            }
        }
        return super.onTouchEvent(ev);
    }

    public void setScrollViewCallbacks(com.join.mgps.callbacks.o listener) {
        this.f65419c = listener;
    }

    public ObservableScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65418b = getClass().getSimpleName();
        this.f65425i = false;
    }

    public ObservableScrollView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65418b = getClass().getSimpleName();
        this.f65425i = false;
    }
}
