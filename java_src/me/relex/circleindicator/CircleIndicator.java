package me.relex.circleindicator;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes.dex */
public class CircleIndicator extends BaseCircleIndicator {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ViewPager f94254n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ViewPager.OnPageChangeListener f94255o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final DataSetObserver f94256p;

    class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float f10, int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            if (CircleIndicator.this.f94254n.getAdapter() == null || CircleIndicator.this.f94254n.getAdapter().getCount() <= 0) {
                return;
            }
            CircleIndicator.this.b(i10);
        }
    }

    class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            if (CircleIndicator.this.f94254n == null) {
                return;
            }
            PagerAdapter adapter = CircleIndicator.this.f94254n.getAdapter();
            int count = adapter != null ? adapter.getCount() : 0;
            if (count == CircleIndicator.this.getChildCount()) {
                return;
            }
            CircleIndicator circleIndicator = CircleIndicator.this;
            if (circleIndicator.f94251k < count) {
                circleIndicator.f94251k = circleIndicator.f94254n.getCurrentItem();
            } else {
                circleIndicator.f94251k = -1;
            }
            CircleIndicator.this.k();
        }
    }

    public CircleIndicator(Context context) {
        super(context);
        this.f94255o = new a();
        this.f94256p = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        PagerAdapter adapter = this.f94254n.getAdapter();
        e(adapter == null ? 0 : adapter.getCount(), this.f94254n.getCurrentItem());
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void b(int i10) {
        super.b(i10);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void e(int i10, int i11) {
        super.e(i10, i11);
    }

    public DataSetObserver getDataSetObserver() {
        return this.f94256p;
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void h(me.relex.circleindicator.b bVar) {
        super.h(bVar);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void setIndicatorCreatedListener(@Nullable BaseCircleIndicator.a aVar) {
        super.setIndicatorCreatedListener(aVar);
    }

    @Deprecated
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        ViewPager viewPager = this.f94254n;
        if (viewPager == null) {
            throw new NullPointerException("can not find Viewpager , setViewPager first");
        }
        viewPager.removeOnPageChangeListener(onPageChangeListener);
        this.f94254n.addOnPageChangeListener(onPageChangeListener);
    }

    public void setViewPager(@Nullable ViewPager viewPager) {
        this.f94254n = viewPager;
        if (viewPager == null || viewPager.getAdapter() == null) {
            return;
        }
        this.f94251k = -1;
        k();
        this.f94254n.removeOnPageChangeListener(this.f94255o);
        this.f94254n.addOnPageChangeListener(this.f94255o);
        this.f94255o.onPageSelected(this.f94254n.getCurrentItem());
    }

    public CircleIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f94255o = new a();
        this.f94256p = new b();
    }

    public CircleIndicator(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f94255o = new a();
        this.f94256p = new b();
    }

    @TargetApi(21)
    public CircleIndicator(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f94255o = new a();
        this.f94256p = new b();
    }
}
