package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.adapter.e3;

/* JADX INFO: loaded from: classes3.dex */
public class TabPageIndicator extends HorizontalScrollView implements g0 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final CharSequence f65938n = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Runnable f65939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View.OnClickListener f65940c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final IcsLinearLayout f65941d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ViewPager f65942e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f65943f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65944g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f65945h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private d f65946i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65947j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f65948k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f65949l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f65950m;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int currentItem = TabPageIndicator.this.f65942e.getCurrentItem();
            int iB = ((e) view).b();
            TabPageIndicator.this.f65942e.setCurrentItem(iB);
            if (currentItem != iB || TabPageIndicator.this.f65946i == null) {
                return;
            }
            TabPageIndicator.this.f65946i.a(iB);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f65952b;

        b(final View val$tabView) {
            this.f65952b = val$tabView;
        }

        @Override // java.lang.Runnable
        public void run() {
            TabPageIndicator.this.smoothScrollTo(this.f65952b.getLeft() - ((TabPageIndicator.this.getWidth() - this.f65952b.getWidth()) / 2), 0);
            TabPageIndicator.this.f65939b = null;
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f65954b;

        c(final int val$index) {
            this.f65954b = val$index;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TabPageIndicator.this.setCurrentItem(this.f65954b);
        }
    }

    public interface d {
        void a(int position);
    }

    private class e extends TextView {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f65956b;

        public e(Context context) {
            super(context, null, R.attr.vpiTabPageIndicatorStyle);
        }

        public int b() {
            return this.f65956b;
        }

        @Override // android.widget.TextView, android.view.View
        public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            if (TabPageIndicator.this.f65944g <= 0 || getMeasuredWidth() <= TabPageIndicator.this.f65944g) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(TabPageIndicator.this.f65944g, 1073741824), heightMeasureSpec);
        }
    }

    public TabPageIndicator(Context context) {
        this(context, null);
    }

    private void e(final int index, CharSequence text, int iconResId) {
        RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(0, -1, 1.0f);
        layoutParams.setMargins(40, 0, 40, 0);
        e eVar = new e(getContext());
        eVar.f65956b = index;
        eVar.setFocusable(true);
        eVar.setOnClickListener(this.f65940c);
        eVar.setText(text);
        eVar.setTextSize(16.0f);
        eVar.setTextColor(this.f65947j);
        eVar.setGravity(17);
        if (iconResId != 0) {
            eVar.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, iconResId);
        }
        eVar.setOnClickListener(new c(index));
        this.f65941d.addView(eVar, layoutParams);
    }

    private void f(final int position) {
        View childAt = this.f65941d.getChildAt(position);
        Runnable runnable = this.f65939b;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        b bVar = new b(childAt);
        this.f65939b = bVar;
        post(bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.mgps.customview.g0
    public void notifyDataSetChanged() {
        this.f65941d.removeAllViews();
        PagerAdapter adapter = this.f65942e.getAdapter();
        e3 e3Var = adapter instanceof e3 ? (e3) adapter : null;
        int count = adapter.getCount();
        for (int i10 = 0; i10 < count; i10++) {
            CharSequence pageTitle = adapter.getPageTitle(i10);
            if (pageTitle == null) {
                pageTitle = f65938n;
            }
            e(i10, pageTitle, e3Var != null ? e3Var.a(i10) : R.drawable.line_main_color);
        }
        if (this.f65945h > count) {
            this.f65945h = count - 1;
        }
        setCurrentItem(this.f65945h);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f65939b;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f65939b;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        boolean z10 = mode == 1073741824;
        setFillViewport(z10);
        int childCount = this.f65941d.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f65944g = -1;
        } else if (childCount > 2) {
            this.f65944g = (int) (View.MeasureSpec.getSize(widthMeasureSpec) * 0.4f);
        } else {
            this.f65944g = View.MeasureSpec.getSize(widthMeasureSpec) / 2;
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z10 || measuredWidth == measuredWidth2) {
            return;
        }
        setCurrentItem(this.f65945h);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int arg0) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f65943f;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(arg0);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int arg0, float arg1, int arg2) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f65943f;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(arg0, arg1, arg2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int arg0) {
        setCurrentItem(arg0);
        ViewPager.OnPageChangeListener onPageChangeListener = this.f65943f;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(arg0);
        }
    }

    @Override // com.join.mgps.customview.g0
    public void setCurrentItem(int item) {
        ViewPager viewPager = this.f65942e;
        if (viewPager == null) {
            return;
        }
        this.f65945h = item;
        viewPager.setCurrentItem(item);
        int childCount = this.f65941d.getChildCount();
        int i10 = 0;
        while (i10 < childCount) {
            View childAt = this.f65941d.getChildAt(i10);
            boolean z10 = i10 == item;
            e eVar = (e) childAt;
            if (i10 == item) {
                eVar.setTextColor(this.f65948k);
                eVar.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, this.f65949l);
            } else {
                eVar.setTextColor(this.f65947j);
                eVar.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, this.f65950m);
            }
            childAt.setSelected(z10);
            if (z10) {
                f(item);
            }
            i10++;
        }
    }

    public void setNormalBottomDrawableBound(int drawableBound) {
        this.f65950m = drawableBound;
    }

    public void setNormalTextColor(int color) {
        this.f65947j = color;
    }

    @Override // com.join.mgps.customview.g0
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65943f = listener;
    }

    public void setOnTabReselectedListener(d listener) {
        this.f65946i = listener;
    }

    public void setSelectedBottomDrawableBounds(int drawableBound) {
        this.f65949l = drawableBound;
    }

    public void setSelectedTextColor(int color) {
        this.f65948k = color;
    }

    @Override // com.join.mgps.customview.g0
    public void setViewPager(ViewPager view) {
        ViewPager viewPager = this.f65942e;
        if (viewPager == view) {
            return;
        }
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(null);
        }
        if (view.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        this.f65942e = view;
        view.setOnPageChangeListener(this);
        notifyDataSetChanged();
    }

    public TabPageIndicator(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65940c = new a();
        this.f65947j = -9868951;
        this.f65948k = -688602;
        this.f65949l = R.drawable.line_main_color;
        this.f65950m = R.drawable.line_white;
        setHorizontalScrollBarEnabled(false);
        IcsLinearLayout icsLinearLayout = new IcsLinearLayout(context, R.attr.vpiTabPageIndicatorStyle);
        this.f65941d = icsLinearLayout;
        addView(icsLinearLayout, new ViewGroup.LayoutParams(-2, -1));
    }

    @Override // com.join.mgps.customview.g0
    public void setViewPager(ViewPager view, int initialPosition) {
        setViewPager(view);
        setCurrentItem(initialPosition);
    }
}
