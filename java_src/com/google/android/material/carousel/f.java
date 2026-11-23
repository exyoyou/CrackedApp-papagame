package com.google.android.material.carousel;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;

/* JADX INFO: loaded from: classes5.dex */
public class f extends SnapHelper {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final float f29851k = 100.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final float f29852l = 50.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f29853i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private RecyclerView f29854j;

    class a extends LinearSmoothScroller {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecyclerView.LayoutManager f29855b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, RecyclerView.LayoutManager layoutManager) {
            super(context);
            this.f29855b = layoutManager;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            float f10;
            float f11;
            if (this.f29855b.canScrollVertically()) {
                f10 = displayMetrics.densityDpi;
                f11 = 50.0f;
            } else {
                f10 = displayMetrics.densityDpi;
                f11 = 100.0f;
            }
            return f11 / f10;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
        protected void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
            if (f.this.f29854j != null) {
                f fVar = f.this;
                int[] iArrC = fVar.c(fVar.f29854j.getLayoutManager(), view, true);
                int i10 = iArrC[0];
                int i11 = iArrC[1];
                int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i10), Math.abs(i11)));
                if (iCalculateTimeForDeceleration > 0) {
                    action.update(i10, i11, iCalculateTimeForDeceleration, this.mDecelerateInterpolator);
                }
            }
        }
    }

    public f() {
        this(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] c(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view, boolean z10) {
        if (!(layoutManager instanceof CarouselLayoutManager)) {
            return new int[]{0, 0};
        }
        int iD = d(view, (CarouselLayoutManager) layoutManager, z10);
        if (layoutManager.canScrollHorizontally()) {
            return new int[]{iD, 0};
        }
        return layoutManager.canScrollVertically() ? new int[]{0, iD} : new int[]{0, 0};
    }

    private int d(@NonNull View view, CarouselLayoutManager carouselLayoutManager, boolean z10) {
        return carouselLayoutManager.D(carouselLayoutManager.getPosition(view), z10);
    }

    @Nullable
    private View e(RecyclerView.LayoutManager layoutManager) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount != 0 && (layoutManager instanceof CarouselLayoutManager)) {
            CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) layoutManager;
            int i10 = Integer.MAX_VALUE;
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = layoutManager.getChildAt(i11);
                int iAbs = Math.abs(carouselLayoutManager.D(layoutManager.getPosition(childAt), false));
                if (iAbs < i10) {
                    view = childAt;
                    i10 = iAbs;
                }
            }
        }
        return view;
    }

    private boolean isForwardFling(RecyclerView.LayoutManager layoutManager, int i10, int i11) {
        if (layoutManager.canScrollHorizontally()) {
            return i10 > 0;
        }
        return i11 > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean isReverseLayout(RecyclerView.LayoutManager layoutManager) {
        PointF pointFComputeScrollVectorForPosition;
        int itemCount = layoutManager.getItemCount();
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (pointFComputeScrollVectorForPosition = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return false;
        }
        return pointFComputeScrollVectorForPosition.x < 0.0f || pointFComputeScrollVectorForPosition.y < 0.0f;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) {
        super.attachToRecyclerView(recyclerView);
        this.f29854j = recyclerView;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        return c(layoutManager, view, false);
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    protected RecyclerView.SmoothScroller createScroller(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) {
            return new a(this.f29854j.getContext(), layoutManager);
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        return e(layoutManager);
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i10, int i11) {
        int itemCount;
        if (!this.f29853i || (itemCount = layoutManager.getItemCount()) == 0) {
            return -1;
        }
        int childCount = layoutManager.getChildCount();
        View view = null;
        View view2 = null;
        int i12 = Integer.MIN_VALUE;
        int i13 = Integer.MAX_VALUE;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = layoutManager.getChildAt(i14);
            if (childAt != null) {
                int iD = d(childAt, (CarouselLayoutManager) layoutManager, false);
                if (iD <= 0 && iD > i12) {
                    view2 = childAt;
                    i12 = iD;
                }
                if (iD >= 0 && iD < i13) {
                    view = childAt;
                    i13 = iD;
                }
            }
        }
        boolean zIsForwardFling = isForwardFling(layoutManager, i10, i11);
        if (zIsForwardFling && view != null) {
            return layoutManager.getPosition(view);
        }
        if (!zIsForwardFling && view2 != null) {
            return layoutManager.getPosition(view2);
        }
        if (zIsForwardFling) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int position = layoutManager.getPosition(view) + (isReverseLayout(layoutManager) == zIsForwardFling ? -1 : 1);
        if (position < 0 || position >= itemCount) {
            return -1;
        }
        return position;
    }

    public f(boolean z10) {
        this.f29853i = z10;
    }
}
