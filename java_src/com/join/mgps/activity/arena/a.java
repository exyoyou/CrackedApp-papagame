package com.join.mgps.activity.arena;

import android.app.Activity;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.common.utils.m;
import com.join.android.app.common.utils.q;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.g1;
import com.join.mgps.adapter.f2;
import com.join.mgps.customview.TabPageIndicator;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameListBean;
import com.join.mgps.dto.GameTypeBean;
import com.join.mgps.dto.NewArenaGameListBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.rpc.l;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.activity_arena_gamelist_fragment)
public class a extends Fragment {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f56705t = 10;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f56706u = 1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f56707v = 2;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f56708w = 3;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f56709x = 4;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f56710y = 35;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f56711z = 31;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    l f56712c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f56713d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f56714e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    XRecyclerView f56715f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ViewPager f56716g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    TabPageIndicator f56717h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f56718i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    RelativeLayout f56719j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Activity f56721l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Bean
    com.join.mgps.Util.b f56723n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private f2 f56724o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.join.mgps.fragment.c[] f56727r;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f56720k = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f56722m = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List<GameInfoBean> f56725p = new ArrayList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ArrayList<GameTypeBean> f56726q = new ArrayList<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ArrayList<GameInfoBean> f56728s = new ArrayList<>();

    /* JADX INFO: renamed from: com.join.mgps.activity.arena.a$a, reason: collision with other inner class name */
    class C0677a extends GridLayoutManager.SpanSizeLookup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ GridLayoutManager f56729a;

        C0677a(final GridLayoutManager val$manager) {
            this.f56729a = val$manager;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int position) {
            if (a.this.f56725p.size() == position) {
                return this.f56729a.getSpanCount();
            }
            return 1;
        }
    }

    class b implements f2.e {
        b() {
        }

        @Override // com.join.mgps.adapter.f2.e
        public void a(int positon) {
            GameRoomListActivity_.intent(a.this.f56721l).c((GameInfoBean) a.this.f56725p.get(positon)).a(true).b(true).start();
        }
    }

    class c implements XRecyclerView.f {
        c() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            if (a.this.f56720k) {
                if (m.j(a.this.f56721l)) {
                    a.this.W();
                } else {
                    a.this.f56715f.stopLoadMore();
                    a3.b(a.this.f56721l).d(a.this.getString(R.string.net_connect_failed));
                }
            }
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
        }
    }

    private class d extends FragmentPagerAdapter {
        public d(FragmentManager fm2) {
            super(fm2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return a.this.f56726q.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int position) {
            return a.this.T(position);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int position) {
            return ((GameTypeBean) a.this.f56726q.get(position)).getTitle();
        }
    }

    private void R() {
        if (m.j(this.f56721l)) {
            U();
        } else {
            X();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment T(int position) {
        com.join.mgps.fragment.c cVar = this.f56727r[position];
        if (cVar != null) {
            return cVar;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("game_type", this.f56726q.get(position).getId());
        int i10 = this.f56713d;
        if (i10 == 2) {
            bundle.putInt("room_type", 35);
        } else if (i10 == 3) {
            bundle.putInt("room_type", 31);
        }
        if (position == 0) {
            bundle.putInt("pn", 2);
            bundle.putSerializable("datas", this.f56728s);
        } else {
            bundle.putInt("pn", 1);
        }
        com.join.mgps.fragment.c cVar2 = new com.join.mgps.fragment.c();
        cVar2.setArguments(bundle);
        this.f56727r[position] = cVar2;
        return cVar2;
    }

    @Click
    void Q() {
        this.f56721l.finish();
    }

    @UiThread
    void S(ResultResMainBean<NewArenaGameListBean> data) {
        this.f56726q.addAll(data.getData().getGame_type());
        this.f56728s.addAll(data.getData().getGame_list());
        this.f56727r = new com.join.mgps.fragment.c[this.f56726q.size()];
        this.f56716g.setAdapter(new d(getChildFragmentManager()));
        this.f56716g.setOffscreenPageLimit(this.f56726q.size());
        this.f56716g.setCurrentItem(0);
        this.f56717h.setNormalTextColor(getResources().getColor(R.color.color_2D6273));
        this.f56717h.setSelectedTextColor(getResources().getColor(R.color.white));
        this.f56717h.setSelectedBottomDrawableBounds(R.drawable.line_white);
        this.f56717h.setNormalBottomDrawableBound(R.drawable.trans);
        this.f56717h.setViewPager(this.f56716g);
    }

    @Background
    void U() {
        if (this.f56713d == 1) {
            W();
        } else {
            V();
        }
    }

    @Background
    void V() {
        ResultResMainBean<NewArenaGameListBean> resultResMainBeanM;
        try {
            int i10 = this.f56713d;
            if (i10 == 2) {
                resultResMainBeanM = this.f56712c.M(35, 1, 1);
            } else {
                resultResMainBeanM = i10 == 3 ? this.f56712c.M(31, 1, 1) : null;
            }
            if (!this.f56721l.isFinishing() && !this.f56721l.isDestroyed()) {
                if (resultResMainBeanM != null && resultResMainBeanM.getData() != null && resultResMainBeanM.getData().getGame_type() != null) {
                    S(resultResMainBeanM);
                    hideLoading();
                    return;
                }
                X();
            }
        } catch (Exception unused) {
            X();
        }
    }

    @Background
    void W() {
        try {
            ResultResMainBean<GameListBean> resultResMainBeanF = this.f56712c.F(this.f56723n.getAccountData().getUid(), this.f56723n.getAccountData().getToken(), this.f56722m);
            if (!this.f56721l.isFinishing() && !this.f56721l.isDestroyed()) {
                if (resultResMainBeanF != null && resultResMainBeanF.getData() != null) {
                    List<GameInfoBean> game_list = resultResMainBeanF.getData().getGame_list();
                    if (game_list == null || game_list.size() <= 0) {
                        this.f56720k = false;
                    } else {
                        this.f56720k = game_list.size() >= 10;
                    }
                    Z(game_list);
                    if (this.f56722m <= 1) {
                        hideLoading();
                    }
                    if (this.f56720k) {
                        this.f56722m++;
                        return;
                    }
                    return;
                }
                if (this.f56722m <= 1) {
                    X();
                }
            }
        } catch (Exception e10) {
            g1.b("ArenaGameListActivity", "requestRecentGameList Exception :" + e10.getMessage());
            if (this.f56722m <= 1) {
                X();
            }
        }
    }

    @UiThread
    void X() {
        this.f56715f.setVisibility(8);
        this.f56714e.setVisibility(8);
        this.f56718i.setVisibility(0);
    }

    @UiThread
    void Y() {
        this.f56714e.setVisibility(8);
        this.f56718i.setVisibility(8);
    }

    @UiThread
    void Z(List<GameInfoBean> datas) {
        if (this.f56715f.getVisibility() == 8) {
            this.f56715f.setVisibility(0);
        }
        if (datas != null && datas.size() > 0) {
            this.f56725p.addAll(datas);
        }
        this.f56724o.e(this.f56725p);
        this.f56715f.stopLoadMore();
        this.f56715f.stopRefresh();
        if (this.f56720k) {
            this.f56715f.stopLoadMore();
        } else {
            this.f56715f.setNoMore();
            if (this.f56725p.size() <= 0) {
                this.f56715f.setVisibility(8);
                return;
            }
        }
        this.f56724o.notifyDataSetChanged();
    }

    @AfterViews
    void afterViews() {
        Bundle arguments = getArguments();
        this.f56721l = getActivity();
        this.f56713d = arguments.getInt(ArenaGameListActivity_.M_TYPE_EXTRA);
        this.f56712c = com.join.mgps.rpc.impl.l.n0();
        f2 f2Var = new f2(this.f56721l, false);
        this.f56724o = f2Var;
        this.f56715f.setAdapter(f2Var);
        this.f56715f.setPreLoadCount(6);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getActivity(), ((double) q.n(getActivity()).j(this.f56721l)) >= 1.9d ? 3 : 2);
        this.f56715f.setLayoutManager(gridLayoutManager);
        gridLayoutManager.setSpanSizeLookup(new C0677a(gridLayoutManager));
        if (this.f56713d != 1) {
            this.f56715f.setVisibility(8);
            this.f56719j.setVisibility(0);
            this.f56716g = (ViewPager) this.f56721l.findViewById(R.id.viewPager);
            this.f56717h = (TabPageIndicator) this.f56721l.findViewById(R.id.pageIndicator);
            Y();
            R();
            return;
        }
        this.f56715f.setVisibility(0);
        this.f56724o.f(new b());
        this.f56715f.setLoadingMoreEnabled(true);
        this.f56715f.setPullRefreshEnabled(false);
        this.f56715f.setLoadingListener(new c());
        this.f56719j.setVisibility(8);
        Y();
        R();
    }

    @UiThread(delay = me.relex.photodraweeview.d.S1)
    void hideLoading() {
        this.f56714e.setVisibility(8);
        this.f56718i.setVisibility(8);
    }

    @Click
    void relodingimag() {
        Y();
        R();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f56721l);
    }
}
