package com.baidu.mobads.sdk.internal.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
final class FakeDrag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewPager2 f7949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ScrollEventAdapter f7950b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RecyclerView f7951c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private VelocityTracker f7952d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7953e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f7954f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f7955g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f7956h;

    FakeDrag(ViewPager2 viewPager2, ScrollEventAdapter scrollEventAdapter, RecyclerView recyclerView) {
        this.f7949a = viewPager2;
        this.f7950b = scrollEventAdapter;
        this.f7951c = recyclerView;
    }

    private void d() {
        VelocityTracker velocityTracker = this.f7952d;
        if (velocityTracker != null) {
            velocityTracker.clear();
        } else {
            this.f7952d = VelocityTracker.obtain();
            this.f7953e = ViewConfiguration.get(this.f7949a.getContext()).getScaledMaximumFlingVelocity();
        }
    }

    boolean a() {
        return this.f7950b.g();
    }

    @UiThread
    boolean b() {
        if (this.f7950b.f()) {
            return false;
        }
        this.f7955g = 0;
        this.f7954f = 0;
        this.f7956h = SystemClock.uptimeMillis();
        d();
        this.f7950b.b();
        if (!this.f7950b.e()) {
            this.f7951c.stopScroll();
        }
        a(this.f7956h, 0, 0.0f, 0.0f);
        return true;
    }

    @UiThread
    boolean c() {
        if (!this.f7950b.g()) {
            return false;
        }
        this.f7950b.c();
        VelocityTracker velocityTracker = this.f7952d;
        velocityTracker.computeCurrentVelocity(1000, this.f7953e);
        if (this.f7951c.fling((int) velocityTracker.getXVelocity(), (int) velocityTracker.getYVelocity())) {
            return true;
        }
        this.f7949a.d();
        return true;
    }

    @UiThread
    boolean a(float f10) {
        if (!this.f7950b.g()) {
            return false;
        }
        float f11 = this.f7954f - f10;
        this.f7954f = f11;
        int iRound = Math.round(f11 - this.f7955g);
        this.f7955g += iRound;
        long jUptimeMillis = SystemClock.uptimeMillis();
        boolean z10 = this.f7949a.getOrientation() == 0;
        int i10 = z10 ? iRound : 0;
        int i11 = z10 ? 0 : iRound;
        float f12 = z10 ? this.f7954f : 0.0f;
        float f13 = z10 ? 0.0f : this.f7954f;
        this.f7951c.scrollBy(i10, i11);
        a(jUptimeMillis, 2, f12, f13);
        return true;
    }

    private void a(long j10, int i10, float f10, float f11) {
        MotionEvent motionEventObtain = MotionEvent.obtain(this.f7956h, j10, i10, f10, f11, 0);
        this.f7952d.addMovement(motionEventObtain);
        motionEventObtain.recycle();
    }
}
