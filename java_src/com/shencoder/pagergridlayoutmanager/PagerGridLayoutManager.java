package com.shencoder.pagergridlayoutmanager;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.CallSuper;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class PagerGridLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {
    private static final String N = "PagerGridLayoutManager";
    public static final int O = 0;
    static boolean P = false;
    public static final int Q = 0;
    public static final int R = 1;
    public static final int S = -1;
    public static final int T = 0;
    private final Rect A;
    private final Rect B;
    private RecyclerView C;
    private boolean D;
    protected boolean E;

    @Nullable
    private d F;
    private int G;
    private int H;
    private boolean I;
    private float J;
    private int K;
    private final RecyclerView.OnChildAttachStateChangeListener L;
    private RecyclerView.OnItemTouchListener M;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.shencoder.pagergridlayoutmanager.c f78645n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f78646o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @IntRange(from = 1)
    private int f78647p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @IntRange(from = 1)
    private int f78648q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f78649r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f78650s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f78651t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f78652u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f78653v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f78654w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f78655x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected final c f78656y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected final b f78657z;

    public static class LayoutParams extends RecyclerView.LayoutParams {
        public LayoutParams(Context c10, AttributeSet attrs) {
            super(c10, attrs);
        }

        public LayoutParams(int width, int height) {
            super(width, height);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super(source);
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
        }

        public LayoutParams(RecyclerView.LayoutParams source) {
            super(source);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface Orientation {
    }

    class a implements RecyclerView.OnChildAttachStateChangeListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewAttachedToWindow(@NonNull View view) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (((ViewGroup.MarginLayoutParams) layoutParams).width != -1 || ((ViewGroup.MarginLayoutParams) layoutParams).height != -1) {
                throw new IllegalStateException("Item layout  must fill the whole PagerGridLayoutManager (use match_parent)");
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewDetachedFromWindow(@NonNull View view) {
        }
    }

    protected static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected int f78664a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected boolean f78665b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected boolean f78666c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected boolean f78667d;

        protected b() {
        }

        protected void a() {
            this.f78664a = 0;
            this.f78665b = false;
            this.f78666c = false;
            this.f78667d = false;
        }
    }

    protected static class c {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        protected static final int f78668i = -1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        protected static final int f78669j = 1;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        protected static final int f78670k = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected int f78671a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected boolean f78672b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected int f78673c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected int f78674d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        protected int f78675e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        protected final Rect f78676f = new Rect();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        protected int f78677g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        protected int f78678h;

        protected c() {
        }

        protected int a(int currentPosition, int orientation, int rows, int columns, RecyclerView.State state) {
            int i10;
            int i11;
            int i12 = rows * columns;
            if (orientation == 0 && (i10 = currentPosition % i12) != i12 - 1) {
                int i13 = currentPosition % columns;
                int i14 = i10 / columns;
                if (!(i14 == rows - 1) && ((i11 = currentPosition + columns) < state.getItemCount() || i13 == columns - 1)) {
                    return i11;
                }
                currentPosition -= i14 * columns;
            }
            return currentPosition + 1;
        }

        protected int b(int currentPosition, int orientation, int rows, int columns, RecyclerView.State state) {
            int i10;
            int i11 = rows * columns;
            if (orientation != 0 || (i10 = currentPosition % i11) == 0) {
                return currentPosition - 1;
            }
            return i10 / columns == 0 ? (currentPosition - 1) + ((rows - 1) * columns) : currentPosition - columns;
        }

        protected boolean c(RecyclerView.State state) {
            int i10 = this.f78673c;
            return i10 >= 0 && i10 < state.getItemCount();
        }

        protected View d(RecyclerView.Recycler recycler) {
            return recycler.getViewForPosition(this.f78673c);
        }

        protected void e(int left, int top, int right, int bottom) {
            this.f78676f.set(left, top, right, bottom);
        }
    }

    public interface d {
        void a(@IntRange(from = -1) int prePagerIndex, @IntRange(from = -1) int currentPagerIndex);

        void b(@IntRange(from = 0) int pagerCount);
    }

    private static class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f78679b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @NonNull
        private final PagerGridLayoutManager f78680c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @NonNull
        private final RecyclerView f78681d;

        e(int position, @NonNull PagerGridLayoutManager layoutManager, @NonNull RecyclerView recyclerView) {
            this.f78679b = position;
            this.f78680c = layoutManager;
            this.f78681d = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.shencoder.pagergridlayoutmanager.b bVar = new com.shencoder.pagergridlayoutmanager.b(this.f78681d, this.f78680c);
            bVar.setTargetPosition(this.f78679b);
            this.f78680c.startSmoothScroll(bVar);
        }
    }

    public PagerGridLayoutManager(@IntRange(from = 1) int rows, @IntRange(from = 1) int columns) {
        this(rows, columns, 0);
    }

    private int B(int pagerIndex, boolean isLayoutToEnd) {
        if (isLayoutToEnd) {
            return pagerIndex * this.f78649r;
        }
        int i10 = this.f78649r;
        return ((pagerIndex * i10) + i10) - 1;
    }

    private int C() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    private int D() {
        return (getWidth() - getPaddingStart()) - getPaddingEnd();
    }

    private int G() {
        return this.f78646o == 0 ? getPaddingStart() : getPaddingTop();
    }

    private boolean J() {
        RecyclerView recyclerView = this.C;
        return recyclerView == null || recyclerView.getScrollState() == 0;
    }

    private boolean K(View view) {
        for (ViewParent parent = view.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            if (((ViewGroup) parent).shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    private boolean L(int position) {
        if (this.f78646o == 0) {
            return (position % this.f78649r) / this.f78648q == 0;
        }
        return position % this.f78648q == 0;
    }

    private boolean M(int position) {
        if (this.f78646o == 0) {
            return (position % this.f78649r) / this.f78648q == this.f78647p - 1;
        }
        int i10 = this.f78648q;
        return position % i10 == i10 - 1;
    }

    private void N(RecyclerView.Recycler recycler, RecyclerView.State state, c layoutState, b layoutChunkResult) {
        int i10;
        int paddingStart;
        int iA;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int iA2;
        int height;
        boolean z10 = layoutState.f78674d == 1;
        int i17 = layoutState.f78673c;
        View viewD = layoutState.d(recycler);
        if (z10) {
            addView(viewD);
        } else {
            addView(viewD, 0);
        }
        layoutState.f78673c = z10 ? layoutState.a(i17, this.f78646o, this.f78647p, this.f78648q, state) : layoutState.b(i17, this.f78646o, this.f78647p, this.f78648q, state);
        measureChildWithMargins(viewD, this.f78654w, this.f78655x);
        boolean zL = z10 ? L(i17) : M(i17);
        if (zL) {
            i10 = this.f78646o == 0 ? this.f78652u : this.f78653v;
        } else {
            i10 = 0;
        }
        layoutChunkResult.f78664a = i10;
        Rect rect = layoutState.f78676f;
        if (this.f78646o != 0) {
            if (z10) {
                if (zL) {
                    paddingStart = getPaddingStart();
                    iA = rect.bottom + a(true, i17);
                } else {
                    paddingStart = rect.left + this.f78652u;
                    iA = rect.top;
                }
                i11 = this.f78652u + paddingStart;
                i12 = this.f78653v;
            } else if (zL) {
                int width = getWidth() - getPaddingEnd();
                int i18 = width - this.f78652u;
                int iA3 = rect.top - a(false, i17);
                i13 = width;
                i14 = iA3;
                i15 = i18;
                i16 = iA3 - this.f78653v;
            } else {
                int i19 = rect.left;
                int i20 = this.f78652u;
                paddingStart = i19 - i20;
                iA = rect.top;
                i11 = i20 + paddingStart;
                i12 = this.f78653v;
            }
            i15 = paddingStart;
            i16 = iA;
            i13 = i11;
            i14 = i12 + iA;
        } else if (z10) {
            if (zL) {
                paddingStart = rect.left + this.f78652u + a(true, i17);
                iA = getPaddingTop();
            } else {
                paddingStart = rect.left;
                iA = rect.bottom;
            }
            i11 = this.f78652u + paddingStart;
            i12 = this.f78653v;
            i15 = paddingStart;
            i16 = iA;
            i13 = i11;
            i14 = i12 + iA;
        } else {
            if (zL) {
                iA2 = (rect.left - this.f78652u) - a(false, i17);
                height = getHeight() - getPaddingBottom();
            } else {
                iA2 = rect.left;
                height = rect.top;
            }
            i15 = iA2;
            i14 = height;
            i16 = height - this.f78653v;
            i13 = this.f78652u + iA2;
        }
        layoutState.e(i15, i16, i13, i14);
        layoutDecoratedWithMargins(viewD, i15, i16, i13, i14);
    }

    private void O(int delta) {
        if (this.f78646o == 0) {
            offsetChildrenHorizontal(delta);
        } else {
            offsetChildrenVertical(delta);
        }
    }

    private void P(RecyclerView.Recycler recycler) {
        if (this.f78656y.f78672b) {
            if (f0()) {
                if (this.f78656y.f78674d == -1) {
                    R(recycler);
                    return;
                } else {
                    Q(recycler);
                    return;
                }
            }
            if (this.f78656y.f78674d == -1) {
                Q(recycler);
            } else {
                R(recycler);
            }
        }
    }

    private void Q(RecyclerView.Recycler recycler) {
        int iQ = getClipToPadding() ? q() : this.f78646o == 0 ? getWidth() : getHeight();
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt != null && m(childAt) > iQ) {
                if (P) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("recycleViewsFromEnd-removeAndRecycleViewAt: ");
                    sb2.append(childCount);
                    sb2.append(", position: ");
                    sb2.append(getPosition(childAt));
                }
                removeAndRecycleViewAt(childCount, recycler);
            }
        }
    }

    private void R(RecyclerView.Recycler recycler) {
        int iG = getClipToPadding() ? G() : 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt != null && l(childAt) < iG) {
                if (P) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("recycleViewsFromStart-removeAndRecycleViewAt: ");
                    sb2.append(childCount);
                    sb2.append(", position: ");
                    sb2.append(getPosition(childAt));
                }
                removeAndRecycleViewAt(childCount, recycler);
            }
        }
    }

    private void S(RecyclerView.Recycler recycler, RecyclerView.State state, c layoutState, b layoutChunkResult) {
        int i10;
        int iA;
        int i11;
        int paddingTop;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int width;
        int iA2;
        int i17;
        int iA3;
        int height;
        boolean z10 = layoutState.f78674d == 1;
        int i18 = layoutState.f78673c;
        View viewD = layoutState.d(recycler);
        if (z10) {
            addView(viewD);
        } else {
            addView(viewD, 0);
        }
        layoutState.f78673c = z10 ? layoutState.a(i18, this.f78646o, this.f78647p, this.f78648q, state) : layoutState.b(i18, this.f78646o, this.f78647p, this.f78648q, state);
        measureChildWithMargins(viewD, this.f78654w, this.f78655x);
        boolean zL = z10 ? L(i18) : M(i18);
        if (zL) {
            i10 = this.f78646o == 0 ? this.f78652u : this.f78653v;
        } else {
            i10 = 0;
        }
        layoutChunkResult.f78664a = i10;
        Rect rect = layoutState.f78676f;
        if (this.f78646o == 0) {
            if (z10) {
                if (zL) {
                    iA = (rect.left - this.f78652u) - a(true, i18);
                    paddingTop = getPaddingTop();
                } else {
                    iA = rect.left;
                    paddingTop = rect.bottom;
                }
                i11 = this.f78652u + iA;
                i12 = this.f78653v;
                i17 = i12 + paddingTop;
                i13 = iA;
                i16 = paddingTop;
                i15 = i11;
                i14 = i17;
            } else {
                if (zL) {
                    iA3 = rect.left + this.f78652u + a(false, i18);
                    height = getHeight() - getPaddingBottom();
                } else {
                    iA3 = rect.left;
                    height = rect.top;
                }
                i13 = iA3;
                i14 = height;
                i16 = height - this.f78653v;
                i15 = this.f78652u + iA3;
            }
        } else if (z10) {
            if (zL) {
                width = getWidth() - getPaddingEnd();
                iA2 = rect.bottom + a(true, i18);
            } else {
                width = rect.left;
                iA2 = rect.top;
            }
            int i19 = width - this.f78652u;
            i17 = this.f78653v + iA2;
            i15 = width;
            i16 = iA2;
            i13 = i19;
            i14 = i17;
        } else if (zL) {
            int paddingStart = getPaddingStart();
            int i20 = this.f78652u + paddingStart;
            int iA4 = rect.top - a(false, i18);
            i13 = paddingStart;
            i14 = iA4;
            i15 = i20;
            i16 = iA4 - this.f78653v;
        } else {
            iA = rect.right;
            i11 = this.f78652u + iA;
            paddingTop = rect.top;
            i12 = this.f78653v;
            i17 = i12 + paddingTop;
            i13 = iA;
            i16 = paddingTop;
            i15 = i11;
            i14 = i17;
        }
        layoutState.e(i13, i16, i15, i14);
        layoutDecoratedWithMargins(viewD, i13, i16, i15, i14);
    }

    private void X(int pagerIndex) {
        int i10 = this.f78651t;
        if (i10 == pagerIndex) {
            return;
        }
        this.f78651t = pagerIndex;
        d dVar = this.F;
        if (dVar != null) {
            dVar.a(i10, pagerIndex);
        }
    }

    public static void Y(boolean debug) {
        P = debug;
    }

    private int a(boolean layoutToEnd, int position) {
        if (getClipToPadding()) {
            return 0;
        }
        int i10 = this.f78649r;
        if (position % i10 == (layoutToEnd ? 0 : i10 - 1)) {
            return i();
        }
        return 0;
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0 || state.getItemCount() == 0) {
            return 0;
        }
        int iP = p();
        if (P) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("computeScrollExtent: ");
            sb2.append(iP);
        }
        return iP;
    }

    private int computeScrollOffset(RecyclerView.State state) {
        int i10;
        int iComputeScrollRange = 0;
        if (getChildCount() != 0 && state.getItemCount() != 0) {
            View childAt = getChildAt(0);
            if (childAt == null) {
                return 0;
            }
            int position = getPosition(childAt);
            float fP = p();
            int i11 = this.f78646o;
            float f10 = fP / (i11 == 0 ? this.f78648q : this.f78647p);
            if (i11 == 0) {
                int iA = A(position);
                int i12 = this.f78648q;
                i10 = (iA * i12) + (position % i12);
            } else {
                i10 = position / this.f78648q;
            }
            iComputeScrollRange = f0() ? (computeScrollRange(state) - computeScrollExtent(state)) - Math.round((i10 * f10) + (l(childAt) - q())) : Math.round((i10 * f10) + (G() - m(childAt)));
            if (P) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("computeScrollOffset: ");
                sb2.append(iComputeScrollRange);
            }
        }
        return iComputeScrollRange;
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0 || state.getItemCount() == 0) {
            return 0;
        }
        int iMax = Math.max(this.f78650s, 0) * p();
        if (P) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("computeScrollRange: ");
            sb2.append(iMax);
        }
        return iMax;
    }

    private void d0(int pagerCount) {
        if (this.f78650s == pagerCount) {
            return;
        }
        this.f78650s = pagerCount;
        d dVar = this.F;
        if (dVar != null) {
            dVar.b(pagerCount);
        }
    }

    private void e() {
        this.f78649r = this.f78647p * this.f78648q;
    }

    private View getChildClosestToEnd() {
        return getChildAt(getChildCount() - 1);
    }

    private View getChildClosestToStart() {
        return getChildAt(0);
    }

    private int h(RecyclerView.Recycler recycler, RecyclerView.State state) {
        c cVar = this.f78656y;
        int i10 = cVar.f78671a;
        b bVar = this.f78657z;
        int i11 = i10;
        while (i11 > 0 && cVar.c(state)) {
            if (this.E) {
                S(recycler, state, cVar, bVar);
            } else {
                N(recycler, state, cVar, bVar);
            }
            int i12 = cVar.f78671a;
            int i13 = bVar.f78664a;
            cVar.f78671a = i12 - i13;
            i11 -= i13;
        }
        boolean z10 = cVar.f78674d == 1;
        while (cVar.c(state)) {
            int i14 = cVar.f78673c;
            if (z10 ? L(i14) : M(i14)) {
                break;
            }
            if (this.E) {
                S(recycler, state, cVar, bVar);
            } else {
                N(recycler, state, cVar, bVar);
            }
        }
        P(recycler);
        return i10 - cVar.f78671a;
    }

    private int i() {
        int paddingTop;
        int paddingBottom;
        if (this.f78646o == 0) {
            paddingTop = getPaddingStart();
            paddingBottom = getPaddingEnd();
        } else {
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
        }
        return paddingTop + paddingBottom;
    }

    private void j0(boolean layoutToEnd, int requiredSpace, boolean canUseExistingSpace, RecyclerView.State state) {
        View childClosestToStart;
        int i10;
        int iG;
        int iL;
        int iQ;
        int i11;
        if (layoutToEnd) {
            childClosestToStart = getChildClosestToEnd();
            if (f0()) {
                i10 = -m(childClosestToStart);
                iG = G();
                i11 = i10 + iG;
            } else {
                iL = l(childClosestToStart);
                iQ = q();
                i11 = iL - iQ;
            }
        } else {
            childClosestToStart = getChildClosestToStart();
            if (f0()) {
                iL = l(childClosestToStart);
                iQ = q();
                i11 = iL - iQ;
            } else {
                i10 = -m(childClosestToStart);
                iG = G();
                i11 = i10 + iG;
            }
        }
        getDecoratedBoundsWithMargins(childClosestToStart, this.f78656y.f78676f);
        c cVar = this.f78656y;
        cVar.f78673c = layoutToEnd ? cVar.a(getPosition(childClosestToStart), this.f78646o, this.f78647p, this.f78648q, state) : cVar.b(getPosition(childClosestToStart), this.f78646o, this.f78647p, this.f78648q, state);
        c cVar2 = this.f78656y;
        cVar2.f78671a = requiredSpace;
        if (canUseExistingSpace) {
            cVar2.f78671a = requiredSpace - i11;
        }
        cVar2.f78675e = i11;
    }

    private int l(View child) {
        int decoratedBottom;
        int i10;
        LayoutParams layoutParams = (LayoutParams) child.getLayoutParams();
        if (this.f78646o == 0) {
            decoratedBottom = getDecoratedRight(child);
            i10 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        } else {
            decoratedBottom = getDecoratedBottom(child);
            i10 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return decoratedBottom + i10;
    }

    private int m(View child) {
        int decoratedTop;
        int i10;
        LayoutParams layoutParams = (LayoutParams) child.getLayoutParams();
        if (this.f78646o == 0) {
            decoratedTop = getDecoratedLeft(child);
            i10 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        } else {
            decoratedTop = getDecoratedTop(child);
            i10 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        }
        return decoratedTop - i10;
    }

    private int p() {
        return this.f78646o == 0 ? D() : C();
    }

    private int q() {
        int height;
        int paddingBottom;
        if (this.f78646o == 0) {
            height = getWidth();
            paddingBottom = getPaddingEnd();
        } else {
            height = getHeight();
            paddingBottom = getPaddingBottom();
        }
        return height - paddingBottom;
    }

    private void resolveShouldLayoutReverse() {
        if (this.f78646o == 1 || !isLayoutRTL()) {
            this.E = this.D;
        } else {
            this.E = !this.D;
        }
    }

    private int scrollBy(int delta, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || delta == 0 || this.f78650s == 1) {
            return 0;
        }
        this.f78656y.f78672b = true;
        int i10 = -1;
        if (!f0() ? delta > 0 : delta <= 0) {
            i10 = 1;
        }
        this.f78656y.f78674d = i10;
        boolean z10 = i10 == 1;
        int iAbs = Math.abs(delta);
        if (P) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("scrollBy -> before : childCount:");
            sb2.append(getChildCount());
            sb2.append(",recycler.scrapList.size:");
            sb2.append(recycler.getScrapList().size());
            sb2.append(",delta:");
            sb2.append(delta);
        }
        j0(z10, iAbs, true, state);
        int iH = this.f78656y.f78675e + h(recycler, state);
        if (z10) {
            iH += this.f78656y.f78678h;
        }
        if (iH < 0) {
            return 0;
        }
        int i11 = iAbs > iH ? i10 * iH : delta;
        O(-i11);
        this.f78656y.f78677g = i11;
        P(recycler);
        if (P) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("scrollBy -> end : childCount:");
            sb3.append(getChildCount());
            sb3.append(",recycler.scrapList.size:");
            sb3.append(recycler.getScrapList().size());
            sb3.append(",delta:");
            sb3.append(delta);
            sb3.append(",scrolled:");
            sb3.append(i11);
        }
        return i11;
    }

    public final int A(int position) {
        return position / this.f78649r;
    }

    @IntRange(from = 1)
    public final int E() {
        return this.f78647p;
    }

    boolean F() {
        return this.E;
    }

    final Rect H() {
        return this.A;
    }

    public final boolean I() {
        return this.I;
    }

    public void T() {
        assertNotInLayoutOrScroll(null);
        U(this.f78651t + 1);
    }

    public void U(@IntRange(from = 0) int pagerIndex) {
        assertNotInLayoutOrScroll(null);
        int iMin = Math.min(Math.max(pagerIndex, 0), v());
        if (iMin == this.f78651t) {
            return;
        }
        X(iMin);
        requestLayout();
    }

    public void V() {
        assertNotInLayoutOrScroll(null);
        U(this.f78651t - 1);
    }

    public void W(@IntRange(from = 1) int columns) {
        assertNotInLayoutOrScroll(null);
        if (this.f78648q == columns) {
            return;
        }
        this.f78648q = Math.max(columns, 1);
        this.f78650s = 0;
        this.f78651t = -1;
        e();
        requestLayout();
    }

    public final void Z(boolean enabled) {
        this.I = enabled;
    }

    public final void a0(@IntRange(from = 1) int maxScrollOnFlingDuration) {
        this.K = Math.max(1, maxScrollOnFlingDuration);
    }

    final void b(int position) {
        X(A(position));
    }

    public final void b0(@FloatRange(from = com.google.android.material.color.utilities.d.f30216a) float millisecondPreInch) {
        this.J = Math.max(1.0f, millisecondPreInch);
    }

    public void c0(@Nullable d listener) {
        this.F = listener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollHorizontally() {
        return this.f78646o == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollVertically() {
        return this.f78646o == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams lp) {
        return lp instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(@NonNull RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(@NonNull RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(@NonNull RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    @Nullable
    public PointF computeScrollVectorForPosition(int targetPosition) {
        int position;
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        while (true) {
            childCount--;
            if (childCount < 0) {
                position = -1;
                break;
            }
            View childAt = getChildAt(childCount);
            if (childAt != null) {
                position = getPosition(childAt);
                if (position % this.f78649r == 0) {
                    break;
                }
            }
        }
        if (position == -1) {
            return null;
        }
        float f10 = targetPosition < position ? -1.0f : 1.0f;
        if (f0()) {
            f10 = -f10;
        }
        if (P) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("computeScrollVectorForPosition-firstSnapPosition: ");
            sb2.append(position);
            sb2.append(", targetPosition:");
            sb2.append(targetPosition);
            sb2.append(",mOrientation :");
            sb2.append(this.f78646o);
            sb2.append(", direction:");
            sb2.append(f10);
        }
        return this.f78646o == 0 ? new PointF(f10, 0.0f) : new PointF(0.0f, f10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(@NonNull RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(@NonNull RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(@NonNull RecyclerView.State state) {
        return computeScrollRange(state);
    }

    public void e0(@IntRange(from = 1) int rows) {
        assertNotInLayoutOrScroll(null);
        if (this.f78647p == rows) {
            return;
        }
        this.f78647p = Math.max(rows, 1);
        this.f78650s = 0;
        this.f78651t = -1;
        e();
        requestLayout();
    }

    protected b f() {
        return new b();
    }

    boolean f0() {
        return this.E && this.f78646o == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @Nullable
    public View findViewByPosition(int position) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position2 = position - getPosition(getChildAt(0));
        if (position2 >= 0 && position2 < childCount) {
            View childAt = getChildAt(position2);
            if (getPosition(childAt) == position) {
                return childAt;
            }
        }
        return super.findViewByPosition(position);
    }

    protected c g() {
        return new c();
    }

    public void g0() {
        assertNotInLayoutOrScroll(null);
        h0(this.f78651t + 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context c10, AttributeSet attrs) {
        return new LayoutParams(c10, attrs);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getHeight() {
        return super.getHeight() - n();
    }

    public int getOrientation() {
        return this.f78646o;
    }

    public boolean getReverseLayout() {
        return this.D;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getWidth() {
        return super.getWidth() - o();
    }

    public void h0(@IntRange(from = 0) int pagerIndex) {
        assertNotInLayoutOrScroll(null);
        int iMin = Math.min(Math.max(pagerIndex, 0), v());
        int i10 = this.f78651t;
        if (iMin == i10) {
            return;
        }
        boolean z10 = iMin > i10;
        if (Math.abs(iMin - i10) <= 3) {
            com.shencoder.pagergridlayoutmanager.b bVar = new com.shencoder.pagergridlayoutmanager.b(this.C, this);
            bVar.setTargetPosition(B(iMin, z10));
            startSmoothScroll(bVar);
        } else {
            U(iMin > i10 ? iMin - 3 : iMin + 3);
            RecyclerView recyclerView = this.C;
            if (recyclerView != null) {
                recyclerView.post(new e(B(iMin, z10), this, this.C));
            }
        }
    }

    public void i0() {
        assertNotInLayoutOrScroll(null);
        h0(this.f78651t - 1);
    }

    protected boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    @IntRange(from = 1)
    public final int j() {
        return this.f78648q;
    }

    @IntRange(from = -1)
    public final int k() {
        return this.f78651t;
    }

    public final int n() {
        return Math.max(this.H, 0);
    }

    public final int o() {
        return Math.max(this.G, 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView view) {
        super.onAttachedToWindow(view);
        view.setHasFixedSize(true);
        if (K(view) && this.I) {
            com.shencoder.pagergridlayoutmanager.a aVar = new com.shencoder.pagergridlayoutmanager.a(this, view);
            this.M = aVar;
            view.addOnItemTouchListener(aVar);
        }
        view.addOnChildAttachStateChangeListener(this.L);
        com.shencoder.pagergridlayoutmanager.c cVar = new com.shencoder.pagergridlayoutmanager.c();
        this.f78645n = cVar;
        cVar.attachToRecyclerView(view);
        this.C = view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @CallSuper
    public void onDetachedFromWindow(RecyclerView view, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(view, recycler);
        RecyclerView recyclerView = this.C;
        if (recyclerView != null) {
            RecyclerView.OnItemTouchListener onItemTouchListener = this.M;
            if (onItemTouchListener != null) {
                recyclerView.removeOnItemTouchListener(onItemTouchListener);
            }
            this.C.removeOnChildAttachStateChangeListener(this.L);
            this.C = null;
        }
        this.f78645n.attachToRecyclerView(null);
        this.f78645n = null;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0103  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int height;
        int i10;
        int width;
        int i11;
        int paddingTop;
        int i12;
        int paddingStart;
        int width2;
        int height2;
        int paddingStart2;
        int i13;
        if (P) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onLayoutChildren: ");
            sb2.append(state.toString());
        }
        if (this.f78652u == 0 || this.f78653v == 0) {
            throw new IllegalStateException("RecyclerView's width and height must be exactly.");
        }
        int itemCount = getItemCount();
        if (itemCount == 0) {
            removeAndRecycleAllViews(recycler);
            d0(0);
            X(-1);
            return;
        }
        if (state.isPreLayout()) {
            return;
        }
        resolveShouldLayoutReverse();
        if (this.E) {
            this.A.set((getWidth() - getPaddingEnd()) - this.f78652u, getPaddingTop(), getWidth() - getPaddingEnd(), getPaddingTop() + this.f78653v);
            this.B.set(getPaddingStart(), (getHeight() - getPaddingBottom()) - this.f78653v, getPaddingStart() + this.f78652u, getHeight() - getPaddingBottom());
        } else {
            this.A.set(getPaddingStart(), getPaddingTop(), getPaddingStart() + this.f78652u, getPaddingTop() + this.f78653v);
            this.B.set((getWidth() - getPaddingEnd()) - this.f78652u, (getHeight() - getPaddingBottom()) - this.f78653v, getWidth() - getPaddingEnd(), getHeight() - getPaddingBottom());
        }
        int i14 = this.f78649r;
        int i15 = itemCount / i14;
        if (itemCount % i14 != 0) {
            i15++;
        }
        c cVar = this.f78656y;
        cVar.f78678h = 0;
        if (i15 > 1) {
            int i16 = itemCount % i14;
            if (i16 != 0) {
                int i17 = this.f78648q;
                int i18 = i16 / i17;
                int i19 = i16 % i17;
                if (this.f78646o != 0) {
                    if (i19 > 0) {
                        i18++;
                    }
                    i13 = this.f78653v * (this.f78647p - i18);
                } else if (i18 == 0) {
                    i13 = (i17 - i19) * this.f78652u;
                } else {
                    i13 = 0;
                }
            } else {
                i13 = 0;
            }
            cVar.f78678h = i13;
        }
        cVar.f78672b = false;
        cVar.f78674d = 1;
        cVar.f78671a = p();
        this.f78656y.f78675e = Integer.MIN_VALUE;
        int i20 = this.f78651t;
        int iMin = i20 != -1 ? Math.min(i20, v()) : 0;
        View childClosestToStart = (J() || getChildCount() == 0) ? null : getChildClosestToStart();
        if (this.E) {
            if (childClosestToStart == null) {
                c cVar2 = this.f78656y;
                int i21 = this.f78649r * iMin;
                cVar2.f78673c = i21;
                int iA = a(true, i21);
                if (this.f78646o == 0) {
                    paddingTop = getHeight() - getPaddingBottom();
                    paddingStart = (getWidth() - getPaddingEnd()) + iA;
                } else {
                    paddingTop = getPaddingTop() - iA;
                    paddingStart = getPaddingStart();
                }
            } else {
                int position = getPosition(childClosestToStart);
                c cVar3 = this.f78656y;
                cVar3.f78673c = position;
                Rect rect = cVar3.f78676f;
                int iA2 = a(true, position);
                getDecoratedBoundsWithMargins(childClosestToStart, rect);
                if (this.f78646o == 0) {
                    if (L(position)) {
                        height2 = getHeight() - getPaddingBottom();
                        paddingStart2 = rect.right + iA2;
                    } else {
                        height2 = rect.top;
                        paddingStart2 = rect.left;
                    }
                } else if (L(position)) {
                    height2 = rect.top - iA2;
                    paddingStart2 = getPaddingStart();
                } else {
                    height2 = rect.bottom;
                    paddingStart2 = rect.right;
                }
                paddingStart = paddingStart2;
                paddingTop = height2;
                int iM = this.f78646o == 0 ? m(childClosestToStart) - q() : m(childClosestToStart);
                this.f78656y.f78671a -= iM;
            }
            i12 = paddingTop - this.f78653v;
            i11 = this.f78652u + paddingStart;
        } else {
            if (childClosestToStart == null) {
                c cVar4 = this.f78656y;
                int i22 = this.f78649r * iMin;
                cVar4.f78673c = i22;
                int iA3 = a(true, i22);
                if (this.f78646o == 0) {
                    paddingTop = getHeight() - getPaddingBottom();
                    width2 = getPaddingStart() - iA3;
                } else {
                    paddingTop = getPaddingTop() - iA3;
                    width2 = getWidth() - getPaddingEnd();
                }
                i11 = width2;
            } else {
                int position2 = getPosition(childClosestToStart);
                c cVar5 = this.f78656y;
                cVar5.f78673c = position2;
                Rect rect2 = cVar5.f78676f;
                int iA4 = a(true, position2);
                getDecoratedBoundsWithMargins(childClosestToStart, rect2);
                if (this.f78646o == 0) {
                    if (L(position2)) {
                        height = getHeight() - getPaddingBottom();
                        width = rect2.left;
                        i10 = width - iA4;
                    } else {
                        height = rect2.top;
                        i10 = rect2.right;
                    }
                } else if (L(position2)) {
                    height = rect2.top - iA4;
                    width = getWidth();
                    iA4 = getPaddingEnd();
                    i10 = width - iA4;
                } else {
                    height = rect2.bottom;
                    i10 = rect2.left;
                }
                this.f78656y.f78671a -= m(childClosestToStart);
                i11 = i10;
                paddingTop = height;
            }
            i12 = paddingTop - this.f78653v;
            paddingStart = i11 - this.f78652u;
        }
        this.f78656y.e(paddingStart, i12, i11, paddingTop);
        if (P) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("onLayoutChildren-pagerCount:");
            sb3.append(i15);
            sb3.append(",mLayoutState.mAvailable: ");
            sb3.append(this.f78656y.f78671a);
        }
        detachAndScrapAttachedViews(recycler);
        h(recycler, state);
        if (P) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("onLayoutChildren: childCount:");
            sb4.append(getChildCount());
            sb4.append(",recycler.scrapList.size:");
            sb4.append(recycler.getScrapList().size());
            sb4.append(",mLayoutState.replenishDelta:");
            sb4.append(this.f78656y.f78678h);
        }
        if (childClosestToStart == null) {
            d0(i15);
            X(iMin);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onMeasure(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, int widthSpec, int heightSpec) {
        int mode = View.MeasureSpec.getMode(widthSpec);
        int mode2 = View.MeasureSpec.getMode(heightSpec);
        int size = View.MeasureSpec.getSize(widthSpec);
        int size2 = View.MeasureSpec.getSize(heightSpec);
        if (mode == 1073741824 && mode2 == 1073741824) {
            int paddingStart = (size - getPaddingStart()) - getPaddingEnd();
            int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            int i10 = this.f78648q;
            int i11 = i10 > 0 ? paddingStart / i10 : 0;
            this.f78652u = i11;
            int i12 = this.f78647p;
            int i13 = i12 > 0 ? paddingTop / i12 : 0;
            this.f78653v = i13;
            int i14 = paddingStart - (i10 * i11);
            this.G = i14;
            int i15 = paddingTop - (i12 * i13);
            this.H = i15;
            this.f78654w = (paddingStart - i14) - i11;
            this.f78655x = (paddingTop - i15) - i13;
        } else {
            this.f78652u = 0;
            this.f78653v = 0;
            this.G = 0;
            this.H = 0;
            this.f78654w = 0;
            this.f78655x = 0;
            if (P) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onMeasure-width or height is not exactly, widthMode: ");
                sb2.append(mode);
                sb2.append(", heightMode: ");
                sb2.append(mode2);
            }
        }
        if (P) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("onMeasure-widthMode: ");
            sb3.append(mode);
            sb3.append(", heightMode: ");
            sb3.append(mode2);
            sb3.append(", originalWidthSize: ");
            sb3.append(size);
            sb3.append(",originalHeightSize: ");
            sb3.append(size2);
            sb3.append(",diffWidth: ");
            sb3.append(this.G);
            sb3.append(",diffHeight: ");
            sb3.append(this.H);
            sb3.append(",mItemWidth: ");
            sb3.append(this.f78652u);
            sb3.append(",mItemHeight: ");
            sb3.append(this.f78653v);
            sb3.append(",mStartSnapRect:");
            sb3.append(this.A);
            sb3.append(",mEndSnapRect:");
            sb3.append(this.B);
        }
        super.onMeasure(recycler, state, widthSpec, heightSpec);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable state) {
        if (state instanceof SavedState) {
            SavedState savedState = (SavedState) state;
            this.f78646o = savedState.f78658b;
            this.f78647p = savedState.f78659c;
            this.f78648q = savedState.f78660d;
            e();
            X(savedState.f78661e);
            this.D = savedState.f78662f;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.f78658b = this.f78646o;
        savedState.f78659c = this.f78647p;
        savedState.f78660d = this.f78648q;
        savedState.f78661e = this.f78651t;
        savedState.f78662f = this.D;
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int state) {
    }

    final Rect r() {
        return this.B;
    }

    public final int s() {
        return this.f78653v;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int dx, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.f78646o == 1) {
            return 0;
        }
        return scrollBy(dx, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int position) {
        assertNotInLayoutOrScroll(null);
        U(A(position));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int dy, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.f78646o == 0) {
            return 0;
        }
        return scrollBy(dy, recycler, state);
    }

    public void setOrientation(int orientation) {
        assertNotInLayoutOrScroll(null);
        if (orientation != 0 && orientation != 1) {
            throw new IllegalArgumentException("invalid orientation:" + orientation);
        }
        if (orientation != this.f78646o) {
            this.f78646o = orientation;
            requestLayout();
        }
    }

    public void setReverseLayout(boolean reverseLayout) {
        assertNotInLayoutOrScroll(null);
        if (reverseLayout == this.D) {
            return;
        }
        this.D = reverseLayout;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int position) {
        assertNotInLayoutOrScroll(null);
        h0(A(position));
    }

    public final int t() {
        return this.f78652u;
    }

    final c u() {
        return this.f78656y;
    }

    public final int v() {
        return A(getItemCount() - 1);
    }

    public final int w() {
        return this.K;
    }

    public final float x() {
        return this.J;
    }

    @IntRange(from = 1)
    public final int y() {
        return this.f78649r;
    }

    @IntRange(from = 0)
    public final int z() {
        return Math.max(this.f78650s, 0);
    }

    public PagerGridLayoutManager(@IntRange(from = 1) int rows, @IntRange(from = 1) int columns, boolean reverseLayout) {
        this(rows, columns, 0, reverseLayout);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams lp) {
        if (lp instanceof RecyclerView.LayoutParams) {
            return new LayoutParams((RecyclerView.LayoutParams) lp);
        }
        return lp instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) lp) : new LayoutParams(lp);
    }

    protected static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected int f78658b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected int f78659c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected int f78660d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        protected int f78661e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        protected boolean f78662f;

        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel source) {
                return new SavedState(source);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        }

        public SavedState() {
            this.f78661e = -1;
            this.f78662f = false;
        }

        public void a(Parcel source) {
            this.f78658b = source.readInt();
            this.f78659c = source.readInt();
            this.f78660d = source.readInt();
            this.f78661e = source.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @NonNull
        public String toString() {
            return "SavedState{mOrientation=" + this.f78658b + ", mRows=" + this.f78659c + ", mColumns=" + this.f78660d + ", mCurrentPagerIndex=" + this.f78661e + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.f78658b);
            dest.writeInt(this.f78659c);
            dest.writeInt(this.f78660d);
            dest.writeInt(this.f78661e);
        }

        protected SavedState(Parcel in2) {
            this.f78661e = -1;
            this.f78662f = false;
            this.f78658b = in2.readInt();
            this.f78659c = in2.readInt();
            this.f78660d = in2.readInt();
            this.f78661e = in2.readInt();
        }
    }

    public PagerGridLayoutManager(@IntRange(from = 1) int rows, @IntRange(from = 1) int columns, int orientation) {
        this(rows, columns, orientation, false);
    }

    public PagerGridLayoutManager(@IntRange(from = 1) int rows, @IntRange(from = 1) int columns, int orientation, boolean reverseLayout) {
        this.f78646o = 0;
        this.f78650s = 0;
        this.f78651t = -1;
        this.f78652u = 0;
        this.f78653v = 0;
        this.A = new Rect();
        this.B = new Rect();
        this.D = false;
        this.E = false;
        this.G = 0;
        this.H = 0;
        this.I = true;
        this.J = 100.0f;
        this.K = 500;
        this.L = new a();
        this.f78656y = g();
        this.f78657z = f();
        e0(rows);
        W(columns);
        setOrientation(orientation);
        setReverseLayout(reverseLayout);
    }
}
