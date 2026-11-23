package com.xpleemoon.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes8.dex */
public class CarouselViewPager extends ViewPager {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f90159e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f90160f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f90161g = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f90162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f90163c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ScheduledExecutorService f90164d;

    @Retention(RetentionPolicy.SOURCE)
    public @interface LifeCycle {
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: com.xpleemoon.view.CarouselViewPager$a$a, reason: collision with other inner class name */
        class RunnableC1141a implements Runnable {
            RunnableC1141a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                CarouselViewPager carouselViewPager = CarouselViewPager.this;
                carouselViewPager.setCurrentItem(carouselViewPager.getCurrentItem() + 1);
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10 = CarouselViewPager.this.f90162b;
            if (i10 != 0) {
                if (i10 != 2) {
                    return;
                }
                CarouselViewPager.this.d();
            } else {
                if (CarouselViewPager.this.f90163c || CarouselViewPager.this.getAdapter() == null || CarouselViewPager.this.getAdapter().getCount() <= 1) {
                    return;
                }
                CarouselViewPager.this.post(new RunnableC1141a());
            }
        }
    }

    public CarouselViewPager(Context context) {
        super(context);
        this.f90162b = 0;
        this.f90163c = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        ScheduledExecutorService scheduledExecutorService = this.f90164d;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            this.f90164d.shutdown();
        }
        this.f90164d = null;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        d();
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f90164d = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleAtFixedRate(new a(), 2000L, 2000L, TimeUnit.MILLISECONDS);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0010  */
    /* JADX WARN: Code duplicated, block: B:11:0x0014  */
    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f90163c = true;
        } else if (action == 1) {
            this.f90163c = false;
        } else if (action == 2) {
            this.f90163c = true;
        } else if (action == 3) {
            this.f90163c = false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setLifeCycle(int i10) {
        this.f90162b = i10;
    }

    public CarouselViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f90162b = 0;
        this.f90163c = false;
    }
}
