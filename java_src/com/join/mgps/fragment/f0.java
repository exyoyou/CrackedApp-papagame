package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import com.czhj.sdk.common.Constants;
import com.flyco.tablayout.SlidingTabLayout;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.ForumIndexActivity_;
import com.join.mgps.activity.NewArenaMainActivty_;
import com.join.mgps.activity.SearchHintActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.customview.ViewPagerSlide;
import com.join.mgps.dto.DIscoverTypeBean;
import com.join.mgps.dto.DiscoverListData;
import com.join.mgps.dto.DiscoverListItemBean;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameWorldResponse;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.discovery_fragment_layout)
public class f0 extends Fragment implements View.OnClickListener {
    com.join.mgps.rpc.i A;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    CoordinatorLayout f69493c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    LinearLayout f69494d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f69495e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    ViewPagerSlide f69496f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    Toolbar f69497g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    SlidingTabLayout f69498h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    AppBarLayout f69499i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    RelativeLayout f69500j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    GridView f69501k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    HListView f69502l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    TextView f69503m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    NestedScrollView f69504n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    LinearLayout f69505o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    TextView f69506p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @ViewById
    TextView f69507q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @ViewById
    TextView f69508r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @ViewById
    TextView f69509s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Bean
    com.join.mgps.Util.b f69510t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.join.mgps.rpc.l f69512v;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private List<DownloadTask> f69515y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    Context f69516z;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private com.join.mgps.adapter.b0 f69511u = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.join.mgps.adapter.a0 f69513w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f69514x = "";
    private int B = 3;
    List<DIscoverTypeBean> C = new ArrayList();
    private List<DiscoveryMainDataBean.BattleGameBean> D = null;

    class a implements AppBarLayout.OnOffsetChangedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f69517a;

        a(final int val$notAlphH) {
            this.f69517a = val$notAlphH;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int verticalOffset) {
            int i10 = -verticalOffset;
            if (this.f69517a > i10) {
                f0.this.f69498h.setVisibility(8);
                f0.this.f69509s.setVisibility(8);
            } else {
                f0.this.f69498h.setVisibility(0);
                f0.this.f69509s.setVisibility(0);
                float fAbs = Math.abs((verticalOffset + this.f69517a) * 1.0f) / (appBarLayout.getTotalScrollRange() - this.f69517a);
                f0.this.f69498h.setAlpha(fAbs);
                f0.this.f69509s.setAlpha(fAbs * 0.8f);
            }
            if (i10 != appBarLayout.getTotalScrollRange()) {
                f0.this.f69496f.setSlide(false);
            } else {
                f0.this.f69498h.setAlpha(1.0f);
                f0.this.f69496f.setSlide(true);
            }
        }
    }

    class b implements AdapterView.OnItemClickListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            com.papa.sim.statistic.t.l(f0.this.getActivity()).q2(AccountUtil_.getInstance_(f0.this.getActivity()).getUid(), "gameEnter");
            DiscoveryMainDataBean.BattleGameBean item = f0.this.f69511u.getItem(position);
            if (item == null) {
                return;
            }
            GameInfoBean gameInfoBean = new GameInfoBean();
            gameInfoBean.setGame_name(item.getGame_name());
            gameInfoBean.setGame_ico(item.getGame_ico());
            gameInfoBean.setGame_id(item.getGame_id());
            GameRoomListActivity_.intent(f0.this.getActivity()).c(gameInfoBean).start();
        }
    }

    class c implements it.sephiroth.android.library.widget.AdapterView.d {
        c() {
        }

        @Override // it.sephiroth.android.library.widget.AdapterView.d
        public void a(it.sephiroth.android.library.widget.AdapterView<?> parent, View view, int position, long id2) {
            if (parent.getAdapter() == null || !(parent.getAdapter() instanceof com.join.mgps.adapter.a0)) {
                return;
            }
            com.papa.sim.statistic.t.l(f0.this.getActivity()).q2(AccountUtil_.getInstance_(f0.this.getActivity()).getUid(), "groupEnter");
            IntentUtil.getInstance().goForumGroupActivity(parent.getContext(), ((com.join.mgps.adapter.a0) parent.getAdapter()).getItem(position).getFid(), "discovery");
        }
    }

    private void O() {
        this.f69514x = "";
        List<DownloadTask> listT = q5.f.M().T(null);
        this.f69515y = listT;
        if (listT == null || listT.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.f69515y) {
            if (downloadTask.isIs_fight() == 1) {
                if ("".equals(this.f69514x)) {
                    this.f69514x += downloadTask.getCrc_link_type_val();
                } else {
                    this.f69514x += "," + downloadTask.getCrc_link_type_val();
                }
            }
        }
    }

    public void N() {
        O();
        loadData();
    }

    @Receiver(actions = {"com.join.update.position"})
    void P(Intent intent) {
        try {
            this.f69496f.setCurrentItem(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public int Q() {
        AppBarLayout appBarLayout = this.f69499i;
        if (appBarLayout != null && appBarLayout.getVisibility() == 0) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) this.f69499i.getLayoutParams()).getBehavior();
            if (behavior instanceof AppBarLayout.Behavior) {
                int topAndBottomOffset = ((AppBarLayout.Behavior) behavior).getTopAndBottomOffset();
                return (topAndBottomOffset != 0 && topAndBottomOffset == (-this.f69499i.getTotalScrollRange())) ? 2 : 1;
            }
        }
        return 2;
    }

    @Background
    void R() {
        List<DIscoverTypeBean> type_list;
        try {
            ForumResponse<DiscoverListData<DiscoverListItemBean>> forumResponseQ = this.A.q(AccountUtil_.getInstance_(this.f69516z).getAccountData().getUid(), 1, 1);
            if (forumResponseQ == null || (type_list = forumResponseQ.getData().getType_list()) == null || type_list.size() <= 0) {
                T();
            } else {
                X(type_list);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            T();
        }
    }

    @Click
    void S() {
        U();
    }

    @UiThread(delay = 1000)
    void T() {
        int i10 = this.B;
        if (i10 <= 0) {
            V();
        } else {
            this.B = i10 - 1;
            R();
        }
    }

    public void U() {
        AppBarLayout appBarLayout = this.f69499i;
        if (appBarLayout != null) {
            appBarLayout.setVisibility(8);
            this.f69504n.setVisibility(8);
            this.f69498h.setVisibility(0);
            this.f69498h.setAlpha(1.0f);
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) this.f69499i.getLayoutParams()).getBehavior();
            if (behavior instanceof AppBarLayout.Behavior) {
                AppBarLayout.Behavior behavior2 = (AppBarLayout.Behavior) behavior;
                if (behavior2.getTopAndBottomOffset() != this.f69499i.getTotalScrollRange()) {
                    behavior2.setTopAndBottomOffset(-this.f69499i.getTotalScrollRange());
                }
            }
        }
    }

    @UiThread
    void V() {
        List<DiscoveryMainDataBean.BattleGameBean> list = this.D;
        if (list == null || list.size() == 0) {
            try {
                this.f69495e.setVisibility(0);
                this.f69494d.setVisibility(8);
                this.f69493c.setVisibility(8);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @UiThread
    void W(DiscoveryMainDataBean results) {
        try {
            LinearLayout linearLayout = this.f69495e;
            if (linearLayout == null || results == null) {
                return;
            }
            linearLayout.setVisibility(8);
            this.f69494d.setVisibility(8);
            this.f69493c.setVisibility(0);
            this.D = results.getBattle_game();
            this.f69507q.setText(results.getBattle_game_count() + "款");
            List<DiscoveryMainDataBean.BattleGameBean> list = this.D;
            if (list != null && list.size() > 0) {
                if (this.D.size() <= 3) {
                    this.f69501k.setColumnWidth(this.D.size());
                } else {
                    this.f69501k.setColumnWidth(3);
                }
                com.join.mgps.adapter.b0 b0Var = this.f69511u;
                if (b0Var == null) {
                    com.join.mgps.adapter.b0 b0Var2 = new com.join.mgps.adapter.b0(getActivity(), this.D, this.f69514x);
                    this.f69511u = b0Var2;
                    this.f69501k.setAdapter((ListAdapter) b0Var2);
                } else {
                    b0Var.c(this.D);
                }
                this.f69511u.b(this.f69514x);
            }
            List<DiscoveryMainDataBean.ForumListBean> forum_list = results.getForum_list();
            if (forum_list == null || forum_list.size() <= 0) {
                return;
            }
            com.join.mgps.adapter.a0 a0Var = this.f69513w;
            if (a0Var == null) {
                this.f69513w = new com.join.mgps.adapter.a0(getActivity(), forum_list);
            } else {
                a0Var.b(forum_list);
            }
            this.f69502l.setAdapter((ListAdapter) this.f69513w);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void X(List<DIscoverTypeBean> dIscoverTypeBeans) {
        try {
            this.C.clear();
            this.C.addAll(dIscoverTypeBeans);
            if (dIscoverTypeBeans != null && dIscoverTypeBeans.size() != 0) {
                com.join.mgps.adapter.h0 h0Var = new com.join.mgps.adapter.h0(getFragmentManager());
                ArrayList arrayList = new ArrayList();
                for (DIscoverTypeBean dIscoverTypeBean : dIscoverTypeBeans) {
                    DIscoveryTabFragment_ dIscoveryTabFragment_ = new DIscoveryTabFragment_();
                    Bundle bundle = new Bundle();
                    bundle.putInt(u.b.f97417c, dIscoverTypeBean.getTid());
                    dIscoveryTabFragment_.setArguments(bundle);
                    arrayList.add(new com.join.mgps.adapter.h0.a(dIscoverTypeBean.getName(), dIscoveryTabFragment_));
                }
                h0Var.e(arrayList);
                this.f69496f.setAdapter(h0Var);
                ViewPagerSlide viewPagerSlide = this.f69496f;
                int size = 4;
                if (dIscoverTypeBeans.size() <= 4) {
                    size = dIscoverTypeBeans.size();
                }
                viewPagerSlide.setOffscreenPageLimit(size);
                this.f69498h.setViewPager(this.f69496f);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @AfterViews
    void afterView() {
        this.f69516z = getContext();
        this.A = com.join.mgps.rpc.impl.g.A0();
        this.f69504n.setVisibility(8);
        this.f69512v = com.join.mgps.rpc.impl.k.n0();
        this.f69498h.setVisibility(8);
        this.f69499i.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new a(getResources().getDimensionPixelOffset(R.dimen.wdp100)));
        this.f69503m.setOnClickListener(this);
        this.f69505o.setOnClickListener(this);
        this.f69506p.setOnClickListener(this);
        this.f69507q.setOnClickListener(this);
        this.f69500j.setOnClickListener(this);
        this.f69501k.setOnItemClickListener(new b());
        this.f69502l.setOnItemClickListener(new c());
        N();
        R();
    }

    @Background
    void loadData() {
        if (!com.join.android.app.common.utils.m.j(getActivity())) {
            V();
            return;
        }
        try {
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.put("uid", this.f69510t.getUid());
            linkedMultiValueMap.put(Constants.TOKEN, this.f69510t.getToken());
            linkedMultiValueMap.put("game_ids", this.f69514x);
            GameWorldResponse<DiscoveryMainDataBean> gameWorldResponseC = this.f69512v.C(linkedMultiValueMap);
            if (gameWorldResponseC == null || gameWorldResponseC.getError() != 0) {
                V();
            } else {
                W(gameWorldResponseC.getData());
            }
        } catch (Exception unused) {
            V();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        switch (v10.getId()) {
            case R.id.discoveryTitleSearchIv /* 2131363029 */:
                SearchHintActivity_.intent(getActivity()).start();
                break;
            case R.id.discoveryTopRl /* 2131363032 */:
            case R.id.number /* 2131366266 */:
            case R.id.toFightRl /* 2131367835 */:
                NewArenaMainActivty_.intent(getActivity()).start();
                com.papa.sim.statistic.t.l(getActivity()).q2(AccountUtil_.getInstance_(getActivity()).getUid(), "enterLobby");
                break;
            case R.id.toCommunityLl /* 2131367833 */:
            case R.id.toCommunityTx /* 2131367834 */:
                com.papa.sim.statistic.t.l(getActivity()).q2(AccountUtil_.getInstance_(getActivity()).getUid(), "communityEnter");
                ForumIndexActivity_.intent(getContext()).start();
                break;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        N();
        List<DIscoverTypeBean> list = this.C;
        if (list == null || list.size() == 0) {
            R();
        }
    }

    @Click
    void relodingimag() {
        N();
        R();
    }

    public void scrollToTop() {
        AppBarLayout appBarLayout = this.f69499i;
        if (appBarLayout != null) {
            appBarLayout.setVisibility(0);
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) this.f69499i.getLayoutParams()).getBehavior();
            if (behavior instanceof AppBarLayout.Behavior) {
                AppBarLayout.Behavior behavior2 = (AppBarLayout.Behavior) behavior;
                if (behavior2.getTopAndBottomOffset() != 0) {
                    behavior2.setTopAndBottomOffset(0);
                }
            }
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f69516z);
    }
}
