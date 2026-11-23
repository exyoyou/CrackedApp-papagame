package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameDetailOneTouchSkill;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SlidingTabLayoutGameDetail extends HorizontalScrollView {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f65821o = 24;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f65822p = 16;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f65823q = 12;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65825c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65826d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f65827e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ViewPager f65828f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SparseArray<String> f65829g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f65830h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final o0 f65831i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65832j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<View> f65833k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<SimpleDraweeView> f65834l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private List<View> f65835m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private List<GameDetailOneTouchSkill> f65836n;

    private class b implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f65837b;

        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
            this.f65837b = state;
            if (SlidingTabLayoutGameDetail.this.f65830h != null) {
                SlidingTabLayoutGameDetail.this.f65830h.onPageScrollStateChanged(state);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            int childCount = SlidingTabLayoutGameDetail.this.f65831i.getChildCount();
            if (childCount == 0 || position < 0 || position >= childCount) {
                return;
            }
            SlidingTabLayoutGameDetail.this.f65831i.b(position, positionOffset);
            View childAt = SlidingTabLayoutGameDetail.this.f65831i.getChildAt(position);
            SlidingTabLayoutGameDetail.this.k(position, childAt != null ? (int) (childAt.getWidth() * positionOffset) : 0);
            if (SlidingTabLayoutGameDetail.this.f65830h != null) {
                SlidingTabLayoutGameDetail.this.f65830h.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (this.f65837b == 0) {
                SlidingTabLayoutGameDetail.this.f65831i.b(position, 0.0f);
                SlidingTabLayoutGameDetail.this.k(position, 0);
            }
            int i10 = 0;
            while (i10 < SlidingTabLayoutGameDetail.this.f65831i.getChildCount()) {
                SlidingTabLayoutGameDetail.this.f65831i.getChildAt(i10).setSelected(position == i10);
                i10++;
            }
            if (SlidingTabLayoutGameDetail.this.f65830h != null) {
                SlidingTabLayoutGameDetail.this.f65830h.onPageSelected(position);
            }
            for (int i11 = 0; i11 < SlidingTabLayoutGameDetail.this.f65833k.size(); i11++) {
                View view = (View) SlidingTabLayoutGameDetail.this.f65835m.get(i11);
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) SlidingTabLayoutGameDetail.this.f65834l.get(i11);
                if (i11 == position) {
                    view.setVisibility(0);
                    RoundingParams roundingParamsP = simpleDraweeView.getHierarchy().p();
                    if (roundingParamsP == null) {
                        roundingParamsP = RoundingParams.a();
                    }
                    roundingParamsP.p(Color.parseColor("#FFB38534"));
                    roundingParamsP.q(SlidingTabLayoutGameDetail.this.getResources().getDimensionPixelOffset(R.dimen.wdp2));
                    simpleDraweeView.getHierarchy().X(roundingParamsP);
                } else {
                    view.setVisibility(4);
                    RoundingParams roundingParamsP2 = simpleDraweeView.getHierarchy().p();
                    if (roundingParamsP2 == null) {
                        roundingParamsP2 = RoundingParams.a();
                    }
                    roundingParamsP2.p(Color.parseColor("#ffffff"));
                    roundingParamsP2.q(0.0f);
                    simpleDraweeView.getHierarchy().X(roundingParamsP2);
                }
            }
        }
    }

    private class c implements View.OnClickListener {
        private c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            for (int i10 = 0; i10 < SlidingTabLayoutGameDetail.this.f65831i.getChildCount(); i10++) {
                if (v10 == SlidingTabLayoutGameDetail.this.f65831i.getChildAt(i10)) {
                    SlidingTabLayoutGameDetail.this.f65828f.setCurrentItem(i10);
                    SlidingTabLayoutGameDetail.this.f65831i.getChildAt(i10).findViewById(R.id.indicator).setVisibility(0);
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) SlidingTabLayoutGameDetail.this.f65831i.getChildAt(i10).findViewById(R.id.image);
                    RoundingParams roundingParamsP = simpleDraweeView.getHierarchy().p();
                    roundingParamsP.p(Color.parseColor("#FFB38534"));
                    roundingParamsP.q(SlidingTabLayoutGameDetail.this.getResources().getDimensionPixelOffset(R.dimen.wdp2));
                    simpleDraweeView.getHierarchy().X(roundingParamsP);
                } else {
                    SlidingTabLayoutGameDetail.this.f65831i.getChildAt(i10).findViewById(R.id.indicator).setVisibility(4);
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) SlidingTabLayoutGameDetail.this.f65831i.getChildAt(i10).findViewById(R.id.image);
                    RoundingParams roundingParamsP2 = simpleDraweeView2.getHierarchy().p();
                    roundingParamsP2.q(0.0f);
                    simpleDraweeView2.getHierarchy().X(roundingParamsP2);
                }
            }
        }
    }

    public SlidingTabLayoutGameDetail(Context context) {
        this(context, null);
    }

    private void j() {
        PagerAdapter adapter = this.f65828f.getAdapter();
        c cVar = new c();
        this.f65833k.clear();
        this.f65835m.clear();
        this.f65834l.clear();
        for (int i10 = 0; i10 < adapter.getCount(); i10++) {
            View viewH = h(getContext());
            View viewFindViewById = viewH.findViewById(R.id.indicator);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewH.findViewById(R.id.image);
            this.f65833k.add(viewH);
            this.f65834l.add(simpleDraweeView);
            this.f65835m.add(viewFindViewById);
            if (this.f65827e) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewH.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
                int i11 = this.f65832j;
                layoutParams.setMargins(i11, 0, i11, 0);
            }
            com.join.android.app.common.utils.l.h(simpleDraweeView, this.f65836n.get(i10).getPic());
            viewH.setOnClickListener(cVar);
            String str = this.f65829g.get(i10, null);
            if (str != null) {
                viewH.setContentDescription(str);
            }
            this.f65831i.addView(viewH);
            simpleDraweeView.getHierarchy().p();
            simpleDraweeView.invalidate();
            if (i10 == this.f65828f.getCurrentItem()) {
                viewH.setSelected(true);
                viewFindViewById.setVisibility(0);
                RoundingParams roundingParamsP = simpleDraweeView.getHierarchy().p();
                roundingParamsP.p(Color.parseColor("#FFB38534"));
                roundingParamsP.q(getResources().getDimensionPixelOffset(R.dimen.wdp2));
                simpleDraweeView.getHierarchy().X(roundingParamsP);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(int tabIndex, int positionOffset) {
        View childAt;
        int childCount = this.f65831i.getChildCount();
        if (childCount == 0 || tabIndex < 0 || tabIndex >= childCount || (childAt = this.f65831i.getChildAt(tabIndex)) == null) {
            return;
        }
        int left = childAt.getLeft() + positionOffset;
        if (tabIndex > 0 || positionOffset > 0) {
            left -= this.f65824b;
        }
        scrollTo(left, 0);
    }

    public List<GameDetailOneTouchSkill> getData() {
        return this.f65836n;
    }

    public int getMarginWidth() {
        return this.f65832j;
    }

    protected View h(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setGravity(1);
        linearLayout.setOrientation(1);
        ImageView imageViewI = i(context);
        imageViewI.setId(R.id.image);
        linearLayout.addView(imageViewI);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageViewI.getLayoutParams();
        layoutParams.gravity = 17;
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp10);
        layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.wdp122);
        layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.wdp122);
        layoutParams.setMargins(dimensionPixelOffset, 0, dimensionPixelOffset, 0);
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(R.drawable.ic_trigon);
        imageView.setId(R.id.indicator);
        linearLayout.addView(imageView);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.wdp22);
        layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.wdp19);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setVisibility(4);
        return linearLayout;
    }

    public ImageView i(Context context) {
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(context);
        simpleDraweeView.getHierarchy().J(R.drawable.main_normal_icon);
        simpleDraweeView.getHierarchy().C(R.drawable.main_normal_icon);
        simpleDraweeView.getHierarchy().X(RoundingParams.a());
        return simpleDraweeView;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.f65828f;
        if (viewPager != null) {
            k(viewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i10, String desc) {
        this.f65829g.put(i10, desc);
    }

    public void setCustomTabColorizer(SlidingTabLayout.d tabColorizer) {
        this.f65831i.d(tabColorizer);
    }

    public void setCustomTabView(int layoutResId, int textViewId) {
        this.f65825c = layoutResId;
        this.f65826d = textViewId;
    }

    public void setData(List<GameDetailOneTouchSkill> data) {
        this.f65836n.clear();
        if (data != null) {
            this.f65836n.addAll(data);
        }
    }

    public void setDistributeEvenly(boolean distributeEvenly) {
        this.f65827e = distributeEvenly;
    }

    public void setMarginWidth(int marginWidth) {
        this.f65832j = marginWidth;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65830h = listener;
    }

    public void setSelectedIndicatorColors(int... colors) {
        this.f65831i.e(colors);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f65831i.removeAllViews();
        this.f65828f = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new b());
            j();
        }
    }

    public SlidingTabLayoutGameDetail(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlidingTabLayoutGameDetail(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65829g = new SparseArray<>();
        this.f65833k = new ArrayList();
        this.f65834l = new ArrayList();
        this.f65835m = new ArrayList();
        this.f65836n = new ArrayList();
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f65824b = (int) (getResources().getDisplayMetrics().density * 24.0f);
        o0 o0Var = new o0(context);
        this.f65831i = o0Var;
        o0Var.e(0);
        addView(o0Var, -1, -2);
    }
}
