package m.framework.ui.widget.viewpager;

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
import m.framework.utils.Utils;

/* JADX INFO: loaded from: classes.dex */
public class ViewPagerClassic extends ViewGroup {
    private static final int SNAP_VELOCITY = 500;
    private static final int TOUCH_STATE_REST = 0;
    private static final int TOUCH_STATE_SCROLLING = 1;
    private ViewPagerAdapter adapter;
    private int currentScreen;
    private float lastMotionX;
    private float lastMotionY;
    private int mMaximumVelocity;
    private VelocityTracker mVelocityTracker;
    private Scroller scroller;
    private int touchSlop;
    private int touchState;

    public ViewPagerClassic(Context context) {
        this(context, null);
    }

    private void handleInterceptMove(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        int iAbs = (int) Math.abs(x10 - this.lastMotionX);
        int iAbs2 = (int) Math.abs(y10 - this.lastMotionY);
        int i10 = this.touchSlop;
        boolean z10 = iAbs > i10;
        boolean z11 = iAbs2 > i10;
        if ((z10 || z11) && z10) {
            this.touchState = 1;
            this.lastMotionX = x10;
        }
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
        this.scroller = new Scroller(getContext(), new Interpolator() { // from class: m.framework.ui.widget.viewpager.ViewPagerClassic.1
            float[] values = {0.0f, 0.0157073f, 0.0314108f, 0.0471065f, 0.0627905f, 0.0784591f, 0.0941083f, 0.109734f, 0.125333f, 0.140901f, 0.156434f, 0.171929f, 0.187381f, 0.202787f, 0.218143f, 0.233445f, 0.24869f, 0.263873f, 0.278991f, 0.29404f, 0.309017f, 0.323917f, 0.338738f, 0.353475f, 0.368125f, 0.382683f, 0.397148f, 0.411514f, 0.425779f, 0.439939f, 0.45399f, 0.46793f, 0.481754f, 0.495459f, 0.509041f, 0.522499f, 0.535827f, 0.549023f, 0.562083f, 0.575005f, 0.587785f, 0.60042f, 0.612907f, 0.625243f, 0.637424f, 0.649448f, 0.661312f, 0.673013f, 0.684547f, 0.695913f, 0.707107f, 0.718126f, 0.728969f, 0.739631f, 0.750111f, 0.760406f, 0.770513f, 0.78043f, 0.790155f, 0.799685f, 0.809017f, 0.81815f, 0.827081f, 0.835807f, 0.844328f, 0.85264f, 0.860742f, 0.868632f, 0.876307f, 0.883766f, 0.891007f, 0.898028f, 0.904827f, 0.911403f, 0.917755f, 0.92388f, 0.929776f, 0.935444f, 0.940881f, 0.946085f, 0.951057f, 0.955793f, 0.960294f, 0.964557f, 0.968583f, 0.97237f, 0.975917f, 0.979223f, 0.982287f, 0.985109f, 0.987688f, 0.990024f, 0.992115f, 0.993961f, 0.995562f, 0.996917f, 0.998027f, 0.99889f, 0.999507f, 0.999877f, 1.0f};

            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f10) {
                return this.values[(int) (f10 * 100.0f)];
            }
        });
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.touchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    @Override // android.view.View
    public void computeScroll() {
        ViewPagerAdapter viewPagerAdapter;
        if (this.adapter == null) {
            return;
        }
        if (this.scroller.computeScrollOffset()) {
            scrollTo(this.scroller.getCurrX(), this.scroller.getCurrY());
            postInvalidate();
            return;
        }
        int i10 = this.currentScreen;
        int currX = this.scroller.getCurrX();
        int width = getWidth();
        int i11 = currX / width;
        if (currX % width > width / 2) {
            i11++;
        }
        int iMax = Math.max(0, Math.min(i11, getChildCount() - 1));
        this.currentScreen = iMax;
        if (i10 == iMax || (viewPagerAdapter = this.adapter) == null) {
            return;
        }
        viewPagerAdapter.onScreenChange(iMax, i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.adapter == null || getChildCount() <= 0) {
            return;
        }
        long drawingTime = getDrawingTime();
        int i10 = this.currentScreen;
        if (i10 > 0) {
            drawChild(canvas, getChildAt(i10 - 1), drawingTime);
        }
        drawChild(canvas, getChildAt(this.currentScreen), drawingTime);
        if (this.currentScreen < getChildCount() - 1) {
            drawChild(canvas, getChildAt(this.currentScreen + 1), drawingTime);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i10) {
        if (this.adapter == null) {
            return super.dispatchUnhandledMove(view, i10);
        }
        if (i10 == 17) {
            int i11 = this.currentScreen;
            if (i11 > 0) {
                scrollToScreen(i11 - 1);
                return true;
            }
        } else if (i10 == 66 && this.currentScreen < getChildCount() - 1) {
            scrollToScreen(this.currentScreen + 1);
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
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        if (action == 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            this.lastMotionX = x10;
            this.lastMotionY = y10;
            this.touchState = !this.scroller.isFinished() ? 1 : 0;
        } else if (action == 1) {
            velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.mVelocityTracker = null;
            }
            this.touchState = 0;
        } else if (action == 2) {
            handleInterceptMove(motionEvent);
        } else if (action == 3) {
            velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.mVelocityTracker = null;
            }
            this.touchState = 0;
        }
        return this.touchState != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        if (this.adapter == null) {
            return;
        }
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        int childCount = getChildCount();
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                int i18 = i16 + i14;
                childAt.layout(i16, 0, i18, i15);
                i16 = i18;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.adapter == null) {
            super.onMeasure(i10, i11);
            return;
        }
        int childCount = getChildCount();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Utils.getScreenWidth(getContext()), 1073741824);
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            childAt.measure(iMakeMeasureSpec, 0);
            int measuredHeight = childAt.getMeasuredHeight();
            if (measuredHeight > i12) {
                i12 = measuredHeight;
            }
        }
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
        for (int i14 = 0; i14 < childCount; i14++) {
            getChildAt(i14).measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i10;
        if (this.adapter == null) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction();
        float x10 = motionEvent.getX();
        if (action != 0) {
            if (action == 1) {
                if (this.touchState == 1) {
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                    int xVelocity = (int) velocityTracker.getXVelocity();
                    if (xVelocity > 500 && (i10 = this.currentScreen) > 0) {
                        scrollToScreen(i10 - 1);
                    } else if (xVelocity >= -500 || this.currentScreen >= getChildCount() - 1) {
                        int width = getWidth();
                        scrollToScreen((getScrollX() + (width / 2)) / width);
                    } else {
                        scrollToScreen(this.currentScreen + 1);
                    }
                    VelocityTracker velocityTracker2 = this.mVelocityTracker;
                    if (velocityTracker2 != null) {
                        velocityTracker2.recycle();
                        this.mVelocityTracker = null;
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

    public void scrollLeft() {
        if (this.adapter != null && this.currentScreen > 0 && this.scroller.isFinished()) {
            scrollToScreen(this.currentScreen - 1);
        }
    }

    public void scrollRight() {
        if (this.adapter != null && this.currentScreen < getChildCount() - 1 && this.scroller.isFinished()) {
            scrollToScreen(this.currentScreen + 1);
        }
    }

    public void scrollToScreen(int i10) {
        scrollToScreen(i10, false);
    }

    public void setAdapter(ViewPagerAdapter viewPagerAdapter) {
        this.adapter = viewPagerAdapter;
        removeAllViews();
        this.currentScreen = 0;
        if (this.adapter == null) {
            return;
        }
        int count = viewPagerAdapter.getCount();
        for (int i10 = 0; i10 < count; i10++) {
            addView(viewPagerAdapter.getView(i10, this));
        }
    }

    public void setCurrentScreen(int i10) {
        if (this.adapter == null) {
            return;
        }
        if (!this.scroller.isFinished()) {
            this.scroller.abortAnimation();
        }
        int i11 = this.currentScreen;
        int iMax = Math.max(0, Math.min(i10, getChildCount()));
        this.currentScreen = iMax;
        this.adapter.onScreenChange(iMax, i11);
        int screenWidth = this.currentScreen * Utils.getScreenWidth(getContext());
        this.scroller.startScroll(0, 0, screenWidth, 0);
        scrollTo(screenWidth, 0);
    }

    public ViewPagerClassic(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void scrollToScreen(int i10, boolean z10) {
        boolean z11 = i10 != this.currentScreen;
        View focusedChild = getFocusedChild();
        if (focusedChild != null && z11 && focusedChild == getChildAt(this.currentScreen)) {
            focusedChild.clearFocus();
        }
        int width = (i10 * getWidth()) - getScrollX();
        this.scroller.startScroll(getScrollX(), 0, width, 0, z10 ? 0 : Math.abs(width) / 2);
        invalidate();
    }

    public ViewPagerClassic(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.touchState = 0;
        init(context);
    }
}
