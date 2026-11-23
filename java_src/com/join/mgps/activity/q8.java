package com.join.mgps.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.res.ResourcesCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.EveryDayNewGameFragment;
import com.join.kotlin.ui.findgame.FindGameClassfyFragment;
import com.join.kotlin.ui.legendgame.LegendGameCategoryFragment;
import com.join.kotlin.ui.netgame.NetGameCategoryFragment;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.HomeFloatData;
import com.join.mgps.dto.PapaHomeBeanV9;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.SScrollingTxtBeanV2;
import com.join.mgps.dto.SScrollingTxtDTOV2;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.mgpapa_mainfragment_new_layout_v4)
public class q8 extends Fragment implements com.join.mgps.callbacks.k {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f57912x = -13421773;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    View f57913c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    ViewFlipper f57914d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    TextView f57915e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    CustomerDownloadView f57916f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TabLayout f57917g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    ViewPager2 f57918h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f57919i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ArrayList<SScrollingTxtBeanV2> f57920j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f57921k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private RecomDatabean f57922l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private RecomDatabean f57923m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    com.join.mgps.rpc.e f57924n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Pref
    PrefDef_ f57925o;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Typeface f57929s;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f57932v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f57933w;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f57926p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    ArrayList<e> f57927q = new ArrayList<>();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Handler f57928r = new Handler();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f57930t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f57931u = "";

    class a extends ViewPager2.OnPageChangeCallback {
        a() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            q8.this.f57917g.setScrollPosition(position, positionOffset, true, false);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int position) {
            super.onPageSelected(position);
            q8.this.f57930t = position;
            if (q8.this.f57917g.D(position) != null) {
                q8.this.f57917g.D(position).r();
            }
        }
    }

    class b implements TabLayout.d {
        b() {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(TabLayout.g tab) {
            int iK = tab.k();
            q8.this.f57918h.setCurrentItem(iK);
            q8.this.e0(iK);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabSelected(TabLayout.g tab) {
            int iK = tab.k();
            q8.this.e0(iK);
            q8.this.f57930t = iK;
            q8 q8Var = q8.this;
            q8Var.f57918h.setCurrentItem(q8Var.f57930t);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(TabLayout.g tab) {
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            q8.this.f57932v = false;
            q8.this.f57933w = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            super.onAnimationStart(animation);
            q8.this.f57932v = true;
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            q8.this.f57932v = false;
            q8.this.f57933w = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            super.onAnimationStart(animation);
            q8.this.f57932v = true;
        }
    }

    class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f57938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f57939b;

        public e(String title, String type) {
            this.f57938a = title;
            this.f57939b = type;
        }
    }

    class f extends FragmentStateAdapter {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        List<e> f57941e;

        public f(Fragment fragment, List<e> datas) {
            super(fragment);
            this.f57941e = datas;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @NonNull
        public Fragment createFragment(int position) {
            if (position == 0) {
                PapaMainV4SubHomeFragment_ papaMainV4SubHomeFragment_ = new PapaMainV4SubHomeFragment_();
                papaMainV4SubHomeFragment_.w0(q8.this);
                return papaMainV4SubHomeFragment_;
            }
            if (position == 1) {
                return new FindGameClassfyFragment();
            }
            if (position == 2) {
                return new EveryDayNewGameFragment();
            }
            if (position != 3) {
                return position != 4 ? new Fragment() : new LegendGameCategoryFragment();
            }
            return new NetGameCategoryFragment();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f57941e.size();
        }
    }

    private void U(int selectedPos) {
        TextView textView;
        if (this.f57917g == null || getContext() == null) {
            return;
        }
        float dimension = getResources().getDimension(R.dimen.wdp40);
        float dimension2 = getResources().getDimension(R.dimen.wdp26);
        int tabCount = this.f57917g.getTabCount();
        int i10 = 0;
        while (i10 < tabCount) {
            TabLayout.g gVarD = this.f57917g.D(i10);
            if (gVarD != null && gVarD.g() != null && (textView = (TextView) gVarD.g().findViewById(R.id.tabText)) != null) {
                boolean z10 = i10 == selectedPos;
                textView.setTextColor(f57912x);
                textView.setTextSize(0, z10 ? dimension : dimension2);
                if (z10) {
                    Typeface typeface = this.f57929s;
                    if (typeface == null) {
                        typeface = Typeface.DEFAULT;
                    }
                    textView.setTypeface(typeface, 0);
                } else {
                    textView.setTypeface(Typeface.DEFAULT, 0);
                }
            }
            i10++;
        }
    }

    private void X(SScrollingTxtDTOV2 scrollingTxtDTO) {
        if (scrollingTxtDTO == null || scrollingTxtDTO.getText() == null || scrollingTxtDTO.getText().size() <= 0) {
            return;
        }
        ArrayList<SScrollingTxtBeanV2> arrayList = new ArrayList<>(scrollingTxtDTO.getText());
        this.f57920j = arrayList;
        if (arrayList.size() <= 0) {
            this.f57920j = new ArrayList<>();
        }
        this.f57914d.stopFlipping();
        this.f57914d.removeAllViews();
        for (SScrollingTxtBeanV2 sScrollingTxtBeanV2 : this.f57920j) {
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.item_search_hint_viewflipper, (ViewGroup) null);
            textView.setText(sScrollingTxtBeanV2.getWord());
            this.f57914d.addView(textView);
        }
        int interval = scrollingTxtDTO.getInterval();
        this.f57921k = interval;
        if (interval < 1) {
            this.f57921k = 1;
        }
        this.f57914d.setFlipInterval(this.f57921k * 1000);
        this.f57914d.startFlipping();
        MApplication.L1 = this.f57920j;
        MApplication.R1 = this.f57921k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b0() {
        this.f57917g.D(0).r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c0() {
        SimpleDraweeView simpleDraweeView = this.f57919i;
        if (simpleDraweeView == null || this.f57932v || !this.f57933w || simpleDraweeView.getVisibility() != 0) {
            return;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.f57919i, "translationX", requireContext().getResources().getDimension(R.dimen.wdp113), 0.0f).setDuration(150L);
        duration.addListener(new d());
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit d0() {
        f0();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(int pos) {
        TabLayout.g gVarD;
        View viewFindViewById;
        TabLayout tabLayout = this.f57917g;
        if (tabLayout == null || (gVarD = tabLayout.D(pos)) == null) {
            return;
        }
        String str = (pos < 0 || pos >= this.f57927q.size()) ? "" : this.f57927q.get(pos).f57939b;
        View viewG = gVarD.g();
        if (viewG != null && (viewFindViewById = viewG.findViewById(R.id.redPoint)) != null) {
            viewFindViewById.setVisibility(8);
        }
        if ("NEW_GAME".equals(str)) {
            this.f57925o.homeTopTypeEntrance().g("");
            this.f57925o.lastLaunchAppTime().g(Long.valueOf(System.currentTimeMillis()));
        }
        if ("NET_GAME".equals(str)) {
            this.f57925o.homeNetGameTabClicked().g(Boolean.TRUE);
            com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonClick, new ExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.netGame.name()).setFrom("10020").buildScene().toExt());
        }
        if ("LEGEND_GAME".equals(str)) {
            this.f57925o.homeLegendGameTabClicked().g(Boolean.TRUE);
            com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonClick, new ExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.legend.name()).buildScene().toExt());
        }
        U(pos);
    }

    private void f0() {
        this.f57916f.setDownloadGameNum();
    }

    private void g0() {
        if (this.f57917g == null || this.f57925o == null || this.f57927q == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f57927q.size(); i10++) {
            e eVar = this.f57927q.get(i10);
            if ("NET_GAME".equals(eVar.f57939b)) {
                i0(i10, !this.f57925o.homeNetGameTabClicked().d().booleanValue());
            } else if ("LEGEND_GAME".equals(eVar.f57939b)) {
                i0(i10, !this.f57925o.homeLegendGameTabClicked().d().booleanValue());
            } else {
                i0(i10, false);
            }
        }
    }

    private void i0(int pos, boolean visible) {
        TabLayout.g gVarD;
        View viewFindViewById;
        TabLayout tabLayout = this.f57917g;
        if (tabLayout == null || (gVarD = tabLayout.D(pos)) == null || gVarD.g() == null || (viewFindViewById = gVarD.g().findViewById(R.id.redPoint)) == null) {
            return;
        }
        viewFindViewById.setVisibility(visible ? 0 : 8);
    }

    private void k0() {
        this.f57926p = true;
        g0();
    }

    @Background
    void V() {
        if (com.join.android.app.common.utils.m.j(requireContext())) {
            try {
                HomeFloatData data = this.f57924n.S(W()).getMessages().getData();
                if (data != null) {
                    j0(data);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public CommonRequestBean W() {
        return RequestBeanUtil.getInstance(requireContext()).getFloatadRequestBean();
    }

    @UiThread
    void Y() {
        if (this.f57928r == null) {
            this.f57928r = new Handler();
        }
        this.f57928r.postDelayed(new Runnable() { // from class: com.join.mgps.activity.n8
            @Override // java.lang.Runnable
            public final void run() {
                this.f57782b.c0();
            }
        }, 1000L);
    }

    @UiThread
    void Z() {
        SimpleDraweeView simpleDraweeView = this.f57919i;
        if (simpleDraweeView == null || this.f57932v || this.f57933w || simpleDraweeView.getVisibility() != 0) {
            return;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.f57919i, "translationX", 0.0f, requireContext().getResources().getDimension(R.dimen.wdp113)).setDuration(250L);
        duration.addListener(new c());
        duration.start();
    }

    @Click
    void a0() {
        try {
            if (com.join.mgps.Util.t2.i(this.f57922l.getMain().getPic_remote())) {
                IntentUtil.getInstance().intentActivity(requireContext(), this.f57922l.getSub().get(0).getIntentDataBean());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @AfterViews
    void afterviews() {
        this.f57924n = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.Util.j0.a().d(this);
        if (getContext() != null) {
            this.f57929s = ResourcesCompat.getFont(getContext(), R.font.logosc_unbounded_sans);
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f57913c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams).height = com.join.android.app.common.utils.q.v(getContext());
        this.f57913c.setLayoutParams(layoutParams);
        this.f57927q.add(new e("精选", "HANDPICK"));
        this.f57927q.add(new e("分类", "CLASSIFICATION"));
        this.f57927q.add(new e("新游", "NEW_GAME"));
        this.f57927q.add(new e("网游", "NET_GAME"));
        this.f57927q.add(new e("传奇", "LEGEND_GAME"));
        f fVar = new f(this, this.f57927q);
        this.f57918h.setSaveEnabled(false);
        this.f57918h.setAdapter(fVar);
        for (e eVar : this.f57927q) {
            TabLayout.g gVarU = this.f57917g.I().u(R.layout.layout_custom_tab_main_game);
            if (gVarU.g() != null) {
                ((TextView) gVarU.g().findViewById(R.id.tabText)).setText(eVar.f57938a);
                this.f57917g.i(gVarU);
            }
        }
        com.join.mgps.Util.w2.a(this.f57917g);
        this.f57918h.registerOnPageChangeCallback(new a());
        this.f57918h.setOffscreenPageLimit(4);
        this.f57917g.h(new b());
        U(0);
        g0();
        this.f57928r.postDelayed(new Runnable() { // from class: com.join.mgps.activity.p8
            @Override // java.lang.Runnable
            public final void run() {
                this.f57840b.b0();
            }
        }, 200L);
        V();
    }

    void h0(PapaHomeBeanV9 bean) {
        if (bean != null) {
            X(bean.getS_scrolling_txt_v2());
        }
    }

    @UiThread
    void j0(HomeFloatData homeFloatData) {
        try {
            List<RecomDatabean> pendant = homeFloatData.getPendant();
            List<RecomDatabean> coin_entrance = homeFloatData.getCoin_entrance();
            if (this.f57919i != null) {
                if (pendant == null || pendant.size() <= 0) {
                    this.f57919i.setVisibility(8);
                } else {
                    RecomDatabean recomDatabean = pendant.get(0);
                    this.f57922l = recomDatabean;
                    if (recomDatabean == null || recomDatabean.getMain().getAd_switch() != 1) {
                        this.f57919i.setVisibility(8);
                    } else {
                        this.f57919i.setVisibility(0);
                        if (!com.join.mgps.Util.t2.i(this.f57922l.getMain().getPic_remote())) {
                            this.f57919i.setVisibility(8);
                        } else if (!this.f57931u.equals(this.f57922l.getMain().getPic_remote())) {
                            this.f57931u = this.f57922l.getMain().getPic_remote();
                            com.join.android.app.common.utils.l.d(this.f57919i, R.drawable.translate_drawable, this.f57922l.getMain().getPic_remote());
                        }
                    }
                }
            }
            if (coin_entrance == null || coin_entrance.size() <= 0) {
                return;
            }
            this.f57923m = coin_entrance.get(0);
            Intent intent = new Intent(p5.a.F);
            intent.putExtra("coinFloatData", this.f57923m);
            requireContext().sendBroadcast(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click({R.id.cdv_view})
    void l0() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(3);
        intentDateBean.setJump_type(6);
        IntentUtil.getInstance().intentActivity(getContext(), intentDateBean);
    }

    @Click
    void m0() {
        IntentUtil.getInstance().goForumProfileMessageActivity(getContext());
    }

    @Click
    void n0() {
        ArrayList<SScrollingTxtBeanV2> arrayList = this.f57920j;
        if (arrayList == null || arrayList.size() <= 0) {
            IntentUtil.getInstance().goSearchHintActivity(getContext());
            return;
        }
        ViewFlipper viewFlipper = this.f57914d;
        if (viewFlipper != null && viewFlipper.getCurrentView() != null && !TextUtils.isEmpty(((TextView) this.f57914d.getCurrentView()).getText())) {
            String string = ((TextView) this.f57914d.getCurrentView()).getText().toString();
            int i10 = 0;
            while (true) {
                if (i10 >= this.f57920j.size()) {
                    i10 = 0;
                    break;
                } else if (TextUtils.equals(string, this.f57920j.get(i10).getWord())) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 >= 0) {
                ArrayList<SScrollingTxtBeanV2> arrayList2 = this.f57920j;
                List<SScrollingTxtBeanV2> listSubList = arrayList2.subList(i10, arrayList2.size());
                List<SScrollingTxtBeanV2> listSubList2 = this.f57920j.subList(0, i10);
                ArrayList<SScrollingTxtBeanV2> arrayList3 = new ArrayList<>();
                arrayList3.addAll(listSubList);
                arrayList3.addAll(listSubList2);
                this.f57920j = arrayList3;
            }
        }
        IntentUtil.getInstance().goSearchHintActivity(getContext(), this.f57920j, this.f57921k);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f57928r.removeCallbacksAndMessages(null);
        com.join.mgps.Util.j0.a().e(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        ViewPager2 viewPager2 = this.f57918h;
        if (viewPager2 != null) {
            viewPager2.setAdapter(null);
        }
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.o8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57813b.d0();
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        f0();
        if (this.f57926p) {
            g0();
        } else {
            k0();
        }
    }

    @Override // com.join.mgps.callbacks.k
    public void y(boolean show) {
        if (show) {
            Y();
        } else {
            Z();
        }
    }
}
