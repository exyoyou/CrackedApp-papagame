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
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SlidingTabDetailLayout extends HorizontalScrollView {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f65669o = 24;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f65670p = 16;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f65671q = 12;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65673c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65674d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65675e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f65676f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ViewPager f65677g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SparseArray<String> f65678h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f65679i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final o0 f65680j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<TextView> f65681k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<TextView> f65682l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    LinearLayout.LayoutParams f65683m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    LinearLayout.LayoutParams f65684n;

    private class b implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f65685b;

        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
            this.f65685b = state;
            if (SlidingTabDetailLayout.this.f65679i != null) {
                SlidingTabDetailLayout.this.f65679i.onPageScrollStateChanged(state);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            View childAt;
            int childCount = SlidingTabDetailLayout.this.f65680j.getChildCount();
            if (childCount == 0 || position < 0 || position >= childCount) {
                return;
            }
            SlidingTabDetailLayout.this.f65680j.b(position, positionOffset);
            View childAt2 = SlidingTabDetailLayout.this.f65680j.getChildAt(position);
            SlidingTabDetailLayout.this.i(position, childAt2 != null ? (int) (childAt2.getWidth() * positionOffset) : 0);
            if (SlidingTabDetailLayout.this.f65679i != null) {
                SlidingTabDetailLayout.this.f65679i.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }
            if (position != 1 || (childAt = SlidingTabDetailLayout.this.f65677g.getChildAt(position + 1)) == null) {
                return;
            }
            TextView textView = (TextView) childAt.findViewById(R.id.textGoto);
            ImageView imageView = (ImageView) childAt.findViewById(R.id.imageGoto);
            double d10 = positionOffset;
            if (d10 < 0.3d) {
                imageView.setRotation(positionOffset * 60.0f);
                textView.setText("滑\n动\n进\n入\n专\n区\n讨\n论");
                return;
            }
            textView.setText("释\n放\n进\n入\n专\n区\n讨\n论");
            imageView.setRotation(180.0f);
            if (d10 == 0.45d) {
                ForumBean forumBean = new ForumBean();
                forumBean.setFid(2);
                SlidingTabDetailLayout.this.f65677g.setCurrentItem(1);
                com.join.mgps.Util.s0.I1(SlidingTabDetailLayout.this.getContext());
                com.join.mgps.Util.r0.r0(SlidingTabDetailLayout.this.getContext(), forumBean);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (position == 2) {
                ForumBean forumBean = new ForumBean();
                forumBean.setFid(2);
                SlidingTabDetailLayout.this.f65677g.setCurrentItem(1);
                com.join.mgps.Util.s0.I1(SlidingTabDetailLayout.this.getContext());
                com.join.mgps.Util.r0.r0(SlidingTabDetailLayout.this.getContext(), forumBean);
            }
            if (this.f65685b == 0) {
                SlidingTabDetailLayout.this.f65680j.b(position, 0.0f);
                SlidingTabDetailLayout.this.i(position, 0);
            }
            int i10 = 0;
            while (i10 < SlidingTabDetailLayout.this.f65680j.getChildCount()) {
                SlidingTabDetailLayout.this.f65680j.getChildAt(i10).setSelected(position == i10);
                i10++;
            }
            if (SlidingTabDetailLayout.this.f65679i != null) {
                SlidingTabDetailLayout.this.f65679i.onPageSelected(position);
            }
            for (int i11 = 0; i11 < SlidingTabDetailLayout.this.f65681k.size(); i11++) {
                TextView textView = (TextView) SlidingTabDetailLayout.this.f65682l.get(i11);
                TextView textView2 = (TextView) SlidingTabDetailLayout.this.f65681k.get(i11);
                if (position != 2) {
                    if (i11 == position) {
                        textView2.setBackgroundColor(0);
                        textView2.setTextColor(SlidingTabDetailLayout.this.getResources().getColor(R.color.classify_title_color));
                        textView.setBackgroundColor(SlidingTabDetailLayout.this.getResources().getColor(R.color.classify_title_color));
                    } else {
                        textView2.setBackgroundColor(0);
                        textView2.setTextColor(SlidingTabDetailLayout.this.getResources().getColor(R.color.slide_title_color));
                        textView.setBackgroundColor(0);
                    }
                }
            }
        }
    }

    private class c implements View.OnClickListener {
        private c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            for (int i10 = 0; i10 < SlidingTabDetailLayout.this.f65680j.getChildCount(); i10++) {
                if (v10 == SlidingTabDetailLayout.this.f65680j.getChildAt(i10)) {
                    SlidingTabDetailLayout.this.f65677g.setCurrentItem(i10);
                    return;
                }
            }
        }
    }

    public interface d {
        int a(int position);
    }

    public SlidingTabDetailLayout(Context context) {
        this(context, null);
    }

    private void h() {
        View viewG;
        TextView textView;
        TextView textView2;
        PagerAdapter adapter = this.f65677g.getAdapter();
        c cVar = new c();
        for (int i10 = 0; i10 < adapter.getCount(); i10++) {
            if (this.f65673c != 0) {
                viewG = LayoutInflater.from(getContext()).inflate(this.f65673c, (ViewGroup) this.f65680j, false);
                textView = (TextView) viewG.findViewById(this.f65674d);
                textView2 = (TextView) viewG.findViewById(this.f65675e);
                this.f65681k.add(textView);
                this.f65682l.add(textView2);
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
            if (this.f65676f) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewG.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            }
            textView.setText(adapter.getPageTitle(i10));
            textView.setTextColor(getResources().getColor(R.color.slide_title_color));
            textView2.setBackgroundColor(0);
            viewG.setOnClickListener(cVar);
            String str = this.f65678h.get(i10, null);
            if (str != null) {
                viewG.setContentDescription(str);
            }
            this.f65680j.addView(viewG);
            if (i10 == this.f65677g.getCurrentItem()) {
                viewG.setSelected(true);
                viewG.setBackgroundColor(0);
                textView.setTextColor(getResources().getColor(R.color.classify_title_color));
                textView2.setBackgroundColor(getResources().getColor(R.color.classify_title_color));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(int tabIndex, int positionOffset) {
        View childAt;
        int childCount = this.f65680j.getChildCount();
        if (childCount == 0 || tabIndex < 0 || tabIndex >= childCount || (childAt = this.f65680j.getChildAt(tabIndex)) == null) {
            return;
        }
        int left = childAt.getLeft() + positionOffset;
        if (tabIndex > 0 || positionOffset > 0) {
            left -= this.f65672b;
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
        linearLayout.addView(textView, this.f65683m);
        linearLayout.addView(new TextView(context), this.f65684n);
        return linearLayout;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.f65677g;
        if (viewPager != null) {
            i(viewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i10, String desc) {
        this.f65678h.put(i10, desc);
    }

    public void setCustomTabColorizer(d tabColorizer) {
        this.f65680j.d((SlidingTabLayout.d) tabColorizer);
    }

    public void setCustomTabView(int layoutResId, int textViewId, int textViewLineId) {
        this.f65673c = layoutResId;
        this.f65674d = textViewId;
        this.f65675e = textViewLineId;
    }

    public void setDistributeEvenly(boolean distributeEvenly) {
        this.f65676f = distributeEvenly;
    }

    public void setOnPageChangeListener() {
    }

    public void setSelectedIndicatorColors(int... colors) {
        this.f65680j.e(colors);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f65680j.removeAllViews();
        this.f65677g = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new b());
            h();
        }
    }

    public SlidingTabDetailLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65679i = listener;
    }

    public SlidingTabDetailLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65678h = new SparseArray<>();
        this.f65681k = new ArrayList();
        this.f65682l = new ArrayList();
        this.f65683m = new LinearLayout.LayoutParams(-1, -2);
        this.f65684n = new LinearLayout.LayoutParams(-1, 10);
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f65672b = (int) (getResources().getDisplayMetrics().density * 24.0f);
        o0 o0Var = new o0(context);
        this.f65680j = o0Var;
        addView(o0Var, -1, -2);
    }
}
