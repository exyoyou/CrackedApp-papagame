package com.baidu.mobads.sdk.internal.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.baidu.mobads.sdk.internal.concrete.ViewCompatDelegate;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes6.dex */
public class ViewPager2 extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f7998a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f7999b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f8000c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f8001d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f8002e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f8003f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static boolean f8004g = true;
    private boolean A;
    private int B;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f8005h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f8006i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    RecyclerView f8007j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    ScrollEventAdapter f8008k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    AccessibilityProvider f8009l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Rect f8010m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Rect f8011n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int[] f8012o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CompositeOnPageChangeCallback f8013p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private RecyclerView.AdapterDataObserver f8014q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private LinearLayoutManager f8015r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f8016s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Parcelable f8017t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private PagerSnapHelper f8018u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private CompositeOnPageChangeCallback f8019v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private FakeDrag f8020w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private PageTransformerAdapter f8021x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private RecyclerView.ItemAnimator f8022y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f8023z;

    private abstract class AccessibilityProvider {
        private AccessibilityProvider() {
        }

        void a(@NonNull AccessibilityEvent accessibilityEvent) {
        }

        void b(@Nullable RecyclerView.Adapter<?> adapter) {
        }

        void c() {
        }

        void d() {
        }

        void e() {
        }

        void f() {
        }

        void g() {
        }

        boolean handlesLmPerformAccessibilityAction(int i10) {
            return false;
        }

        boolean handlesRvGetAccessibilityClassName() {
            return false;
        }

        void onLmInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        boolean onLmPerformAccessibilityAction(int i10) {
            throw new IllegalStateException("Not implemented.");
        }

        CharSequence onRvGetAccessibilityClassName() {
            throw new IllegalStateException("Not implemented.");
        }

        void a(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        String b() {
            throw new IllegalStateException("Not implemented.");
        }

        void a(@Nullable RecyclerView.Adapter<?> adapter) {
        }

        boolean b(int i10, Bundle bundle) {
            throw new IllegalStateException("Not implemented.");
        }

        void a(@NonNull CompositeOnPageChangeCallback compositeOnPageChangeCallback, @NonNull RecyclerView recyclerView) {
        }

        boolean a() {
            return false;
        }

        boolean a(int i10, Bundle bundle) {
            return false;
        }
    }

    class BasicAccessibilityProvider extends AccessibilityProvider {
        BasicAccessibilityProvider() {
            super();
        }

        @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.AccessibilityProvider
        public boolean handlesLmPerformAccessibilityAction(int i10) {
            return (i10 == 8192 || i10 == 4096) && !ViewPager2.this.isUserInputEnabled();
        }

        @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.AccessibilityProvider
        public boolean handlesRvGetAccessibilityClassName() {
            return true;
        }

        @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.AccessibilityProvider
        public void onLmInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (ViewPager2.this.isUserInputEnabled()) {
                return;
            }
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfoCompat.setScrollable(false);
        }

        @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.AccessibilityProvider
        public boolean onLmPerformAccessibilityAction(int i10) {
            if (handlesLmPerformAccessibilityAction(i10)) {
                return false;
            }
            throw new IllegalStateException();
        }

        @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.AccessibilityProvider
        public CharSequence onRvGetAccessibilityClassName() {
            if (handlesRvGetAccessibilityClassName()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }
    }

    public static abstract class DataSetChangeObserver extends RecyclerView.AdapterDataObserver {
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public abstract void onChanged();

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i10, int i11, int i12) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i10, int i11, @Nullable Object obj) {
            onChanged();
        }
    }

    private class LinearLayoutManagerImpl extends LinearLayoutManager {
        LinearLayoutManagerImpl(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        protected int getExtraLayoutSpace(RecyclerView.State state) {
            int offscreenPageLimit = ViewPager2.this.getOffscreenPageLimit();
            return offscreenPageLimit == -1 ? super.getExtraLayoutSpace(state) : ViewPager2.this.b() * offscreenPageLimit;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
            ViewPager2.this.f8009l.onLmInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean performAccessibilityAction(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, int i10, @Nullable Bundle bundle) {
            return ViewPager2.this.f8009l.handlesLmPerformAccessibilityAction(i10) ? ViewPager2.this.f8009l.onLmPerformAccessibilityAction(i10) : super.performAccessibilityAction(recycler, state, i10, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z10, boolean z11) {
            return false;
        }
    }

    @IntRange(from = 1)
    @Retention(RetentionPolicy.SOURCE)
    public @interface OffscreenPageLimit {
    }

    public interface OnOverScrollListener {
        void onOverScrollEnd();

        void onOverScrollStart();
    }

    public static abstract class OnPageChangeCallback {
        public void onPageScrollStateChanged(int i10) {
        }

        public void onPageScrolled(int i10, float f10, @Px int i11) {
        }

        public void onPageSelected(int i10) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Orientation {
    }

    public interface PageTransformer {
        void transformPage(@NonNull View view, float f10);
    }

    private class PagerSnapHelperImpl extends PagerSnapHelper {
        PagerSnapHelperImpl() {
        }

        @Override // com.baidu.mobads.sdk.internal.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        @Nullable
        public View findSnapView(RecyclerView.LayoutManager layoutManager) {
            if (ViewPager2.this.isFakeDragging()) {
                return null;
            }
            return super.findSnapView(layoutManager);
        }
    }

    private class RecyclerViewImpl extends RecyclerView {
        RecyclerViewImpl(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, androidx.core.view.NestedScrollingChild2
        public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr, int i14) {
            ViewPager2.this.f8012o[1] = ViewPager2.this.f8012o[0];
            if (1 == ViewPager2.this.getOrientation()) {
                ViewPager2.this.f8012o[0] = i13;
            } else {
                ViewPager2.this.f8012o[0] = i12;
            }
            return super.dispatchNestedScroll(i10, i11, i12, i13, iArr, i14);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        @RequiresApi(23)
        public CharSequence getAccessibilityClassName() {
            return ViewPager2.this.f8009l.handlesRvGetAccessibilityClassName() ? ViewPager2.this.f8009l.onRvGetAccessibilityClassName() : super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setFromIndex(ViewPager2.this.f8005h);
            accessibilityEvent.setToIndex(ViewPager2.this.f8005h);
            ViewPager2.this.f8009l.a(accessibilityEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.isUserInputEnabled() && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.isUserInputEnabled() && super.onTouchEvent(motionEvent);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScrollState {
    }

    private static class SmoothScrollToPosition implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f8042a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final RecyclerView f8043b;

        SmoothScrollToPosition(int i10, RecyclerView recyclerView) {
            this.f8042a = i10;
            this.f8043b = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8043b.smoothScrollToPosition(this.f8042a);
        }
    }

    public ViewPager2(@NonNull Context context) {
        super(context);
        this.f8010m = new Rect();
        this.f8011n = new Rect();
        this.f8012o = new int[2];
        this.f8013p = new CompositeOnPageChangeCallback(3);
        this.f8006i = false;
        this.f8014q = new DataSetChangeObserver() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.1
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f8006i = true;
                viewPager2.f8008k.a();
            }
        };
        this.f8016s = -1;
        this.f8022y = null;
        this.f8023z = false;
        this.A = true;
        this.B = -1;
        a(context, (AttributeSet) null);
    }

    private void b(@Nullable RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.f8014q);
        }
    }

    private RecyclerView.OnChildAttachStateChangeListener e() {
        return new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(@NonNull View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) layoutParams).width != -1 || ((ViewGroup.MarginLayoutParams) layoutParams).height != -1) {
                    throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(@NonNull View view) {
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f() {
        RecyclerView.Adapter adapter;
        if (this.f8016s == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        Parcelable parcelable = this.f8017t;
        if (parcelable != null) {
            if (adapter instanceof StatefulAdapter) {
                ((StatefulAdapter) adapter).restoreState(parcelable);
            }
            this.f8017t = null;
        }
        int iMax = Math.max(0, Math.min(this.f8016s, adapter.getItemCount() - 1));
        this.f8005h = iMax;
        this.f8016s = -1;
        this.f8007j.scrollToPosition(iMax);
        this.f8009l.c();
    }

    public void addItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration) {
        this.f8007j.addItemDecoration(itemDecoration);
    }

    public boolean beginFakeDrag() {
        return this.f8020w.b();
    }

    boolean c() {
        return this.f8015r.getLayoutDirection() == 1;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i10) {
        return this.f8007j.canScrollHorizontally(i10);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i10) {
        return this.f8007j.canScrollVertically(i10);
    }

    void d() {
        View viewFindSnapView = this.f8018u.findSnapView(this.f8015r);
        if (viewFindSnapView == null) {
            return;
        }
        int[] iArrCalculateDistanceToFinalSnap = this.f8018u.calculateDistanceToFinalSnap(this.f8015r, viewFindSnapView);
        int i10 = iArrCalculateDistanceToFinalSnap[0];
        if (i10 == 0 && iArrCalculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.f8007j.smoothScrollBy(i10, iArrCalculateDistanceToFinalSnap[1]);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i10 = ((SavedState) parcelable).f8039a;
            sparseArray.put(this.f8007j.getId(), sparseArray.get(i10));
            sparseArray.remove(i10);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        f();
    }

    public boolean endFakeDrag() {
        return this.f8020w.c();
    }

    public boolean fakeDragBy(@Px @SuppressLint({"SupportAnnotationUsage"}) float f10) {
        return this.f8020w.a(f10);
    }

    @Override // android.view.ViewGroup, android.view.View
    @RequiresApi(23)
    public CharSequence getAccessibilityClassName() {
        return this.f8009l.a() ? this.f8009l.b() : super.getAccessibilityClassName();
    }

    @Nullable
    public RecyclerView.Adapter getAdapter() {
        return this.f8007j.getAdapter();
    }

    public int getCurrentItem() {
        return this.f8005h;
    }

    @NonNull
    public RecyclerView.ItemDecoration getItemDecorationAt(int i10) {
        return this.f8007j.getItemDecorationAt(i10);
    }

    public int getItemDecorationCount() {
        return this.f8007j.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.B;
    }

    public int getOrientation() {
        return this.f8015r.getOrientation();
    }

    public int getOverScrolledDirection() {
        int[] iArr = this.f8012o;
        int i10 = iArr[0];
        return i10 == 0 ? iArr[1] : i10;
    }

    public int getScrollState() {
        return this.f8008k.d();
    }

    public void invalidateItemDecorations() {
        this.f8007j.invalidateItemDecorations();
    }

    public boolean isFakeDragging() {
        return this.f8020w.a();
    }

    public boolean isUserInputEnabled() {
        return this.A;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.f8009l.a(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int measuredWidth = this.f8007j.getMeasuredWidth();
        int measuredHeight = this.f8007j.getMeasuredHeight();
        this.f8010m.left = getPaddingLeft();
        this.f8010m.right = (i12 - i10) - getPaddingRight();
        this.f8010m.top = getPaddingTop();
        this.f8010m.bottom = (i13 - i11) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.f8010m, this.f8011n);
        RecyclerView recyclerView = this.f8007j;
        Rect rect = this.f8011n;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.f8006i) {
            a();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        measureChild(this.f8007j, i10, i11);
        int measuredWidth = this.f8007j.getMeasuredWidth();
        int measuredHeight = this.f8007j.getMeasuredHeight();
        int measuredState = this.f8007j.getMeasuredState();
        int paddingLeft = measuredWidth + getPaddingLeft() + getPaddingRight();
        int paddingTop = measuredHeight + getPaddingTop() + getPaddingBottom();
        setMeasuredDimension(View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i10, measuredState), View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i11, measuredState << 16));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f8016s = savedState.f8040b;
        this.f8017t = savedState.f8041c;
    }

    @Override // android.view.View
    @Nullable
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f8039a = this.f8007j.getId();
        int i10 = this.f8016s;
        if (i10 == -1) {
            i10 = this.f8005h;
        }
        savedState.f8040b = i10;
        Parcelable parcelable = this.f8017t;
        if (parcelable != null) {
            savedState.f8041c = parcelable;
        } else {
            Object adapter = this.f8007j.getAdapter();
            if (adapter instanceof StatefulAdapter) {
                savedState.f8041c = ((StatefulAdapter) adapter).saveState();
            }
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(getClass().getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    @RequiresApi(16)
    public boolean performAccessibilityAction(int i10, Bundle bundle) {
        return this.f8009l.a(i10, bundle) ? this.f8009l.b(i10, bundle) : super.performAccessibilityAction(i10, bundle);
    }

    public void registerOnPageChangeCallback(@NonNull OnPageChangeCallback onPageChangeCallback) {
        this.f8013p.a(onPageChangeCallback);
    }

    public void removeItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration) {
        this.f8007j.removeItemDecoration(itemDecoration);
    }

    public void removeItemDecorationAt(int i10) {
        this.f8007j.removeItemDecorationAt(i10);
    }

    public void requestTransform() {
        if (this.f8021x.a() == null) {
            return;
        }
        double dH = this.f8008k.h();
        int i10 = (int) dH;
        float f10 = (float) (dH - ((double) i10));
        this.f8021x.onPageScrolled(i10, f10, Math.round(b() * f10));
    }

    public void setAdapter(@Nullable RecyclerView.Adapter adapter) {
        RecyclerView.Adapter adapter2 = this.f8007j.getAdapter();
        this.f8009l.b(adapter2);
        b(adapter2);
        this.f8007j.setAdapter(adapter);
        this.f8005h = 0;
        f();
        this.f8009l.a((RecyclerView.Adapter<?>) adapter);
        a((RecyclerView.Adapter<?>) adapter);
    }

    public void setCurrentItem(int i10) {
        setCurrentItem(i10, true);
    }

    @Override // android.view.View
    @RequiresApi(17)
    public void setLayoutDirection(int i10) {
        super.setLayoutDirection(i10);
        this.f8009l.g();
    }

    public void setOffscreenPageLimit(int i10) {
        if (i10 < 1 && i10 != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.B = i10;
        this.f8007j.requestLayout();
    }

    public void setOnOverScrollListener(final OnOverScrollListener onOverScrollListener) {
        if (onOverScrollListener == null) {
            return;
        }
        registerOnPageChangeCallback(new OnPageChangeCallback() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.5

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            boolean f8028a = false;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            boolean f8029b = false;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            boolean f8030c = false;

            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrollStateChanged(int i10) {
                if (i10 != 0) {
                    if (i10 == 1) {
                        this.f8030c = true;
                        return;
                    } else {
                        if (i10 != 2) {
                            return;
                        }
                        this.f8028a = false;
                        this.f8029b = false;
                        return;
                    }
                }
                RecyclerView.Adapter adapter = ViewPager2.this.getAdapter();
                if (adapter == null || adapter.getItemCount() <= 0 || !this.f8030c) {
                    return;
                }
                if (1 == ViewPager2.this.getOrientation()) {
                    if (!ViewPager2.this.canScrollVertically(-1) && ViewPager2.this.getOverScrolledDirection() < 0) {
                        onOverScrollListener.onOverScrollStart();
                    } else if (!ViewPager2.this.canScrollVertically(1) && ViewPager2.this.getOverScrolledDirection() > 0) {
                        onOverScrollListener.onOverScrollEnd();
                    }
                } else if (ViewPager2.this.getOrientation() == 0) {
                    if (!ViewPager2.this.canScrollHorizontally(-1) && ViewPager2.this.getOverScrolledDirection() < 0) {
                        onOverScrollListener.onOverScrollStart();
                    } else if (!ViewPager2.this.canScrollHorizontally(1) && ViewPager2.this.getOverScrolledDirection() > 0) {
                        onOverScrollListener.onOverScrollEnd();
                    }
                }
                this.f8030c = false;
            }
        });
    }

    public void setOrientation(int i10) {
        this.f8015r.setOrientation(i10);
        this.f8009l.d();
    }

    public void setPageTransformer(@Nullable PageTransformer pageTransformer) {
        if (pageTransformer != null) {
            if (!this.f8023z) {
                this.f8022y = this.f8007j.getItemAnimator();
                this.f8023z = true;
            }
            this.f8007j.setItemAnimator(null);
        } else if (this.f8023z) {
            this.f8007j.setItemAnimator(this.f8022y);
            this.f8022y = null;
            this.f8023z = false;
        }
        if (pageTransformer == this.f8021x.a()) {
            return;
        }
        this.f8021x.a(pageTransformer);
        requestTransform();
    }

    public void setUserInputEnabled(boolean z10) {
        this.A = z10;
        this.f8009l.f();
    }

    public void unregisterOnPageChangeCallback(@NonNull OnPageChangeCallback onPageChangeCallback) {
        this.f8013p.b(onPageChangeCallback);
    }

    static class SavedState extends View.BaseSavedState {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final Parcelable.Creator<SavedState> f8038d = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                if (Build.VERSION.SDK_INT >= 24) {
                    return new SavedState(parcel, classLoader);
                }
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, (ClassLoader) null);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f8039a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f8040b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Parcelable f8041c;

        @RequiresApi(24)
        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader);
        }

        private void a(Parcel parcel, ClassLoader classLoader) {
            this.f8039a = parcel.readInt();
            this.f8040b = parcel.readInt();
            this.f8041c = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f8039a);
            parcel.writeInt(this.f8040b);
            parcel.writeParcelable(this.f8041c, i10);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            a(parcel, null);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    private void a(Context context, AttributeSet attributeSet) {
        this.f8009l = new BasicAccessibilityProvider();
        RecyclerViewImpl recyclerViewImpl = new RecyclerViewImpl(context);
        this.f8007j = recyclerViewImpl;
        recyclerViewImpl.setId(ViewCompatDelegate.generateViewId());
        this.f8007j.setDescendantFocusability(131072);
        LinearLayoutManagerImpl linearLayoutManagerImpl = new LinearLayoutManagerImpl(context);
        this.f8015r = linearLayoutManagerImpl;
        this.f8007j.setLayoutManager(linearLayoutManagerImpl);
        this.f8007j.setScrollingTouchSlop(1);
        setOrientation(0);
        this.f8007j.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f8007j.addOnChildAttachStateChangeListener(e());
        ScrollEventAdapter scrollEventAdapter = new ScrollEventAdapter(this);
        this.f8008k = scrollEventAdapter;
        this.f8020w = new FakeDrag(this, scrollEventAdapter, this.f8007j);
        PagerSnapHelperImpl pagerSnapHelperImpl = new PagerSnapHelperImpl();
        this.f8018u = pagerSnapHelperImpl;
        pagerSnapHelperImpl.attachToRecyclerView(this.f8007j);
        this.f8007j.addOnScrollListener(this.f8008k);
        CompositeOnPageChangeCallback compositeOnPageChangeCallback = new CompositeOnPageChangeCallback(3);
        this.f8019v = compositeOnPageChangeCallback;
        this.f8008k.a(compositeOnPageChangeCallback);
        OnPageChangeCallback onPageChangeCallback = new OnPageChangeCallback() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.2
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrollStateChanged(int i10) {
                if (i10 == 0) {
                    ViewPager2.this.a();
                }
            }

            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i10) {
                ViewPager2 viewPager2 = ViewPager2.this;
                if (viewPager2.f8005h != i10) {
                    viewPager2.f8005h = i10;
                    viewPager2.f8009l.e();
                }
            }
        };
        OnPageChangeCallback onPageChangeCallback2 = new OnPageChangeCallback() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.3
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i10) {
                ViewPager2.this.clearFocus();
                if (ViewPager2.this.hasFocus()) {
                    ViewPager2.this.f8007j.requestFocus(2);
                }
            }
        };
        this.f8019v.a(onPageChangeCallback);
        this.f8019v.a(onPageChangeCallback2);
        this.f8009l.a(this.f8019v, this.f8007j);
        this.f8019v.a(this.f8013p);
        PageTransformerAdapter pageTransformerAdapter = new PageTransformerAdapter(this.f8015r);
        this.f8021x = pageTransformerAdapter;
        this.f8019v.a(pageTransformerAdapter);
        RecyclerView recyclerView = this.f8007j;
        attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
    }

    public void addItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration, int i10) {
        this.f8007j.addItemDecoration(itemDecoration, i10);
    }

    int b() {
        int height;
        int paddingBottom;
        RecyclerView recyclerView = this.f8007j;
        if (getOrientation() == 0) {
            height = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            height = recyclerView.getHeight() - recyclerView.getPaddingTop();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public void setCurrentItem(int i10, boolean z10) {
        if (isFakeDragging()) {
            throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
        }
        a(i10, z10);
    }

    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8010m = new Rect();
        this.f8011n = new Rect();
        this.f8012o = new int[2];
        this.f8013p = new CompositeOnPageChangeCallback(3);
        this.f8006i = false;
        this.f8014q = new DataSetChangeObserver() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.1
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f8006i = true;
                viewPager2.f8008k.a();
            }
        };
        this.f8016s = -1;
        this.f8022y = null;
        this.f8023z = false;
        this.A = true;
        this.B = -1;
        a(context, attributeSet);
    }

    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f8010m = new Rect();
        this.f8011n = new Rect();
        this.f8012o = new int[2];
        this.f8013p = new CompositeOnPageChangeCallback(3);
        this.f8006i = false;
        this.f8014q = new DataSetChangeObserver() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.1
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f8006i = true;
                viewPager2.f8008k.a();
            }
        };
        this.f8016s = -1;
        this.f8022y = null;
        this.f8023z = false;
        this.A = true;
        this.B = -1;
        a(context, attributeSet);
    }

    private void a(@Nullable RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.f8014q);
        }
    }

    void a() {
        PagerSnapHelper pagerSnapHelper = this.f8018u;
        if (pagerSnapHelper != null) {
            View viewFindSnapView = pagerSnapHelper.findSnapView(this.f8015r);
            if (viewFindSnapView == null) {
                return;
            }
            int position = this.f8015r.getPosition(viewFindSnapView);
            if (position != this.f8005h && getScrollState() == 0) {
                this.f8019v.onPageSelected(position);
            }
            this.f8006i = false;
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    void a(int i10, boolean z10) {
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter == null) {
            if (this.f8016s != -1) {
                this.f8016s = Math.max(i10, 0);
                return;
            }
            return;
        }
        if (adapter.getItemCount() <= 0) {
            return;
        }
        int iMin = Math.min(Math.max(i10, 0), adapter.getItemCount() - 1);
        if (iMin == this.f8005h && this.f8008k.e()) {
            return;
        }
        int i11 = this.f8005h;
        if (iMin == i11 && z10) {
            return;
        }
        double dH = i11;
        this.f8005h = iMin;
        this.f8009l.e();
        if (!this.f8008k.e()) {
            dH = this.f8008k.h();
        }
        this.f8008k.a(iMin, z10);
        if (!z10) {
            this.f8007j.scrollToPosition(iMin);
            return;
        }
        double d10 = iMin;
        if (Math.abs(d10 - dH) > 3.0d) {
            this.f8007j.scrollToPosition(d10 > dH ? iMin - 3 : iMin + 3);
            RecyclerView recyclerView = this.f8007j;
            recyclerView.post(new SmoothScrollToPosition(iMin, recyclerView));
            return;
        }
        this.f8007j.smoothScrollToPosition(iMin);
    }

    @RequiresApi(21)
    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f8010m = new Rect();
        this.f8011n = new Rect();
        this.f8012o = new int[2];
        this.f8013p = new CompositeOnPageChangeCallback(3);
        this.f8006i = false;
        this.f8014q = new DataSetChangeObserver() { // from class: com.baidu.mobads.sdk.internal.widget.ViewPager2.1
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f8006i = true;
                viewPager2.f8008k.a();
            }
        };
        this.f8016s = -1;
        this.f8022y = null;
        this.f8023z = false;
        this.A = true;
        this.B = -1;
        a(context, attributeSet);
    }
}
