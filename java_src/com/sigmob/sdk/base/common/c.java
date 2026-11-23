package com.sigmob.sdk.base.common;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.sigmob.sdk.base.models.BaseAdUnit;

/* JADX INFO: loaded from: classes5.dex */
public class c extends GestureDetector.SimpleOnGestureListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f79025b = 4;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final float f79026c = 100.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final float f79027d = 100.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f79028a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BaseAdUnit f79029e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f79030f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f79031g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f79032h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f79033i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f79034j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f79035k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private a f79036l = a.UNSET;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f79037m;

    /* JADX INFO: renamed from: com.sigmob.sdk.base.common.c$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f79038a;

        static {
            int[] iArr = new int[a.values().length];
            f79038a = iArr;
            try {
                iArr[a.UNSET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f79038a[a.GOING_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f79038a[a.GOING_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f79038a[a.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    enum a {
        UNSET,
        GOING_RIGHT,
        GOING_LEFT,
        FINISHED,
        FAILED
    }

    c(View view, BaseAdUnit adUnit) {
        this.f79030f = 100.0f;
        if (view != null && view.getWidth() > 0) {
            this.f79030f = Math.min(100.0f, view.getWidth() / 3.0f);
        }
        this.f79028a = false;
        this.f79037m = view;
        this.f79029e = adUnit;
    }

    private void e() {
        int i10 = this.f79034j + 1;
        this.f79034j = i10;
        if (i10 >= 4) {
            this.f79036l = a.FINISHED;
        }
    }

    private boolean f(float currentPositionX) {
        return currentPositionX > this.f79031g;
    }

    private boolean g(float currentPositionX) {
        return currentPositionX < this.f79031g;
    }

    void a() {
        a aVar = a.FINISHED;
        b();
    }

    void b() {
        this.f79034j = 0;
        this.f79036l = a.UNSET;
    }

    void c() {
        this.f79028a = false;
    }

    boolean d() {
        return this.f79028a;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent e10, MotionEvent e11, float distanceX, float distanceY) {
        if (e10 == null || e11 == null) {
            return false;
        }
        if (this.f79036l == a.FINISHED) {
            return super.onScroll(e10, e11, distanceX, distanceY);
        }
        if (a(e10, e11)) {
            this.f79036l = a.FAILED;
        } else {
            int i10 = AnonymousClass1.f79038a[this.f79036l.ordinal()];
            if (i10 == 1) {
                this.f79035k = e10.getX();
                a(e11.getX());
            } else if (i10 == 2) {
                b(e11.getX());
            } else if (i10 == 3) {
                c(e11.getX());
            }
            this.f79031g = e11.getX();
        }
        return super.onScroll(e10, e11, distanceX, distanceY);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent e10) {
        this.f79028a = true;
        return super.onSingleTapUp(e10);
    }

    private void a(float currentPositionX) {
        if (currentPositionX > this.f79035k) {
            this.f79036l = a.GOING_RIGHT;
        }
    }

    private void b(float currentPositionX) {
        if (d(currentPositionX) && g(currentPositionX)) {
            this.f79036l = a.GOING_LEFT;
            this.f79035k = currentPositionX;
        }
    }

    private void c(float currentPositionX) {
        if (e(currentPositionX) && f(currentPositionX)) {
            this.f79036l = a.GOING_RIGHT;
            this.f79035k = currentPositionX;
        }
    }

    private boolean d(float currentPosition) {
        if (this.f79033i) {
            return true;
        }
        if (currentPosition < this.f79035k + this.f79030f) {
            return false;
        }
        this.f79032h = false;
        this.f79033i = true;
        return true;
    }

    private boolean e(float currentPosition) {
        if (this.f79032h) {
            return true;
        }
        if (currentPosition > this.f79035k - this.f79030f) {
            return false;
        }
        this.f79033i = false;
        this.f79032h = true;
        e();
        return true;
    }

    private boolean a(MotionEvent e10, MotionEvent e11) {
        if (e10 == null || e11 == null) {
            return false;
        }
        return Math.abs(e11.getY() - e10.getY()) > 100.0f;
    }
}
