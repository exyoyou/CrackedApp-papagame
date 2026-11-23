package com.join.mgps.customview;

import android.content.Context;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes3.dex */
public class HorizontalRecyclerView extends RecyclerView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LinearLayoutManager f65110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private double f65111c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f65112d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f65113e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f65114f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65115g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f65116h;

    class a extends LinearLayoutManager {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public double f65117n;

        /* JADX INFO: renamed from: com.join.mgps.customview.HorizontalRecyclerView$a$a, reason: collision with other inner class name */
        class C0708a extends b {
            C0708a(Context context) {
                super(context);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
            public PointF computeScrollVectorForPosition(int targetPosition) {
                return super.computeScrollVectorForPosition(targetPosition);
            }
        }

        a(Context context) {
            super(context);
            this.f65117n = 0.8199999928474426d;
        }

        public void a(double speedRatio) {
            this.f65117n = speedRatio;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public int scrollHorizontallyBy(int dx, RecyclerView.Recycler recycler, RecyclerView.State state) {
            double d10 = dx;
            int iScrollHorizontallyBy = super.scrollHorizontallyBy((int) (this.f65117n * d10), recycler, state);
            return iScrollHorizontallyBy == ((int) (this.f65117n * d10)) ? dx : iScrollHorizontallyBy;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int position) {
            C0708a c0708a = new C0708a(recyclerView.getContext());
            c0708a.setTargetPosition(position);
            startSmoothScroll(c0708a);
        }
    }

    public static class b extends LinearSmoothScroller {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final float f65120b = 400.0f;

        public b(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public int calculateDtToFit(int viewStart, int viewEnd, int boxStart, int boxEnd, int snapPreference) {
            if (snapPreference == -1) {
                return boxStart - viewStart;
            }
            if (snapPreference == 0) {
                return boxStart - viewStart;
            }
            if (snapPreference == 1) {
                return boxEnd - viewEnd;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return f65120b / displayMetrics.densityDpi;
        }
    }

    public HorizontalRecyclerView(Context context) {
        super(context);
        this.f65111c = 1.2d;
        this.f65112d = false;
        a(context);
    }

    private void a(Context context) {
        a aVar = new a(context);
        this.f65110b = aVar;
        aVar.setOrientation(0);
        setLayoutManager(this.f65110b);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0) {
            this.f65115g = (int) ev.getX();
            this.f65116h = (int) ev.getY();
        } else if (action == 2) {
            int x10 = (int) ev.getX();
            int y10 = (int) ev.getY();
            if (Math.abs(x10 - this.f65115g) > Math.abs(y10 - this.f65116h)) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            this.f65115g = x10;
            this.f65116h = y10;
        }
        return super.dispatchTouchEvent(ev);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public boolean fling(int velocityX, int velocityY) {
        return super.fling((int) (((double) velocityX) * this.f65111c), velocityY);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0) {
            this.f65113e = ev.getRawX();
            this.f65114f = ev.getRawY();
        } else if (action == 2) {
            float rawX = ev.getRawX();
            float rawY = ev.getRawY();
            if (Math.abs(rawX - this.f65113e) > Math.abs(rawY - this.f65114f) && this.f65112d) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            this.f65113e = ev.getRawX();
            this.f65114f = ev.getRawY();
        }
        return super.onInterceptTouchEvent(ev);
    }

    public void setRequestDisallowInterceptTouchEvent(boolean isRequestDisallowInterceptTouchEvent) {
        this.f65112d = isRequestDisallowInterceptTouchEvent;
    }

    public HorizontalRecyclerView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f65111c = 1.2d;
        this.f65112d = false;
        a(context);
    }

    public HorizontalRecyclerView(Context context, @Nullable AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65111c = 1.2d;
        this.f65112d = false;
        a(context);
    }
}
