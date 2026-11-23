package com.kwad.components.core.innerEc.live.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends LinearLayoutManager {

    @NonNull
    private final RecyclerView YL;
    private boolean YM;
    private int YN;
    private int YO;
    private g YP;
    private boolean YQ;

    @NonNull
    private final Context mContext;
    private int maxHeight;

    public static class a {
        private boolean YM = true;
        private int YU = 250;
        private int YV = 200;

        public a(boolean z10, int i10, int i11) {
        }
    }

    class b extends LinearSmoothScroller {
        private final Interpolator YW;

        b(Context context) {
            super(context);
            this.YW = new a(this, (byte) 0);
        }

        private int bd(int i10) {
            if (f.this.YP instanceof g.e) {
                return super.calculateTimeForScrolling(i10);
            }
            if (i10 == 0) {
                return 0;
            }
            if (i10 == 10000) {
                return 4000;
            }
            float fPx2dip = com.kwad.sdk.c.a.a.px2dip(f.this.mContext, i10) / 26.0f;
            if (fPx2dip < 3.4f) {
                fPx2dip = 3.4f;
            } else if (fPx2dip > 10.0f) {
                fPx2dip = 10.0f;
            }
            return (int) (fPx2dip * 30.0f);
        }

        private int be(int i10) {
            g gVar = f.this.YP;
            if (!c(gVar)) {
                return bh(i10);
            }
            int iBi = ((g.d) gVar).bi(i10);
            return iBi == 0 ? bh(i10) : iBi;
        }

        private int bf(int i10) {
            int iBh;
            if (i10 == 0) {
                com.kwad.sdk.core.d.c.i("LiveCommentLinearLayoutManager", "updateComments, calculateTimeForScrollingForNewStrategy, dx == 0");
                return 0;
            }
            if (f.this.YP instanceof g.b) {
                iBh = (i10 * 1000) / com.kwad.sdk.c.a.a.a(f.this.mContext, 1000.0f);
            } else if (f.this.YP instanceof g.e) {
                iBh = f.this.YO == 0 ? super.calculateTimeForScrolling(i10) : (i10 * 1000) / f.this.YO;
            } else if (f.this.YP instanceof g.c) {
                iBh = f.this.YN == 0 ? super.calculateTimeForScrolling(i10) : (i10 * 1000) / f.this.YN;
            } else {
                iBh = bh(i10);
            }
            int iMax = Math.max(iBh, 10);
            com.kwad.sdk.core.d.c.i("LiveCommentLinearLayoutManager", "updateComments, calculateTimeForScrollingForNewStrategydx" + i10 + "adjustTime" + iMax + "time" + iBh);
            return iMax;
        }

        private int bg(int i10) {
            if (i10 == 0) {
                com.kwad.sdk.core.d.c.i("LiveCommentLinearLayoutManager", "updateComments, calculateTimeForScrollingForOptimalStrategy, dx == 0");
                return 0;
            }
            int iSW = f.this.YP instanceof g.f ? ((g.f) f.this.YP).sW() : 0;
            int iBh = iSW == 0 ? bh(i10) : (i10 * 1000) / iSW;
            int iMax = Math.max(iBh, 10);
            com.kwad.sdk.core.d.c.i("LiveCommentLinearLayoutManager", "updateComments, calculateTimeForScrollingForNewStrategydx" + i10 + "adjustTime" + iMax + "time" + iBh);
            return iMax;
        }

        private int bh(int i10) {
            return Math.max(super.calculateTimeForScrolling(i10), 10);
        }

        private static boolean c(g gVar) {
            return gVar instanceof g.d;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected final float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return f.this.YP instanceof g.e ? 8.0f / displayMetrics.density : super.calculateSpeedPerPixel(displayMetrics);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected final int calculateTimeForDeceleration(int i10) {
            if (f.this.YP instanceof g.a) {
                return 0;
            }
            if (f.this.YP instanceof g.d) {
                return be(i10);
            }
            if (f.this.YP instanceof g.f) {
                return bg(i10);
            }
            return f.this.YM ? bf(i10) : super.calculateTimeForDeceleration(i10);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected final int calculateTimeForScrolling(int i10) {
            if (f.this.YP instanceof g.a) {
                return ((g.a) f.this.YP).sU();
            }
            if (f.this.YP instanceof g.d) {
                return be(i10);
            }
            if (f.this.YP instanceof g.f) {
                return bg(i10);
            }
            return f.this.YM ? bf(i10) : bd(i10);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
        @Nullable
        public final PointF computeScrollVectorForPosition(int i10) {
            return f.this.computeScrollVectorForPosition(i10);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
        protected final void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
            int iCalculateDxToMakeVisible = calculateDxToMakeVisible(view, getHorizontalSnapPreference());
            int iCalculateDyToMakeVisible = calculateDyToMakeVisible(view, getVerticalSnapPreference());
            if (f.this.YP instanceof g.a) {
                int iSU = ((g.a) f.this.YP).sU();
                if (iSU <= 1) {
                    iSU = 300;
                }
                action.update(-iCalculateDxToMakeVisible, -iCalculateDyToMakeVisible, iSU, new com.kwad.components.core.innerEc.live.widget.b(0.42f, 0.0f, 0.58f, 1.0f));
                return;
            }
            int iCalculateTimeForDeceleration = calculateTimeForDeceleration((int) Math.sqrt((iCalculateDxToMakeVisible * iCalculateDxToMakeVisible) + (iCalculateDyToMakeVisible * iCalculateDyToMakeVisible)));
            if (iCalculateTimeForDeceleration > 0) {
                action.update(-iCalculateDxToMakeVisible, -iCalculateDyToMakeVisible, iCalculateTimeForDeceleration, c(f.this.YP) ? this.YW : this.mDecelerateInterpolator);
            }
        }

        class a implements Interpolator {
            private final Interpolator YX;

            private a() {
                this.YX = new DecelerateInterpolator();
            }

            private float a(float f10, List<k> list) {
                k next;
                Iterator<k> it2 = list.iterator();
                float fTg = 0.0f;
                float fTh = 0.0f;
                while (true) {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                    if (f10 - fTg <= next.tg()) {
                        break;
                    }
                    fTg += next.tg();
                    fTh += next.th();
                }
                if (next == null) {
                    return f10;
                }
                return fTh + (this.YX.getInterpolation((f10 - fTg) / next.tg()) * next.th());
            }

            private float f(float f10) {
                return ((LinearSmoothScroller) b.this).mDecelerateInterpolator.getInterpolation(f10);
            }

            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f10) {
                g gVar = f.this.YP;
                if (!(gVar instanceof g.d)) {
                    return f(f10);
                }
                List<k> listSV = ((g.d) gVar).sV();
                if (!g.n(listSV)) {
                    return f(f10);
                }
                try {
                    return a(f10, listSV);
                } catch (Exception e10) {
                    com.kwad.sdk.core.d.c.i("LiveCommentLinearLayoutManager", "calculateSegmentInterpolation error" + e10);
                    return f(f10);
                }
            }

            /* synthetic */ a(b bVar, byte b10) {
                this();
            }
        }
    }

    public f(@NonNull RecyclerView recyclerView) {
        super(recyclerView.getContext(), 1, false);
        this.YP = g.c.YZ;
        this.maxHeight = 0;
        this.YQ = false;
        this.YL = recyclerView;
        this.mContext = recyclerView.getContext();
        setStackFromEnd(true);
    }

    private void sT() {
        this.YL.postDelayed(new Runnable() { // from class: com.kwad.components.core.innerEc.live.widget.f.1
            @Override // java.lang.Runnable
            public final void run() {
                if (f.this.YL.isComputingLayout()) {
                    return;
                }
                final RecyclerView.ItemAnimator itemAnimator = f.this.YL.getItemAnimator();
                f fVar = f.this;
                f.a(itemAnimator);
                f.this.YL.setItemAnimator(null);
                f.this.requestLayout();
                f.this.YL.postDelayed(new Runnable() { // from class: com.kwad.components.core.innerEc.live.widget.f.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.this.YL.setItemAnimator(itemAnimator);
                    }
                }, 48L);
            }
        }, 32L);
    }

    public final void aL(boolean z10) {
        this.YQ = z10;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    protected final int getExtraLayoutSpace(RecyclerView.State state) {
        if (!this.YQ) {
            return super.getExtraLayoutSpace(state);
        }
        if (this.maxHeight < getHeight()) {
            this.maxHeight = getHeight();
        }
        int i10 = this.maxHeight;
        return Math.max(i10 << 2, i10);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean isAutoMeasureEnabled() {
        return false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        try {
            super.onLayoutChildren(recycler, state);
        } catch (IllegalArgumentException e10) {
            com.kwad.sdk.core.d.c.e("LiveCommentLinearLayoutManager", "onLayoutChildrenException", e10);
            a(recycler);
            sT();
        }
    }

    public final g sS() {
        return this.YP;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i10) {
        b bVar = new b(recyclerView.getContext());
        bVar.setTargetPosition(i10);
        startSmoothScroll(bVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean supportsPredictiveItemAnimations() {
        return false;
    }

    public final void b(g gVar) {
        com.kwad.sdk.core.d.c.i("LiveCommentLinearLayoutManager", "setScrollStrategyscrollStrategy" + gVar);
        this.YP = gVar;
    }

    public final void a(@Nullable a aVar) {
        this.YM = aVar.YM;
        this.YN = aVar.YU;
        this.YO = aVar.YV;
        com.kwad.sdk.core.d.c.i("LiveCommentLinearLayoutManager", "updateComments, setLiveCommentScrollConfigmEnableNewSpeedStrategy" + this.YM + "mFastScrollSpeedPx" + this.YN + "mSlowScrollSpeedPx" + this.YO);
    }

    private void a(RecyclerView.Recycler recycler) {
        a(this.YL.getItemAnimator());
        this.YL.stopScroll();
        this.YL.stopNestedScroll();
        detachAndScrapAttachedViews(recycler);
        removeAndRecycleAllViews(recycler);
        if (this.YL.getAdapter() != null) {
            RecyclerView recyclerView = this.YL;
            recyclerView.scrollToPosition(recyclerView.getAdapter().getItemCount() - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(@Nullable RecyclerView.ItemAnimator itemAnimator) {
        if (itemAnimator != null) {
            int i10 = 0;
            while (i10 < 10 && itemAnimator.isRunning()) {
                i10++;
                try {
                    itemAnimator.endAnimations();
                } catch (IllegalArgumentException e10) {
                    com.kwad.sdk.core.d.c.e("LiveCommentLinearLayoutManager", "resetRecyclerState, clearCount: " + i10, e10);
                }
            }
        }
    }
}
