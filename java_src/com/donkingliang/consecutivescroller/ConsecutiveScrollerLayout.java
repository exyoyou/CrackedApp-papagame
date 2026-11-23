package com.donkingliang.consecutivescroller;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.NestedScrollingChild2;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.EdgeEffectCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.kwad.components.offline.api.IOfflineCompo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class ConsecutiveScrollerLayout extends ViewGroup implements ScrollingView, NestedScrollingParent2, NestedScrollingChild2 {
    private static final int W = 0;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private static final int f26173b1 = 2;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private static final int f26174f1 = 1000;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public static final int f26175i1 = 0;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public static final int f26176l1 = 1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final int f26177p0 = 1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public static final int f26178p1 = 2;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    static final Interpolator f26179q1 = new a();
    private int A;
    private int B;
    private int C;
    private EdgeEffect D;
    private EdgeEffect E;
    private int F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    private int K;
    private View L;
    private final List<View> M;
    private final List<View> N;
    private int O;
    private final List<View> P;
    private int Q;
    private g R;
    private e S;
    private int T;
    private boolean U;
    private boolean V;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f26180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f26181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private OverScroller f26182d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private VelocityTracker f26183e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private VelocityTracker f26184f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f26185g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f26186h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f26187i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f26188j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f26189k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f26190l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f26191m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private HashMap<Integer, Float> f26192n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int[] f26193o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f26194p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f26195q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected f f26196r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f26197s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private NestedScrollingParentHelper f26198t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private NestedScrollingChildHelper f26199u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final int[] f26200v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final int[] f26201w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private View f26202x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f26203y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f26204z;

    class a implements Interpolator {
        a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float t10) {
            float f10 = t10 - 1.0f;
            return (f10 * f10 * f10 * f10 * f10) + 1.0f;
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecyclerView f26212b;

        b(final RecyclerView val$view) {
            this.f26212b = val$view;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.donkingliang.consecutivescroller.e.y(this.f26212b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ConsecutiveScrollerLayout.this.d(false, true);
        }
    }

    static /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f26215a;

        static {
            int[] iArr = new int[LayoutParams.Align.values().length];
            f26215a = iArr;
            try {
                iArr[LayoutParams.Align.RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26215a[LayoutParams.Align.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26215a[LayoutParams.Align.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface e {
        void a(@NonNull List<View> mCurrentStickyViews);
    }

    public interface f {
        void a(View v10, int scrollY, int oldScrollY, int scrollState);
    }

    public interface g {
        void a(@Nullable View oldStickyView, @Nullable View newStickyView);
    }

    public ConsecutiveScrollerLayout(Context context) {
        this(context, null);
    }

    private void A() {
        VelocityTracker velocityTracker = this.f26184f;
        if (velocityTracker == null) {
            this.f26184f = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void B() {
        VelocityTracker velocityTracker = this.f26183e;
        if (velocityTracker == null) {
            this.f26183e = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void C() {
        if (this.f26183e == null) {
            this.f26183e = VelocityTracker.obtain();
        }
    }

    private boolean F(int touchX, int touchY) {
        View viewX = x(touchX, touchY);
        if (viewX != null) {
            return com.donkingliang.consecutivescroller.e.t(viewX);
        }
        return false;
    }

    private boolean G(MotionEvent ev) {
        int iFindPointerIndex = ev.findPointerIndex(this.f26197s);
        if (iFindPointerIndex < 0 || iFindPointerIndex >= ev.getPointerCount()) {
            return true;
        }
        return F(com.donkingliang.consecutivescroller.e.j(this, ev, iFindPointerIndex), com.donkingliang.consecutivescroller.e.k(this, ev, iFindPointerIndex));
    }

    private boolean H() {
        if (this.N.size() != this.M.size()) {
            return false;
        }
        int size = this.N.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.N.get(i10) != this.M.get(i10)) {
                return false;
            }
        }
        return true;
    }

    private int N(int measureSpec, int size) {
        int mode = View.MeasureSpec.getMode(measureSpec);
        int size2 = View.MeasureSpec.getSize(measureSpec);
        if (mode == 1073741824) {
            size = size2;
        } else if (mode == Integer.MIN_VALUE) {
            size = Math.min(size, size2);
        }
        return View.resolveSizeAndState(Math.max(size, getSuggestedMinimumWidth()), measureSpec, 0);
    }

    private void O(int dyUnconsumed, int type) {
        int i10 = this.f26180b;
        j(dyUnconsumed);
        int i11 = this.f26180b - i10;
        this.f26199u.dispatchNestedScroll(0, i11, 0, dyUnconsumed - i11, null, type);
    }

    private void P(List<View> mCurrentStickyViews) {
        e eVar = this.S;
        if (eVar != null) {
            eVar.a(mCurrentStickyViews);
        }
    }

    private void Q(List<View> children) {
        this.N.clear();
        for (int i10 = 0; i10 < children.size(); i10++) {
            View view = children.get(i10);
            int iW = w(children, i10);
            if (view.getTop() <= getStickyY() + iW) {
                view.setY(getStickyY() + iW);
                view.setClickable(true);
                this.N.add(view);
            }
        }
        if (H()) {
            return;
        }
        this.M.clear();
        this.M.addAll(this.N);
        this.N.clear();
        P(this.M);
    }

    private void R() {
        VelocityTracker velocityTracker = this.f26184f;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f26184f = null;
        }
    }

    private void S() {
        VelocityTracker velocityTracker = this.f26183e;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f26183e = null;
        }
    }

    private void T() {
        Iterator<View> it2 = getNonGoneChildren().iterator();
        while (it2.hasNext()) {
            it2.next().setTranslationY(0.0f);
        }
    }

    private void U() {
        View viewM = m();
        this.f26202x = viewM;
        if (viewM != null) {
            this.f26203y = getScrollY() - this.f26202x.getTop();
        }
    }

    private void V() {
        View view;
        View view2;
        List<View> stickyChildren = getStickyChildren();
        if (stickyChildren.isEmpty()) {
            f();
            g();
            return;
        }
        int size = stickyChildren.size();
        int iMax = 0;
        for (int i10 = 0; i10 < size; i10++) {
            stickyChildren.get(i10).setTranslationY(0.0f);
        }
        if (this.G) {
            f();
            Q(stickyChildren);
            return;
        }
        g();
        int i11 = size - 1;
        int i12 = i11;
        while (true) {
            view = null;
            if (i12 < 0) {
                view2 = null;
                break;
            }
            View view3 = stickyChildren.get(i12);
            if (view3.getTop() <= getStickyY()) {
                view2 = i12 != i11 ? stickyChildren.get(i12 + 1) : null;
                view = view3;
                break;
            }
            i12--;
        }
        View view4 = this.L;
        if (view != null) {
            if (view2 != null && !L(view)) {
                iMax = Math.max(0, view.getHeight() - (view2.getTop() - getStickyY()));
            }
            j0(view, iMax);
        }
        if (view4 != view) {
            this.L = view;
            i0(view4, view);
        }
    }

    private void W(int scrollY, int oldScrollY) {
        f fVar = this.f26196r;
        if (fVar != null) {
            fVar.a(this, scrollY, oldScrollY, this.T);
        }
    }

    private void X(View child, int y10) {
        View viewP = com.donkingliang.consecutivescroller.e.p(child);
        if (viewP instanceof AbsListView) {
            ((AbsListView) viewP).scrollListBy(y10);
            return;
        }
        boolean zX = viewP instanceof RecyclerView ? com.donkingliang.consecutivescroller.e.x((RecyclerView) viewP) : false;
        viewP.scrollBy(0, y10);
        if (zX) {
            RecyclerView recyclerView = (RecyclerView) viewP;
            recyclerView.postDelayed(new b(recyclerView), 0L);
        }
    }

    private void a0(int offset) {
        int iY;
        int top;
        int iComputeVerticalScrollOffset = computeVerticalScrollOffset();
        do {
            int i10 = this.f26204z;
            int iMax = 0;
            if (i10 != -1) {
                View childAt = getChildAt(i10);
                top = (childAt.getTop() - this.B) - s(childAt);
                iY = y(this.f26204z);
                if (this.C >= 1000 || getScrollY() + getPaddingTop() + iY <= top || K()) {
                    this.f26204z = -1;
                    this.A = 0;
                    this.B = 0;
                    this.C = 0;
                    setScrollState(0);
                    break;
                }
            } else {
                iY = 0;
                top = 0;
            }
            if (!K()) {
                View viewN = getScrollY() < this.f26181c ? n() : getBottomView();
                if (viewN != null) {
                    awakenScrollBars();
                    int iO = com.donkingliang.consecutivescroller.e.o(viewN);
                    if (iO < 0) {
                        iMax = Math.max(offset, iO);
                        if (this.f26204z != -1) {
                            iMax = Math.max(iMax, top - ((getScrollY() + getPaddingTop()) + iY));
                        }
                        X(viewN, iMax);
                    } else {
                        int scrollY = getScrollY();
                        int iMax2 = Math.max(Math.max(offset, ((viewN.getTop() + getPaddingBottom()) - scrollY) - getHeight()), -scrollY);
                        if (this.f26204z != -1) {
                            iMax2 = Math.max(iMax2, top - ((getScrollY() + getPaddingTop()) + iY));
                        }
                        b0(scrollY + iMax2);
                        iMax = iMax2;
                    }
                    this.f26180b += iMax;
                    offset -= iMax;
                }
            }
            if (iMax >= 0) {
                break;
            }
        } while (offset < 0);
        int iComputeVerticalScrollOffset2 = computeVerticalScrollOffset();
        if (iComputeVerticalScrollOffset != iComputeVerticalScrollOffset2) {
            W(iComputeVerticalScrollOffset2, iComputeVerticalScrollOffset);
        }
    }

    private boolean b() {
        return (K() && J()) ? false : true;
    }

    private void b0(int y10) {
        if (y10 < 0) {
            y10 = 0;
        } else {
            int i10 = this.f26181c;
            if (y10 > i10) {
                y10 = i10;
            }
        }
        super.scrollTo(0, y10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean changed, boolean isForce) {
        int i10 = this.f26180b;
        View view = this.f26202x;
        if (view == null || !changed) {
            b0(getScrollY());
        } else if (indexOfChild(view) != -1) {
            b0(this.f26202x.getTop() + this.f26203y);
        }
        e(true, isForce);
        if (i10 != this.f26180b && this.f26202x != m()) {
            scrollTo(0, i10);
        }
        this.f26202x = null;
        this.f26203y = 0;
        T();
        V();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void e(boolean isLayoutChange, boolean isForce) {
        int iComputeVerticalScrollOffset;
        if (isForce || (!this.f26194p && this.f26182d.isFinished() && this.f26204z == -1)) {
            int iComputeVerticalScrollOffset2 = computeVerticalScrollOffset();
            View viewM = m();
            if (viewM == null) {
                return;
            }
            int iIndexOfChild = indexOfChild(viewM);
            if (isLayoutChange) {
                while (true) {
                    int iL = com.donkingliang.consecutivescroller.e.l(viewM);
                    int top = viewM.getTop() - getScrollY();
                    if (iL <= 0 || top >= 0) {
                        break;
                    }
                    int iMin = Math.min(iL, -top);
                    b0(getScrollY() - iMin);
                    X(viewM, iMin);
                }
            }
            for (int i10 = 0; i10 < iIndexOfChild; i10++) {
                View childAt = getChildAt(i10);
                if (childAt.getVisibility() != 8 && com.donkingliang.consecutivescroller.e.t(childAt)) {
                    View viewM2 = com.donkingliang.consecutivescroller.e.m(childAt);
                    if (viewM2 instanceof com.donkingliang.consecutivescroller.a) {
                        List<View> scrolledViews = ((com.donkingliang.consecutivescroller.a) viewM2).getScrolledViews();
                        if (scrolledViews != null && !scrolledViews.isEmpty()) {
                            int size = scrolledViews.size();
                            for (int i11 = 0; i11 < size; i11++) {
                                Y(scrolledViews.get(i11));
                            }
                        }
                    } else {
                        Y(viewM2);
                    }
                }
            }
            while (true) {
                iIndexOfChild++;
                if (iIndexOfChild >= getChildCount()) {
                    break;
                }
                View childAt2 = getChildAt(iIndexOfChild);
                if (childAt2.getVisibility() != 8 && com.donkingliang.consecutivescroller.e.t(childAt2) && (iIndexOfChild != getChildCount() - 1 || childAt2.getHeight() >= getHeight() || getScrollY() < this.f26181c)) {
                    View viewM3 = com.donkingliang.consecutivescroller.e.m(childAt2);
                    if (viewM3 instanceof com.donkingliang.consecutivescroller.a) {
                        List<View> scrolledViews2 = ((com.donkingliang.consecutivescroller.a) viewM3).getScrolledViews();
                        if (scrolledViews2 != null && !scrolledViews2.isEmpty()) {
                            int size2 = scrolledViews2.size();
                            for (int i12 = 0; i12 < size2; i12++) {
                                Z(scrolledViews2.get(i12));
                            }
                        }
                    } else {
                        Z(viewM3);
                    }
                }
            }
            h();
            if (isLayoutChange && iComputeVerticalScrollOffset2 != (iComputeVerticalScrollOffset = computeVerticalScrollOffset())) {
                W(iComputeVerticalScrollOffset, iComputeVerticalScrollOffset2);
            }
            V();
        }
    }

    private void e0(int offset) {
        int iY;
        int top;
        int iComputeVerticalScrollOffset = computeVerticalScrollOffset();
        do {
            int i10 = this.f26204z;
            int iMin = 0;
            if (i10 != -1) {
                View childAt = getChildAt(i10);
                top = (childAt.getTop() - this.B) - s(childAt);
                iY = this.B < 0 ? y(this.f26204z) : 0;
                if (this.C >= 1000 || getScrollY() + getPaddingTop() + iY >= top || J()) {
                    this.f26204z = -1;
                    this.A = 0;
                    this.B = 0;
                    this.C = 0;
                    setScrollState(0);
                    break;
                }
            } else {
                iY = 0;
                top = 0;
            }
            if (!J()) {
                View viewM = getScrollY() < this.f26181c ? m() : getBottomView();
                if (viewM != null) {
                    awakenScrollBars();
                    int iL = com.donkingliang.consecutivescroller.e.l(viewM);
                    if (iL > 0) {
                        iMin = Math.min(offset, iL);
                        if (this.f26204z != -1) {
                            iMin = Math.min(iMin, top - ((getScrollY() + getPaddingTop()) + iY));
                        }
                        X(viewM, iMin);
                    } else {
                        iMin = Math.min(offset, (viewM.getBottom() - getPaddingTop()) - getScrollY());
                        if (this.f26204z != -1) {
                            iMin = Math.min(iMin, top - ((getScrollY() + getPaddingTop()) + iY));
                        }
                        b0(getScrollY() + iMin);
                    }
                    this.f26180b += iMin;
                    offset -= iMin;
                }
            }
            if (iMin <= 0) {
                break;
            }
        } while (offset > 0);
        int iComputeVerticalScrollOffset2 = computeVerticalScrollOffset();
        if (iComputeVerticalScrollOffset != iComputeVerticalScrollOffset2) {
            W(iComputeVerticalScrollOffset2, iComputeVerticalScrollOffset);
        }
    }

    private void f() {
        View view = this.L;
        if (view != null) {
            this.L = null;
            i0(view, null);
        }
    }

    private void g() {
        if (this.M.isEmpty()) {
            return;
        }
        this.M.clear();
        P(this.M);
    }

    private int getAdjustHeight() {
        List<View> stickyChildren = getStickyChildren();
        int measuredHeight = this.J;
        int size = stickyChildren.size();
        if (this.G) {
            for (int i10 = 0; i10 < size; i10++) {
                View view = stickyChildren.get(i10);
                if (!L(view)) {
                    measuredHeight += view.getMeasuredHeight();
                }
            }
            return measuredHeight;
        }
        for (int i11 = size - 1; i11 >= 0; i11--) {
            View view2 = stickyChildren.get(i11);
            if (!L(view2)) {
                return measuredHeight + view2.getMeasuredHeight();
            }
        }
        return measuredHeight;
    }

    private View getBottomView() {
        List<View> effectiveChildren = getEffectiveChildren();
        if (effectiveChildren.isEmpty()) {
            return null;
        }
        return effectiveChildren.get(effectiveChildren.size() - 1);
    }

    private List<View> getEffectiveChildren() {
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8 && childAt.getHeight() > 0) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    private List<View> getNonGoneChildren() {
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    private int getScrollRange() {
        if (getChildCount() > 0) {
            return Math.max(0, computeVerticalScrollRange() - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
        }
        return 0;
    }

    private List<View> getStickyChildren() {
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8 && M(childAt)) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    private int getStickyY() {
        return getScrollY() + getPaddingTop() + this.K;
    }

    private void h() {
        this.f26180b = computeVerticalScrollOffset();
    }

    private void h0() {
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (!M(childAt) || L(childAt)) {
                arrayList.add(childAt);
            }
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt2 = getChildAt(i11);
            if (M(childAt2) && !L(childAt2)) {
                arrayList.add(childAt2);
            }
        }
        this.P.clear();
        this.P.addAll(arrayList);
    }

    private void i(View child) {
        child.setVerticalScrollBarEnabled(false);
        child.setHorizontalScrollBarEnabled(false);
        child.setOverScrollMode(2);
        ViewCompat.setNestedScrollingEnabled(child, false);
    }

    private void i0(View oldStickyView, View newStickyView) {
        g gVar = this.R;
        if (gVar != null) {
            gVar.a(oldStickyView, newStickyView);
        }
    }

    private void j(int offset) {
        if (offset > 0) {
            e0(offset);
        } else if (offset < 0) {
            a0(offset);
        }
    }

    private void j0(View child, int offset) {
        child.setY(getStickyY() - offset);
        child.setClickable(true);
    }

    private void k() {
        EdgeEffect edgeEffect = this.D;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.E.onRelease();
        }
    }

    private void l() {
        if (getOverScrollMode() == 2) {
            this.D = null;
            this.E = null;
        } else if (this.D == null) {
            Context context = getContext();
            this.D = new EdgeEffect(context);
            this.E = new EdgeEffect(context);
        }
    }

    private void o(int velocityY) {
        if (Math.abs(velocityY) > this.f26187i) {
            float f10 = velocityY;
            if (dispatchNestedPreFling(0.0f, f10)) {
                return;
            }
            dispatchNestedFling(0.0f, f10, (velocityY < 0 && !K()) || (velocityY > 0 && !J()));
            this.f26182d.fling(0, this.f26180b, 1, velocityY, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            startNestedScroll(2, 1);
            setScrollState(2);
            this.F = this.f26180b;
            invalidate();
        }
    }

    private int s(View child) {
        if (this.I && child == getChildAt(getChildCount() - 1)) {
            return getAdjustHeight();
        }
        return 0;
    }

    private int t(View child, int parentWidth, int paddingLeft, int paddingRight) {
        LayoutParams layoutParams = (LayoutParams) child.getLayoutParams();
        int i10 = d.f26215a[layoutParams.f26211g.ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? paddingLeft + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft + ((((((parentWidth - child.getMeasuredWidth()) - paddingLeft) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - paddingRight) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) / 2);
        }
        return ((parentWidth - child.getMeasuredWidth()) - paddingRight) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    private int u(View child) {
        int measuredWidth = child.getMeasuredWidth();
        LayoutParams layoutParams = (LayoutParams) child.getLayoutParams();
        return measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    private int w(List<View> children, int currentPosition) {
        int measuredHeight = 0;
        for (int i10 = 0; i10 < currentPosition; i10++) {
            View view = children.get(i10);
            if (!L(view)) {
                measuredHeight += view.getMeasuredHeight();
            }
        }
        return measuredHeight;
    }

    private View x(int touchX, int touchY) {
        for (View view : getNonGoneChildren()) {
            if (com.donkingliang.consecutivescroller.e.w(view, touchX, touchY)) {
                return view;
            }
        }
        return null;
    }

    private int y(int index) {
        int childCount = getChildCount();
        int iF = 0;
        while (index < childCount) {
            View childAt = getChildAt(index);
            if (childAt.getVisibility() != 8 && com.donkingliang.consecutivescroller.e.t(childAt)) {
                iF += com.donkingliang.consecutivescroller.e.f(childAt);
            }
            index++;
        }
        return iF;
    }

    private void z() {
        if (this.f26184f == null) {
            this.f26184f = VelocityTracker.obtain();
        }
    }

    public boolean D() {
        return this.I;
    }

    public boolean E() {
        return this.H;
    }

    public boolean I() {
        return this.G;
    }

    public boolean J() {
        List<View> effectiveChildren = getEffectiveChildren();
        int size = effectiveChildren.size();
        if (size <= 0) {
            return true;
        }
        boolean z10 = getScrollY() >= this.f26181c && !com.donkingliang.consecutivescroller.e.d(effectiveChildren.get(effectiveChildren.size() - 1), 1);
        if (z10) {
            for (int i10 = size - 1; i10 >= 0; i10--) {
                View view = effectiveChildren.get(i10);
                if (com.donkingliang.consecutivescroller.e.t(view) && com.donkingliang.consecutivescroller.e.d(view, 1)) {
                    return false;
                }
            }
        }
        return z10;
    }

    public boolean K() {
        List<View> effectiveChildren = getEffectiveChildren();
        int size = effectiveChildren.size();
        if (size <= 0) {
            return true;
        }
        boolean z10 = getScrollY() <= 0 && !com.donkingliang.consecutivescroller.e.d(effectiveChildren.get(0), -1);
        if (z10) {
            for (int i10 = size - 1; i10 >= 0; i10--) {
                View view = effectiveChildren.get(i10);
                if (com.donkingliang.consecutivescroller.e.t(view) && com.donkingliang.consecutivescroller.e.d(view, -1)) {
                    return false;
                }
            }
        }
        return z10;
    }

    public boolean L(View stickyView) {
        ViewGroup.LayoutParams layoutParams = stickyView.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            return ((LayoutParams) layoutParams).f26209e;
        }
        return false;
    }

    public boolean M(View child) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            return ((LayoutParams) layoutParams).f26207c;
        }
        return false;
    }

    void Y(View target) {
        int iF;
        do {
            int iL = com.donkingliang.consecutivescroller.e.l(target);
            if (iL > 0) {
                int iF2 = com.donkingliang.consecutivescroller.e.f(target);
                X(target, iL);
                iF = iF2 - com.donkingliang.consecutivescroller.e.f(target);
            } else {
                iF = 0;
            }
        } while (iF != 0);
    }

    void Z(View target) {
        int iF;
        do {
            int iO = com.donkingliang.consecutivescroller.e.o(target);
            if (iO < 0) {
                int iF2 = com.donkingliang.consecutivescroller.e.f(target);
                X(target, iO);
                iF = iF2 - com.donkingliang.consecutivescroller.e.f(target);
            } else {
                iF = 0;
            }
        } while (iF != 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        List<View> scrolledViews;
        if (params instanceof LayoutParams) {
            com.donkingliang.consecutivescroller.b.a((LayoutParams) params);
        }
        super.addView(child, index, params);
        if (com.donkingliang.consecutivescroller.e.t(child)) {
            View viewM = com.donkingliang.consecutivescroller.e.m(child);
            i(viewM);
            if ((viewM instanceof com.donkingliang.consecutivescroller.a) && (scrolledViews = ((com.donkingliang.consecutivescroller.a) viewM).getScrolledViews()) != null && !scrolledViews.isEmpty()) {
                int size = scrolledViews.size();
                for (int i10 = 0; i10 < size; i10++) {
                    i(scrolledViews.get(i10));
                }
            }
        }
        if (child instanceof ViewGroup) {
            ((ViewGroup) child).setClipToPadding(false);
        }
    }

    public void c() {
        postDelayed(new c(), 20L);
    }

    public void c0(View view) {
        d0(view, 0);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int direction) {
        return direction > 0 ? !J() : !K();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public void computeScroll() {
        int i10;
        if (this.f26204z != -1 && (i10 = this.A) != 0) {
            if (i10 > 0 && i10 < 200) {
                this.A = i10 + 5;
            }
            int i11 = this.A;
            if (i11 < 0 && i11 > -200) {
                this.A = i11 - 5;
            }
            j(this.A);
            this.C++;
            invalidate();
            return;
        }
        if (this.f26182d.computeScrollOffset()) {
            int currY = this.f26182d.getCurrY();
            int i12 = currY - this.F;
            this.F = currY;
            int[] iArr = this.f26201w;
            iArr[1] = 0;
            dispatchNestedPreScroll(0, i12, iArr, null, 1);
            int i13 = i12 - this.f26201w[1];
            int i14 = this.f26180b;
            j(i13);
            int i15 = this.f26180b - i14;
            int i16 = i13 - i15;
            if ((i16 < 0 && K()) || (i16 > 0 && J())) {
                dispatchNestedScroll(0, i15, 0, i16, this.f26200v, 1);
                i16 += this.f26200v[1];
            }
            if ((i16 < 0 && K()) || (i16 > 0 && J())) {
                int overScrollMode = getOverScrollMode();
                if (overScrollMode == 0 || (overScrollMode == 1 && getScrollRange() > 0)) {
                    l();
                    if (i16 < 0) {
                        if (this.D.isFinished()) {
                            this.D.onAbsorb((int) this.f26182d.getCurrVelocity());
                        }
                    } else if (this.E.isFinished()) {
                        this.E.onAbsorb((int) this.f26182d.getCurrVelocity());
                    }
                }
                k0();
            }
            invalidate();
        }
        if (this.T == 2 && this.f26182d.isFinished()) {
            stopNestedScroll(1);
            e(false, false);
            setScrollState(0);
        }
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollExtent() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollOffset() {
        int scrollY = getScrollY();
        List<View> nonGoneChildren = getNonGoneChildren();
        int size = nonGoneChildren.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = nonGoneChildren.get(i10);
            if (com.donkingliang.consecutivescroller.e.t(view)) {
                scrollY += com.donkingliang.consecutivescroller.e.f(view);
            }
        }
        return scrollY;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollRange() {
        List<View> nonGoneChildren = getNonGoneChildren();
        int size = nonGoneChildren.size();
        int iG = 0;
        for (int i10 = 0; i10 < size; i10++) {
            View view = nonGoneChildren.get(i10);
            if (com.donkingliang.consecutivescroller.e.t(view) && com.donkingliang.consecutivescroller.e.c(view)) {
                View viewP = com.donkingliang.consecutivescroller.e.p(view);
                iG += com.donkingliang.consecutivescroller.e.g(viewP) + viewP.getPaddingTop() + viewP.getPaddingBottom();
            } else {
                int height = view.getHeight();
                iG += height;
            }
        }
        return iG;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0051  */
    /* JADX WARN: Code duplicated, block: B:21:0x0053  */
    public void d0(View view, int offset) {
        byte b10;
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild != -1) {
            int top = (view.getTop() - offset) - s(view);
            if (offset >= 0) {
                if (getScrollY() + getPaddingTop() <= top) {
                    if (getScrollY() + getPaddingTop() < top) {
                        b10 = 1;
                    } else if (!com.donkingliang.consecutivescroller.e.d(view, -1)) {
                        b10 = 0;
                    }
                }
                b10 = -1;
            } else {
                int iY = y(iIndexOfChild);
                if (getScrollY() + getPaddingTop() + iY > top) {
                    b10 = -1;
                } else if (getScrollY() + getPaddingTop() + iY < top) {
                    b10 = 1;
                } else {
                    b10 = 0;
                }
            }
            if (b10 != 0) {
                this.f26204z = iIndexOfChild;
                k0();
                this.B = offset;
                setScrollState(2);
                do {
                    if (b10 < 0) {
                        j(IOfflineCompo.Priority.HIGHEST);
                    } else {
                        j(200);
                    }
                    this.C++;
                } while (this.f26204z != -1);
            }
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float velocityX, float velocityY, boolean consumed) {
        return this.f26199u.dispatchNestedFling(velocityX, velocityY, consumed);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float velocityX, float velocityY) {
        return this.f26199u.dispatchNestedPreFling(velocityX, velocityY);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int dx, int dy, int[] consumed, int[] offsetInWindow) {
        return dispatchNestedPreScroll(dx, dy, consumed, offsetInWindow, 0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow) {
        return this.f26199u.dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0160  */
    /* JADX WARN: Code duplicated, block: B:49:0x0164  */
    /* JADX WARN: Code duplicated, block: B:51:0x016c  */
    /* JADX WARN: Code duplicated, block: B:52:0x016f  */
    /* JADX WARN: Code duplicated, block: B:54:0x0179  */
    /* JADX WARN: Code duplicated, block: B:56:0x0181  */
    /* JADX WARN: Code duplicated, block: B:65:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:67:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:70:0x01ca A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:73:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:75:0x01e0  */
    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        VelocityTracker velocityTracker;
        int i10;
        int iFindPointerIndex;
        int i11;
        int actionIndex = ev.getActionIndex();
        if (this.f26195q == 2 && (i11 = this.f26197s) != -1 && this.f26192n.get(Integer.valueOf(i11)) != null) {
            int iFindPointerIndex2 = ev.findPointerIndex(this.f26197s);
            if (iFindPointerIndex2 < 0 || iFindPointerIndex2 >= ev.getPointerCount()) {
                return false;
            }
            ev.offsetLocation(0.0f, this.f26192n.get(Integer.valueOf(this.f26197s)).floatValue() - ev.getY(iFindPointerIndex2));
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(ev);
        if (motionEventObtain.getActionMasked() == 0) {
            this.Q = 0;
        }
        motionEventObtain.offsetLocation(0.0f, this.Q);
        int actionMasked = ev.getActionMasked();
        if (actionMasked == 0) {
            this.V = this.T == 2;
            k0();
            e(false, false);
            this.f26194p = true;
            this.f26195q = 0;
            int pointerId = ev.getPointerId(actionIndex);
            this.f26197s = pointerId;
            this.f26192n.put(Integer.valueOf(pointerId), Float.valueOf(ev.getY(actionIndex)));
            this.f26191m = (int) ev.getY(actionIndex);
            this.f26190l = (int) ev.getX(actionIndex);
            A();
            this.f26184f.addMovement(motionEventObtain);
            startNestedScroll(2, 0);
            this.f26193o[0] = com.donkingliang.consecutivescroller.e.j(this, ev, actionIndex);
            this.f26193o[1] = com.donkingliang.consecutivescroller.e.k(this, ev, actionIndex);
            int[] iArr = this.f26193o;
            this.U = com.donkingliang.consecutivescroller.e.v(this, iArr[0], iArr[1]);
        } else if (actionMasked == 1) {
            velocityTracker = this.f26184f;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEventObtain);
                this.f26184f.computeCurrentVelocity(1000, this.f26186h);
                int yVelocity = (int) this.f26184f.getYVelocity();
                int i12 = this.f26186h;
                this.f26185g = Math.max(-i12, Math.min(yVelocity, i12));
                R();
                int iJ = com.donkingliang.consecutivescroller.e.j(this, ev, actionIndex);
                int iK = com.donkingliang.consecutivescroller.e.k(this, ev, actionIndex);
                boolean zC = com.donkingliang.consecutivescroller.e.c(x(iJ, iK));
                boolean zU = com.donkingliang.consecutivescroller.e.u(this, iJ, iK);
                if (this.f26195q != 1 && zC && Math.abs(yVelocity) >= this.f26187i && !zU) {
                    ev.setAction(3);
                }
                if (this.f26195q != 1 && !com.donkingliang.consecutivescroller.e.s(this) && G(ev) && Math.abs(yVelocity) >= this.f26187i && (this.f26195q == 0 || !zU)) {
                    o(-this.f26185g);
                }
            }
            this.f26191m = 0;
            this.f26190l = 0;
            this.f26194p = false;
            int[] iArr2 = this.f26193o;
            iArr2[0] = 0;
            iArr2[1] = 0;
            this.U = false;
        } else if (actionMasked == 2) {
            int iFindPointerIndex3 = ev.findPointerIndex(this.f26197s);
            if (iFindPointerIndex3 < 0 || iFindPointerIndex3 >= ev.getPointerCount()) {
                return false;
            }
            z();
            this.f26184f.addMovement(motionEventObtain);
            int y10 = ((int) ev.getY(iFindPointerIndex3)) - this.f26191m;
            int x10 = ((int) ev.getX(iFindPointerIndex3)) - this.f26190l;
            if (this.f26195q == 0) {
                if (G(ev)) {
                    if (this.H) {
                        if (Math.abs(y10) >= this.f26188j) {
                            this.f26195q = 1;
                        }
                    } else if (Math.abs(x10) > Math.abs(y10)) {
                        if (Math.abs(x10) >= this.f26188j) {
                            this.f26195q = 2;
                            i10 = this.f26197s;
                            if (i10 != -1) {
                                ev.offsetLocation(0.0f, this.f26192n.get(Integer.valueOf(this.f26197s)).floatValue() - ev.getY(iFindPointerIndex));
                            }
                        }
                    } else if (Math.abs(y10) >= this.f26188j) {
                        this.f26195q = 1;
                    }
                    if (this.f26195q == 0) {
                        return true;
                    }
                } else {
                    int[] iArr3 = this.f26193o;
                    if (F(iArr3[0], iArr3[1])) {
                        if (this.H) {
                            if (Math.abs(y10) >= this.f26188j) {
                                this.f26195q = 1;
                            }
                        } else if (Math.abs(x10) > Math.abs(y10)) {
                            if (Math.abs(x10) >= this.f26188j) {
                                this.f26195q = 2;
                                i10 = this.f26197s;
                                if (i10 != -1 && this.f26192n.get(Integer.valueOf(i10)) != null && (iFindPointerIndex = ev.findPointerIndex(this.f26197s)) >= 0 && iFindPointerIndex3 < ev.getPointerCount()) {
                                    ev.offsetLocation(0.0f, this.f26192n.get(Integer.valueOf(this.f26197s)).floatValue() - ev.getY(iFindPointerIndex));
                                }
                            }
                        } else if (Math.abs(y10) >= this.f26188j) {
                            this.f26195q = 1;
                        }
                        if (this.f26195q == 0) {
                            return true;
                        }
                    }
                }
            }
            this.f26191m = (int) ev.getY(iFindPointerIndex3);
            this.f26190l = (int) ev.getX(iFindPointerIndex3);
        } else if (actionMasked == 3) {
            velocityTracker = this.f26184f;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEventObtain);
                this.f26184f.computeCurrentVelocity(1000, this.f26186h);
                int yVelocity2 = (int) this.f26184f.getYVelocity();
                int i13 = this.f26186h;
                this.f26185g = Math.max(-i13, Math.min(yVelocity2, i13));
                R();
                int iJ2 = com.donkingliang.consecutivescroller.e.j(this, ev, actionIndex);
                int iK2 = com.donkingliang.consecutivescroller.e.k(this, ev, actionIndex);
                boolean zC2 = com.donkingliang.consecutivescroller.e.c(x(iJ2, iK2));
                boolean zU2 = com.donkingliang.consecutivescroller.e.u(this, iJ2, iK2);
                if (this.f26195q != 1) {
                    ev.setAction(3);
                }
                if (this.f26195q != 1) {
                    o(-this.f26185g);
                }
            }
            this.f26191m = 0;
            this.f26190l = 0;
            this.f26194p = false;
            int[] iArr4 = this.f26193o;
            iArr4[0] = 0;
            iArr4[1] = 0;
            this.U = false;
        } else if (actionMasked == 5) {
            int pointerId2 = ev.getPointerId(actionIndex);
            this.f26197s = pointerId2;
            this.f26192n.put(Integer.valueOf(pointerId2), Float.valueOf(ev.getY(actionIndex)));
            this.f26191m = (int) ev.getY(actionIndex);
            this.f26190l = (int) ev.getX(actionIndex);
            requestDisallowInterceptTouchEvent(false);
            this.f26193o[0] = com.donkingliang.consecutivescroller.e.j(this, ev, actionIndex);
            this.f26193o[1] = com.donkingliang.consecutivescroller.e.k(this, ev, actionIndex);
            int[] iArr5 = this.f26193o;
            this.U = com.donkingliang.consecutivescroller.e.v(this, iArr5[0], iArr5[1]);
            z();
            this.f26184f.addMovement(motionEventObtain);
        } else if (actionMasked == 6) {
            this.f26192n.remove(Integer.valueOf(ev.getPointerId(actionIndex)));
            if (this.f26197s == ev.getPointerId(actionIndex)) {
                int i14 = actionIndex == 0 ? 1 : 0;
                int pointerId3 = ev.getPointerId(i14);
                this.f26197s = pointerId3;
                this.f26192n.put(Integer.valueOf(pointerId3), Float.valueOf(ev.getY(i14)));
                this.f26191m = (int) ev.getY(i14);
                this.f26190l = (int) ev.getX(i14);
                this.f26193o[0] = com.donkingliang.consecutivescroller.e.j(this, ev, i14);
                this.f26193o[1] = com.donkingliang.consecutivescroller.e.k(this, ev, i14);
                int[] iArr6 = this.f26193o;
                this.U = com.donkingliang.consecutivescroller.e.v(this, iArr6[0], iArr6[1]);
            }
            z();
            this.f26184f.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(ev);
        int actionMasked2 = ev.getActionMasked();
        if (actionMasked2 == 1 || actionMasked2 == 3) {
            this.f26195q = 0;
            this.f26185g = 0;
            this.f26192n.clear();
            this.f26197s = -1;
            if (this.f26182d.isFinished()) {
                setScrollState(0);
            }
        }
        return zDispatchTouchEvent;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int paddingLeft;
        int paddingTop;
        super.draw(canvas);
        if (this.O != getScrollY()) {
            this.O = getScrollY();
            V();
        }
        if (this.D != null) {
            int scrollY = getScrollY();
            int paddingLeft2 = 0;
            if (!this.D.isFinished()) {
                int iSave = canvas.save();
                int width = getWidth();
                int height = getHeight();
                if (getClipToPadding()) {
                    width -= getPaddingLeft() + getPaddingRight();
                    paddingLeft = getPaddingLeft() + 0;
                } else {
                    paddingLeft = 0;
                }
                if (getClipToPadding()) {
                    height -= getPaddingTop() + getPaddingBottom();
                    paddingTop = getPaddingTop() + scrollY;
                } else {
                    paddingTop = scrollY;
                }
                canvas.translate(paddingLeft, paddingTop);
                this.D.setSize(width, height);
                if (this.D.draw(canvas)) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
                canvas.restoreToCount(iSave);
            }
            if (this.E.isFinished()) {
                return;
            }
            int iSave2 = canvas.save();
            int width2 = getWidth();
            int height2 = getHeight();
            int paddingBottom = scrollY + height2;
            if (getClipToPadding()) {
                width2 -= getPaddingLeft() + getPaddingRight();
                paddingLeft2 = 0 + getPaddingLeft();
            }
            if (getClipToPadding()) {
                height2 -= getPaddingTop() + getPaddingBottom();
                paddingBottom -= getPaddingBottom();
            }
            canvas.translate(paddingLeft2 - width2, paddingBottom);
            canvas.rotate(180.0f, width2, 0.0f);
            this.E.setSize(width2, height2);
            if (this.E.draw(canvas)) {
                ViewCompat.postInvalidateOnAnimation(this);
            }
            canvas.restoreToCount(iSave2);
        }
    }

    public void f0(View view) {
        g0(view, 0);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0050  */
    /* JADX WARN: Code duplicated, block: B:21:0x0052  */
    public void g0(View view, int offset) {
        int iIndexOfChild = indexOfChild(view);
        byte b10 = -1;
        if (iIndexOfChild != -1) {
            int top = (view.getTop() - offset) - s(view);
            if (offset < 0) {
                int iY = y(iIndexOfChild);
                if (getScrollY() + getPaddingTop() + iY <= top) {
                    if (getScrollY() + getPaddingTop() + iY < top) {
                        b10 = 1;
                    } else {
                        b10 = 0;
                    }
                }
            } else if (getScrollY() + getPaddingTop() <= top) {
                if (getScrollY() + getPaddingTop() < top) {
                    b10 = 1;
                } else if (!com.donkingliang.consecutivescroller.e.d(view, -1)) {
                    b10 = 0;
                }
            }
            if (b10 != 0) {
                this.f26204z = iIndexOfChild;
                k0();
                this.B = offset;
                setScrollState(2);
                if (b10 < 0) {
                    this.A = -50;
                } else {
                    this.A = 50;
                }
                invalidate();
            }
        }
    }

    public int getAdjustHeightOffset() {
        return this.J;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int childCount, int drawingPosition) {
        int iIndexOfChild;
        return (this.P.size() <= drawingPosition || (iIndexOfChild = indexOfChild(this.P.get(drawingPosition))) == -1) ? super.getChildDrawingOrder(childCount, drawingPosition) : iIndexOfChild;
    }

    public View getCurrentStickyView() {
        return this.L;
    }

    public List<View> getCurrentStickyViews() {
        return this.M;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f26198t.getNestedScrollAxes();
    }

    public e getOnPermanentStickyChangeListener() {
        return this.S;
    }

    public g getOnStickyChangeListener() {
        return this.R;
    }

    public f getOnVerticalScrollChangeListener() {
        return this.f26196r;
    }

    public int getOwnScrollY() {
        return computeVerticalScrollOffset();
    }

    public int getScrollState() {
        return this.T;
    }

    public int getStickyOffset() {
        return this.K;
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean hasNestedScrollingParent(int type) {
        return this.f26199u.hasNestedScrollingParent(type);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f26199u.isNestedScrollingEnabled();
    }

    public void k0() {
        if (this.f26182d.isFinished()) {
            return;
        }
        this.f26182d.abortAnimation();
        stopNestedScroll(1);
        if (this.f26204z == -1) {
            setScrollState(0);
        }
    }

    public boolean l0(View child) {
        boolean z10 = this.G;
        return (!z10 && this.L == child) || (z10 && this.M.contains(child));
    }

    public View m() {
        int scrollY = getScrollY() + getPaddingTop();
        List<View> effectiveChildren = getEffectiveChildren();
        int size = effectiveChildren.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = effectiveChildren.get(i10);
            if (view.getTop() <= scrollY && view.getBottom() > scrollY) {
                return view;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View child, int parentWidthMeasureSpec, int widthUsed, int parentHeightMeasureSpec, int heightUsed) {
        com.donkingliang.consecutivescroller.b.a((LayoutParams) child.getLayoutParams());
        super.measureChildWithMargins(child, parentWidthMeasureSpec, widthUsed, parentHeightMeasureSpec, heightUsed);
    }

    public View n() {
        int height = (getHeight() - getPaddingBottom()) + getScrollY();
        List<View> effectiveChildren = getEffectiveChildren();
        int size = effectiveChildren.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = effectiveChildren.get(i10);
            if (view.getTop() < height && view.getBottom() >= height) {
                return view;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0028  */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0025, code lost:
    
        if (F(r0[0], r0[1]) != false) goto L17;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            int r0 = r5.getActionMasked()
            if (r0 == 0) goto L34
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L28
            r3 = 2
            if (r0 == r3) goto L11
            r3 = 3
            if (r0 == r3) goto L28
            goto L3c
        L11:
            int r0 = r4.f26195q
            if (r0 == r3) goto L3c
            boolean r0 = r4.G(r5)
            if (r0 != 0) goto L27
            int[] r0 = r4.f26193o
            r1 = r0[r1]
            r0 = r0[r2]
            boolean r0 = r4.F(r1, r0)
            if (r0 == 0) goto L3c
        L27:
            return r2
        L28:
            r4.stopNestedScroll(r1)
            boolean r0 = r4.V
            if (r0 == 0) goto L3c
            int r0 = r4.f26195q
            if (r0 != 0) goto L3c
            return r2
        L34:
            r4.B()
            android.view.VelocityTracker r0 = r4.f26183e
            r0.addMovement(r5)
        L3c:
            boolean r5 = super.onInterceptTouchEvent(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.donkingliang.consecutivescroller.ConsecutiveScrollerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        this.f26181c = 0;
        int paddingTop = getPaddingTop();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int measuredWidth = getMeasuredWidth();
        List<View> nonGoneChildren = getNonGoneChildren();
        int size = nonGoneChildren.size();
        int i10 = 0;
        while (i10 < size) {
            View view = nonGoneChildren.get(i10);
            int measuredHeight = view.getMeasuredHeight() + paddingTop;
            int iT = t(view, measuredWidth, paddingLeft, paddingRight);
            view.layout(iT, paddingTop, view.getMeasuredWidth() + iT, measuredHeight);
            this.f26181c += view.getHeight();
            i10++;
            paddingTop = measuredHeight;
        }
        int measuredHeight2 = this.f26181c - ((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        this.f26181c = measuredHeight2;
        if (measuredHeight2 < 0) {
            this.f26181c = 0;
        }
        d(changed, false);
        h0();
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        U();
        List<View> nonGoneChildren = getNonGoneChildren();
        int size = nonGoneChildren.size();
        int iMax = 0;
        int measuredHeight = 0;
        for (int i10 = 0; i10 < size; i10++) {
            View view = nonGoneChildren.get(i10);
            measureChildWithMargins(view, widthMeasureSpec, 0, heightMeasureSpec, s(view));
            iMax = Math.max(iMax, u(view));
            measuredHeight += view.getMeasuredHeight();
        }
        setMeasuredDimension(N(widthMeasureSpec, iMax + getPaddingLeft() + getPaddingRight()), N(heightMeasureSpec, measuredHeight + getPaddingTop() + getPaddingBottom()));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View target, float velocityX, float velocityY, boolean consumed) {
        if (consumed) {
            return false;
        }
        dispatchNestedFling(0.0f, velocityY, true);
        o((int) velocityY);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View target, float velocityX, float velocityY) {
        return dispatchNestedPreFling(velocityX, velocityY);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View target, int dx, int dy, int[] consumed) {
        onNestedPreScroll(target, dx, dy, consumed, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(@NonNull View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type) {
        O(dyUnconsumed, type);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(@NonNull View child, @NonNull View target, int axes, int type) {
        this.f26198t.onNestedScrollAccepted(child, target, axes, type);
        e(false, false);
        startNestedScroll(2, type);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(@NonNull View child, @NonNull View target, int axes, int type) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        return (layoutParams instanceof LayoutParams ? ((LayoutParams) layoutParams).f26206b : false) && (axes & 2) != 0;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(@NonNull View target, int type) {
        this.f26198t.onStopNestedScroll(target, type);
        stopNestedScroll(type);
    }

    /* JADX WARN: Code duplicated, block: B:87:0x01ba  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        VelocityTracker velocityTracker;
        int i10;
        if (com.donkingliang.consecutivescroller.e.s(this) || this.U) {
            return super.onTouchEvent(ev);
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(ev);
        boolean z10 = false;
        if (ev.getActionMasked() == 0) {
            this.Q = 0;
        }
        motionEventObtain.offsetLocation(0.0f, this.Q);
        int iFindPointerIndex = ev.findPointerIndex(this.f26197s);
        if (iFindPointerIndex < 0 || iFindPointerIndex >= ev.getPointerCount()) {
            return false;
        }
        int actionMasked = ev.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                k();
                this.f26189k = 0;
                VelocityTracker velocityTracker2 = this.f26183e;
                if (velocityTracker2 != null) {
                    velocityTracker2.addMovement(motionEventObtain);
                    this.f26183e.computeCurrentVelocity(1000, this.f26186h);
                    int yVelocity = (int) this.f26183e.getYVelocity();
                    int i11 = this.f26186h;
                    int iMax = Math.max(-i11, Math.min(yVelocity, i11));
                    if (iMax == 0 && (i10 = this.f26185g) != 0) {
                        iMax = i10;
                    }
                    o(-iMax);
                    S();
                }
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    k();
                    this.f26189k = 0;
                    S();
                    setScrollState(0);
                } else if (actionMasked == 5 || actionMasked == 6) {
                }
            } else {
                if (this.f26189k == 0) {
                    this.f26189k = (int) ev.getY(iFindPointerIndex);
                    return true;
                }
                this.f26201w[1] = 0;
                int y10 = (int) ev.getY(iFindPointerIndex);
                int i12 = this.f26189k - y10;
                this.f26189k = y10;
                if (dispatchNestedPreScroll(0, i12, this.f26201w, this.f26200v, 0)) {
                    i12 -= this.f26201w[1];
                    ev.offsetLocation(0.0f, this.f26200v[1]);
                    int i13 = this.Q;
                    int i14 = this.f26200v[1];
                    this.Q = i13 + i14;
                    this.f26189k -= i14;
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                int i15 = this.f26180b;
                if (this.T != 1) {
                    if (b() && Math.abs(i12) > 0) {
                        setScrollState(1);
                    }
                }
                if (this.T == 1) {
                    j(i12);
                }
                int i16 = this.f26180b - i15;
                if (i16 != 0) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                int i17 = i12 - i16;
                if (dispatchNestedScroll(0, i16, 0, i17, this.f26200v, 0)) {
                    int i18 = this.f26200v[1];
                    i17 += i18;
                    this.f26189k -= i18;
                    this.Q += i18;
                    ev.offsetLocation(0.0f, i18);
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                int scrollRange = getScrollRange();
                int overScrollMode = getOverScrollMode();
                if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                    z10 = true;
                }
                if (z10) {
                    l();
                    int i19 = i15 + i17;
                    if (i19 < 0) {
                        EdgeEffectCompat.onPull(this.D, i17 / getHeight(), ev.getX(iFindPointerIndex) / getWidth());
                        if (!this.E.isFinished()) {
                            this.E.onRelease();
                        }
                    } else if (i19 > scrollRange) {
                        EdgeEffectCompat.onPull(this.E, i17 / getHeight(), 1.0f - (ev.getX(iFindPointerIndex) / getWidth()));
                        if (!this.D.isFinished()) {
                            this.D.onRelease();
                        }
                    }
                    EdgeEffect edgeEffect = this.D;
                    if (edgeEffect != null && (!edgeEffect.isFinished() || !this.E.isFinished())) {
                        ViewCompat.postInvalidateOnAnimation(this);
                    }
                }
            }
            velocityTracker = this.f26183e;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEventObtain);
            }
            motionEventObtain.recycle();
            return true;
        }
        startNestedScroll(2, 0);
        this.f26189k = (int) ev.getY(iFindPointerIndex);
        velocityTracker = this.f26183e;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams p10) {
        return new LayoutParams(p10);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
    }

    @Override // android.view.View
    public void scrollBy(int x10, int y10) {
        scrollTo(0, this.f26180b + y10);
    }

    @Override // android.view.View
    public void scrollTo(int x10, int y10) {
        j(y10 - this.f26180b);
    }

    public void setAdjustHeightOffset(int adjustHeightOffset) {
        if (this.J != adjustHeightOffset) {
            this.J = adjustHeightOffset;
            requestLayout();
        }
    }

    public void setAutoAdjustHeightAtBottomView(boolean autoAdjustHeightAtBottomView) {
        if (this.I != autoAdjustHeightAtBottomView) {
            this.I = autoAdjustHeightAtBottomView;
            requestLayout();
        }
    }

    public void setDisableChildHorizontalScroll(boolean disableChildHorizontalScroll) {
        this.H = disableChildHorizontalScroll;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean enabled) {
        this.f26199u.setNestedScrollingEnabled(enabled);
    }

    public void setOnPermanentStickyChangeListener(e l10) {
        this.S = l10;
    }

    @Override // android.view.View
    @Deprecated
    public void setOnScrollChangeListener(View.OnScrollChangeListener l10) {
    }

    public void setOnStickyChangeListener(g l10) {
        this.R = l10;
    }

    public void setOnVerticalScrollChangeListener(f l10) {
        this.f26196r = l10;
    }

    public void setPermanent(boolean isPermanent) {
        if (this.G != isPermanent) {
            this.G = isPermanent;
            if (this.I) {
                requestLayout();
            } else {
                V();
            }
        }
    }

    void setScrollState(int state) {
        if (state == this.T) {
            return;
        }
        this.T = state;
        int iComputeVerticalScrollOffset = computeVerticalScrollOffset();
        W(iComputeVerticalScrollOffset, iComputeVerticalScrollOffset);
    }

    public void setStickyOffset(int offset) {
        if (this.K != offset) {
            this.K = offset;
            V();
        }
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean startNestedScroll(int axes, int type) {
        return this.f26199u.startNestedScroll(axes, type);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public void stopNestedScroll(int type) {
        this.f26199u.stopNestedScroll(type);
    }

    int v(View child) {
        return this.P.indexOf(child);
    }

    public ConsecutiveScrollerLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedPreScroll(int dx, int dy, @Nullable int[] consumed, @Nullable int[] offsetInWindow, int type) {
        return this.f26199u.dispatchNestedPreScroll(dx, dy, consumed, offsetInWindow, type);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedScroll(int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, @Nullable int[] offsetInWindow, int type) {
        return this.f26199u.dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow, type);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(@NonNull View target, int dx, int dy, @NonNull int[] consumed, int type) {
        dispatchNestedPreScroll(dx, dy, consumed, null, type);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed) {
        O(dyUnconsumed, 0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    public ConsecutiveScrollerLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f26192n = new HashMap<>();
        this.f26193o = new int[2];
        this.f26194p = false;
        this.f26195q = 0;
        this.f26197s = -1;
        this.f26200v = new int[2];
        this.f26201w = new int[2];
        this.f26204z = -1;
        this.A = 0;
        this.B = 0;
        this.C = 0;
        this.J = 0;
        this.K = 0;
        this.M = new ArrayList();
        this.N = new ArrayList();
        this.O = 0;
        this.P = new ArrayList();
        this.Q = 0;
        this.T = 0;
        this.U = false;
        this.V = false;
        TypedArray typedArrayObtainStyledAttributes = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.ConsecutiveScrollerLayout);
            this.G = typedArrayObtainStyledAttributes.getBoolean(3, false);
            this.H = typedArrayObtainStyledAttributes.getBoolean(2, false);
            this.K = typedArrayObtainStyledAttributes.getDimensionPixelOffset(4, 0);
            this.I = typedArrayObtainStyledAttributes.getBoolean(1, false);
            this.J = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
            typedArrayObtainStyledAttributes.recycle();
            this.f26182d = new OverScroller(getContext(), f26179q1);
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.f26186h = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f26187i = viewConfiguration.getScaledMinimumFlingVelocity();
            this.f26188j = ViewConfiguration.getTouchSlop();
            setWillNotDraw(false);
            setVerticalScrollBarEnabled(true);
            this.f26198t = new NestedScrollingParentHelper(this);
            this.f26199u = new NestedScrollingChildHelper(this);
            setNestedScrollingEnabled(true);
            setChildrenDrawingOrderEnabled(true);
            setMotionEventSplittingEnabled(false);
        } catch (Throwable th) {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View target) {
        onStopNestedScroll(target, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View child, View target, int nestedScrollAxes) {
        onNestedScrollAccepted(child, target, nestedScrollAxes, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View child, View target, int nestedScrollAxes) {
        return onStartNestedScroll(child, target, nestedScrollAxes, 0);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f26205a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f26206b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f26207c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f26208d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f26209e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f26210f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public Align f26211g;

        public enum Align {
            LEFT(1),
            RIGHT(2),
            CENTER(3);

            int value;

            Align(int value) {
                this.value = value;
            }

            static Align get(int value) {
                if (value == 1) {
                    return LEFT;
                }
                if (value != 2) {
                    return value != 3 ? LEFT : CENTER;
                }
                return RIGHT;
            }
        }

        public LayoutParams(Context c10, AttributeSet attrs) {
            super(c10, attrs);
            this.f26205a = true;
            this.f26206b = true;
            this.f26207c = false;
            this.f26208d = false;
            this.f26209e = false;
            this.f26211g = Align.LEFT;
            TypedArray typedArrayObtainStyledAttributes = null;
            try {
                try {
                    typedArrayObtainStyledAttributes = c10.obtainStyledAttributes(attrs, R.styleable.ConsecutiveScrollerLayout_Layout);
                    this.f26205a = typedArrayObtainStyledAttributes.getBoolean(1, true);
                    this.f26206b = typedArrayObtainStyledAttributes.getBoolean(2, true);
                    this.f26207c = typedArrayObtainStyledAttributes.getBoolean(4, false);
                    this.f26208d = typedArrayObtainStyledAttributes.getBoolean(5, false);
                    this.f26209e = typedArrayObtainStyledAttributes.getBoolean(3, false);
                    this.f26211g = Align.get(typedArrayObtainStyledAttributes.getInt(0, 1));
                    this.f26210f = typedArrayObtainStyledAttributes.getResourceId(6, -1);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    if (typedArrayObtainStyledAttributes == null) {
                        return;
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                throw th;
            }
        }

        public LayoutParams(int width, int height) {
            super(width, height);
            this.f26205a = true;
            this.f26206b = true;
            this.f26207c = false;
            this.f26208d = false;
            this.f26209e = false;
            this.f26211g = Align.LEFT;
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
            this.f26205a = true;
            this.f26206b = true;
            this.f26207c = false;
            this.f26208d = false;
            this.f26209e = false;
            this.f26211g = Align.LEFT;
        }
    }
}
