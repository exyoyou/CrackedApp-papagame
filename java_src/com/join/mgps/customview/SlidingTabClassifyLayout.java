package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SlidingTabClassifyLayout extends HorizontalScrollView {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f65650o = 24;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f65651p = 16;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f65652q = 12;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65654c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65655d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65656e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f65657f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ViewPager f65658g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SparseArray<String> f65659h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f65660i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final o0 f65661j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<TextView> f65662k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<TextView> f65663l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    LinearLayout.LayoutParams f65664m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    LinearLayout.LayoutParams f65665n;

    private class b implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f65666b;

        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
            this.f65666b = state;
            if (SlidingTabClassifyLayout.this.f65660i != null) {
                SlidingTabClassifyLayout.this.f65660i.onPageScrollStateChanged(state);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            int childCount = SlidingTabClassifyLayout.this.f65661j.getChildCount();
            if (childCount == 0 || position < 0 || position >= childCount) {
                return;
            }
            SlidingTabClassifyLayout.this.f65661j.b(position, positionOffset);
            View childAt = SlidingTabClassifyLayout.this.f65661j.getChildAt(position);
            SlidingTabClassifyLayout.this.i(position, childAt != null ? (int) (childAt.getWidth() * positionOffset) : 0);
            if (SlidingTabClassifyLayout.this.f65660i != null) {
                SlidingTabClassifyLayout.this.f65660i.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (this.f65666b == 0) {
                SlidingTabClassifyLayout.this.f65661j.b(position, 0.0f);
                SlidingTabClassifyLayout.this.i(position, 0);
            }
            int i10 = 0;
            while (i10 < SlidingTabClassifyLayout.this.f65661j.getChildCount()) {
                SlidingTabClassifyLayout.this.f65661j.getChildAt(i10).setSelected(position == i10);
                i10++;
            }
            if (SlidingTabClassifyLayout.this.f65660i != null) {
                SlidingTabClassifyLayout.this.f65660i.onPageSelected(position);
            }
            for (int i11 = 0; i11 < SlidingTabClassifyLayout.this.f65662k.size(); i11++) {
                TextView textView = (TextView) SlidingTabClassifyLayout.this.f65663l.get(i11);
                TextView textView2 = (TextView) SlidingTabClassifyLayout.this.f65662k.get(i11);
                if (i11 == position) {
                    textView2.setBackgroundColor(-1);
                    textView2.setTextColor(SlidingTabClassifyLayout.this.getResources().getColor(R.color.classify_title_color));
                    textView.setBackgroundColor(-1);
                } else {
                    textView2.setBackgroundColor(-1);
                    textView2.setTextColor(SlidingTabClassifyLayout.this.getResources().getColor(R.color.classify_plat_color));
                    textView.setBackgroundColor(-1);
                }
            }
        }
    }

    private class c implements View.OnClickListener {
        private c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            for (int i10 = 0; i10 < SlidingTabClassifyLayout.this.f65661j.getChildCount(); i10++) {
                if (v10 == SlidingTabClassifyLayout.this.f65661j.getChildAt(i10)) {
                    SlidingTabClassifyLayout.this.f65658g.setCurrentItem(i10);
                    return;
                }
            }
        }
    }

    public interface d {
        int a(int position);
    }

    public SlidingTabClassifyLayout(Context context) {
        this(context, null);
    }

    private void h() {
        View viewG;
        TextView textView;
        TextView textView2;
        PagerAdapter adapter = this.f65658g.getAdapter();
        c cVar = new c();
        for (int i10 = 0; i10 < adapter.getCount(); i10++) {
            if (this.f65654c != 0) {
                viewG = LayoutInflater.from(getContext()).inflate(this.f65654c, (ViewGroup) this.f65661j, false);
                textView = (TextView) viewG.findViewById(this.f65655d);
                textView2 = (TextView) viewG.findViewById(this.f65656e);
                this.f65662k.add(textView);
                this.f65663l.add(textView2);
            } else {
                viewG = null;
                textView = null;
                textView2 = null;
            }
            if (viewG == null) {
                viewG = g(getContext());
            }
            if (textView == null && TextView.class.isInstance(viewG)) {
                textView = (TextView) viewG;
            }
            if (this.f65657f) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewG.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            }
            textView.setText(adapter.getPageTitle(i10));
            textView.setTextColor(getResources().getColor(R.color.classify_plat_color));
            textView2.setBackgroundColor(-1);
            viewG.setOnClickListener(cVar);
            String str = this.f65659h.get(i10, null);
            if (str != null) {
                viewG.setContentDescription(str);
            }
            this.f65661j.addView(viewG);
            if (i10 == this.f65658g.getCurrentItem()) {
                viewG.setSelected(true);
                viewG.setBackgroundColor(-1);
                textView.setTextColor(getResources().getColor(R.color.classify_title_color));
                textView2.setBackgroundColor(-1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(int tabIndex, int positionOffset) {
        View childAt;
        int childCount = this.f65661j.getChildCount();
        if (childCount == 0 || tabIndex < 0 || tabIndex >= childCount || (childAt = this.f65661j.getChildAt(tabIndex)) == null) {
            return;
        }
        int left = childAt.getLeft() + positionOffset;
        if (tabIndex > 0 || positionOffset > 0) {
            left -= this.f65653b;
        }
        scrollTo(left, 0);
    }

    protected LinearLayout g(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setTextSize(2, 12.0f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(android.R.attr.selectableItemBackground, typedValue, true);
        textView.setBackgroundResource(typedValue.resourceId);
        int i10 = (int) (getResources().getDisplayMetrics().density * 16.0f);
        textView.setPadding(i10, i10, i10, i10);
        linearLayout.addView(textView, this.f65664m);
        linearLayout.addView(new TextView(context), this.f65665n);
        return linearLayout;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.f65658g;
        if (viewPager != null) {
            i(viewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i10, String desc) {
        this.f65659h.put(i10, desc);
    }

    public void setCustomTabColorizer(d tabColorizer) {
        this.f65661j.d((SlidingTabLayout.d) tabColorizer);
    }

    public void setCustomTabView(int layoutResId, int textViewId, int textViewLineId) {
        this.f65654c = layoutResId;
        this.f65655d = textViewId;
        this.f65656e = textViewLineId;
    }

    public void setDistributeEvenly(boolean distributeEvenly) {
        this.f65657f = distributeEvenly;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65660i = listener;
    }

    public void setSelectedIndicatorColors(int... colors) {
        this.f65661j.e(colors);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f65661j.removeAllViews();
        this.f65658g = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new b());
            h();
        }
    }

    public SlidingTabClassifyLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlidingTabClassifyLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65659h = new SparseArray<>();
        this.f65662k = new ArrayList();
        this.f65663l = new ArrayList();
        this.f65664m = new LinearLayout.LayoutParams(-1, -2);
        this.f65665n = new LinearLayout.LayoutParams(-1, 10);
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f65653b = (int) (getResources().getDisplayMetrics().density * 24.0f);
        o0 o0Var = new o0(context);
        this.f65661j = o0Var;
        addView(o0Var, -1, -2);
    }
}
