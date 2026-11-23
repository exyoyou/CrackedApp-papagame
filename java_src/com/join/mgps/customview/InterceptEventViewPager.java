package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes3.dex */
public class InterceptEventViewPager extends ViewPager {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f65142o = "InterceptEventViewPager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65144c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f65145d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f65146e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f65147f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f65148g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f65149h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f65150i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f65151j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f65152k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View.OnTouchListener f65153l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f65154m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private c f65155n;

    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            if (event.getAction() == 0 && (v10 instanceof ViewGroup) && !InterceptEventViewPager.this.o() && !InterceptEventViewPager.this.p()) {
                ((ViewGroup) v10).requestDisallowInterceptTouchEvent(true);
            } else if (event.getAction() == 2) {
                if (InterceptEventViewPager.this.o() && InterceptEventViewPager.this.f65150i == 0) {
                    ((ViewGroup) v10).requestDisallowInterceptTouchEvent(false);
                } else if (InterceptEventViewPager.this.p() && InterceptEventViewPager.this.f65150i == InterceptEventViewPager.this.f65143b - 1) {
                    ((ViewGroup) v10).requestDisallowInterceptTouchEvent(false);
                } else {
                    ((ViewGroup) v10).requestDisallowInterceptTouchEvent(true);
                }
            }
            return false;
        }
    }

    class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
            if (InterceptEventViewPager.this.f65155n != null) {
                InterceptEventViewPager.this.f65155n.onPageScrollStateChanged(state);
            }
            InterceptEventViewPager.this.f65144c = state;
            if (state == 1) {
                InterceptEventViewPager.this.f65145d = true;
                return;
            }
            InterceptEventViewPager.this.f65149h = false;
            InterceptEventViewPager.this.f65148g = false;
            InterceptEventViewPager.this.f65147f = false;
            InterceptEventViewPager.this.f65146e = false;
            InterceptEventViewPager.this.f65145d = false;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            if (InterceptEventViewPager.this.f65155n != null) {
                InterceptEventViewPager.this.f65155n.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }
            if (position == InterceptEventViewPager.this.f65150i) {
                InterceptEventViewPager.this.f65149h = true;
            } else {
                InterceptEventViewPager.this.f65148g = true;
            }
            if (InterceptEventViewPager.this.f65145d) {
                if (position == 0) {
                    if (positionOffsetPixels == 0 && InterceptEventViewPager.this.f65144c == 1) {
                        InterceptEventViewPager.this.f65147f = true;
                        return;
                    }
                    return;
                }
                if (position == InterceptEventViewPager.this.f65143b - 1 && positionOffsetPixels == 0 && InterceptEventViewPager.this.f65144c == 1) {
                    InterceptEventViewPager.this.f65146e = true;
                }
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (InterceptEventViewPager.this.f65155n != null) {
                InterceptEventViewPager.this.f65155n.onPageSelected(position);
            }
            InterceptEventViewPager.this.f65150i = position;
        }
    }

    public interface c {
        void onPageScrollStateChanged(int state);

        void onPageScrolled(int position, float positionOffset, int positionOffsetPixels);

        void onPageSelected(int position);
    }

    public InterceptEventViewPager(Context context) {
        this(context, null);
    }

    private void m() {
        setOnPageChangeListener(this.f65154m);
        setOnTouchListener(this.f65153l);
    }

    @Override // androidx.viewpager.widget.ViewPager
    protected boolean canScroll(View v10, boolean checkV, int dx, int x10, int y10) {
        if (v10 != this) {
            try {
                boolean z10 = v10 instanceof ViewPager;
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }
        return super.canScroll(v10, checkV, dx, x10, y10);
    }

    public boolean n() {
        return this.f65151j;
    }

    public boolean o() {
        return this.f65147f;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (this.f65151j) {
            return super.onInterceptTouchEvent(ev);
        }
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (this.f65151j) {
            return super.onTouchEvent(ev);
        }
        return false;
    }

    public boolean p() {
        return this.f65146e;
    }

    public boolean q() {
        return this.f65148g;
    }

    public boolean r() {
        return this.f65149h;
    }

    public boolean s() {
        return this.f65145d;
    }

    @Override // android.view.View
    public void scrollTo(int x10, int y10) {
        super.scrollTo(x10, y10);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setAdapter(PagerAdapter adapter) {
        if (adapter != null) {
            super.setAdapter(adapter);
            this.f65143b = adapter.getCount();
        }
    }

    public void setCanScrollView(boolean scrollView) {
        this.f65151j = scrollView;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int item) {
        super.setCurrentItem(item, false);
    }

    public void setIsAsParentViewPager(boolean asParentViewPager) {
        this.f65152k = asParentViewPager;
    }

    public void setViewPagerCallback(c callback) {
        this.f65155n = callback;
    }

    public InterceptEventViewPager(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65145d = false;
        this.f65146e = false;
        this.f65147f = false;
        this.f65148g = false;
        this.f65149h = false;
        this.f65151j = true;
        this.f65152k = false;
        this.f65153l = new a();
        this.f65154m = new b();
        m();
    }
}
