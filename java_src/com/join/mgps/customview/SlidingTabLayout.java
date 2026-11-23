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
public class SlidingTabLayout extends HorizontalScrollView {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f65693l = 24;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f65694m = 16;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f65695n = 12;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f65699e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ViewPager f65700f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SparseArray<String> f65701g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f65702h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final o0 f65703i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65704j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<TextView> f65705k;

    private class b implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f65706b;

        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
            this.f65706b = state;
            if (SlidingTabLayout.this.f65702h != null) {
                SlidingTabLayout.this.f65702h.onPageScrollStateChanged(state);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            int childCount = SlidingTabLayout.this.f65703i.getChildCount();
            if (childCount == 0 || position < 0 || position >= childCount) {
                return;
            }
            SlidingTabLayout.this.f65703i.b(position, positionOffset);
            View childAt = SlidingTabLayout.this.f65703i.getChildAt(position);
            SlidingTabLayout.this.h(position, childAt != null ? (int) (childAt.getWidth() * positionOffset) : 0);
            if (SlidingTabLayout.this.f65702h != null) {
                SlidingTabLayout.this.f65702h.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (this.f65706b == 0) {
                SlidingTabLayout.this.f65703i.b(position, 0.0f);
                SlidingTabLayout.this.h(position, 0);
            }
            int i10 = 0;
            while (i10 < SlidingTabLayout.this.f65703i.getChildCount()) {
                SlidingTabLayout.this.f65703i.getChildAt(i10).setSelected(position == i10);
                i10++;
            }
            if (SlidingTabLayout.this.f65702h != null) {
                SlidingTabLayout.this.f65702h.onPageSelected(position);
            }
            for (int i11 = 0; i11 < SlidingTabLayout.this.f65705k.size(); i11++) {
                TextView textView = (TextView) SlidingTabLayout.this.f65705k.get(i11);
                if (i11 == position) {
                    textView.setTextColor(SlidingTabLayout.this.getResources().getColor(R.color.main_yello_color));
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
            for (int i10 = 0; i10 < SlidingTabLayout.this.f65703i.getChildCount(); i10++) {
                if (v10 == SlidingTabLayout.this.f65703i.getChildAt(i10)) {
                    SlidingTabLayout.this.f65700f.setCurrentItem(i10);
                    ((TextView) SlidingTabLayout.this.f65703i.getChildAt(i10)).setTextColor(SlidingTabLayout.this.getResources().getColor(R.color.main_yello_color));
                } else {
                    ((TextView) SlidingTabLayout.this.f65703i.getChildAt(i10)).setTextColor(-10395295);
                }
            }
        }
    }

    public interface d {
        int a(int position);
    }

    public SlidingTabLayout(Context context) {
        this(context, null);
    }

    private void g() {
        View viewF;
        TextView textView;
        PagerAdapter adapter = this.f65700f.getAdapter();
        c cVar = new c();
        this.f65705k.clear();
        for (int i10 = 0; i10 < adapter.getCount(); i10++) {
            if (this.f65697c != 0) {
                viewF = LayoutInflater.from(getContext()).inflate(this.f65697c, (ViewGroup) this.f65703i, false);
                textView = (TextView) viewF.findViewById(this.f65698d);
                this.f65705k.add(textView);
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
            if (this.f65699e) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewF.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
                int i11 = this.f65704j;
                layoutParams.setMargins(i11, 0, i11, 0);
            }
            textView.setText(adapter.getPageTitle(i10));
            viewF.setOnClickListener(cVar);
            String str = this.f65701g.get(i10, null);
            if (str != null) {
                viewF.setContentDescription(str);
            }
            this.f65703i.addView(viewF);
            if (i10 == this.f65700f.getCurrentItem()) {
                viewF.setSelected(true);
                textView.setTextColor(getResources().getColor(R.color.classify_title_color));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int tabIndex, int positionOffset) {
        View childAt;
        int childCount = this.f65703i.getChildCount();
        if (childCount == 0 || tabIndex < 0 || tabIndex >= childCount || (childAt = this.f65703i.getChildAt(tabIndex)) == null) {
            return;
        }
        int left = childAt.getLeft() + positionOffset;
        if (tabIndex > 0 || positionOffset > 0) {
            left -= this.f65696b;
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
        return this.f65704j;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.f65700f;
        if (viewPager != null) {
            h(viewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i10, String desc) {
        this.f65701g.put(i10, desc);
    }

    public void setCustomTabColorizer(d tabColorizer) {
        this.f65703i.d(tabColorizer);
    }

    public void setCustomTabView(int layoutResId, int textViewId) {
        this.f65697c = layoutResId;
        this.f65698d = textViewId;
    }

    public void setDistributeEvenly(boolean distributeEvenly) {
        this.f65699e = distributeEvenly;
    }

    public void setMarginWidth(int marginWidth) {
        this.f65704j = marginWidth;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65702h = listener;
    }

    public void setSelectedIndicatorColors(int... colors) {
        this.f65703i.e(colors);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f65703i.removeAllViews();
        this.f65700f = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new b());
            g();
        }
    }

    public SlidingTabLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65701g = new SparseArray<>();
        this.f65705k = new ArrayList();
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f65696b = (int) (getResources().getDisplayMetrics().density * 24.0f);
        o0 o0Var = new o0(context);
        this.f65703i = o0Var;
        addView(o0Var, -1, -2);
    }
}
