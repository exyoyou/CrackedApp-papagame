package com.kwad.components.core.page.recycle;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.VelocityTrackerCompat;
import com.kwad.sdk.core.webview.KsAdWebView;

/* JADX INFO: loaded from: classes2.dex */
public class NestedScrollWebView extends KsAdWebView implements NestedScrollingChild {
    private int afi;
    private final int[] afj;
    private final int[] afk;
    private int afl;
    private boolean afm;
    private int afn;
    private int afo;
    private NestedScrollingChildHelper afp;
    private int afq;
    private int mLastMotionY;
    private VelocityTracker mVelocityTracker;

    public NestedScrollWebView(Context context) {
        super(context);
        this.afj = new int[2];
        this.afk = new int[2];
        uL();
    }

    private void uL() {
        this.afq = 0;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.afp = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        this.afo = viewConfiguration.getScaledMaximumFlingVelocity();
        this.afn = viewConfiguration.getScaledMinimumFlingVelocity();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return this.afp.dispatchNestedFling(f10, f11, z10);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return this.afp.dispatchNestedPreFling(f10, f11);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return this.afp.dispatchNestedPreScroll(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.afp.dispatchNestedScroll(i10, i11, i12, i13, iArr);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.afp.hasNestedScrollingParent();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.afp.isNestedScrollingEnabled();
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.afq != 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(((getContext() instanceof Activity ? com.kwad.sdk.c.a.a.k((Activity) getContext()) : com.kwad.sdk.c.a.a.getScreenHeight(getContext())) - (com.kwad.components.core.t.d.wJ() ? com.kwad.sdk.c.a.a.getStatusBarHeight(getContext()) : 0)) - this.afq, 1073741824);
        }
        super.onMeasure(i10, i11);
    }

    @Override // com.kwad.sdk.core.webview.KsAdWebView, android.webkit.WebView, android.view.View
    public void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        if (hasFocus()) {
            return;
        }
        requestFocus();
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:46:0x012d  */
    @Override // com.kwad.sdk.core.webview.KsAdWebView, android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent;
        float f10;
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        boolean z10 = false;
        if (actionMasked == 0) {
            this.afl = 0;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        int y10 = (int) motionEvent.getY();
        motionEvent.offsetLocation(0.0f, this.afl);
        if (actionMasked == 0) {
            this.mLastMotionY = y10;
            this.afi = (int) motionEvent.getX();
            startNestedScroll(2);
            int[] iArr = this.afk;
            iArr[0] = 0;
            iArr[1] = 0;
            int[] iArr2 = this.afj;
            iArr2[0] = 0;
            iArr2[1] = 0;
            zOnTouchEvent = super.onTouchEvent(motionEvent);
            this.afm = false;
        } else if (actionMasked == 1) {
            this.mVelocityTracker.addMovement(motionEvent);
            this.mVelocityTracker.computeCurrentVelocity(1000, this.afo);
            f10 = -VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, MotionEventCompat.getPointerId(motionEvent, actionIndex));
            if (Math.abs(f10) > this.afn && !dispatchNestedPreFling(0.0f, f10) && hasNestedScrollingParent()) {
                dispatchNestedFling(0.0f, f10, true);
            }
            boolean zOnTouchEvent2 = super.onTouchEvent(motionEvent);
            stopNestedScroll();
            if (Math.abs(motionEvent.getY() - this.mLastMotionY) < 10.0f) {
                Math.abs(motionEvent.getX() - this.afi);
            }
            zOnTouchEvent = zOnTouchEvent2;
            z10 = true;
        } else if (actionMasked == 2) {
            int i10 = this.mLastMotionY - y10;
            if (dispatchNestedPreScroll(0, i10, this.afk, this.afj)) {
                i10 -= this.afk[1];
                motionEventObtain.offsetLocation(0.0f, this.afj[1]);
                this.afl += this.afj[1];
            }
            int scrollY = getScrollY();
            this.mLastMotionY = y10 - this.afj[1];
            int iMax = Math.max(0, scrollY + i10);
            int i11 = i10 - (iMax - scrollY);
            if (dispatchNestedScroll(0, iMax - i11, 0, i11, this.afj)) {
                int i12 = this.mLastMotionY;
                int i13 = this.afj[1];
                this.mLastMotionY = i12 - i13;
                motionEventObtain.offsetLocation(0.0f, i13);
                this.afl += this.afj[1];
            }
            if (Math.abs(this.afk[1]) >= 5 || Math.abs(this.afj[1]) >= 5) {
                if (!this.afm) {
                    this.afm = true;
                    super.onTouchEvent(MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0));
                }
                zOnTouchEvent = false;
            } else {
                if (this.afm) {
                    this.afm = false;
                    zOnTouchEvent = false;
                } else {
                    zOnTouchEvent = super.onTouchEvent(motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        } else if (actionMasked == 3) {
            this.mVelocityTracker.addMovement(motionEvent);
            this.mVelocityTracker.computeCurrentVelocity(1000, this.afo);
            f10 = -VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, MotionEventCompat.getPointerId(motionEvent, actionIndex));
            if (Math.abs(f10) > this.afn) {
                dispatchNestedFling(0.0f, f10, true);
            }
            boolean zOnTouchEvent3 = super.onTouchEvent(motionEvent);
            stopNestedScroll();
            if (Math.abs(motionEvent.getY() - this.mLastMotionY) < 10.0f) {
                Math.abs(motionEvent.getX() - this.afi);
            }
            zOnTouchEvent = zOnTouchEvent3;
            z10 = true;
        } else if (actionMasked != 5) {
            zOnTouchEvent = false;
        } else {
            stopNestedScroll();
            zOnTouchEvent = super.onTouchEvent(motionEvent);
        }
        if (!z10) {
            this.mVelocityTracker.addMovement(motionEvent);
        }
        return zOnTouchEvent;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z10) {
        this.afp.setNestedScrollingEnabled(z10);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i10) {
        return this.afp.startNestedScroll(i10);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.afp.stopNestedScroll();
    }

    public NestedScrollWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.afj = new int[2];
        this.afk = new int[2];
        uL();
    }

    public NestedScrollWebView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.afj = new int[2];
        this.afk = new int[2];
        uL();
    }
}
