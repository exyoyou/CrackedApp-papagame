package m.framework.ui.widget.slidingmenu;

import android.graphics.Color;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.widget.HorizontalScrollView;

/* JADX INFO: loaded from: classes.dex */
public class BodyContainer extends HorizontalScrollView {
    private static final int MENU_COVER_ALPHA = 230;
    private static final int MIN_FLING_VEL = 500;
    private float downX;
    private int maxVelocity;
    private SlidingMenu menu;
    private VelocityTracker tracker;

    public BodyContainer(SlidingMenu slidingMenu) {
        super(slidingMenu.getContext());
        this.downX = 2.1474836E9f;
        this.menu = slidingMenu;
        this.maxVelocity = ViewConfiguration.get(slidingMenu.getContext()).getScaledMaximumFlingVelocity();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002a  */
    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.downX = motionEvent.getX();
            if (this.menu.isMenuShown() && this.downX > this.menu.getMenuWidth() && motionEvent.getY() > this.menu.getMenuConfig().titleHeight) {
                super.onInterceptTouchEvent(motionEvent);
                return true;
            }
        } else if (action == 1) {
            this.downX = 2.1474836E9f;
        } else if (action != 2) {
            if (action == 3) {
                this.downX = 2.1474836E9f;
            }
        } else if (!this.menu.isMenuShown() && this.downX > this.menu.getShowMenuWidth()) {
            super.onInterceptTouchEvent(motionEvent);
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        this.menu.getMenuCover().setBackgroundColor(Color.argb((i10 * 230) / this.menu.getMenuWidth(), 0, 0, 0));
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.tracker == null) {
            this.tracker = VelocityTracker.obtain();
        }
        this.tracker.addMovement(motionEvent);
        int action = motionEvent.getAction();
        if (action != 1 && action != 3) {
            if (!this.menu.isMenuShown() || this.downX >= this.menu.getMenuWidth()) {
                return super.onTouchEvent(motionEvent);
            }
            return false;
        }
        if (this.menu.isMenuShown() && this.downX < this.menu.getMenuWidth()) {
            return false;
        }
        this.downX = 2.1474836E9f;
        this.tracker.computeCurrentVelocity(1000, this.maxVelocity);
        float xVelocity = this.tracker.getXVelocity();
        this.tracker.recycle();
        this.tracker = null;
        int scrollX = getScrollX();
        if (xVelocity - 500.0f > 0.0f) {
            this.menu.showMenu();
        } else if (xVelocity + 500.0f >= 0.0f && scrollX <= this.menu.getMenuWidth() / 2) {
            this.menu.showMenu();
        } else {
            this.menu.hideMenu();
        }
        return true;
    }
}
