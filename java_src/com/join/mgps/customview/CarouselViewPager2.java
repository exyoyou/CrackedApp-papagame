package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class CarouselViewPager2 extends ViewPager {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f64399f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f64400g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f64401h = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f64402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f64403c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ScheduledExecutorService f64404d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f64405e;

    @Retention(RetentionPolicy.SOURCE)
    public @interface LifeCycle {
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: com.join.mgps.customview.CarouselViewPager2$a$a, reason: collision with other inner class name */
        class RunnableC0706a implements Runnable {
            RunnableC0706a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (CarouselViewPager2.this.getCurrentItem() == CarouselViewPager2.this.getAdapter().getCount() - 1) {
                    CarouselViewPager2.this.setCurrentItem(2, false);
                } else if (CarouselViewPager2.this.getCurrentItem() >= CarouselViewPager2.this.getAdapter().getCount() - 2) {
                    CarouselViewPager2.this.setCurrentItem(1, false);
                } else {
                    CarouselViewPager2 carouselViewPager2 = CarouselViewPager2.this;
                    carouselViewPager2.setCurrentItem(carouselViewPager2.getCurrentItem() + 1);
                }
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10 = CarouselViewPager2.this.f64402b;
            if (i10 != 0) {
                if (i10 != 2) {
                    return;
                }
                CarouselViewPager2.this.d();
                return;
            }
            CarouselViewPager2 carouselViewPager2 = CarouselViewPager2.this;
            if (carouselViewPager2.f64405e) {
                carouselViewPager2.f64405e = false;
            } else {
                if (carouselViewPager2.f64403c || CarouselViewPager2.this.getAdapter() == null || CarouselViewPager2.this.getAdapter().getCount() <= 1) {
                    return;
                }
                CarouselViewPager2.this.post(new RunnableC0706a());
            }
        }
    }

    public CarouselViewPager2(Context context) {
        super(context);
        this.f64402b = 0;
        this.f64403c = false;
        this.f64405e = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        ScheduledExecutorService scheduledExecutorService = this.f64404d;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            this.f64404d.shutdown();
        }
        this.f64404d = null;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        d();
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f64404d = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleAtFixedRate(new a(), 4000L, 4000L, TimeUnit.MILLISECONDS);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0010  */
    /* JADX WARN: Code duplicated, block: B:11:0x0014  */
    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0) {
            this.f64403c = true;
            this.f64405e = true;
        } else if (action == 1) {
            this.f64403c = false;
        } else if (action == 2) {
            this.f64403c = true;
            this.f64405e = true;
        } else if (action == 3) {
            this.f64403c = false;
        }
        return super.onTouchEvent(ev);
    }

    public void setLifeCycle(int lifeCycle) {
        this.f64402b = lifeCycle;
    }

    public CarouselViewPager2(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64402b = 0;
        this.f64403c = false;
        this.f64405e = false;
    }
}
