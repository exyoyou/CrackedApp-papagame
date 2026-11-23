package com.donkingliang.consecutivescroller;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class ConsecutiveViewPager2 extends FrameLayout implements com.donkingliang.consecutivescroller.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f26217e = -123;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected ViewPager2 f26218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected RecyclerView f26219c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f26220d;

    private static class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        WeakReference<ConsecutiveViewPager2> f26221b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        View f26222c;

        public a(ConsecutiveViewPager2 parent, View view) {
            this.f26221b = new WeakReference<>(parent);
            this.f26222c = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View v10) {
            if (this.f26221b.get() != null) {
                this.f26221b.get().f(this.f26222c);
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View v10) {
        }
    }

    public ConsecutiveViewPager2(@NonNull Context context) {
        super(context);
        c(context);
    }

    private void c(Context context) {
        ViewPager2 viewPager2 = new ViewPager2(context);
        this.f26218b = viewPager2;
        addView(viewPager2, -1, -1);
        this.f26219c = (RecyclerView) this.f26218b.getChildAt(0);
    }

    private boolean d() {
        ViewParent parent = getParent();
        if (!(parent instanceof ConsecutiveScrollerLayout)) {
            return false;
        }
        ConsecutiveScrollerLayout consecutiveScrollerLayout = (ConsecutiveScrollerLayout) parent;
        return consecutiveScrollerLayout.indexOfChild(this) == consecutiveScrollerLayout.getChildCount() - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(View v10) {
        View viewM;
        if (v10 == null || !(getParent() instanceof ConsecutiveScrollerLayout)) {
            return;
        }
        ConsecutiveScrollerLayout consecutiveScrollerLayout = (ConsecutiveScrollerLayout) getParent();
        int iIndexOfChild = consecutiveScrollerLayout.indexOfChild(this);
        if ((iIndexOfChild != consecutiveScrollerLayout.getChildCount() - 1 || getHeight() >= consecutiveScrollerLayout.getHeight() || consecutiveScrollerLayout.getScrollY() < consecutiveScrollerLayout.f26181c) && (viewM = consecutiveScrollerLayout.m()) != null) {
            int iIndexOfChild2 = consecutiveScrollerLayout.indexOfChild(viewM);
            if (iIndexOfChild < iIndexOfChild2) {
                consecutiveScrollerLayout.Y(v10);
            } else if (iIndexOfChild > iIndexOfChild2) {
                consecutiveScrollerLayout.Z(v10);
            }
        }
    }

    private void setAttachListener(View scrollerView) {
        if (scrollerView.getTag(-123) != null) {
            a aVar = (a) scrollerView.getTag(-123);
            if (aVar.f26221b.get() == null) {
                scrollerView.removeOnAttachStateChangeListener(aVar);
                scrollerView.setTag(-123, null);
            }
        }
        if (scrollerView.getTag(-123) == null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if ((layoutParams instanceof ConsecutiveScrollerLayout.LayoutParams) && ((ConsecutiveScrollerLayout.LayoutParams) layoutParams).f26205a) {
                View.OnAttachStateChangeListener aVar2 = new a(this, scrollerView);
                scrollerView.addOnAttachStateChangeListener(aVar2);
                scrollerView.setTag(-123, aVar2);
            }
        }
    }

    protected View b(View view) {
        if (!(this.f26219c.getAdapter() instanceof FragmentStateAdapter) || !(view instanceof FrameLayout)) {
            return view;
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return frameLayout.getChildCount() > 0 ? frameLayout.getChildAt(0) : view;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int direction) {
        return this.f26218b.canScrollHorizontally(direction);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int direction) {
        return this.f26218b.canScrollVertically(direction);
    }

    public void e(@NonNull ViewPager2.OnPageChangeCallback callback) {
        this.f26218b.registerOnPageChangeCallback(callback);
    }

    public void g(@NonNull ViewPager2.OnPageChangeCallback callback) {
        this.f26218b.unregisterOnPageChangeCallback(callback);
    }

    @Nullable
    public RecyclerView.Adapter getAdapter() {
        return this.f26218b.getAdapter();
    }

    public int getAdjustHeight() {
        return this.f26220d;
    }

    public int getCurrentItem() {
        return this.f26218b.getCurrentItem();
    }

    @Override // com.donkingliang.consecutivescroller.a
    public View getCurrentScrollerView() {
        View viewB;
        int currentItem = getCurrentItem();
        RecyclerView.Adapter adapter = this.f26219c.getAdapter();
        RecyclerView.LayoutManager layoutManager = this.f26219c.getLayoutManager();
        if (adapter == null || layoutManager == null || currentItem < 0 || currentItem >= adapter.getItemCount()) {
            viewB = null;
        } else {
            viewB = b(layoutManager.findViewByPosition(currentItem));
            if (viewB != null) {
                setAttachListener(viewB);
            }
        }
        return viewB == null ? this.f26219c : viewB;
    }

    public int getOffscreenPageLimit() {
        return this.f26218b.getOffscreenPageLimit();
    }

    public int getOrientation() {
        return this.f26218b.getOrientation();
    }

    @Override // com.donkingliang.consecutivescroller.a
    public List<View> getScrolledViews() {
        ArrayList arrayList = new ArrayList();
        int childCount = this.f26219c.getChildCount();
        if (childCount > 0) {
            for (int i10 = 0; i10 < childCount; i10++) {
                arrayList.add(b(this.f26219c.getChildAt(i10)));
            }
        }
        return arrayList;
    }

    public ViewPager2 getViewPager2() {
        return this.f26218b;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (!d() || this.f26220d <= 0) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        } else {
            super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(View.getDefaultSize(0, heightMeasureSpec) - this.f26220d, View.MeasureSpec.getMode(heightMeasureSpec)));
        }
    }

    public void setAdapter(@Nullable RecyclerView.Adapter adapter) {
        this.f26218b.setAdapter(adapter);
    }

    public void setAdjustHeight(int adjustHeight) {
        if (this.f26220d != adjustHeight) {
            this.f26220d = adjustHeight;
            requestLayout();
        }
    }

    public void setCurrentItem(int item) {
        this.f26218b.setCurrentItem(item);
    }

    public void setOffscreenPageLimit(int limit) {
        this.f26218b.setOffscreenPageLimit(limit);
    }

    public void setOrientation(int orientation) {
        this.f26218b.setOrientation(orientation);
    }

    public void setCurrentItem(int item, boolean smoothScroll) {
        this.f26218b.setCurrentItem(item, smoothScroll);
    }

    public ConsecutiveViewPager2(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        c(context);
    }

    public ConsecutiveViewPager2(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        c(context);
    }
}
