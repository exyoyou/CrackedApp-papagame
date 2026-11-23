package com.cpoopc.scrollablelayoutlib;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.LinearLayout;
import android.widget.Scroller;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes9.dex */
public class ScrollableLayout extends LinearLayout {
    private ViewPager childViewPager;
    private boolean isClickHead;
    private boolean isClickHeadExpand;
    private int mCurY;
    private DIRECTION mDirection;
    private boolean mDisallowIntercept;
    private float mDownX;
    private float mDownY;
    private int mExpandHeight;
    private int mHeadHeight;
    private View mHeadView;
    private ScrollableHelper mHelper;
    private int mLastScrollerY;
    private float mLastY;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private Scroller mScroller;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private int maxY;
    private int minY;
    private boolean needCheckUpdown;
    private OnScrollListener onScrollListener;
    private final String tag;
    private boolean updown;

    enum DIRECTION {
        UP,
        DOWN
    }

    public interface OnScrollListener {
        void onScroll(int currentY, int maxY);
    }

    public ScrollableLayout(Context context) {
        super(context);
        this.tag = "cp:scrollableLayout";
        this.minY = 0;
        this.maxY = 0;
        init(context);
    }

    private int calcDuration(int duration, int timepass) {
        return duration - timepass;
    }

    private void checkIsClickHead(int downY, int headHeight, int scrollY) {
        this.isClickHead = downY + scrollY <= headHeight;
    }

    private void checkIsClickHeadExpand(int downY, int headHeight, int scrollY) {
        int i10 = this.mExpandHeight;
        if (i10 <= 0) {
            this.isClickHeadExpand = false;
        }
        this.isClickHeadExpand = downY + scrollY <= headHeight + i10;
    }

    @TargetApi(14)
    private int getScrollerVelocity(int distance, int duration) {
        Scroller scroller = this.mScroller;
        if (scroller == null) {
            return 0;
        }
        return (int) scroller.getCurrVelocity();
    }

    private void init(Context context) {
        this.mHelper = new ScrollableHelper();
        this.mScroller = new Scroller(context);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    private void initOrResetVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void initVelocityTrackerIfNotExists() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    private void recycleVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public boolean canPtr() {
        return this.updown && this.mCurY == this.minY && this.mHelper.isTop();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mScroller.computeScrollOffset()) {
            int currY = this.mScroller.getCurrY();
            if (this.mDirection != DIRECTION.UP) {
                if (this.mHelper.isTop() || this.isClickHeadExpand) {
                    scrollTo(0, getScrollY() + (currY - this.mLastScrollerY));
                    if (this.mCurY <= this.minY) {
                        this.mScroller.forceFinished(true);
                        return;
                    }
                }
                invalidate();
            } else {
                if (isSticked()) {
                    int finalY = this.mScroller.getFinalY() - currY;
                    int iCalcDuration = calcDuration(this.mScroller.getDuration(), this.mScroller.timePassed());
                    this.mHelper.smoothScrollBy(getScrollerVelocity(finalY, iCalcDuration), finalY, iCalcDuration);
                    this.mScroller.forceFinished(true);
                    return;
                }
                scrollTo(0, currY);
            }
            this.mLastScrollerY = currY;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        float x10 = ev.getX();
        float y10 = ev.getY();
        int iAbs = (int) Math.abs(x10 - this.mDownX);
        int iAbs2 = (int) Math.abs(y10 - this.mDownY);
        int action = ev.getAction();
        boolean z10 = false;
        if (action == 0) {
            this.mDisallowIntercept = false;
            this.needCheckUpdown = true;
            this.updown = true;
            this.mDownX = x10;
            this.mDownY = y10;
            this.mLastY = y10;
            int i10 = (int) y10;
            checkIsClickHead(i10, this.mHeadHeight, getScrollY());
            checkIsClickHeadExpand(i10, this.mHeadHeight, getScrollY());
            initOrResetVelocityTracker();
            this.mVelocityTracker.addMovement(ev);
            this.mScroller.forceFinished(true);
        } else if (action != 1) {
            if (action == 2 && !this.mDisallowIntercept) {
                initVelocityTrackerIfNotExists();
                this.mVelocityTracker.addMovement(ev);
                float f10 = this.mLastY - y10;
                if (this.needCheckUpdown) {
                    int i11 = this.mTouchSlop;
                    if (iAbs > i11 && iAbs > iAbs2) {
                        this.needCheckUpdown = false;
                        this.updown = false;
                    } else if (iAbs2 > i11 && iAbs2 > iAbs) {
                        this.needCheckUpdown = false;
                        this.updown = true;
                    }
                }
                if (this.updown && iAbs2 > this.mTouchSlop && iAbs2 > iAbs && (!isSticked() || this.mHelper.isTop() || this.isClickHeadExpand)) {
                    ViewPager viewPager = this.childViewPager;
                    if (viewPager != null) {
                        viewPager.requestDisallowInterceptTouchEvent(true);
                    }
                    scrollBy(0, (int) (((double) f10) + 0.5d));
                }
                this.mLastY = y10;
            }
        } else if (this.updown && iAbs2 > iAbs && iAbs2 > this.mTouchSlop) {
            this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
            float f11 = -this.mVelocityTracker.getYVelocity();
            if (Math.abs(f11) > this.mMinimumVelocity) {
                DIRECTION direction = f11 > 0.0f ? DIRECTION.UP : DIRECTION.DOWN;
                this.mDirection = direction;
                if ((direction == DIRECTION.UP && isSticked()) || (!isSticked() && getScrollY() == 0 && this.mDirection == DIRECTION.DOWN)) {
                    z10 = true;
                } else {
                    this.mScroller.fling(0, getScrollY(), 0, (int) f11, 0, 0, -2147483647, Integer.MAX_VALUE);
                    this.mScroller.computeScrollOffset();
                    this.mLastScrollerY = getScrollY();
                    invalidate();
                }
            }
            if (!z10 && (this.isClickHead || !isSticked())) {
                int action2 = ev.getAction();
                ev.setAction(3);
                boolean zDispatchTouchEvent = super.dispatchTouchEvent(ev);
                ev.setAction(action2);
                return zDispatchTouchEvent;
            }
        }
        super.dispatchTouchEvent(ev);
        return true;
    }

    public ScrollableHelper getHelper() {
        return this.mHelper;
    }

    public int getMaxY() {
        return this.maxY;
    }

    public boolean isHeadTop() {
        return this.mCurY == this.minY;
    }

    public boolean isSticked() {
        return this.mCurY == this.maxY;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        View view = this.mHeadView;
        if (view != null && !view.isClickable()) {
            this.mHeadView.setClickable(true);
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt != null && (childAt instanceof ViewPager)) {
                this.childViewPager = (ViewPager) childAt;
            }
        }
        super.onFinishInflate();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        View childAt = getChildAt(0);
        this.mHeadView = childAt;
        measureChildWithMargins(childAt, widthMeasureSpec, 0, 0, 0);
        this.maxY = this.mHeadView.getMeasuredHeight();
        this.mHeadHeight = this.mHeadView.getMeasuredHeight();
        super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(heightMeasureSpec) + this.maxY, 1073741824));
    }

    public void requestScrollableLayoutDisallowInterceptTouchEvent(boolean disallowIntercept) {
        super.requestDisallowInterceptTouchEvent(disallowIntercept);
        this.mDisallowIntercept = disallowIntercept;
    }

    @Override // android.view.View
    public void scrollBy(int x10, int y10) {
        int scrollY = getScrollY();
        int i10 = y10 + scrollY;
        int i11 = this.maxY;
        if (i10 >= i11 || i10 <= (i11 = this.minY)) {
            i10 = i11;
        }
        super.scrollBy(x10, i10 - scrollY);
    }

    @Override // android.view.View
    public void scrollTo(int x10, int y10) {
        int i10 = this.maxY;
        if (y10 >= i10) {
            y10 = i10;
        } else {
            int i11 = this.minY;
            if (y10 <= i11) {
                y10 = i11;
            }
        }
        this.mCurY = y10;
        OnScrollListener onScrollListener = this.onScrollListener;
        if (onScrollListener != null) {
            onScrollListener.onScroll(y10, i10);
        }
        super.scrollTo(x10, y10);
    }

    public void setClickHeadExpand(int expandHeight) {
        this.mExpandHeight = expandHeight;
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.onScrollListener = onScrollListener;
    }

    public ScrollableLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.tag = "cp:scrollableLayout";
        this.minY = 0;
        this.maxY = 0;
        init(context);
    }

    @TargetApi(11)
    public ScrollableLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.tag = "cp:scrollableLayout";
        this.minY = 0;
        this.maxY = 0;
        init(context);
    }

    @TargetApi(21)
    public ScrollableLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.tag = "cp:scrollableLayout";
        this.minY = 0;
        this.maxY = 0;
        init(context);
    }
}
