package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class LoopViewPager extends ViewPager {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f65269l = 5;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final boolean f65270m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f65271n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f65272o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f65273p = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ViewPager.OnPageChangeListener f65274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private n f65275c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f65276d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65277e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f65278f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ScheduledExecutorService f65279g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f65280h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f65281i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f65282j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f65283k;

    @Retention(RetentionPolicy.SOURCE)
    public @interface LifeCycle {
    }

    class a implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f65284b = -1.0f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f65285c = -1.0f;

        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
            if (LoopViewPager.this.f65275c != null) {
                int currentItem = LoopViewPager.super.getCurrentItem();
                int iH = LoopViewPager.this.f65275c.h(currentItem);
                if (state == 0 && (currentItem == 0 || currentItem == LoopViewPager.this.f65275c.getCount() - 1)) {
                    LoopViewPager.this.setCurrentItem(iH, false);
                }
            }
            ViewPager.OnPageChangeListener onPageChangeListener = LoopViewPager.this.f65274b;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrollStateChanged(state);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            if (LoopViewPager.this.f65275c != null) {
                int iH = LoopViewPager.this.f65275c.h(position);
                if (positionOffset == 0.0f && this.f65284b == 0.0f && (position == 0 || position == LoopViewPager.this.f65275c.getCount() - 1)) {
                    LoopViewPager.this.setCurrentItem(iH, false);
                }
                this.f65284b = positionOffset;
                LoopViewPager loopViewPager = LoopViewPager.this;
                if (loopViewPager.f65274b != null) {
                    if (iH != loopViewPager.f65275c.c() - 1) {
                        LoopViewPager.this.f65274b.onPageScrolled(iH, positionOffset, positionOffsetPixels);
                    } else if (positionOffset > 0.5d) {
                        LoopViewPager.this.f65274b.onPageScrolled(0, 0.0f, 0);
                    } else {
                        LoopViewPager.this.f65274b.onPageScrolled(iH, 0.0f, 0);
                    }
                }
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            int iH = LoopViewPager.this.f65275c.h(position);
            float f10 = iH;
            if (this.f65285c != f10) {
                this.f65285c = f10;
                ViewPager.OnPageChangeListener onPageChangeListener = LoopViewPager.this.f65274b;
                if (onPageChangeListener != null) {
                    onPageChangeListener.onPageSelected(iH);
                }
            }
        }
    }

    class b implements Runnable {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (LoopViewPager.this.getCurrentItem() == LoopViewPager.this.getAdapter().getCount() - 1) {
                    LoopViewPager.this.setCurrentItem(2, false);
                } else if (LoopViewPager.this.getCurrentItem() >= LoopViewPager.this.getAdapter().getCount() - 2) {
                    LoopViewPager.this.setCurrentItem(1, false);
                } else {
                    LoopViewPager loopViewPager = LoopViewPager.this;
                    loopViewPager.setCurrentItem(loopViewPager.getCurrentItem() + 1);
                }
            }
        }

        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10 = LoopViewPager.this.f65277e;
            if (i10 != 0) {
                if (i10 != 2) {
                    return;
                }
                LoopViewPager.this.g();
                return;
            }
            LoopViewPager loopViewPager = LoopViewPager.this;
            if (loopViewPager.f65280h) {
                loopViewPager.f65280h = false;
            } else {
                if (loopViewPager.f65278f || LoopViewPager.this.getAdapter() == null || LoopViewPager.this.getAdapter().getCount() <= 1) {
                    return;
                }
                LoopViewPager.this.post(new a());
            }
        }
    }

    public LoopViewPager(Context context) {
        super(context);
        this.f65276d = false;
        this.f65277e = 0;
        this.f65278f = false;
        this.f65280h = false;
        this.f65281i = new a();
        this.f65282j = 0.0f;
        this.f65283k = false;
        f();
    }

    private void f() {
        super.setOnPageChangeListener(this.f65281i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        ScheduledExecutorService scheduledExecutorService = this.f65279g;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            this.f65279g.shutdown();
        }
        this.f65279g = null;
    }

    public static int j(int position, int count) {
        int i10 = position - 1;
        return i10 < 0 ? i10 + count : i10 % count;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0 || action == 1) {
            this.f65282j = 0.0f;
            this.f65283k = false;
        } else if (action == 2) {
            float f10 = this.f65282j;
            if (f10 != 0.0f) {
                this.f65282j = f10 - ev.getX();
            }
            if (Math.abs(this.f65282j) > 5.0f) {
                this.f65283k = true;
            }
            getParent().requestDisallowInterceptTouchEvent(this.f65283k);
            this.f65282j = ev.getX();
        }
        return super.dispatchTouchEvent(ev);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public PagerAdapter getAdapter() {
        return this.f65275c;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public int getCurrentItem() {
        n nVar = this.f65275c;
        if (nVar != null) {
            return nVar.h(super.getCurrentItem());
        }
        return 0;
    }

    public void h() {
        i(3);
    }

    public void i(int delay) {
        g();
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f65279g = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        long j10 = delay * 1000;
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleAtFixedRate(new b(), j10, j10, TimeUnit.MILLISECONDS);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        g();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0010  */
    /* JADX WARN: Code duplicated, block: B:11:0x0014  */
    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0) {
            this.f65278f = true;
            this.f65280h = true;
        } else if (action == 1) {
            this.f65278f = false;
        } else if (action == 2) {
            this.f65278f = true;
            this.f65280h = true;
        } else if (action == 3) {
            this.f65278f = false;
        }
        return super.onTouchEvent(ev);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setAdapter(PagerAdapter adapter) {
        n nVar = new n(adapter);
        this.f65275c = nVar;
        nVar.f(this.f65276d);
        super.setAdapter(this.f65275c);
        setCurrentItem(0, false);
    }

    public void setBoundaryCaching(boolean flag) {
        this.f65276d = flag;
        n nVar = this.f65275c;
        if (nVar != null) {
            nVar.f(flag);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int item, boolean smoothScroll) {
        try {
            super.setCurrentItem(this.f65275c.g(item), smoothScroll);
        } catch (Exception unused) {
        }
    }

    public void setLifeCycle(int lifeCycle) {
        this.f65277e = lifeCycle;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65274b = listener;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int item) {
        if (getCurrentItem() != item) {
            setCurrentItem(item, true);
        }
    }

    public LoopViewPager(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65276d = false;
        this.f65277e = 0;
        this.f65278f = false;
        this.f65280h = false;
        this.f65281i = new a();
        this.f65282j = 0.0f;
        this.f65283k = false;
        f();
    }
}
