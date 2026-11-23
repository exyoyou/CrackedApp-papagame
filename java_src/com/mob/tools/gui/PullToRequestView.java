package com.mob.tools.gui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes2.dex */
public class PullToRequestView extends RelativeLayout {
    private static final int FAULT_TOLERANCE_RANGE = 10;
    private static final long MIN_REF_TIME = 1000;
    private PullToRequestAdatper adapter;
    private View bodyView;
    private float downY;
    private int footerHeight;
    private View footerView;
    private int headerHeight;
    private View headerView;
    private long pullTime;
    private boolean pullingDownLock;
    private boolean pullingUpLock;
    private int state;
    private Runnable stopAct;
    private int top;

    public PullToRequestView(Context context) {
        super(context);
        init();
    }

    private boolean canPullDown() {
        return !this.pullingDownLock && this.adapter.isPullDownReady() && this.state == 0;
    }

    private boolean canPullUp() {
        return !this.pullingUpLock && this.adapter.isPullUpReady() && this.state == 0;
    }

    private MotionEvent getCancelEvent(MotionEvent motionEvent) {
        return MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), 3, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState());
    }

    private void init() {
        this.stopAct = new Runnable() { // from class: com.mob.tools.gui.PullToRequestView.1
            @Override // java.lang.Runnable
            public void run() {
                PullToRequestView.this.reversePulling();
            }
        };
    }

    private void performRequestNext() {
        this.pullTime = System.currentTimeMillis();
        this.state = -1;
        PullToRequestAdatper pullToRequestAdatper = this.adapter;
        if (pullToRequestAdatper != null) {
            pullToRequestAdatper.onRequestNext();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reversePulling() {
        this.top = 0;
        scrollTo(0, 0);
        this.state = 0;
        PullToRequestAdatper pullToRequestAdatper = this.adapter;
        if (pullToRequestAdatper != null) {
            pullToRequestAdatper.onReversed();
        }
    }

    /* JADX WARN: Code duplicated, block: B:64:0x011c  */
    /* JADX WARN: Code duplicated, block: B:66:0x0120 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x0122 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x0125  */
    /* JADX WARN: Code duplicated, block: B:70:0x012e  */
    /* JADX WARN: Code duplicated, block: B:72:0x0134  */
    /* JADX WARN: Code duplicated, block: B:74:0x013e  */
    /* JADX WARN: Code duplicated, block: B:76:0x0149  */
    /* JADX WARN: Code duplicated, block: B:78:0x014e  */
    /* JADX WARN: Code duplicated, block: B:80:0x0159  */
    /* JADX WARN: Code duplicated, block: B:82:0x0164 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x0166  */
    /* JADX WARN: Code duplicated, block: B:85:0x016d  */
    /* JADX WARN: Code duplicated, block: B:87:0x0171  */
    /* JADX WARN: Code duplicated, block: B:88:0x0175  */
    /* JADX WARN: Code duplicated, block: B:90:0x017b  */
    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i10;
        int i11;
        int i12;
        int i13;
        PullToRequestAdatper pullToRequestAdatper;
        PullToRequestAdatper pullToRequestAdatper2;
        PullToRequestAdatper pullToRequestAdatper3;
        int i14;
        int i15;
        int i16;
        int i17;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.downY = motionEvent.getY();
        } else if (action == 1) {
            i10 = this.state;
            if (i10 != -1) {
                int i18 = -this.footerHeight;
                this.top = i18;
                scrollTo(0, -i18);
            } else if (i10 != 0) {
                i11 = this.top;
                i12 = this.headerHeight;
                if (i11 > i12) {
                    this.top = i12;
                    scrollTo(0, -i12);
                    pullToRequestAdatper3 = this.adapter;
                    if (pullToRequestAdatper3 != null) {
                        pullToRequestAdatper3.onPullDown(100);
                    }
                    performFresh();
                    motionEvent = getCancelEvent(motionEvent);
                } else {
                    i13 = this.footerHeight;
                    if (i11 < (-i13)) {
                        int i19 = -i13;
                        this.top = i19;
                        scrollTo(0, -i19);
                        pullToRequestAdatper2 = this.adapter;
                        if (pullToRequestAdatper2 != null) {
                            pullToRequestAdatper2.onPullUp(100);
                        }
                        performRequestNext();
                        motionEvent = getCancelEvent(motionEvent);
                    } else if (i11 != 0) {
                        scrollTo(0, 0);
                        pullToRequestAdatper = this.adapter;
                        if (pullToRequestAdatper != null) {
                            if (this.top > 0) {
                                pullToRequestAdatper.onPullDown(0);
                            } else {
                                pullToRequestAdatper.onPullUp(0);
                            }
                        }
                        this.top = 0;
                    }
                }
            } else if (i10 == 1) {
                int i20 = this.headerHeight;
                this.top = i20;
                scrollTo(0, -i20);
            }
        } else if (action == 2) {
            float y10 = motionEvent.getY();
            int i21 = this.state;
            if (i21 == -1) {
                int i22 = (int) (this.top + ((y10 - this.downY) / 2.0f));
                this.top = i22;
                if (i22 > 0) {
                    this.top = 0;
                }
                scrollTo(0, -this.top);
                motionEvent = getCancelEvent(motionEvent);
            } else if (i21 != 1) {
                int i23 = this.top;
                if (i23 > 0) {
                    int i24 = (int) (i23 + ((y10 - this.downY) / 2.0f));
                    this.top = i24;
                    if (i24 < 0) {
                        this.top = 0;
                    }
                    scrollTo(0, -this.top);
                    PullToRequestAdatper pullToRequestAdatper4 = this.adapter;
                    if (pullToRequestAdatper4 != null && (i17 = this.headerHeight) != 0) {
                        pullToRequestAdatper4.onPullDown((this.top * 100) / i17);
                    }
                    motionEvent = getCancelEvent(motionEvent);
                } else if (i23 < 0) {
                    int i25 = (int) (i23 + ((y10 - this.downY) / 2.0f));
                    this.top = i25;
                    if (i25 > 0) {
                        this.top = 0;
                    }
                    scrollTo(0, -this.top);
                    PullToRequestAdatper pullToRequestAdatper5 = this.adapter;
                    if (pullToRequestAdatper5 != null && (i16 = this.footerHeight) != 0) {
                        pullToRequestAdatper5.onPullUp(((-this.top) * 100) / i16);
                    }
                    motionEvent = getCancelEvent(motionEvent);
                } else {
                    float f10 = this.downY;
                    if (y10 - f10 > 10.0f) {
                        if (canPullDown()) {
                            int i26 = (int) (this.top + ((y10 - this.downY) / 2.0f));
                            this.top = i26;
                            scrollTo(0, -i26);
                            PullToRequestAdatper pullToRequestAdatper6 = this.adapter;
                            if (pullToRequestAdatper6 != null && (i15 = this.headerHeight) != 0) {
                                pullToRequestAdatper6.onPullUp(((-this.top) * 100) / i15);
                            }
                            motionEvent = getCancelEvent(motionEvent);
                        }
                    } else if (f10 - y10 > 10.0f && canPullUp()) {
                        int i27 = (int) (this.top + ((y10 - this.downY) / 2.0f));
                        this.top = i27;
                        scrollTo(0, -i27);
                        PullToRequestAdatper pullToRequestAdatper7 = this.adapter;
                        if (pullToRequestAdatper7 != null && (i14 = this.footerHeight) != 0) {
                            pullToRequestAdatper7.onPullUp(((-this.top) * 100) / i14);
                        }
                        motionEvent = getCancelEvent(motionEvent);
                    }
                }
            } else {
                int i28 = (int) (this.top + ((y10 - this.downY) / 2.0f));
                this.top = i28;
                if (i28 < 0) {
                    this.top = 0;
                }
                scrollTo(0, -this.top);
                motionEvent = getCancelEvent(motionEvent);
            }
            this.downY = y10;
        } else if (action == 3) {
            i10 = this.state;
            if (i10 != -1) {
                int i110 = -this.footerHeight;
                this.top = i110;
                scrollTo(0, -i110);
            } else if (i10 != 0) {
                i11 = this.top;
                i12 = this.headerHeight;
                if (i11 > i12) {
                    this.top = i12;
                    scrollTo(0, -i12);
                    pullToRequestAdatper3 = this.adapter;
                    if (pullToRequestAdatper3 != null) {
                        pullToRequestAdatper3.onPullDown(100);
                    }
                    performFresh();
                    motionEvent = getCancelEvent(motionEvent);
                } else {
                    i13 = this.footerHeight;
                    if (i11 < (-i13)) {
                        int i111 = -i13;
                        this.top = i111;
                        scrollTo(0, -i111);
                        pullToRequestAdatper2 = this.adapter;
                        if (pullToRequestAdatper2 != null) {
                            pullToRequestAdatper2.onPullUp(100);
                        }
                        performRequestNext();
                        motionEvent = getCancelEvent(motionEvent);
                    } else if (i11 != 0) {
                        scrollTo(0, 0);
                        pullToRequestAdatper = this.adapter;
                        if (pullToRequestAdatper != null) {
                            if (this.top > 0) {
                                pullToRequestAdatper.onPullDown(0);
                            } else {
                                pullToRequestAdatper.onPullUp(0);
                            }
                        }
                        this.top = 0;
                    }
                }
            } else if (i10 == 1) {
                int i29 = this.headerHeight;
                this.top = i29;
                scrollTo(0, -i29);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void lockPullingDown() {
        this.pullingDownLock = true;
    }

    public void lockPullingUp() {
        this.pullingUpLock = true;
    }

    protected void performFresh() {
        this.pullTime = System.currentTimeMillis();
        this.state = 1;
        PullToRequestAdatper pullToRequestAdatper = this.adapter;
        if (pullToRequestAdatper != null) {
            pullToRequestAdatper.onRefresh();
        }
    }

    public void performPullingDown(boolean z10) {
        int i10 = this.headerHeight;
        this.top = i10;
        scrollTo(0, -i10);
        if (z10) {
            performFresh();
        }
    }

    public void performPullingUp(boolean z10) {
        int i10 = -this.footerHeight;
        this.top = i10;
        scrollTo(0, -i10);
        if (z10) {
            performRequestNext();
        }
    }

    public void releasePullingDownLock() {
        this.pullingDownLock = false;
    }

    public void releasePullingUpLock() {
        this.pullingUpLock = false;
    }

    public void setAdapter(PullToRequestAdatper pullToRequestAdatper) {
        this.adapter = pullToRequestAdatper;
        removeAllViews();
        this.bodyView = (View) pullToRequestAdatper.getBodyView();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(9);
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        addView(this.bodyView, layoutParams);
        View headerView = pullToRequestAdatper.getHeaderView();
        this.headerView = headerView;
        headerView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.headerView.measure(0, 0);
        this.headerHeight = this.headerView.getMeasuredHeight();
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, this.headerHeight);
        layoutParams2.addRule(9);
        layoutParams2.addRule(11);
        layoutParams2.addRule(10);
        layoutParams2.topMargin = -this.headerHeight;
        addView(this.headerView, layoutParams2);
        View footerView = pullToRequestAdatper.getFooterView();
        this.footerView = footerView;
        footerView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.footerView.measure(0, 0);
        this.footerHeight = this.footerView.getMeasuredHeight();
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, this.headerHeight);
        layoutParams3.addRule(9);
        layoutParams3.addRule(11);
        layoutParams3.addRule(12);
        layoutParams3.bottomMargin = -this.headerHeight;
        addView(this.footerView, layoutParams3);
    }

    public void stopPulling() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.pullTime;
        if (jCurrentTimeMillis < 1000) {
            postDelayed(this.stopAct, 1000 - jCurrentTimeMillis);
        } else {
            post(this.stopAct);
        }
    }

    public PullToRequestView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public PullToRequestView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        init();
    }
}
