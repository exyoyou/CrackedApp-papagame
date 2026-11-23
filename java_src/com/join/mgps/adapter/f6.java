package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.widget.ViewPager2;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.EverdayNewGameActivity;
import com.join.kotlin.ui.findgame.data.IntentClassfyEvent;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CommonMultiItemBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.GameFromPopoWinBeanV2;
import com.join.mgps.dto.HomeCloudActiveBean;
import com.join.mgps.dto.HomeDailyNewListBean;
import com.join.mgps.dto.HomeRankingListBean;
import com.join.mgps.dto.HomeTopChannelBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.widget.indicator.UIndicator;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.ExtFrom;
import com.papa91.arc.view.GlideImageLoader;
import com.shencoder.pagergridlayoutmanager.PagerGridLayoutManager;
import com.youth.banner.Banner;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class f6 extends com.join.mgps.base.a<CommonMultiItemBean, com.join.mgps.base.b> {
    public static final int A = 11;
    public static final int B = 12;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f62109q = 1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f62110r = 2;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f62111s = 3;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f62112t = 4;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f62113u = 5;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f62114v = 6;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f62115w = 7;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f62116x = 8;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f62117y = 9;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f62118z = 10;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f62119h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private g f62120i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    PrefDef_ f62121j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private z2 f62122k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private HomeCloudActiveBean f62123l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Typeface f62124m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f62125n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    View f62126o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    View f62127p;

    class a implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f62128b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Banner f62129c;

        a(final List val$list, final Banner val$banner) {
            this.f62128b = val$list;
            this.f62129c = val$banner;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (f6.this.f62120i != null) {
                f6.this.f62120i.z((CommonGameInfoBean) this.f62128b.get(position));
            }
            f6.K0(this.f62129c, this.f62128b, position);
            f6.this.f62125n = position;
        }
    }

    class b implements PagerGridLayoutManager.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ UIndicator f62131a;

        b(final UIndicator val$indic_view) {
            this.f62131a = val$indic_view;
        }

        @Override // com.shencoder.pagergridlayoutmanager.PagerGridLayoutManager.d
        public void a(int prePagerIndex, int currentPagerIndex) {
            this.f62131a.onPageSelected(currentPagerIndex);
            int i10 = currentPagerIndex * 5;
            for (int i11 = i10; i11 < i10 + 5; i11++) {
                CommonGameInfoBean item = f6.this.f62122k.getItem(i11);
                if (item != null && !item.getExposure()) {
                    com.papa.sim.statistic.t.l(f6.this.f62119h).R1(Event.commonExp, new ExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name()).setFrom("10002").setResourceId(item.getJp_info().getCrc_link_type_val()).setScenesCode(item.getTitle()).setTypeCode("speedDail").setPosition("1_" + (i11 + 1)).buildScene("firstModule$##$secondModule$##$from$##$scenesCode").toExt());
                    item.setExposure(true);
                }
            }
        }

        @Override // com.shencoder.pagergridlayoutmanager.PagerGridLayoutManager.d
        public void b(int pagerCount) {
        }
    }

    class c extends ViewPager2.OnPageChangeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TabLayout f62133a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ HomeRankingListBean f62134b;

        c(final TabLayout val$tablayout, final HomeRankingListBean val$rankingListBean) {
            this.f62133a = val$tablayout;
            this.f62134b = val$rankingListBean;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            this.f62133a.setScrollPosition(position, positionOffset, true, false);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int position) {
            super.onPageSelected(position);
            if (this.f62133a.D(position) != null) {
                this.f62133a.D(position).r();
            }
            f6.this.V(this.f62133a, position);
            if (f6.this.f62120i != null) {
                f6.this.f62120i.n(this.f62134b.getList().get(position));
            }
        }
    }

    class d implements TabLayout.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewPager2 f62136a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TabLayout f62137b;

        d(final ViewPager2 val$viewpager, final TabLayout val$tablayout) {
            this.f62136a = val$viewpager;
            this.f62137b = val$tablayout;
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(TabLayout.g tab) {
            int iK = tab.k();
            this.f62136a.setCurrentItem(iK);
            f6.this.V(this.f62137b, iK);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabSelected(TabLayout.g tab) {
            int iK = tab.k();
            this.f62136a.setCurrentItem(iK);
            f6.this.V(this.f62137b, iK);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(TabLayout.g tab) {
        }
    }

    class e extends com.join.mgps.base.decoration.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.b f62139e;

        e(final com.join.mgps.base.b val$helper) {
            this.f62139e = val$helper;
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
            aVar.f64116f = 0;
            if (position <= 0) {
                aVar.f64117a = (int) this.f62139e.itemView.getContext().getResources().getDimension(R.dimen.wdp16);
            } else {
                aVar.f64117a = 0;
            }
            return aVar;
        }
    }

    class f extends RecyclerView.OnScrollListener {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ RecyclerView f62141t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ List f62142u;

        f(final RecyclerView val$recycleView, final List val$datas) {
            this.f62141t = val$recycleView;
            this.f62142u = val$datas;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.f62141t.getLayoutManager();
            if (linearLayoutManager != null) {
                int iFindLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
                if (f6.this.f62120i != null) {
                    f6.this.f62120i.o(this.f62142u, iFindLastCompletelyVisibleItemPosition);
                }
            }
        }
    }

    public interface g {
        void h(List<CommonGameInfoBean> list, int lastVisiblePosition);

        void n(List<CommonGameInfoBean> list);

        void o(List<GameFromPopoWinBeanV2.DataBean> list, int lastVisiblePosition);

        void p(String webUrl);

        void z(CommonGameInfoBean bean);
    }

    public f6(Context context, g clickProxy) {
        super(null);
        this.f62122k = null;
        this.f62125n = 0;
        this.f62119h = context;
        this.f62120i = clickProxy;
        this.f62121j = new PrefDef_(context);
        this.f62124m = ResourcesCompat.getFont(this.f62119h, R.font.logosc_unbounded_sans);
        r(1, R.layout.layout_papa_main_home_v4_banner);
        r(2, R.layout.layout_papa_main_home_v4_fast_entry_parent);
        r(3, R.layout.layout_papa_main_home_v4_discovery);
        r(4, R.layout.layout_papa_main_home_v4_title);
        r(5, R.layout.layout_papa_main_home_v4_game_list);
        r(6, R.layout.layout_papa_main_home_v4_wufun_column);
        r(7, R.layout.papamain_video_banner_layout);
        r(8, R.layout.layout_papa_main_home_v4_horizontal_game);
        r(9, R.layout.layout_papa_main_home_v4_rank);
        r(10, R.layout.choice_gamelist_layout_v1);
        r(11, R.layout.layout_papa_main_home_v4_guess_like_recommend);
        r(12, R.layout.papamain_item_spacing_layout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0(View view) {
        this.f62119h.startActivity(new Intent(this.f62119h, (Class<?>) EverdayNewGameActivity.class));
        G0("3-3");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B0(HomeTopChannelBean homeTopChannelBean, View view) {
        IntentDateBean intentDataBean = homeTopChannelBean.getAd_info().getIntentDataBean();
        homeTopChannelBean.getAd_info().getExtBean().setPosition("3-4");
        IntentUtil.getInstance().intentActivity(this.f62119h, intentDataBean);
        G0("3-4");
        com.papa.sim.statistic.t.l(this.f62119h).R1(Event.commonClick, intentDataBean.getExtBean().buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C0(HomeTopChannelBean homeTopChannelBean, View view) {
        IntentUtil.getInstance().intentActivity(this.f62119h, homeTopChannelBean.getBroadcast().getIntentDataBean());
        G0("3-2");
        com.papa.sim.statistic.t.l(this.f62119h).R1(Event.commonClick, homeTopChannelBean.getBroadcast().getExtBean().setPosition("3-2").buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D0(HomeTopChannelBean homeTopChannelBean, View view) {
        homeTopChannelBean.getTheNew().getExtBean().setPosition("3-3");
        Intent intent = new Intent(this.f62119h, (Class<?>) EverdayNewGameActivity.class);
        intent.putExtra("extBean", homeTopChannelBean.getTheNew().getExtBean());
        this.f62119h.startActivity(intent);
        G0("3-3");
        com.papa.sim.statistic.t.l(this.f62119h).R1(Event.commonClick, homeTopChannelBean.getTheNew().getExtBean().buildScene().toExt());
    }

    private Drawable E0() {
        Drawable drawable = ContextCompat.getDrawable(this.f62119h, R.drawable.shape_fffae6_a40_r14);
        if (drawable == null) {
            return null;
        }
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            drawable = constantState.newDrawable(this.f62119h.getResources());
        }
        return drawable.mutate();
    }

    private static int F0(String bgColorV2) {
        if (TextUtils.isEmpty(bgColorV2)) {
            return Color.parseColor("#2F2F2F");
        }
        String strTrim = bgColorV2.trim();
        if (!strTrim.startsWith("#")) {
            strTrim = "#" + strTrim;
        }
        try {
            return Color.parseColor(strTrim);
        } catch (IllegalArgumentException unused) {
            return Color.parseColor("#2F2F2F");
        }
    }

    private void G0(String pointName) {
        com.papa.sim.statistic.t.l(this.f62119h).t(ExtFrom.home.name(), "22-" + pointName, AccountUtil_.getInstance_(this.f62119h).getUid());
    }

    private static void I0(View frame, int widthPx, int heightPx, int marginEndPx) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(widthPx, heightPx);
        layoutParams.gravity = 8388693;
        layoutParams.setMarginEnd(marginEndPx);
        frame.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void K0(Banner banner, List<CommonGameInfoBean> list, int position) {
        View viewK0;
        TextView textView;
        String showName;
        if (list == null || position < 0 || position >= list.size() || (viewK0 = k0(banner)) == null || (textView = (TextView) viewK0.findViewById(R.id.tv_home_banner_desc)) == null) {
            return;
        }
        CommonGameInfoBean commonGameInfoBean = list.get(position);
        if (!TextUtils.isEmpty(commonGameInfoBean.getTitle())) {
            showName = commonGameInfoBean.getTitle();
        } else if (TextUtils.isEmpty(commonGameInfoBean.getMain_title())) {
            showName = commonGameInfoBean.getShowName();
            if (TextUtils.isEmpty(showName)) {
                if (!TextUtils.isEmpty(commonGameInfoBean.getSub_title())) {
                    showName = commonGameInfoBean.getSub_title();
                } else if (TextUtils.isEmpty(commonGameInfoBean.getDescription())) {
                    showName = !TextUtils.isEmpty(commonGameInfoBean.getLabel()) ? commonGameInfoBean.getLabel() : "";
                } else {
                    showName = commonGameInfoBean.getDescription();
                }
            }
        } else {
            showName = commonGameInfoBean.getMain_title();
        }
        textView.setText(showName);
        int iF0 = F0(commonGameInfoBean.getBg_color_v2());
        if (viewK0 instanceof CardView) {
            ((CardView) viewK0).setCardBackgroundColor(iF0);
        } else {
            viewK0.setBackgroundColor(iF0);
        }
        U(viewK0, commonGameInfoBean.getBg_color_v2());
    }

    private void L0(View holderView, HomeCloudActiveBean activeBean, int uiState) {
        TextView textView = (TextView) holderView.findViewById(R.id.tv_text_1);
        TextView textView2 = (TextView) holderView.findViewById(R.id.tv_text_2);
        TextView textView3 = (TextView) holderView.findViewById(R.id.tv_text_3);
        if (textView != null) {
            if (uiState == 2) {
                textView.setText(activeBean.format(activeBean.getNgH()));
            } else {
                textView.setText(activeBean.format(activeBean.getFpH()));
            }
        }
        if (textView2 != null) {
            if (uiState == 2) {
                textView2.setText(activeBean.format(activeBean.getNgM()));
            } else {
                textView2.setText(activeBean.format(activeBean.getFpM()));
            }
        }
        if (textView3 != null) {
            if (uiState == 2) {
                textView3.setText(activeBean.format(activeBean.getNgS()));
            } else {
                textView3.setText(activeBean.format(activeBean.getFpS()));
            }
        }
    }

    private void T(int n10, View l10, View l11, View l12) {
        Resources resources = this.f62119h.getResources();
        int dimension = (int) resources.getDimension(R.dimen.wdp77);
        int dimension2 = (int) resources.getDimension(R.dimen.wdp99);
        int dimension3 = (int) resources.getDimension(R.dimen.wdp120);
        int dimension4 = (int) resources.getDimension(R.dimen.wdp16);
        int dimension5 = (int) resources.getDimension(R.dimen.wdp69);
        int dimension6 = (int) resources.getDimension(R.dimen.wdp138);
        if (n10 <= 0) {
            l10.setVisibility(8);
            l11.setVisibility(8);
            l12.setVisibility(8);
            return;
        }
        if (n10 == 1) {
            l12.setVisibility(8);
            l11.setVisibility(8);
            l10.setVisibility(0);
            I0(l10, dimension3, dimension3, dimension4);
            return;
        }
        if (n10 == 2) {
            l12.setVisibility(8);
            l11.setVisibility(0);
            l10.setVisibility(0);
            I0(l11, dimension2, dimension2, dimension4);
            I0(l10, dimension3, dimension3, (dimension6 - dimension5) + dimension4);
            return;
        }
        l12.setVisibility(0);
        l11.setVisibility(0);
        l10.setVisibility(0);
        I0(l12, dimension, dimension, dimension4);
        I0(l11, dimension2, dimension2, dimension5);
        I0(l10, dimension3, dimension3, dimension6);
    }

    private static void U(View root, String bgColorV2) {
        View viewFindViewById;
        if (root == null || (viewFindViewById = root.findViewById(R.id.view_home_banner_fade_1)) == null) {
            return;
        }
        int iF0 = F0(bgColorV2);
        int iRed = Color.red(iF0);
        int iGreen = Color.green(iF0);
        int iBlue = Color.blue(iF0);
        int iArgb = Color.argb(0, iRed, iGreen, iBlue);
        int iArgb2 = Color.argb(255, iRed, iGreen, iBlue);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{iArgb, iArgb2, iArgb2});
        gradientDrawable.setGradientCenter(0.0f, 0.75f);
        viewFindViewById.setBackground(gradientDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(TabLayout tablayout, int selectedPos) {
        int tabCount;
        TextView textView;
        if (tablayout == null || (tabCount = tablayout.getTabCount()) == 0) {
            return;
        }
        int color = Color.parseColor("#333333");
        int color2 = Color.parseColor("#999999");
        float dimension = this.f62119h.getResources().getDimension(R.dimen.wdp32);
        float dimension2 = this.f62119h.getResources().getDimension(R.dimen.wdp26);
        Typeface typeface = this.f62124m;
        int i10 = 0;
        while (i10 < tabCount) {
            TabLayout.g gVarD = tablayout.D(i10);
            if (gVarD != null && gVarD.g() != null && (textView = (TextView) gVarD.g().findViewById(R.id.tabText)) != null) {
                boolean z10 = i10 == selectedPos;
                textView.setTextSize(0, z10 ? dimension : dimension2);
                textView.setTextColor(z10 ? color : color2);
                if (z10) {
                    textView.setTypeface(typeface != null ? typeface : Typeface.DEFAULT, 0);
                } else {
                    textView.setTypeface(Typeface.DEFAULT, 0);
                }
            }
            i10++;
        }
    }

    private void W(com.join.mgps.base.b helper, CommonGameInfoBean bean) {
        View viewFindViewById = helper.itemView.findViewById(R.id.v_1);
        if (viewFindViewById == null) {
            return;
        }
        viewFindViewById.setBackground(new u6.a(F0(bean != null ? bean.getBg_color_v2() : null), (int) this.f62119h.getResources().getDimension(R.dimen.wdp5), this.f62119h.getResources().getDimension(R.dimen.wdp25)));
    }

    private void X(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        try {
            if (item.getData() instanceof List) {
                final List list = (List) item.getData();
                Banner banner = (Banner) helper.getView(R.id.banner);
                ArrayList arrayList = new ArrayList();
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((CommonGameInfoBean) it2.next()).getBig_pic());
                }
                CharSequence charSequence = (CharSequence) banner.getTag();
                String str = BaseQuickAdapter.TAG;
                if (TextUtils.equals(charSequence, str)) {
                    return;
                }
                banner.z(arrayList).y(new GlideImageLoader()).D(new ya.b() { // from class: com.join.mgps.adapter.x5
                    @Override // ya.b
                    public final void OnBannerClick(int i10) {
                        this.f63917b.o0(list, i10);
                    }
                }).setOnPageChangeListener(new a(list, banner));
                banner.setTag(str);
                banner.I();
                g gVar = this.f62120i;
                if (gVar != null) {
                    gVar.z((CommonGameInfoBean) list.get(0));
                }
                K0(banner, list, 0);
                View viewK0 = k0(banner);
                if (viewK0 != null) {
                    viewK0.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.y5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f63985b.p0(list, view);
                        }
                    });
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void Z(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        try {
            if (item.getData() instanceof CommonGameInfoBean) {
                final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) item.getData();
                if (commonGameInfoBean.getG_info() == null || commonGameInfoBean.getG_info().getIco() == null) {
                    com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.img_discovery), commonGameInfoBean.getBig_pic());
                } else {
                    com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.img_discovery), commonGameInfoBean.getG_info().getIco());
                }
                com.join.android.app.common.utils.l.n((SimpleDraweeView) helper.getView(R.id.sdv_icon_1), Uri.parse("res:///2131820545"));
                helper.setText(R.id.title, commonGameInfoBean.getTitle());
                helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.q5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f63093b.u0(commonGameInfoBean, view);
                    }
                });
                if (!commonGameInfoBean.getExposure()) {
                    com.papa.sim.statistic.t.l(this.f62119h).R1(Event.commonExp, commonGameInfoBean.getExtBean().setFirstModule("home").setSecondModule("choiceness").setFrom("10003").setResourceId(commonGameInfoBean.getJp_info().getCrc_link_type_val()).setScenesCode(commonGameInfoBean.getTitle()).setTypeCode("AD").buildScene().toExt());
                    commonGameInfoBean.setExposure(true);
                }
                if (com.join.mgps.Util.t2.i(commonGameInfoBean.getDescription())) {
                    helper.setGone(R.id.ll_play_tip, true);
                    LinearLayout linearLayout = (LinearLayout) helper.getView(R.id.ll_nums);
                    linearLayout.removeAllViews();
                    for (char c10 : commonGameInfoBean.getDescription().toCharArray()) {
                        View viewInflate = View.inflate(helper.itemView.getContext(), R.layout.item_home_discovery_num, null);
                        ((TextView) viewInflate.findViewById(R.id.tv_text_1)).setText(c10 + "");
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
                        layoutParams.width = (int) helper.itemView.getContext().getResources().getDimension(R.dimen.wdp16);
                        layoutParams.rightMargin = (int) helper.itemView.getContext().getResources().getDimension(R.dimen.wdp5);
                        linearLayout.addView(viewInflate, layoutParams);
                    }
                } else {
                    helper.setGone(R.id.ll_play_tip, false);
                }
            }
            Y(helper, this.f62123l);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a0(com.join.mgps.base.b helper, CommonMultiItemBean items) {
        RecyclerView recyclerView = (RecyclerView) helper.getView(R.id.rv_list);
        UIndicator uIndicator = (UIndicator) helper.getView(R.id.indic_view);
        if (this.f62122k == null) {
            this.f62122k = new z2();
        }
        this.f62122k.setOnItemClickListener(new com.chad.library.adapter.base.BaseQuickAdapter.d() { // from class: com.join.mgps.adapter.d6
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(com.chad.library.adapter.base.BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f61898a.v0(baseQuickAdapter, view, i10);
            }
        });
        recyclerView.setAdapter(this.f62122k);
        PagerGridLayoutManager pagerGridLayoutManager = new PagerGridLayoutManager(1, 5, 0);
        recyclerView.setLayoutManager(pagerGridLayoutManager);
        this.f62122k.submitList((List) items.getData());
        pagerGridLayoutManager.c0(new b(uIndicator));
        uIndicator.setItemCount((int) Math.ceil((this.f62122k.getItemCount() * 1.0f) / pagerGridLayoutManager.j()));
        uIndicator.setSelection(0);
    }

    private void b0(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        String ico;
        try {
            if (item.getData() instanceof CommonGameInfoBean) {
                final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) item.getData();
                GInfoBean g_info = commonGameInfoBean.getG_info();
                if (g_info == null) {
                    ico = commonGameInfoBean.getBig_pic();
                } else {
                    ico = TextUtils.isEmpty(g_info.getGif_ico()) ? g_info.getIco() : g_info.getGif_ico();
                }
                com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.sdv_image), ico);
                helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.r5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f63118b.w0(commonGameInfoBean, view);
                    }
                });
                String info = "";
                if (g_info != null) {
                    helper.setText(R.id.tv_text_1, g_info.getName());
                    helper.setText(R.id.tv_text_2, g_info.getScore() == null ? "" : String.valueOf(g_info.getScore()));
                    helper.setText(R.id.tv_text_3, UtilsMy.R1(g_info.getSp_tag_info(), g_info.getTag_info(), " | "));
                    if (TextUtils.isEmpty(g_info.getApp_size())) {
                        helper.setText(R.id.tv_text_4, "");
                    } else {
                        long j10 = (long) (Double.parseDouble(g_info.getApp_size()) * 1024.0d * 1024.0d);
                        if (j10 > 0) {
                            helper.setText(R.id.tv_text_4, UtilsMy.c(j10));
                        } else {
                            helper.setText(R.id.tv_text_4, "");
                        }
                    }
                    if (!TextUtils.isEmpty(g_info.getInfo())) {
                        info = g_info.getInfo();
                    }
                    helper.setText(R.id.tv_text_5, info);
                } else {
                    helper.setText(R.id.tv_text_1, commonGameInfoBean.getTitle());
                    helper.setText(R.id.tv_text_2, "");
                    helper.setText(R.id.tv_text_3, "");
                    helper.setText(R.id.tv_text_4, "");
                    helper.setText(R.id.tv_text_5, "");
                }
                if (commonGameInfoBean.giftSwitch()) {
                    helper.setGone(R.id.iv_1, true);
                } else {
                    helper.setGone(R.id.iv_1, false);
                }
                J0(helper, item);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void c0(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        try {
            if (item.getData() instanceof List) {
                List list = (List) item.getData();
                RecyclerView recyclerView = (RecyclerView) helper.getView(R.id.recycleView);
                a3 a3Var = new a3(this.f62119h, list);
                recyclerView.setLayoutManager(new LinearLayoutManager(this.f62119h, 0, false));
                if (recyclerView.getItemDecorationCount() <= 0) {
                    recyclerView.addItemDecoration(new e(helper));
                }
                recyclerView.setAdapter(a3Var);
                recyclerView.addOnScrollListener(new f(recyclerView, list));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void d0(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        try {
            if (item.getData() instanceof HomeRankingListBean) {
                HomeRankingListBean homeRankingListBean = (HomeRankingListBean) item.getData();
                ViewPager2 viewPager2 = (ViewPager2) helper.getView(R.id.viewpager);
                TabLayout tabLayout = (TabLayout) helper.getView(R.id.tablayout);
                String txt = homeRankingListBean.getTxt();
                if (TextUtils.isEmpty(txt)) {
                    return;
                }
                String[] strArrSplit = txt.split(",");
                viewPager2.setAdapter(new a5(homeRankingListBean.getList(), this.f62120i));
                tabLayout.L();
                for (String str : strArrSplit) {
                    TabLayout.g gVarU = tabLayout.I().u(R.layout.layout_custom_tab_main_game);
                    if (gVarU.g() != null) {
                        ((TextView) gVarU.g().findViewById(R.id.tabText)).setText(str);
                        tabLayout.i(gVarU);
                    }
                }
                com.join.mgps.Util.w2.a(tabLayout);
                viewPager2.registerOnPageChangeCallback(new c(tabLayout, homeRankingListBean));
                tabLayout.h(new d(viewPager2, tabLayout));
                helper.getView(R.id.rank_more).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.e6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        f6.x0(view);
                    }
                });
                tabLayout.R(tabLayout.D(0));
                V(tabLayout, 0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void f0(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        float fFloatValue = ((Float) item.getData()).floatValue();
        View view = helper.getView(R.id.spacingView);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = (int) fFloatValue;
        view.setLayoutParams(layoutParams);
    }

    private void g0(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        try {
            if (item.getData() instanceof String) {
                String str = (String) item.getData();
                TextView textView = (TextView) helper.getView(R.id.title);
                textView.setText(str);
                Typeface typeface = this.f62124m;
                if (typeface != null) {
                    textView.setTypeface(typeface, 0);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void h0(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        String ico;
        try {
            if (item.getData() instanceof CommonGameInfoBean) {
                final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) item.getData();
                GInfoBean g_info = commonGameInfoBean.getG_info();
                helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.w5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f63355b.z0(commonGameInfoBean, view);
                    }
                });
                com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.bannerView), commonGameInfoBean.getBig_pic());
                if (g_info == null) {
                    ico = commonGameInfoBean.getBig_pic();
                } else {
                    ico = TextUtils.isEmpty(g_info.getGif_ico()) ? g_info.getIco() : g_info.getGif_ico();
                }
                com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.sdv_image), ico);
                if (item.getExtraData() instanceof String) {
                    helper.setText(R.id.tv_text_6, item.getExtraData().toString());
                } else if (item.getExtraData() instanceof CommonGameInfoBean) {
                    CommonGameInfoBean commonGameInfoBean2 = (CommonGameInfoBean) item.getExtraData();
                    helper.setText(R.id.tv_text_6, commonGameInfoBean2.getMain_title());
                    if (item.getItemType() == 7) {
                        W(helper, commonGameInfoBean2);
                    }
                }
                String info = "";
                if (g_info != null) {
                    helper.setText(R.id.tv_text_1, g_info.getName());
                    helper.setText(R.id.tv_text_2, g_info.getScore() == null ? "" : String.valueOf(g_info.getScore()));
                    helper.setText(R.id.tv_text_3, UtilsMy.R1(g_info.getSp_tag_info(), g_info.getTag_info(), " | "));
                    if (TextUtils.isEmpty(g_info.getApp_size())) {
                        helper.setText(R.id.tv_text_4, "");
                    } else {
                        long j10 = (long) (Double.parseDouble(g_info.getApp_size()) * 1024.0d * 1024.0d);
                        if (j10 > 0) {
                            helper.setText(R.id.tv_text_4, UtilsMy.c(j10));
                        } else {
                            helper.setText(R.id.tv_text_4, "");
                        }
                    }
                    if (!TextUtils.isEmpty(g_info.getInfo())) {
                        info = g_info.getInfo();
                    }
                    helper.setText(R.id.tv_text_5, info);
                } else {
                    helper.setText(R.id.tv_text_1, commonGameInfoBean.getTitle());
                    helper.setText(R.id.tv_text_2, "");
                    helper.setText(R.id.tv_text_3, "");
                    helper.setText(R.id.tv_text_4, "");
                    helper.setText(R.id.tv_text_5, "");
                }
                if (commonGameInfoBean.giftSwitch()) {
                    helper.setGone(R.id.iv_1, true);
                } else {
                    helper.setGone(R.id.iv_1, false);
                }
                J0(helper, item);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static View k0(Banner banner) {
        if (banner == null) {
            return null;
        }
        View viewFindViewById = banner.findViewById(R.id.bannerContainer);
        return viewFindViewById != null ? viewFindViewById : banner.getChildAt(0);
    }

    private void l0() {
        if (this.f62120i != null) {
            String str = com.join.mgps.rpc.h.W;
            if (!str.contains("source")) {
                if (str.contains("?") && str.contains(SimpleComparison.EQUAL_TO_OPERATION)) {
                    str = str + "&source=homeAd";
                } else {
                    str = str + "?source=homeAd";
                }
            }
            this.f62120i.p(str);
        }
        ExtBean extBean = new ExtBean();
        extBean.setFirstModule(EventP.FirstModel.home.name());
        extBean.setSecondModule(EventP.SecondModel.choiceness.name());
        extBean.setScenesCode("云玩会员限时礼包");
        extBean.setTypeCode(EventP.TypeCode.AD.name());
        com.papa.sim.statistic.t.l(this.f62119h).R1(Event.commonClick, extBean.buildScene().toExt());
    }

    public static int m0(@NonNull List<CommonMultiItemBean> data, int adapterPosition) {
        if (adapterPosition < 0 || adapterPosition >= data.size() || data.get(adapterPosition).getItemType() != 11) {
            return -1;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < adapterPosition; i11++) {
            if (data.get(i11).getItemType() == 11) {
                i10++;
            }
        }
        return i10;
    }

    private void n0() {
        if (this.f62120i != null) {
            String str = com.join.mgps.rpc.h.V;
            if (!str.contains("source")) {
                if (str.contains("?") && str.contains(SimpleComparison.EQUAL_TO_OPERATION)) {
                    str = str + "&source=homeAd";
                } else {
                    str = str + "?source=homeAd";
                }
            }
            this.f62120i.p(str);
        }
        ExtBean extBean = new ExtBean();
        extBean.setFirstModule(EventP.FirstModel.home.name());
        extBean.setSecondModule(EventP.SecondModel.choiceness.name());
        extBean.setScenesCode("云玩新人限时特惠");
        extBean.setTypeCode(EventP.TypeCode.AD.name());
        com.papa.sim.statistic.t.l(this.f62119h).R1(Event.commonClick, extBean.buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o0(List list, int i10) {
        IntentUtil.getInstance().intentActivity(this.f62119h, ((CommonGameInfoBean) list.get(i10)).getIntentDataBean());
        G0("1-" + (i10 + 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p0(List list, View view) {
        IntentUtil.getInstance().intentActivity(this.f62119h, ((CommonGameInfoBean) list.get(this.f62125n)).getIntentDataBean());
        G0("1-" + (this.f62125n + 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q0(View view) {
        l0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r0(View view) {
        n0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s0(View view) {
        if (this.f62120i != null) {
            l0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t0(View view) {
        n0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(CommonGameInfoBean commonGameInfoBean, View view) {
        commonGameInfoBean.getExtBean().setFirstModule("home").setSecondModule("choiceness").setFrom("10003").setResourceId(commonGameInfoBean.getJp_info().getCrc_link_type_val()).setScenesCode(commonGameInfoBean.getTitle()).setTypeCode("AD").buildScene();
        IntentUtil.getInstance().intentActivity(this.f62119h, commonGameInfoBean.getIntentDataBean());
        com.papa.sim.statistic.t.l(this.f62119h).R1(Event.commonClick, commonGameInfoBean.getExtBean().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(com.chad.library.adapter.base.BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) baseQuickAdapter.getItem(i10);
        commonGameInfoBean.getExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name()).setFrom("10002").setResourceId(commonGameInfoBean.getJp_info().getCrc_link_type_val()).setScenesCode(commonGameInfoBean.getTitle()).setTypeCode("speedDail").setPosition("1_" + (i10 + 1)).buildScene();
        IntentUtil.getInstance().intentActivity(this.f62119h, commonGameInfoBean.getIntentDataBean());
        com.papa.sim.statistic.t.l(this.f62119h).R1(Event.commonClick, commonGameInfoBean.getExtBean().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w0(CommonGameInfoBean commonGameInfoBean, View view) {
        IntentUtil.getInstance().intentActivity(this.f62119h, commonGameInfoBean.getIntentDataBean());
        com.papa.sim.statistic.t.l(this.f62119h).R1(Event.commonClick, commonGameInfoBean.getExtBean().buildScene().toExt());
        G0(commonGameInfoBean.getExp_position());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void x0(View view) {
        com.join.mgps.Util.j0.a().c(new IntentClassfyEvent(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y0(CommonGameInfoBean commonGameInfoBean, View view) {
        IntentUtil.getInstance().intentActivity(this.f62119h, commonGameInfoBean.getIntentDataBean());
        com.papa.sim.statistic.t.l(this.f62119h).R1(Event.commonClick, commonGameInfoBean.getExtBean().buildScene().toExt());
        G0(commonGameInfoBean.getExp_position());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z0(CommonGameInfoBean commonGameInfoBean, View view) {
        IntentUtil.getInstance().intentActivity(this.f62119h, commonGameInfoBean.getIntentDataBean());
        G0(commonGameInfoBean.getExp_position());
    }

    public void H0(HomeCloudActiveBean cloudActiveBean) {
        this.f62123l = cloudActiveBean;
    }

    public void J0(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        DownloadNormalView downloadNormalView = (DownloadNormalView) helper.getView(R.id.dv_view);
        if (item.getData() instanceof CommonGameInfoBean) {
            CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) item.getData();
            downloadNormalView.f(new m6.c(this.f62119h, commonGameInfoBean));
            if (commonGameInfoBean.getJp_info() != null && commonGameInfoBean.getJp_info().getLink_type().intValue() != 1) {
                helper.setText(R.id.tv_text_1, commonGameInfoBean.getTitle()).setText(R.id.tv_text_5, commonGameInfoBean.getSub_title());
                helper.setGone(R.id.g_1, false);
                helper.setGone(R.id.tv_text_3, false);
                helper.setGone(R.id.tv_text_4, false);
                return;
            }
            if (commonGameInfoBean.isH5Game()) {
                helper.setText(R.id.tv_text_1, commonGameInfoBean.getTitle()).setText(R.id.tv_text_5, commonGameInfoBean.getSub_title());
                helper.setGone(R.id.g_1, false);
                helper.setGone(R.id.tv_text_3, false);
                helper.setGone(R.id.tv_text_4, false);
                return;
            }
            boolean z10 = commonGameInfoBean.getG_info() != null;
            helper.setGone(R.id.g_1, z10);
            helper.setGone(R.id.tv_text_3, z10);
            helper.setGone(R.id.tv_text_4, z10);
        }
    }

    public void M0(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        J0(helper, item);
    }

    public void Y(com.join.mgps.base.b helper, HomeCloudActiveBean activeBean) {
        LinearLayout linearLayout = (LinearLayout) helper.getView(R.id.ll_active);
        if (linearLayout != null) {
            if (activeBean == null || activeBean.getAdCfgInfo() == null || !activeBean.needShow()) {
                linearLayout.setVisibility(8);
                linearLayout.removeAllViews();
                return;
            }
            boolean z10 = activeBean.currentUIState() != activeBean.getUiState();
            if (z10) {
                linearLayout.removeAllViews();
                this.f62126o = null;
                this.f62127p = null;
                activeBean.setUiState(activeBean.currentUIState());
            }
            if (activeBean.getFirstEnd() && activeBean.getGiftEnd()) {
                linearLayout.setVisibility(8);
                linearLayout.removeAllViews();
            } else {
                linearLayout.setVisibility(0);
                if (activeBean.currentUIState() == 3) {
                    if (z10) {
                        this.f62127p = View.inflate(this.f62119h, R.layout.item_home_cloud_active_first_sm, null);
                        this.f62126o = View.inflate(this.f62119h, R.layout.item_home_cloud_active_gift_sm, null);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, (int) this.f62119h.getResources().getDimension(R.dimen.wdp60));
                        layoutParams.weight = 0.5f;
                        linearLayout.addView(this.f62127p, layoutParams);
                        this.f62127p.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.z5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f64042b.q0(view);
                            }
                        });
                        this.f62126o.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.a6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f61236b.r0(view);
                            }
                        });
                        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, (int) this.f62119h.getResources().getDimension(R.dimen.wdp60));
                        layoutParams2.weight = 0.5f;
                        layoutParams2.leftMargin = (int) this.f62119h.getResources().getDimension(R.dimen.wdp20);
                        linearLayout.addView(this.f62126o, layoutParams2);
                    }
                    View view = this.f62127p;
                    if (view != null) {
                        L0(view, activeBean, 1);
                    }
                    View view2 = this.f62126o;
                    if (view2 != null) {
                        L0(view2, activeBean, 2);
                    }
                } else if (activeBean.getCurUiState() == 1) {
                    if (z10) {
                        this.f62127p = View.inflate(this.f62119h, R.layout.item_home_cloud_active_first_large, null);
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, (int) this.f62119h.getResources().getDimension(R.dimen.wdp65));
                        this.f62127p.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.b6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view3) {
                                this.f61262b.s0(view3);
                            }
                        });
                        linearLayout.addView(this.f62127p, layoutParams3);
                    }
                    View view3 = this.f62127p;
                    if (view3 != null) {
                        L0(view3, activeBean, 1);
                    }
                } else if (activeBean.getCurUiState() == 2) {
                    if (z10) {
                        this.f62126o = View.inflate(this.f62119h, R.layout.item_home_cloud_active_gift_large, null);
                        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, (int) this.f62119h.getResources().getDimension(R.dimen.wdp65));
                        this.f62126o.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.c6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view4) {
                                this.f61379b.t0(view4);
                            }
                        });
                        linearLayout.addView(this.f62126o, layoutParams4);
                    }
                    View view4 = this.f62126o;
                    if (view4 != null) {
                        L0(view4, activeBean, 2);
                    }
                }
            }
            if (activeBean.getExplore()) {
                return;
            }
            ExtBean extBean = new ExtBean();
            extBean.setFirstModule(EventP.FirstModel.home.name());
            extBean.setSecondModule(EventP.SecondModel.choiceness.name());
            extBean.setTypeCode(EventP.TypeCode.AD.name());
            if (activeBean.getCurUiState() == 3) {
                com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(this.f62119h);
                Event event = Event.commonExp;
                tVarL.R1(event, extBean.copy().setScenesCode("云玩会员限时礼包").buildScene().toExt());
                com.papa.sim.statistic.t.l(this.f62119h).R1(event, extBean.copy().setScenesCode("云玩新人限时特惠").buildScene().toExt());
            } else if (activeBean.getCurUiState() == 2) {
                com.papa.sim.statistic.t.l(this.f62119h).R1(Event.commonExp, extBean.copy().setScenesCode("云玩会员限时礼包").buildScene().toExt());
            } else if (activeBean.getCurUiState() == 1) {
                com.papa.sim.statistic.t.l(this.f62119h).R1(Event.commonExp, extBean.copy().setScenesCode("云玩新人限时特惠").buildScene().toExt());
            }
            activeBean.setExplore(true);
        }
    }

    public void e0(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        String ico;
        if (item.getData() instanceof CommonGameInfoBean) {
            final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) item.getData();
            GInfoBean g_info = commonGameInfoBean.getG_info();
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.p5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f63001b.y0(commonGameInfoBean, view);
                }
            });
            if (g_info == null) {
                ico = commonGameInfoBean.getBig_pic();
            } else {
                ico = TextUtils.isEmpty(g_info.getGif_ico()) ? g_info.getIco() : g_info.getGif_ico();
            }
            com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.sdv_image), ico);
            if (g_info != null) {
                helper.setText(R.id.tv_text_1, g_info.getName());
                helper.setText(R.id.tv_text_2, g_info.getScore() != null ? String.valueOf(g_info.getScore()) : "");
                helper.setText(R.id.tv_text_3, UtilsMy.R1(g_info.getSp_tag_info(), g_info.getTag_info(), " | "));
            } else {
                helper.setText(R.id.tv_text_1, commonGameInfoBean.getTitle());
                helper.setText(R.id.tv_text_2, "");
                helper.setText(R.id.tv_text_3, "");
            }
            ((DownloadNormalView) helper.getView(R.id.dv_view)).f(new m6.c(this.f62119h, commonGameInfoBean));
            if (commonGameInfoBean.getJp_info() != null && commonGameInfoBean.getJp_info().getLink_type().intValue() != 1) {
                helper.setText(R.id.tv_text_1, commonGameInfoBean.getTitle());
                helper.setGone(R.id.g_1, false);
                helper.setGone(R.id.tv_text_3, false);
            } else if (commonGameInfoBean.isH5Game()) {
                helper.setText(R.id.tv_text_1, commonGameInfoBean.getTitle());
                helper.setGone(R.id.g_1, false);
                helper.setGone(R.id.tv_text_3, false);
            } else {
                boolean z10 = g_info != null;
                helper.setGone(R.id.g_1, z10);
                helper.setGone(R.id.tv_text_3, z10);
            }
        }
    }

    public void i0(com.join.mgps.base.b helper, CommonMultiItemBean item) {
        if (item.getData() instanceof HomeTopChannelBean) {
            final HomeTopChannelBean homeTopChannelBean = (HomeTopChannelBean) item.getData();
            if (homeTopChannelBean.getTheNew() != null) {
                helper.setText(R.id.tv_new_count, homeTopChannelBean.getTheNew().getCount() + "款");
                helper.getView(R.id.img_new).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.s5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f63158b.D0(homeTopChannelBean, view);
                    }
                });
                helper.setText(R.id.tv_text_1, com.join.mgps.Util.e0.D(System.currentTimeMillis(), "MM月dd日"));
                List<HomeDailyNewListBean> list = homeTopChannelBean.getTheNew().getList();
                View view = helper.getView(R.id.rv_new);
                View view2 = helper.getView(R.id.fl_new_layer_1);
                View view3 = helper.getView(R.id.fl_new_layer_2);
                View view4 = helper.getView(R.id.fl_new_layer_3);
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) helper.getView(R.id.sdv_new_1);
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) helper.getView(R.id.sdv_new_2);
                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) helper.getView(R.id.sdv_new_3);
                int iMin = list == null ? 0 : Math.min(3, list.size());
                T(iMin, view2, view3, view4);
                simpleDraweeView.getHierarchy().I(null);
                simpleDraweeView2.getHierarchy().I(null);
                simpleDraweeView3.getHierarchy().I(null);
                if (iMin >= 1) {
                    com.join.android.app.common.utils.l.o(simpleDraweeView, list.get(iMin - 1).getIco());
                }
                if (iMin >= 2) {
                    com.join.android.app.common.utils.l.o(simpleDraweeView2, list.get(iMin - 2).getIco());
                }
                if (iMin >= 3) {
                    com.join.android.app.common.utils.l.o(simpleDraweeView3, list.get(iMin - 3).getIco());
                }
                if (iMin >= 2) {
                    simpleDraweeView2.getHierarchy().I(E0());
                }
                if (iMin >= 3) {
                    simpleDraweeView3.getHierarchy().I(E0());
                }
                view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.t5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view5) {
                        this.f63206b.A0(view5);
                    }
                });
            }
            if (homeTopChannelBean.getAd_info() != null) {
                com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.img_ad), homeTopChannelBean.getAd_info().getBig_pic());
                helper.getView(R.id.img_ad).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.u5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view5) {
                        this.f63231b.B0(homeTopChannelBean, view5);
                    }
                });
            }
            if (homeTopChannelBean.getBroadcast() != null) {
                helper.setText(R.id.dzg_sub_title, homeTopChannelBean.getBroadcast().getSub_title());
                com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.dzg_img), homeTopChannelBean.getBroadcast().getBig_pic());
                helper.getView(R.id.card_dzg).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.v5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view5) {
                        this.f63320b.C0(homeTopChannelBean, view5);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public void convert(@NonNull com.join.mgps.base.b helper, CommonMultiItemBean item) {
        switch (item.getItemType()) {
            case 1:
                X(helper, item);
                break;
            case 2:
                a0(helper, item);
                break;
            case 3:
                Z(helper, item);
                break;
            case 4:
                g0(helper, item);
                break;
            case 5:
                b0(helper, item);
                break;
            case 6:
                i0(helper, item);
                break;
            case 7:
                h0(helper, item);
                break;
            case 9:
                d0(helper, item);
                break;
            case 10:
                c0(helper, item);
                break;
            case 11:
                e0(helper, item);
                break;
            case 12:
                f0(helper, item);
                break;
        }
    }
}
