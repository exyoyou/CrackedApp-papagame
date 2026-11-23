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
public class SlidingTabMyPaPaLayout extends HorizontalScrollView {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f65888l = 24;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f65889m = 16;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f65890n = 12;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65892c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65893d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f65894e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f65895f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ViewPager f65896g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SparseArray<String> f65897h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f65898i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final o0 f65899j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<TextView> f65900k;

    private class b implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f65901b;

        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
            this.f65901b = state;
            if (SlidingTabMyPaPaLayout.this.f65898i != null) {
                SlidingTabMyPaPaLayout.this.f65898i.onPageScrollStateChanged(state);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            int childCount = SlidingTabMyPaPaLayout.this.f65899j.getChildCount();
            if (childCount == 0 || position < 0 || position >= childCount) {
                return;
            }
            SlidingTabMyPaPaLayout.this.f65899j.b(position, positionOffset);
            View childAt = SlidingTabMyPaPaLayout.this.f65899j.getChildAt(position);
            SlidingTabMyPaPaLayout.this.h(position, childAt != null ? (int) (childAt.getWidth() * positionOffset) : 0);
            if (SlidingTabMyPaPaLayout.this.f65898i != null) {
                SlidingTabMyPaPaLayout.this.f65898i.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (this.f65901b == 0) {
                SlidingTabMyPaPaLayout.this.f65899j.b(position, 0.0f);
                SlidingTabMyPaPaLayout.this.h(position, 0);
            }
            int i10 = 0;
            while (i10 < SlidingTabMyPaPaLayout.this.f65899j.getChildCount()) {
                SlidingTabMyPaPaLayout.this.f65899j.getChildAt(i10).setSelected(position == i10);
                i10++;
            }
            if (SlidingTabMyPaPaLayout.this.f65898i != null) {
                SlidingTabMyPaPaLayout.this.f65898i.onPageSelected(position);
            }
            for (int i11 = 0; i11 < SlidingTabMyPaPaLayout.this.f65900k.size(); i11++) {
                TextView textView = (TextView) SlidingTabMyPaPaLayout.this.f65900k.get(i11);
                if (i11 == position) {
                    textView.setTextColor(SlidingTabMyPaPaLayout.this.getResources().getColor(R.color.main_yello_color));
                } else {
                    textView.setTextColor(SlidingTabMyPaPaLayout.this.getResources().getColor(R.color.grid_text));
                }
            }
        }
    }

    private class c implements View.OnClickListener {
        private c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            for (int i10 = 0; i10 < SlidingTabMyPaPaLayout.this.f65899j.getChildCount(); i10++) {
                if (v10 == SlidingTabMyPaPaLayout.this.f65899j.getChildAt(i10)) {
                    SlidingTabMyPaPaLayout.this.f65896g.setCurrentItem(i10);
                    return;
                }
            }
        }
    }

    public interface d extends SlidingTabLayout.d {
        @Override // com.join.mgps.customview.SlidingTabLayout.d
        int a(int position);
    }

    public SlidingTabMyPaPaLayout(Context context) {
        this(context, null);
    }

    private void g() {
        View viewF;
        TextView textView;
        PagerAdapter adapter = this.f65896g.getAdapter();
        c cVar = new c();
        for (int i10 = 0; i10 < adapter.getCount(); i10++) {
            if (this.f65892c != 0) {
                viewF = LayoutInflater.from(getContext()).inflate(this.f65892c, (ViewGroup) this.f65899j, false);
                textView = (TextView) viewF.findViewById(this.f65893d);
                this.f65900k.add(textView);
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
            if (this.f65894e) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewF.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
                int i11 = this.f65895f;
                layoutParams.setMargins(i11, 0, i11, 0);
            }
            textView.setText(adapter.getPageTitle(i10));
            viewF.setOnClickListener(cVar);
            String str = this.f65897h.get(i10, null);
            if (str != null) {
                viewF.setContentDescription(str);
            }
            this.f65899j.addView(viewF);
            if (i10 == this.f65896g.getCurrentItem()) {
                viewF.setSelected(true);
                textView.setTextColor(getResources().getColor(R.color.classify_title_color));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int tabIndex, int positionOffset) {
        View childAt;
        int childCount = this.f65899j.getChildCount();
        if (childCount == 0 || tabIndex < 0 || tabIndex >= childCount || (childAt = this.f65899j.getChildAt(tabIndex)) == null) {
            return;
        }
        int left = childAt.getLeft() + positionOffset;
        if (tabIndex > 0 || positionOffset > 0) {
            left -= this.f65891b;
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
        return this.f65895f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.f65896g;
        if (viewPager != null) {
            h(viewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i10, String desc) {
        this.f65897h.put(i10, desc);
    }

    public void setCustomTabColorizer(d tabColorizer) {
        this.f65899j.d(tabColorizer);
    }

    public void setCustomTabView(int layoutResId, int textViewId) {
        this.f65892c = layoutResId;
        this.f65893d = textViewId;
    }

    public void setDistributeEvenly(boolean distributeEvenly) {
        this.f65894e = distributeEvenly;
    }

    public void setMarginWidth(int marginWidth) {
        this.f65895f = marginWidth;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65898i = listener;
    }

    public void setSelectedIndicatorColors(int... colors) {
        this.f65899j.e(colors);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f65899j.removeAllViews();
        this.f65896g = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new b());
            g();
        }
    }

    public SlidingTabMyPaPaLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlidingTabMyPaPaLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65897h = new SparseArray<>();
        this.f65900k = new ArrayList();
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f65891b = (int) (getResources().getDisplayMetrics().density * 24.0f);
        o0 o0Var = new o0(context);
        this.f65899j = o0Var;
        addView(o0Var, -1, -2);
    }
}
