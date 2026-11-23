package com.kwad.sdk.lib.ad.desigin;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.annotation.Keep;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public abstract class KSHeaderBehavior<V extends View> extends KSViewOffsetBehavior<V> {
    private static final int INVALID_POINTER = -1;
    private int mActivePointerId;
    private Runnable mFlingRunnable;
    private boolean mIsBeingDragged;
    private int mLastMotionY;
    OverScroller mScroller;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    class a implements Runnable {
        private final KSCoordinatorLayout bhB;
        private final V bhS;

        a(KSCoordinatorLayout kSCoordinatorLayout, V v10) {
            this.bhB = kSCoordinatorLayout;
            this.bhS = v10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            OverScroller overScroller;
            if (this.bhS == null || (overScroller = KSHeaderBehavior.this.mScroller) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                KSHeaderBehavior.this.onFlingFinished(this.bhB, this.bhS);
                return;
            }
            KSHeaderBehavior kSHeaderBehavior = KSHeaderBehavior.this;
            kSHeaderBehavior.setHeaderTopBottomOffset(this.bhB, this.bhS, kSHeaderBehavior.mScroller.getCurrY());
            ViewCompat.postOnAnimation(this.bhS, this);
        }
    }

    public KSHeaderBehavior() {
        this.mActivePointerId = -1;
        this.mTouchSlop = -1;
    }

    private void ensureVelocityTracker() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    boolean canDragView(V v10) {
        return false;
    }

    final boolean fling(KSCoordinatorLayout kSCoordinatorLayout, V v10, int i10, int i11, float f10) {
        Runnable runnable = this.mFlingRunnable;
        if (runnable != null) {
            v10.removeCallbacks(runnable);
            this.mFlingRunnable = null;
        }
        if (this.mScroller == null) {
            this.mScroller = new OverScroller(v10.getContext());
        }
        this.mScroller.fling(0, getTopAndBottomOffset(), 0, Math.round(f10), 0, 0, i10, i11);
        if (!this.mScroller.computeScrollOffset()) {
            onFlingFinished(kSCoordinatorLayout, v10);
            return false;
        }
        a aVar = new a(kSCoordinatorLayout, v10);
        this.mFlingRunnable = aVar;
        ViewCompat.postOnAnimation(v10, aVar);
        return true;
    }

    public int getMaxDragOffset(V v10) {
        return -v10.getHeight();
    }

    int getScrollRangeForDragFling(V v10) {
        return v10.getHeight();
    }

    int getTopBottomOffsetForScrollingSibling() {
        return getTopAndBottomOffset();
    }

    void onFlingFinished(KSCoordinatorLayout kSCoordinatorLayout, V v10) {
    }

    /* JADX WARN: Code duplicated, block: B:25:0x004f  */
    /* JADX WARN: Code duplicated, block: B:27:0x0057  */
    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(KSCoordinatorLayout kSCoordinatorLayout, V v10, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int iFindPointerIndex;
        if (this.mTouchSlop < 0) {
            this.mTouchSlop = ViewConfiguration.get(kSCoordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getAction() == 2 && this.mIsBeingDragged) {
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mIsBeingDragged = false;
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            if (canDragView(v10) && kSCoordinatorLayout.isPointInChildBounds(v10, x10, y10)) {
                this.mLastMotionY = y10;
                this.mActivePointerId = motionEvent.getPointerId(0);
                ensureVelocityTracker();
            }
        } else if (actionMasked == 1) {
            this.mIsBeingDragged = false;
            this.mActivePointerId = -1;
            velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.mVelocityTracker = null;
            }
        } else if (actionMasked == 2) {
            int i10 = this.mActivePointerId;
            if (i10 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i10)) != -1) {
                int y11 = (int) motionEvent.getY(iFindPointerIndex);
                if (Math.abs(y11 - this.mLastMotionY) > this.mTouchSlop) {
                    this.mIsBeingDragged = true;
                    this.mLastMotionY = y11;
                }
            }
        } else if (actionMasked == 3) {
            this.mIsBeingDragged = false;
            this.mActivePointerId = -1;
            velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.mVelocityTracker = null;
            }
        }
        VelocityTracker velocityTracker2 = this.mVelocityTracker;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return this.mIsBeingDragged;
    }

    @Override // com.kwad.sdk.lib.ad.desigin.KSCoordinatorLayout.Behavior
    public boolean onTouchEvent(KSCoordinatorLayout kSCoordinatorLayout, V v10, MotionEvent motionEvent) {
        if (this.mTouchSlop < 0) {
            this.mTouchSlop = ViewConfiguration.get(kSCoordinatorLayout.getContext()).getScaledTouchSlop();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.mVelocityTracker.computeCurrentVelocity(1000);
                    fling(kSCoordinatorLayout, v10, -getScrollRangeForDragFling(v10), 0, this.mVelocityTracker.getYVelocity(this.mActivePointerId));
                }
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                int y10 = (int) motionEvent.getY(iFindPointerIndex);
                int i10 = this.mLastMotionY - y10;
                if (!this.mIsBeingDragged) {
                    int iAbs = Math.abs(i10);
                    int i11 = this.mTouchSlop;
                    if (iAbs > i11) {
                        this.mIsBeingDragged = true;
                        i10 = i10 > 0 ? i10 - i11 : i10 + i11;
                    }
                }
                int i12 = i10;
                if (this.mIsBeingDragged) {
                    this.mLastMotionY = y10;
                    scroll(kSCoordinatorLayout, v10, i12, getMaxDragOffset(v10), 0);
                }
            } else if (actionMasked == 3) {
            }
            this.mIsBeingDragged = false;
            this.mActivePointerId = -1;
            VelocityTracker velocityTracker2 = this.mVelocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.mVelocityTracker = null;
            }
        } else {
            int x10 = (int) motionEvent.getX();
            int y11 = (int) motionEvent.getY();
            if (!kSCoordinatorLayout.isPointInChildBounds(v10, x10, y11) || !canDragView(v10)) {
                return false;
            }
            this.mLastMotionY = y11;
            this.mActivePointerId = motionEvent.getPointerId(0);
            ensureVelocityTracker();
        }
        VelocityTracker velocityTracker3 = this.mVelocityTracker;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
        }
        return true;
    }

    public final int scroll(KSCoordinatorLayout kSCoordinatorLayout, V v10, int i10, int i11, int i12) {
        return setHeaderTopBottomOffset(kSCoordinatorLayout, v10, getTopBottomOffsetForScrollingSibling() - i10, i11, i12);
    }

    public int setHeaderTopBottomOffset(KSCoordinatorLayout kSCoordinatorLayout, V v10, int i10) {
        return setHeaderTopBottomOffset(kSCoordinatorLayout, v10, i10, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    int setHeaderTopBottomOffset(KSCoordinatorLayout kSCoordinatorLayout, V v10, int i10, int i11, int i12) {
        int iClamp;
        int topAndBottomOffset = getTopAndBottomOffset();
        if (i11 == 0 || topAndBottomOffset < i11 || topAndBottomOffset > i12 || topAndBottomOffset == (iClamp = MathUtils.clamp(i10, i11, i12))) {
            return 0;
        }
        setTopAndBottomOffset(iClamp);
        return topAndBottomOffset - iClamp;
    }

    public KSHeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mActivePointerId = -1;
        this.mTouchSlop = -1;
    }
}
