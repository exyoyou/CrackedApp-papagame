package com.shencoder.pagergridlayoutmanager;

import android.graphics.PointF;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
class b extends LinearSmoothScroller {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f78688d = "PagerGridSmoothScroller";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final float f78689e = 100.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final int f78690f = 500;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final PagerGridLayoutManager f78691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final RecyclerView f78692c;

    b(@NonNull RecyclerView recyclerView, @NonNull PagerGridLayoutManager layoutManager) {
        super(recyclerView.getContext());
        this.f78692c = recyclerView;
        this.f78691b = layoutManager;
    }

    static int a(PagerGridLayoutManager manager, Rect snapRect, Rect targetRect) {
        if (manager.canScrollHorizontally()) {
            return targetRect.left - snapRect.left;
        }
        return 0;
    }

    static int b(PagerGridLayoutManager manager, Rect snapRect, Rect targetRect, boolean isLayoutToEnd) {
        int i10;
        int i11;
        if (!manager.canScrollHorizontally()) {
            return 0;
        }
        if (isLayoutToEnd) {
            i10 = targetRect.left;
            i11 = snapRect.left;
        } else {
            i10 = targetRect.right;
            i11 = snapRect.right;
        }
        return i10 - i11;
    }

    static int c(PagerGridLayoutManager manager, Rect snapRect, Rect targetRect) {
        if (manager.canScrollVertically()) {
            return targetRect.top - snapRect.top;
        }
        return 0;
    }

    static int d(PagerGridLayoutManager manager, Rect snapRect, Rect targetRect, boolean isLayoutToEnd) {
        int i10;
        int i11;
        if (!manager.canScrollVertically()) {
            return 0;
        }
        if (isLayoutToEnd) {
            i10 = targetRect.top;
            i11 = snapRect.top;
        } else {
            i10 = targetRect.bottom;
            i11 = snapRect.bottom;
        }
        return i10 - i11;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        float fX = this.f78691b.x() / displayMetrics.densityDpi;
        if (PagerGridLayoutManager.P) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("calculateSpeedPerPixel-speed: ");
            sb2.append(fX);
        }
        return fX;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    protected final int calculateTimeForScrolling(int dx) {
        int iMin = Math.min(this.f78691b.w(), super.calculateTimeForScrolling(dx));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("calculateTimeForScrolling-time: ");
        sb2.append(iMin);
        return iMin;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
    protected void onTargetFound(View targetView, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
        PagerGridLayoutManager pagerGridLayoutManager;
        int position;
        PointF pointFComputeScrollVectorForPosition;
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (!(layoutManager instanceof PagerGridLayoutManager) || (pointFComputeScrollVectorForPosition = computeScrollVectorForPosition((position = (pagerGridLayoutManager = (PagerGridLayoutManager) layoutManager).getPosition(targetView)))) == null) {
            return;
        }
        boolean z10 = pointFComputeScrollVectorForPosition.x > 0.0f || pointFComputeScrollVectorForPosition.y > 0.0f;
        if (pagerGridLayoutManager.f0()) {
            z10 = !z10;
        }
        Rect rectH = z10 ? pagerGridLayoutManager.H() : pagerGridLayoutManager.r();
        Rect rect = new Rect();
        layoutManager.getDecoratedBoundsWithMargins(targetView, rect);
        int iB = b(pagerGridLayoutManager, rectH, rect, z10);
        int iD = d(pagerGridLayoutManager, rectH, rect, z10);
        int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(iB), Math.abs(iD)));
        if (PagerGridLayoutManager.P) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onTargetFound-targetPosition:");
            sb2.append(position);
            sb2.append(", dx:");
            sb2.append(iB);
            sb2.append(",dy:");
            sb2.append(iD);
            sb2.append(",time:");
            sb2.append(iCalculateTimeForDeceleration);
            sb2.append(",isLayoutToEnd:");
            sb2.append(z10);
            sb2.append(",snapRect:");
            sb2.append(rectH);
            sb2.append(",targetRect:");
            sb2.append(rect);
        }
        if (iCalculateTimeForDeceleration > 0) {
            action.update(iB, iD, iCalculateTimeForDeceleration, this.mDecelerateInterpolator);
        } else {
            pagerGridLayoutManager.b(position);
        }
    }
}
