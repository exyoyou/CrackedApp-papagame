package com.shencoder.pagergridlayoutmanager;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class c extends SnapHelper {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f78693k = "PagerGridSnapHelper";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private RecyclerView f78694i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List<View> f78695j = new ArrayList(2);

    c() {
    }

    static int a(PagerGridLayoutManager manager, Rect targetRect) {
        if (manager.canScrollHorizontally()) {
            return f(manager) - targetRect.left;
        }
        return 0;
    }

    static int b(PagerGridLayoutManager manager, Rect targetRect) {
        if (manager.canScrollVertically()) {
            return f(manager) - targetRect.top;
        }
        return 0;
    }

    static int c(RecyclerView.LayoutManager layoutManager, @NonNull View targetView) {
        return d(layoutManager, targetView) - e(layoutManager);
    }

    static int d(RecyclerView.LayoutManager layoutManager, View targetView) {
        return k(layoutManager, targetView) + (j(layoutManager, targetView) / 2);
    }

    static int e(RecyclerView.LayoutManager layoutManager) {
        return g(layoutManager) + (h(layoutManager) / 2);
    }

    static int f(RecyclerView.LayoutManager layoutManager) {
        int height;
        int paddingBottom;
        if (layoutManager.canScrollHorizontally()) {
            height = layoutManager.getWidth();
            paddingBottom = layoutManager.getPaddingEnd();
        } else {
            height = layoutManager.getHeight();
            paddingBottom = layoutManager.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    static int g(RecyclerView.LayoutManager layoutManager) {
        return layoutManager.canScrollHorizontally() ? layoutManager.getPaddingStart() : layoutManager.getPaddingTop();
    }

    static int h(RecyclerView.LayoutManager layoutManager) {
        int height;
        int paddingBottom;
        if (layoutManager.canScrollHorizontally()) {
            height = layoutManager.getWidth() - layoutManager.getPaddingStart();
            paddingBottom = layoutManager.getPaddingEnd();
        } else {
            height = layoutManager.getHeight() - layoutManager.getPaddingTop();
            paddingBottom = layoutManager.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    static int i(RecyclerView.LayoutManager layoutManager, View view) {
        int decoratedBottom;
        int i10;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (layoutManager.canScrollHorizontally()) {
            decoratedBottom = layoutManager.getDecoratedRight(view);
            i10 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        } else {
            decoratedBottom = layoutManager.getDecoratedBottom(view);
            i10 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return decoratedBottom - i10;
    }

    static int j(RecyclerView.LayoutManager layoutManager, View view) {
        int decoratedMeasuredHeight;
        int i10;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (layoutManager.canScrollHorizontally()) {
            decoratedMeasuredHeight = layoutManager.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            i10 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        } else {
            decoratedMeasuredHeight = layoutManager.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            i10 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return decoratedMeasuredHeight + i10;
    }

    static int k(RecyclerView.LayoutManager layoutManager, View view) {
        int decoratedTop;
        int i10;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (layoutManager.canScrollHorizontally()) {
            decoratedTop = layoutManager.getDecoratedLeft(view);
            i10 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        } else {
            decoratedTop = layoutManager.getDecoratedTop(view);
            i10 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        }
        return decoratedTop - i10;
    }

    private boolean l(PagerGridLayoutManager layoutManager, int velocityX, int velocityY) {
        if (layoutManager.canScrollHorizontally()) {
            if (layoutManager.F()) {
                if (velocityX < 0) {
                    return true;
                }
            } else if (velocityX > 0) {
                return true;
            }
        } else if (velocityY > 0) {
            return true;
        }
        return false;
    }

    private void m(PagerGridLayoutManager manager) {
        if (!this.f78695j.isEmpty()) {
            this.f78695j.clear();
        }
        int childCount = manager.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = manager.getChildAt(i10);
            if (childAt != null && manager.getPosition(childAt) % manager.y() == 0) {
                this.f78695j.add(childAt);
            }
        }
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) throws IllegalStateException {
        super.attachToRecyclerView(recyclerView);
        this.f78694i = recyclerView;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View targetView) {
        int iA;
        int iB;
        int iC;
        int[] iArr = new int[2];
        int position = layoutManager.getPosition(targetView);
        if (layoutManager instanceof PagerGridLayoutManager) {
            PagerGridLayoutManager pagerGridLayoutManager = (PagerGridLayoutManager) layoutManager;
            int iE = e(pagerGridLayoutManager);
            Rect rect = new Rect();
            layoutManager.getDecoratedBoundsWithMargins(targetView, rect);
            if (pagerGridLayoutManager.f0()) {
                if (i(pagerGridLayoutManager, targetView) >= iE) {
                    Rect rectH = pagerGridLayoutManager.H();
                    iA = b.a(pagerGridLayoutManager, rectH, rect);
                    iC = b.c(pagerGridLayoutManager, rectH, rect);
                } else {
                    iA = -a(pagerGridLayoutManager, rect);
                    iB = b(pagerGridLayoutManager, rect);
                    iC = -iB;
                }
            } else if (k(pagerGridLayoutManager, targetView) <= iE) {
                Rect rectH2 = pagerGridLayoutManager.H();
                iA = b.a(pagerGridLayoutManager, rectH2, rect);
                iC = b.c(pagerGridLayoutManager, rectH2, rect);
            } else {
                iA = -a(pagerGridLayoutManager, rect);
                iB = b(pagerGridLayoutManager, rect);
                iC = -iB;
            }
            iArr[0] = iA;
            iArr[1] = iC;
            if (iA == 0 && iC == 0) {
                pagerGridLayoutManager.b(position);
            }
            if (PagerGridLayoutManager.P) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("calculateDistanceToFinalSnap-targetView: ");
                sb2.append(position);
                sb2.append(",snapDistance: ");
                sb2.append(Arrays.toString(iArr));
            }
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    protected RecyclerView.SmoothScroller createScroller(@NonNull RecyclerView.LayoutManager layoutManager) {
        RecyclerView recyclerView;
        if ((layoutManager instanceof PagerGridLayoutManager) && (recyclerView = this.f78694i) != null) {
            return new b(recyclerView, (PagerGridLayoutManager) layoutManager);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:29:0x0087  */
    /* JADX WARN: Code duplicated, block: B:30:0x008c  */
    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        View view;
        int position;
        View view2 = null;
        if (layoutManager instanceof PagerGridLayoutManager) {
            PagerGridLayoutManager pagerGridLayoutManager = (PagerGridLayoutManager) layoutManager;
            m(pagerGridLayoutManager);
            int size = this.f78695j.size();
            if (size != 1) {
                if (size == 2) {
                    int iE = e(pagerGridLayoutManager);
                    View view3 = this.f78695j.get(0);
                    View view4 = this.f78695j.get(1);
                    pagerGridLayoutManager.getDecoratedBoundsWithMargins(view4, new Rect());
                    if (!pagerGridLayoutManager.f0() ? k(pagerGridLayoutManager, view4) <= iE : i(pagerGridLayoutManager, view4) > iE) {
                        view3 = view4;
                    }
                    view2 = view3;
                } else if (size == 3) {
                    view = this.f78695j.get(1);
                } else if (PagerGridLayoutManager.P) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("findSnapView wrong -> snapList.size: ");
                    sb2.append(this.f78695j.size());
                }
                if (PagerGridLayoutManager.P) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("findSnapView: position:");
                    if (view2 != null) {
                        position = layoutManager.getPosition(view2);
                    } else {
                        position = -1;
                    }
                    sb3.append(position);
                    sb3.append(", snapList.size:");
                    sb3.append(this.f78695j.size());
                }
                this.f78695j.clear();
            } else {
                view = this.f78695j.get(0);
            }
            view2 = view;
            if (PagerGridLayoutManager.P) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("findSnapView: position:");
                if (view2 != null) {
                    position = layoutManager.getPosition(view2);
                } else {
                    position = -1;
                }
                sb4.append(position);
                sb4.append(", snapList.size:");
                sb4.append(this.f78695j.size());
            }
            this.f78695j.clear();
        }
        return view2;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int velocityX, int velocityY) {
        int position = -1;
        if (layoutManager.getItemCount() == 0 || layoutManager.getChildCount() == 0 || !(layoutManager instanceof PagerGridLayoutManager)) {
            return -1;
        }
        PagerGridLayoutManager pagerGridLayoutManager = (PagerGridLayoutManager) layoutManager;
        if (pagerGridLayoutManager.u().f78677g == 0) {
            return -1;
        }
        int[] iArrCalculateScrollDistance = calculateScrollDistance(velocityX, velocityY);
        int i10 = pagerGridLayoutManager.canScrollHorizontally() ? iArrCalculateScrollDistance[0] : iArrCalculateScrollDistance[1];
        if (pagerGridLayoutManager.f0()) {
            i10 = -i10;
        }
        boolean zL = l(pagerGridLayoutManager, velocityX, velocityY);
        int iE = e(pagerGridLayoutManager);
        m(pagerGridLayoutManager);
        int size = this.f78695j.size();
        if (size == 1) {
            View view = this.f78695j.get(0);
            int position2 = pagerGridLayoutManager.getPosition(view);
            if (!zL ? Math.abs(i10) < iE ? !pagerGridLayoutManager.f0() ? i(pagerGridLayoutManager, view) + Math.abs(i10) <= iE || (position2 = position2 - 1) >= 0 : k(pagerGridLayoutManager, view) - Math.abs(i10) >= iE || (position2 = position2 - 1) >= 0 : (position2 = position2 - 1) >= 0 : i10 >= iE || (!pagerGridLayoutManager.f0() ? !(k(pagerGridLayoutManager, view) - i10 > iE && (position2 = position2 - 1) < 0) : !(i(pagerGridLayoutManager, view) + i10 < iE && (position2 = position2 - 1) < 0))) {
                position = position2;
            }
        } else if (size == 2) {
            View view2 = this.f78695j.get(0);
            pagerGridLayoutManager.getPosition(view2);
            View view3 = this.f78695j.get(1);
            int position3 = pagerGridLayoutManager.getPosition(view3);
            if (!pagerGridLayoutManager.f0() ? !zL ? Math.abs(i10) < iE ? i(pagerGridLayoutManager, view2) + Math.abs(i10) < iE || (position3 = position3 - 1) >= 0 : (position3 = position3 - 1) >= 0 : i10 >= iE || k(pagerGridLayoutManager, view3) - i10 <= iE || (position3 = position3 - 1) >= 0 : !zL ? Math.abs(i10) < iE ? k(pagerGridLayoutManager, view2) - Math.abs(i10) > iE || (position3 = position3 - 1) >= 0 : (position3 = position3 - 1) >= 0 : i10 >= iE || i(pagerGridLayoutManager, view3) + i10 >= iE || (position3 = position3 - 1) >= 0) {
                position = position3;
            }
        } else if (size == 3) {
            position = pagerGridLayoutManager.getPosition(this.f78695j.get(1));
        } else if (PagerGridLayoutManager.P) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("findTargetSnapPosition-snapList.size: ");
            sb2.append(this.f78695j.size());
        }
        if (PagerGridLayoutManager.P) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("findTargetSnapPosition->forwardDirection:");
            sb3.append(zL);
            sb3.append(",targetPosition:");
            sb3.append(position);
            sb3.append(",velocityX: ");
            sb3.append(velocityX);
            sb3.append(",velocityY: ");
            sb3.append(velocityY);
            sb3.append(",scrollDistance:");
            sb3.append(i10);
            sb3.append(",snapList:");
            sb3.append(this.f78695j.size());
        }
        this.f78695j.clear();
        return position;
    }
}
