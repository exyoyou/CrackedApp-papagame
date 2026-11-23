package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class NestedScrollWebView extends WebView implements NestedScrollingChild {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f65369g = "NestedScrollWebView";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int[] f65371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f65372d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private NestedScrollingChildHelper f65374f;

    public NestedScrollWebView(Context context) {
        super(context);
        this.f65371c = new int[2];
        this.f65372d = new int[2];
        a();
    }

    private void a() {
        this.f65374f = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float velocityX, float velocityY, boolean consumed) {
        return this.f65374f.dispatchNestedFling(velocityX, velocityY, consumed);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float velocityX, float velocityY) {
        return this.f65374f.dispatchNestedPreFling(velocityX, velocityY);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int dx, int dy, int[] consumed, int[] offsetInWindow) {
        return this.f65374f.dispatchNestedPreScroll(dx, dy, consumed, offsetInWindow);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow) {
        return this.f65374f.dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.f65374f.hasNestedScrollingParent();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f65374f.isNestedScrollingEnabled();
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        MotionEvent motionEventObtain = MotionEvent.obtain(event);
        int actionMasked = MotionEventCompat.getActionMasked(event);
        if (actionMasked == 0) {
            this.f65373e = 0;
        }
        int y10 = (int) event.getY();
        event.offsetLocation(0.0f, this.f65373e);
        if (actionMasked == 0) {
            this.f65370b = y10;
            startNestedScroll(2);
            return super.onTouchEvent(event);
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int i10 = this.f65370b - y10;
                if (dispatchNestedPreScroll(0, i10, this.f65372d, this.f65371c)) {
                    i10 -= this.f65372d[1];
                    motionEventObtain.offsetLocation(0.0f, this.f65371c[1]);
                    this.f65373e += this.f65371c[1];
                }
                int scrollY = getScrollY();
                this.f65370b = y10 - this.f65371c[1];
                int iMax = Math.max(0, scrollY + i10);
                int i11 = i10 - (iMax - scrollY);
                if (dispatchNestedScroll(0, iMax - i11, 0, i11, this.f65371c)) {
                    int i12 = this.f65370b;
                    int i13 = this.f65371c[1];
                    this.f65370b = i12 - i13;
                    motionEventObtain.offsetLocation(0.0f, i13);
                    this.f65373e += this.f65371c[1];
                }
                if (this.f65372d[1] != 0 || this.f65371c[1] != 0) {
                    return false;
                }
                motionEventObtain.recycle();
                return super.onTouchEvent(motionEventObtain);
            }
            if (actionMasked != 3 && actionMasked != 5) {
                return false;
            }
        }
        stopNestedScroll();
        return super.onTouchEvent(event);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean enabled) {
        this.f65374f.setNestedScrollingEnabled(enabled);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int axes) {
        return this.f65374f.startNestedScroll(axes);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.f65374f.stopNestedScroll();
    }

    public NestedScrollWebView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65371c = new int[2];
        this.f65372d = new int[2];
        a();
    }

    public NestedScrollWebView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f65371c = new int[2];
        this.f65372d = new int[2];
        a();
    }
}
