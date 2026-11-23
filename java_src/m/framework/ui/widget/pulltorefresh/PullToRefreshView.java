package m.framework.ui.widget.pulltorefresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes.dex */
public class PullToRefreshView extends RelativeLayout {
    private static final long MIN_REF_TIME = 1000;
    private PullToRefreshAdatper adapter;
    private View bodyView;
    private float downY;
    private int headerHeight;
    private View headerView;
    private boolean pullingLock;
    private long refreshTime;
    private boolean requesting;
    private Runnable stopAct;
    private int top;

    public PullToRefreshView(Context context) {
        super(context);
        init();
    }

    private boolean canPull() {
        return !this.pullingLock && this.adapter.isPullReady();
    }

    private MotionEvent getCancelEvent(MotionEvent motionEvent) {
        return MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), 3, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState());
    }

    private void init() {
        this.stopAct = new Runnable() { // from class: m.framework.ui.widget.pulltorefresh.PullToRefreshView.1
            @Override // java.lang.Runnable
            public void run() {
                PullToRefreshView.this.reversePulling();
                PullToRefreshView.this.stopRequest();
            }
        };
    }

    private void performRequest() {
        this.refreshTime = System.currentTimeMillis();
        this.requesting = true;
        PullToRefreshAdatper pullToRefreshAdatper = this.adapter;
        if (pullToRefreshAdatper != null) {
            pullToRefreshAdatper.onRequest();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reversePulling() {
        this.top = 0;
        scrollTo(0, 0);
        PullToRefreshAdatper pullToRefreshAdatper = this.adapter;
        if (pullToRefreshAdatper != null) {
            pullToRefreshAdatper.onReversed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopRequest() {
        this.requesting = false;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0055  */
    /* JADX WARN: Code duplicated, block: B:27:0x0059  */
    /* JADX WARN: Code duplicated, block: B:29:0x005f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0069  */
    /* JADX WARN: Code duplicated, block: B:33:0x0074 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x0076  */
    /* JADX WARN: Code duplicated, block: B:36:0x007d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0081  */
    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i10;
        int i11;
        PullToRefreshAdatper pullToRefreshAdatper;
        PullToRefreshAdatper pullToRefreshAdatper2;
        PullToRefreshAdatper pullToRefreshAdatper3;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.downY = motionEvent.getY();
        } else if (action == 1) {
            if (this.requesting) {
                int i12 = this.headerHeight;
                this.top = i12;
                scrollTo(0, -i12);
            } else {
                i10 = this.top;
                i11 = this.headerHeight;
                if (i10 > i11) {
                    this.top = i11;
                    scrollTo(0, -i11);
                    pullToRefreshAdatper2 = this.adapter;
                    if (pullToRefreshAdatper2 != null) {
                        pullToRefreshAdatper2.onPullDown(100);
                    }
                    performRequest();
                    motionEvent = getCancelEvent(motionEvent);
                } else if (i10 != 0) {
                    reversePulling();
                    pullToRefreshAdatper = this.adapter;
                    if (pullToRefreshAdatper != null) {
                        pullToRefreshAdatper.onPullDown(0);
                    }
                }
            }
        } else if (action == 2) {
            float y10 = motionEvent.getY();
            if (this.requesting || canPull()) {
                int i13 = (int) (this.top + ((y10 - this.downY) / 2.0f));
                this.top = i13;
                if (i13 > 0) {
                    scrollTo(0, -i13);
                    if (!this.requesting && (pullToRefreshAdatper3 = this.adapter) != null) {
                        pullToRefreshAdatper3.onPullDown((this.top * 100) / this.headerHeight);
                    }
                    motionEvent = getCancelEvent(motionEvent);
                } else {
                    this.top = 0;
                    scrollTo(0, 0);
                }
            }
            this.downY = y10;
        } else if (action == 3) {
            if (this.requesting) {
                i10 = this.top;
                i11 = this.headerHeight;
                if (i10 > i11) {
                    this.top = i11;
                    scrollTo(0, -i11);
                    pullToRefreshAdatper2 = this.adapter;
                    if (pullToRefreshAdatper2 != null) {
                        pullToRefreshAdatper2.onPullDown(100);
                    }
                    performRequest();
                    motionEvent = getCancelEvent(motionEvent);
                } else if (i10 != 0) {
                    reversePulling();
                    pullToRefreshAdatper = this.adapter;
                    if (pullToRefreshAdatper != null) {
                        pullToRefreshAdatper.onPullDown(0);
                    }
                }
            } else {
                int i14 = this.headerHeight;
                this.top = i14;
                scrollTo(0, -i14);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void lockPulling() {
        this.pullingLock = true;
    }

    public void performPulling(boolean z10) {
        int i10 = this.headerHeight;
        this.top = i10;
        scrollTo(0, -i10);
        if (z10) {
            performRequest();
        }
    }

    public void releaseLock() {
        this.pullingLock = false;
    }

    public void setAdapter(PullToRefreshAdatper pullToRefreshAdatper) {
        this.adapter = pullToRefreshAdatper;
        removeAllViews();
        this.bodyView = (View) pullToRefreshAdatper.getBodyView();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(9, -1);
        layoutParams.addRule(11, -1);
        layoutParams.addRule(10, -1);
        addView(this.bodyView, layoutParams);
        View headerView = pullToRefreshAdatper.getHeaderView();
        this.headerView = headerView;
        headerView.measure(0, 0);
        this.headerHeight = this.headerView.getMeasuredHeight();
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, this.headerHeight);
        layoutParams2.addRule(9, -1);
        layoutParams2.addRule(11, -1);
        layoutParams2.addRule(10, -1);
        layoutParams2.topMargin = -this.headerHeight;
        addView(this.headerView, layoutParams2);
    }

    public void stopPulling() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.refreshTime;
        if (jCurrentTimeMillis < 1000) {
            postDelayed(this.stopAct, 1000 - jCurrentTimeMillis);
        } else {
            post(this.stopAct);
        }
    }

    public PullToRefreshView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public PullToRefreshView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        init();
    }
}
