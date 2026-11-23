package com.join.mgps.customview;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SlidingTabLayoutGameDetailImage extends HorizontalScrollView {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f65840n = 24;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f65841o = 16;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f65842p = 12;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65843b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65844c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65845d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f65846e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ViewPager f65847f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SparseArray<String> f65848g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f65849h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final o0 f65850i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65851j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<View> f65852k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<View> f65853l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private GamedetialModleFourBean f65854m;

    private class b implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f65855b;

        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
            this.f65855b = state;
            if (SlidingTabLayoutGameDetailImage.this.f65849h != null) {
                SlidingTabLayoutGameDetailImage.this.f65849h.onPageScrollStateChanged(state);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            int childCount = SlidingTabLayoutGameDetailImage.this.f65850i.getChildCount();
            if (childCount == 0 || position < 0 || position >= childCount) {
                return;
            }
            SlidingTabLayoutGameDetailImage.this.f65850i.b(position, positionOffset);
            View childAt = SlidingTabLayoutGameDetailImage.this.f65850i.getChildAt(position);
            SlidingTabLayoutGameDetailImage.this.l(position, childAt != null ? (int) (childAt.getWidth() * positionOffset) : 0);
            if (SlidingTabLayoutGameDetailImage.this.f65849h != null) {
                SlidingTabLayoutGameDetailImage.this.f65849h.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (this.f65855b == 0) {
                SlidingTabLayoutGameDetailImage.this.f65850i.b(position, 0.0f);
                SlidingTabLayoutGameDetailImage.this.l(position, 0);
            }
            int i10 = 0;
            while (i10 < SlidingTabLayoutGameDetailImage.this.f65850i.getChildCount()) {
                SlidingTabLayoutGameDetailImage.this.f65850i.getChildAt(i10).setSelected(position == i10);
                i10++;
            }
            if (SlidingTabLayoutGameDetailImage.this.f65849h != null) {
                SlidingTabLayoutGameDetailImage.this.f65849h.onPageSelected(position);
            }
            for (int i11 = 0; i11 < SlidingTabLayoutGameDetailImage.this.f65852k.size(); i11++) {
                View view = (View) SlidingTabLayoutGameDetailImage.this.f65853l.get(i11);
                if (i11 == position) {
                    view.setVisibility(0);
                } else {
                    view.setVisibility(4);
                }
            }
        }
    }

    private class c implements View.OnClickListener {
        private c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            for (int i10 = 0; i10 < SlidingTabLayoutGameDetailImage.this.f65850i.getChildCount(); i10++) {
                if (v10 == SlidingTabLayoutGameDetailImage.this.f65850i.getChildAt(i10)) {
                    SlidingTabLayoutGameDetailImage.this.f65847f.setCurrentItem(i10);
                    SlidingTabLayoutGameDetailImage.this.f65850i.getChildAt(i10).findViewById(R.id.indicator).setVisibility(0);
                } else {
                    SlidingTabLayoutGameDetailImage.this.f65850i.getChildAt(i10).findViewById(R.id.indicator).setVisibility(4);
                }
            }
        }
    }

    public SlidingTabLayoutGameDetailImage(Context context) {
        this(context, null);
    }

    private void k() {
        String path;
        String str;
        PagerAdapter adapter = this.f65847f.getAdapter();
        c cVar = new c();
        this.f65852k.clear();
        this.f65853l.clear();
        for (int i10 = 0; i10 < adapter.getCount(); i10++) {
            View viewG = g(getContext());
            View viewFindViewById = viewG.findViewById(R.id.indicator);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewG.findViewById(R.id.image);
            TextView textView = (TextView) viewG.findViewById(R.id.name);
            View viewFindViewById2 = viewG.findViewById(R.id.play);
            this.f65852k.add(viewG);
            this.f65853l.add(viewFindViewById);
            if (this.f65846e) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewG.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
                int i11 = this.f65851j;
                layoutParams.setMargins(i11, 0, i11, 0);
            }
            String pic = "";
            if (j()) {
                if (i10 == 0) {
                    String game_info_top_pic = this.f65854m.getGame_info_top_pic();
                    viewFindViewById2.setVisibility(0);
                    textView.setVisibility(8);
                    str = "";
                    pic = game_info_top_pic;
                } else if (i()) {
                    ScreenshotGamedetialBean screenshotGamedetialBean = this.f65854m.getGame_screen_shot().get(i10 - 1);
                    pic = screenshotGamedetialBean.getPic();
                    str = screenshotGamedetialBean.getTitle() + "\n[ " + screenshotGamedetialBean.getCount() + " ]";
                } else {
                    if (this.f65854m.getPic_info() != null) {
                        int i12 = i10 - 1;
                        if (this.f65854m.getPic_info().get(i12) != null && this.f65854m.getPic_info().get(i12).getRemote() != null) {
                            path = this.f65854m.getPic_info().get(i12).getRemote().getPath();
                            pic = path;
                            str = "";
                        }
                    }
                    str = "";
                }
            } else if (i()) {
                ScreenshotGamedetialBean screenshotGamedetialBean2 = this.f65854m.getGame_screen_shot().get(i10);
                pic = screenshotGamedetialBean2.getPic();
                str = screenshotGamedetialBean2.getTitle() + "\n[ " + screenshotGamedetialBean2.getCount() + " ]";
            } else if (this.f65854m.getPic_info() == null || this.f65854m.getPic_info().get(i10) == null || this.f65854m.getPic_info().get(i10).getRemote() == null) {
                str = "";
            } else {
                path = this.f65854m.getPic_info().get(i10).getRemote().getPath();
                pic = path;
                str = "";
            }
            com.join.android.app.common.utils.l.h(simpleDraweeView, pic);
            textView.setText(str);
            viewG.setOnClickListener(cVar);
            String str2 = this.f65848g.get(i10, null);
            if (str2 != null) {
                viewG.setContentDescription(str2);
            }
            this.f65850i.addView(viewG);
            if (i10 == this.f65847f.getCurrentItem()) {
                viewG.setSelected(true);
                viewFindViewById.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int tabIndex, int positionOffset) {
        View childAt;
        int childCount = this.f65850i.getChildCount();
        if (childCount == 0 || tabIndex < 0 || tabIndex >= childCount || (childAt = this.f65850i.getChildAt(tabIndex)) == null) {
            return;
        }
        int left = childAt.getLeft() + positionOffset;
        if (tabIndex > 0 || positionOffset > 0) {
            left -= this.f65843b;
        }
        scrollTo(left, 0);
    }

    protected View g(Context context) {
        return LayoutInflater.from(context).inflate(R.layout.sliding_tab_item_game_detail_image, (ViewGroup) this, false);
    }

    public int getMarginWidth() {
        return this.f65851j;
    }

    public ImageView h(Context context) {
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(context);
        simpleDraweeView.getHierarchy().J(R.drawable.main_normal_icon);
        simpleDraweeView.getHierarchy().C(R.drawable.main_normal_icon);
        simpleDraweeView.getHierarchy().X(RoundingParams.a());
        return simpleDraweeView;
    }

    boolean i() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f65854m;
        return (gamedetialModleFourBean == null || gamedetialModleFourBean.getGame_screen_shot() == null || this.f65854m.getGame_screen_shot().size() <= 0) ? false : true;
    }

    boolean j() {
        return (TextUtils.isEmpty(this.f65854m.getGame_info_top_pic()) || TextUtils.isEmpty(this.f65854m.getGame_info_top_video_url())) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.f65847f;
        if (viewPager != null) {
            l(viewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i10, String desc) {
        this.f65848g.put(i10, desc);
    }

    public void setCustomTabColorizer(SlidingTabLayout.d tabColorizer) {
        this.f65850i.d(tabColorizer);
    }

    public void setCustomTabView(int layoutResId, int textViewId) {
        this.f65844c = layoutResId;
        this.f65845d = textViewId;
    }

    public void setData(GamedetialModleFourBean data) {
        this.f65854m = data;
        if (this.f65847f != null) {
            k();
        }
    }

    public void setDistributeEvenly(boolean distributeEvenly) {
        this.f65846e = distributeEvenly;
    }

    public void setMarginWidth(int marginWidth) {
        this.f65851j = marginWidth;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65849h = listener;
    }

    public void setSelectedIndicatorColors(int... colors) {
        this.f65850i.e(colors);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f65850i.removeAllViews();
        this.f65847f = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new b());
            k();
        }
    }

    public SlidingTabLayoutGameDetailImage(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlidingTabLayoutGameDetailImage(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65848g = new SparseArray<>();
        this.f65852k = new ArrayList();
        this.f65853l = new ArrayList();
        this.f65854m = null;
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f65843b = (int) (getResources().getDisplayMetrics().density * 24.0f);
        o0 o0Var = new o0(context);
        this.f65850i = o0Var;
        addView(o0Var, -1, -2);
    }
}
