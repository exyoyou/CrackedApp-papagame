package com.mob.tools.gui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.Scroller;

/* JADX INFO: loaded from: classes2.dex */
public class MobViewPager extends ViewGroup {
    private static final int DECELERATION = 10;
    private static final int SNAP_VELOCITY = 500;
    private static final int TOUCH_STATE_REST = 0;
    private static final int TOUCH_STATE_SCROLLING = 1;
    private ViewPagerAdapter adapter;
    private View currentPage;
    private int currentScreen;
    private int flingVelocity;
    private float lastMotionX;
    private float lastMotionY;
    private int maximumVelocity;
    private View nextPage;
    private int pageWidth;
    private View previousPage;
    private int screenCount;
    private Scroller scroller;
    private boolean skipScreen;
    private int touchSlop;
    private int touchState;
    private VelocityTracker velocityTracker;

    public MobViewPager(Context context) {
        this(context, null);
    }

    private void adjustScroller() {
        this.skipScreen = true;
        if (this.currentPage != null) {
            View focusedChild = getFocusedChild();
            View view = this.currentPage;
            if (focusedChild == view) {
                view.clearFocus();
            }
        }
        int width = (this.currentScreen * getWidth()) - getScrollX();
        this.scroller.abortAnimation();
        if (width != 0) {
            this.scroller.startScroll(getScrollX(), 0, width, 0, 0);
        }
        invalidate();
    }

    private void handleInterceptMove(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        int iAbs = (int) Math.abs(x10 - this.lastMotionX);
        if (((int) Math.abs(y10 - this.lastMotionY)) >= iAbs || iAbs <= this.touchSlop) {
            return;
        }
        this.touchState = 1;
        this.lastMotionX = x10;
    }

    private void handleScrollMove(MotionEvent motionEvent) {
        int right;
        if (this.adapter == null) {
            return;
        }
        float x10 = motionEvent.getX();
        int i10 = (int) (this.lastMotionX - x10);
        this.lastMotionX = x10;
        if (i10 < 0) {
            if (getScrollX() > 0) {
                scrollBy(Math.max(-getScrollX(), i10), 0);
            }
        } else {
            if (i10 <= 0 || getChildCount() == 0 || (right = (getChildAt(getChildCount() - 1).getRight() - getScrollX()) - getWidth()) <= 0) {
                return;
            }
            scrollBy(Math.min(right, i10), 0);
        }
    }

    private void init(Context context) {
        this.scroller = new Scroller(context, new Interpolator() { // from class: com.mob.tools.gui.MobViewPager.1
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f10) {
                return (2.0f - f10) * f10;
            }
        });
        this.touchState = 0;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.touchSlop = viewConfiguration.getScaledTouchSlop();
        this.maximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    private void onScreenChange(int i10) {
        if (this.adapter != null) {
            if (this.skipScreen && Math.abs(i10 - this.currentScreen) > 2) {
                removeAllViews();
                int i11 = this.currentScreen;
                if (i11 > 0) {
                    View view = this.adapter.getView(i11 - 1, this.previousPage, this);
                    this.previousPage = view;
                    addView(view);
                }
                View view2 = this.adapter.getView(this.currentScreen, this.currentPage, this);
                this.currentPage = view2;
                addView(view2);
                int i12 = this.currentScreen;
                if (i12 < this.screenCount - 1) {
                    View view3 = this.adapter.getView(i12 + 1, this.nextPage, this);
                    this.nextPage = view3;
                    addView(view3);
                }
            } else if (this.currentScreen > i10) {
                for (int i13 = 0; i13 < this.currentScreen - i10; i13++) {
                    int i14 = i10 + i13 + 1;
                    View view4 = this.previousPage;
                    this.previousPage = this.currentPage;
                    this.currentPage = this.nextPage;
                    if (getChildCount() >= 3) {
                        removeViewAt(0);
                    }
                    if (i14 < this.screenCount - 1) {
                        View view5 = this.adapter.getView(i14 + 1, view4, this);
                        this.nextPage = view5;
                        addView(view5);
                    } else {
                        this.nextPage = view4;
                    }
                }
            } else {
                for (int i15 = 0; i15 < i10 - this.currentScreen; i15++) {
                    int i16 = (i10 - i15) - 1;
                    View view6 = this.nextPage;
                    this.nextPage = this.currentPage;
                    this.currentPage = this.previousPage;
                    if (getChildCount() >= 3) {
                        removeViewAt(2);
                    }
                    if (i16 > 0) {
                        View view7 = this.adapter.getView(i16 - 1, view6, this);
                        this.previousPage = view7;
                        addView(view7, 0);
                    } else {
                        this.previousPage = view6;
                    }
                }
            }
            this.adapter.onScreenChange(this.currentScreen, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToScreenOnUIThread(int i10, boolean z10) {
        int i11;
        this.skipScreen = z10;
        if (this.currentPage != null) {
            View focusedChild = getFocusedChild();
            View view = this.currentPage;
            if (focusedChild == view) {
                view.clearFocus();
            }
        }
        int width = (i10 * getWidth()) - getScrollX();
        this.scroller.abortAnimation();
        if (width != 0) {
            int iSqrt = 0;
            if (z10) {
                i11 = 0;
            } else {
                int iAbs = Math.abs(width) / 2;
                int i12 = this.flingVelocity;
                if (i12 != 0) {
                    int iAbs2 = Math.abs(i12);
                    iSqrt = (int) (((((double) iAbs2) - Math.sqrt((iAbs2 * iAbs2) - (Math.abs(width) * 20))) * 1000.0d) / 10.0d);
                }
                i11 = (iSqrt == 0 || iSqrt > iAbs) ? iAbs : iSqrt;
            }
            this.scroller.startScroll(getScrollX(), 0, width, 0, i11);
        }
        invalidate();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.adapter == null || this.screenCount <= 0) {
            return;
        }
        if (this.scroller.computeScrollOffset()) {
            scrollTo(this.scroller.getCurrX(), this.scroller.getCurrY());
            postInvalidate();
        } else {
            int i10 = this.currentScreen;
            int currX = this.scroller.getCurrX();
            int width = getWidth();
            int i11 = currX / width;
            if (currX % width > width / 2) {
                i11++;
            }
            int iMax = Math.max(0, Math.min(i11, this.screenCount - 1));
            this.currentScreen = iMax;
            if (i10 != iMax) {
                onScreenChange(i10);
            }
        }
        if (this.adapter != null) {
            this.adapter.onScreenChanging(getScrollX() / getWidth());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.adapter == null || this.screenCount <= 0) {
            return;
        }
        long drawingTime = getDrawingTime();
        if (this.currentScreen > 0) {
            drawChild(canvas, this.previousPage, drawingTime);
        }
        drawChild(canvas, this.currentPage, drawingTime);
        if (this.currentScreen < this.screenCount - 1) {
            drawChild(canvas, this.nextPage, drawingTime);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i10) {
        int i11;
        if (this.adapter == null) {
            return super.dispatchUnhandledMove(view, i10);
        }
        if (i10 == 17) {
            int i12 = this.currentScreen;
            if (i12 > 0) {
                scrollToScreenOnUIThread(i12 - 1, false);
                return true;
            }
        } else if (i10 == 66 && (i11 = this.currentScreen) < this.screenCount - 1) {
            scrollToScreenOnUIThread(i11 + 1, false);
            return true;
        }
        return super.dispatchUnhandledMove(view, i10);
    }

    public int getCurrentScreen() {
        return this.currentScreen;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002b  */
    /* JADX WARN: Code duplicated, block: B:20:0x002f  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int action = motionEvent.getAction();
        if (action == 2 && this.touchState != 0) {
            return true;
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (action == 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            this.lastMotionX = x10;
            this.lastMotionY = y10;
            this.touchState = !this.scroller.isFinished() ? 1 : 0;
        } else if (action == 1) {
            velocityTracker = this.velocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.velocityTracker = null;
            }
            this.touchState = 0;
        } else if (action == 2) {
            handleInterceptMove(motionEvent);
        } else if (action == 3) {
            velocityTracker = this.velocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.velocityTracker = null;
            }
            this.touchState = 0;
        }
        return this.touchState != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        if (this.adapter == null || this.screenCount <= 0) {
            return;
        }
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        int i16 = this.currentScreen;
        int i17 = i16 * i14;
        if (i16 > 0) {
            this.previousPage.layout(i17 - i14, 0, i17, i15);
        }
        int i18 = i17 + i14;
        this.currentPage.layout(i17, 0, i18, i15);
        if (this.currentScreen < this.screenCount - 1) {
            this.nextPage.layout(i18, 0, i14 + i18, i15);
        }
        if (this.pageWidth != getWidth()) {
            int i19 = this.pageWidth;
            this.pageWidth = getWidth();
            if (i19 != 0) {
                adjustScroller();
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.adapter == null || this.screenCount <= 0) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            getChildAt(i12).measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i10;
        int i11;
        if (this.adapter == null) {
            return false;
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction();
        float x10 = motionEvent.getX();
        if (action != 0) {
            if (action == 1) {
                if (this.touchState == 1) {
                    this.velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
                    int xVelocity = (int) this.velocityTracker.getXVelocity();
                    this.flingVelocity = xVelocity;
                    if (xVelocity > 500 && (i11 = this.currentScreen) > 0) {
                        scrollToScreenOnUIThread(i11 - 1, false);
                    } else if (xVelocity >= -500 || (i10 = this.currentScreen) >= this.screenCount - 1) {
                        int width = getWidth();
                        scrollToScreenOnUIThread((getScrollX() + (width / 2)) / width, false);
                    } else {
                        scrollToScreenOnUIThread(i10 + 1, false);
                    }
                    VelocityTracker velocityTracker = this.velocityTracker;
                    if (velocityTracker != null) {
                        velocityTracker.recycle();
                        this.velocityTracker = null;
                    }
                }
                this.touchState = 0;
            } else if (action != 2) {
                if (action == 3) {
                    this.touchState = 0;
                }
            } else if (this.touchState == 1) {
                handleScrollMove(motionEvent);
            } else if (onInterceptTouchEvent(motionEvent) && this.touchState == 1) {
                handleScrollMove(motionEvent);
            }
        } else if (this.touchState != 0) {
            if (!this.scroller.isFinished()) {
                this.scroller.abortAnimation();
            }
            this.lastMotionX = x10;
        }
        return true;
    }

    public void scrollLeft(boolean z10) {
        int i10 = this.currentScreen;
        if (i10 > 0) {
            scrollToScreen(i10 - 1, z10);
        }
    }

    public void scrollRight(boolean z10) {
        int i10 = this.currentScreen;
        if (i10 < this.screenCount - 1) {
            scrollToScreen(i10 + 1, z10);
        }
    }

    public void scrollToScreen(final int i10, final boolean z10) {
        post(new Runnable() { // from class: com.mob.tools.gui.MobViewPager.2
            @Override // java.lang.Runnable
            public void run() {
                MobViewPager.this.scrollToScreenOnUIThread(i10, z10);
            }
        });
    }

    public void setAdapter(ViewPagerAdapter viewPagerAdapter) {
        ViewPagerAdapter viewPagerAdapter2 = this.adapter;
        if (viewPagerAdapter2 != null) {
            viewPagerAdapter2.setMobViewPager(null);
        }
        this.adapter = viewPagerAdapter;
        if (viewPagerAdapter != null) {
            viewPagerAdapter.setMobViewPager(this);
        }
        if (viewPagerAdapter == null) {
            this.currentScreen = 0;
            removeAllViews();
            return;
        }
        int count = viewPagerAdapter.getCount();
        this.screenCount = count;
        if (count <= 0) {
            this.currentScreen = 0;
            removeAllViews();
            return;
        }
        if (count <= this.currentScreen) {
            scrollToScreenOnUIThread(count - 1, true);
            return;
        }
        removeAllViews();
        int i10 = this.currentScreen;
        if (i10 > 0) {
            View view = viewPagerAdapter.getView(i10 - 1, this.previousPage, this);
            this.previousPage = view;
            addView(view);
        }
        View view2 = viewPagerAdapter.getView(this.currentScreen, this.currentPage, this);
        this.currentPage = view2;
        addView(view2);
        int i11 = this.currentScreen;
        if (i11 < this.screenCount - 1) {
            View view3 = viewPagerAdapter.getView(i11 + 1, this.nextPage, this);
            this.nextPage = view3;
            addView(view3);
        }
    }

    public MobViewPager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Deprecated
    public void scrollToScreen(int i10, boolean z10, boolean z11) {
        scrollToScreen(i10, z10);
    }

    public MobViewPager(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        init(context);
    }
}
