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
public class SlidingTabLayout2 extends HorizontalScrollView {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f65739l = 24;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f65740m = 16;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f65741n = 12;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65744d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f65745e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ViewPager f65746f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SparseArray<String> f65747g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f65748h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final p0 f65749i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65750j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<TextView> f65751k;

    private class b implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f65752b;

        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
            this.f65752b = state;
            if (SlidingTabLayout2.this.f65748h != null) {
                SlidingTabLayout2.this.f65748h.onPageScrollStateChanged(state);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            int childCount = SlidingTabLayout2.this.f65749i.getChildCount();
            if (childCount == 0 || position < 0 || position >= childCount) {
                return;
            }
            SlidingTabLayout2.this.f65749i.c(position, positionOffset);
            View childAt = SlidingTabLayout2.this.f65749i.getChildAt(position);
            SlidingTabLayout2.this.h(position, childAt != null ? (int) (childAt.getWidth() * positionOffset) : 0);
            if (SlidingTabLayout2.this.f65748h != null) {
                SlidingTabLayout2.this.f65748h.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (this.f65752b == 0) {
                SlidingTabLayout2.this.f65749i.c(position, 0.0f);
                SlidingTabLayout2.this.h(position, 0);
            }
            int i10 = 0;
            while (i10 < SlidingTabLayout2.this.f65749i.getChildCount()) {
                SlidingTabLayout2.this.f65749i.getChildAt(i10).setSelected(position == i10);
                i10++;
            }
            if (SlidingTabLayout2.this.f65748h != null) {
                SlidingTabLayout2.this.f65748h.onPageSelected(position);
            }
            for (int i11 = 0; i11 < SlidingTabLayout2.this.f65751k.size(); i11++) {
                TextView textView = (TextView) SlidingTabLayout2.this.f65751k.get(i11);
                if (i11 == position) {
                    textView.setTextColor(SlidingTabLayout2.this.getResources().getColor(R.color.main_yello_color));
                } else {
                    textView.setTextColor(-10395295);
                }
            }
        }
    }

    private class c implements View.OnClickListener {
        private c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            for (int i10 = 0; i10 < SlidingTabLayout2.this.f65749i.getChildCount(); i10++) {
                if (v10 == SlidingTabLayout2.this.f65749i.getChildAt(i10)) {
                    SlidingTabLayout2.this.f65746f.setCurrentItem(i10);
                    ((TextView) SlidingTabLayout2.this.f65749i.getChildAt(i10)).setTextColor(SlidingTabLayout2.this.getResources().getColor(R.color.main_yello_color));
                } else {
                    ((TextView) SlidingTabLayout2.this.f65749i.getChildAt(i10)).setTextColor(-10395295);
                }
            }
        }
    }

    public interface d {
        int a(int position);
    }

    public SlidingTabLayout2(Context context) {
        this(context, null);
    }

    private void g() {
        View viewF;
        TextView textView;
        PagerAdapter adapter = this.f65746f.getAdapter();
        c cVar = new c();
        this.f65751k.clear();
        for (int i10 = 0; i10 < adapter.getCount(); i10++) {
            if (this.f65743c != 0) {
                viewF = LayoutInflater.from(getContext()).inflate(this.f65743c, (ViewGroup) this.f65749i, false);
                textView = (TextView) viewF.findViewById(this.f65744d);
                this.f65751k.add(textView);
            } else {
                viewF = null;
                textView = null;
            }
            if (viewF == null) {
                viewF = f(getContext());
            }
            if (textView == null && TextView.class.isInstance(viewF)) {
                textView = (TextView) viewF;
            }
            if (this.f65745e) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewF.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
                int i11 = this.f65750j;
                layoutParams.setMargins(i11, 0, i11, 0);
            }
            textView.setText(adapter.getPageTitle(i10));
            viewF.setOnClickListener(cVar);
            String str = this.f65747g.get(i10, null);
            if (str != null) {
                viewF.setContentDescription(str);
            }
            this.f65749i.addView(viewF);
            if (i10 == this.f65746f.getCurrentItem()) {
                viewF.setSelected(true);
                textView.setTextColor(getResources().getColor(R.color.classify_title_color));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int tabIndex, int positionOffset) {
        View childAt;
        int childCount = this.f65749i.getChildCount();
        if (childCount == 0 || tabIndex < 0 || tabIndex >= childCount || (childAt = this.f65749i.getChildAt(tabIndex)) == null) {
            return;
        }
        int left = childAt.getLeft() + positionOffset;
        if (tabIndex > 0 || positionOffset > 0) {
            left -= this.f65742b;
        }
        scrollTo(left, 0);
    }

    protected TextView f(Context context) {
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
        return textView;
    }

    public int getMarginWidth() {
        return this.f65750j;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.f65746f;
        if (viewPager != null) {
            h(viewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i10, String desc) {
        this.f65747g.put(i10, desc);
    }

    public void setCustomTabColorizer(d tabColorizer) {
        this.f65749i.e(tabColorizer);
    }

    public void setCustomTabView(int layoutResId, int textViewId) {
        this.f65743c = layoutResId;
        this.f65744d = textViewId;
    }

    public void setDistributeEvenly(boolean distributeEvenly) {
        this.f65745e = distributeEvenly;
    }

    public void setMarginWidth(int marginWidth) {
        this.f65750j = marginWidth;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65748h = listener;
    }

    public void setSelectedIndicatorColors(int... colors) {
        this.f65749i.f(colors);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f65749i.removeAllViews();
        this.f65746f = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new b());
            g();
        }
    }

    public SlidingTabLayout2(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlidingTabLayout2(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65747g = new SparseArray<>();
        this.f65751k = new ArrayList();
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f65742b = (int) (getResources().getDisplayMetrics().density * 24.0f);
        p0 p0Var = new p0(context);
        this.f65749i = p0Var;
        addView(p0Var, -1, -2);
    }
}
