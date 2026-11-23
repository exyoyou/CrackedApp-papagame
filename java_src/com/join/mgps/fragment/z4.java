package com.join.mgps.fragment;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.data.IntentClassfyEvent;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.adapter.j6;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RankingMainDataBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.qq.e.comm.managers.setting.GlobalSetting;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_rank_item)
public class z4 extends e implements com.join.mgps.callbacks.q {
    ExtBean B;
    View M;
    SimpleDraweeView N;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f71558c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private j6 f71560e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    RelativeLayout f71561f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    XRecyclerView f71562g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    LinearLayout f71563h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f71564i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    LinearLayout f71565j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    ImageView f71566k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    com.join.mgps.rpc.e f71567l;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f71577v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    List<CollectionBeanSub> f71578w;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private RecomDatabean f71581z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<CollectionBeanSub> f71559d = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f71568m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f71569n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f71570o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f71571p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f71572q = 1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f71573r = "";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f71574s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f71575t = "";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f71576u = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    String f71579x = "";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    String f71580y = "";
    String A = "";
    private int C = -1;
    private boolean D = false;
    ExtBean E = new ExtBean();
    final AtomicInteger F = new AtomicInteger(0);
    private int G = 0;
    private int H = 0;
    Handler I = new Handler();
    Runnable J = new Runnable() { // from class: com.join.mgps.fragment.y4
        @Override // java.lang.Runnable
        public final void run() {
            this.f71535b.k0();
        }
    };
    List<String> K = new ArrayList();
    private boolean L = false;

    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            if (newState == 0) {
                if ("1".equals(z4.this.f71579x)) {
                    z4 z4Var = z4.this;
                    z4Var.I.removeCallbacks(z4Var.J);
                    z4 z4Var2 = z4.this;
                    z4Var2.I.postDelayed(z4Var2.J, 500L);
                }
                z4.this.expDiscountGame();
            }
            z4.this.f71571p = newState != 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
            int[] iArrM = com.join.android.app.component.video.h.m(recyclerView);
            z4.this.f71569n = iArrM[1];
            z4.this.f71570o = iArrM[0];
        }
    }

    class b implements XRecyclerView.f {
        b() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            if (z4.this.f71576u) {
                return;
            }
            z4.Z(z4.this);
            z4 z4Var = z4.this;
            z4Var.g0(z4Var.f71573r, z4.this.f71575t, false);
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
            if (z4.this.f71576u) {
                return;
            }
            z4.this.f71568m = 1;
            z4 z4Var = z4.this;
            z4Var.g0(z4Var.f71573r, z4.this.f71575t, true);
        }
    }

    class c implements BaseQuickAdapter.d<CollectionBeanSub> {
        c() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
        public void onClick(@NotNull BaseQuickAdapter<CollectionBeanSub, ?> adapter, @NotNull View view, int position) {
            if (z4.this.f71560e.f62498g && position == 0) {
                return;
            }
            if (z4.this.f71560e.f62498g) {
                position--;
            }
            if (position < 0 || position >= z4.this.f71559d.size()) {
                return;
            }
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) z4.this.f71559d.get(position);
            if (collectionBeanSub.getCrc_sign_id() != null) {
                IntentUtil.getInstance().intentActivity(z4.this.f71558c, collectionBeanSub.getIntentDataBean());
            }
        }
    }

    static /* synthetic */ int Z(z4 z4Var) {
        int i10 = z4Var.f71568m;
        z4Var.f71568m = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expDiscountGame() {
        try {
            try {
                if (this.D && !this.L) {
                    this.L = true;
                    int lastVisiblePosition = this.f71562g.getLastVisiblePosition();
                    for (int i10 = 0; i10 <= lastVisiblePosition; i10++) {
                        CollectionBeanSub collectionBeanSub = this.f71559d.get(i10);
                        if (!collectionBeanSub.getExposure()) {
                            collectionBeanSub.setExposure(true);
                            if (UtilsMy.o2(collectionBeanSub)) {
                                try {
                                    Ext ext = new Ext();
                                    ext.setResultCode("discount_game");
                                    ext.setScenesCode(getClass().getSimpleName());
                                    Data data = new Data();
                                    data.setGameId(collectionBeanSub.getGame_id());
                                    com.papa.sim.statistic.t.l(this.f71558c).Y(Event.expGameAdPage, ext, data);
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                            com.papa.sim.statistic.t.l(this.f71558c).R1(Event.expGameAdPage, collectionBeanSub.getExtBean().buildScene().toExt());
                        }
                    }
                }
            } catch (Exception unused) {
            }
        } finally {
            this.L = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0(View view) {
        IntentDateBean intentDateBean = new IntentDateBean();
        if (this.f71581z.getSub() != null && !this.f71581z.getSub().isEmpty()) {
            intentDateBean = this.f71581z.getSub().get(0).getIntentDataBean();
        }
        IntentUtil.getInstance().intentActivity(view.getContext(), intentDateBean);
    }

    public static Fragment m0(String type, String title, int pageIndex, ExtBean parentExtBean) {
        RankingItemFragment_ rankingItemFragment_ = new RankingItemFragment_();
        Bundle bundle = new Bundle();
        bundle.putString("type", type);
        bundle.putString("title", title);
        bundle.putInt("pageIndex", pageIndex);
        bundle.putSerializable("parentExtBean", parentExtBean);
        rankingItemFragment_.setArguments(bundle);
        return rankingItemFragment_;
    }

    public static Fragment n0(boolean fromHome, String type, String title, List<CollectionBeanSub> datas) {
        RankingItemFragment_ rankingItemFragment_ = new RankingItemFragment_();
        Bundle bundle = new Bundle();
        bundle.putString("type", type);
        bundle.putBoolean("fromHome", fromHome);
        bundle.putString("title", title);
        bundle.putSerializable("datas", (Serializable) datas);
        rankingItemFragment_.setArguments(bundle);
        return rankingItemFragment_;
    }

    private void receiveDelete(DownloadTask downloadTask) {
        y0(downloadTask);
        this.f71560e.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        try {
            y0(downloadTask);
            this.f71560e.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        y0(downloadTask);
        this.f71560e.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        y0(downloadTask);
        this.f71560e.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public void k0() {
        for (int i10 = 0; i10 < this.f71559d.size(); i10++) {
            if (i10 <= this.f71569n) {
                this.f71559d.get(i10);
                String str = (this.f71577v ? "home" : "ranking") + (i10 + 1);
                if (!this.K.contains(str)) {
                    this.K.add(str);
                }
            }
        }
    }

    private void updateDownStateList(List<CollectionBeanSub> SearchDataBeanList) {
        if (SearchDataBeanList == null || SearchDataBeanList.isEmpty()) {
            return;
        }
        Iterator<CollectionBeanSub> it2 = SearchDataBeanList.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        View childAt;
        if (this.f71570o < 0 || this.f71569n >= this.f71562g.getChildCount()) {
            return;
        }
        for (int i10 = this.f71570o; i10 <= this.f71569n; i10++) {
            CollectionBeanSub item = this.f71560e.getItem(i10);
            if (item != null && (downloadTask = item.getDownloadTask()) != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (childAt = this.f71562g.getChildAt(i10 - this.f71570o)) != null)) {
                RecyclerView.ViewHolder childViewHolder = this.f71562g.getChildViewHolder(childAt);
                if (childViewHolder instanceof v2.c) {
                    try {
                        ((DownloadNormalView) ((v2.c) childViewHolder).getView(R.id.dv_view)).s((int) downloadTask.getProgress());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
    }

    private void y0(DownloadTask downloadTask) {
        try {
            Iterator<CollectionBeanSub> it2 = this.f71559d.iterator();
            while (it2.hasNext()) {
                DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @AfterViews
    void afterViews() {
        h0();
        this.f71567l = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.Util.j0.a().d(this);
        this.f71563h.setBackgroundResource(R.color.activity_default_background);
        this.f71558c = getActivity();
        this.f71568m = 1;
        this.f71560e = new j6(this.f71579x);
        if (com.join.mgps.Util.t2.i(this.f71579x)) {
            this.f71560e.o(Integer.parseInt("0"));
        }
        if (this.f71577v) {
            this.f71560e.n();
        }
        this.f71562g.setPullRefreshEnabled(true);
        this.f71562g.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        this.f71562g.setAdapter(this.f71560e);
        this.f71562g.setPreLoadCount(20);
        this.f71562g.addOnScrollListener(new a());
        showLoding();
        if (this.f71578w != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<CollectionBeanSub> it2 = this.f71578w.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            showMain(arrayList, true);
            this.f71562g.setNoMore();
        }
        this.f71562g.setLoadingListener(new b());
        this.f71560e.setOnItemClickListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void e0() {
        g0(this.f71573r, this.f71575t, true);
    }

    public CommonRequestBean f0(String gameType, String romType, String sort_type) {
        return RequestBeanUtil.getInstance(this.f71558c).getGameListRequestBean(this.f71568m, 10, gameType, romType, this.f71572q, sort_type);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void g0(String gameType, String romType, boolean refresh) {
        List<CollectionBeanSub> rank_list;
        if (this.f71578w != null) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(this.f71558c)) {
            x0(false);
            return;
        }
        this.f71576u = true;
        AtomicInteger atomicInteger = this.F;
        atomicInteger.set(atomicInteger.get() + 1);
        ArrayList arrayList = new ArrayList();
        try {
            try {
                RequestModel requestModel = new RequestModel(this.f71558c);
                LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
                luckHistoryrequest.setType(Integer.parseInt(this.f71579x));
                luckHistoryrequest.setPage(this.f71568m);
                luckHistoryrequest.setUid(AccountUtil_.getInstance_(this.f71558c).getAccountData().getUid());
                requestModel.setArgs(luckHistoryrequest);
                ResponseModel<RankingMainDataBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().F1(requestModel.makeSign()).execute().body();
                AtomicInteger atomicInteger2 = this.F;
                atomicInteger2.set(atomicInteger2.get() - 1);
                if (responseModelBody == null || responseModelBody.getData() == null) {
                    rank_list = null;
                } else {
                    rank_list = responseModelBody.getData().getRank_list();
                    if (responseModelBody.getData().getRank_type() != null && responseModelBody.getData().getRank_type().size() > 0) {
                        new PrefDef_(this.f71558c).rankingMenu2().g(JsonMapper.toJsonString(responseModelBody.getData().getRank_type()));
                    }
                }
                if (rank_list != null) {
                    int i10 = 0;
                    for (CollectionBeanSub collectionBeanSub : rank_list) {
                        i10++;
                        if (this.f71577v && i10 > 3) {
                            o0();
                            break;
                        }
                        collectionBeanSub.set_from_type(this.H);
                        collectionBeanSub.set_from(this.G);
                        collectionBeanSub.getExtBean().itemWithParent(this.E);
                        collectionBeanSub.setRecPosition(this.A + "-ranking-" + (arrayList.size() + i10 + 1));
                        arrayList.add(collectionBeanSub);
                    }
                }
                if (arrayList.size() > 0) {
                    showMain(arrayList, refresh);
                } else if (this.f71568m == 1 && arrayList.size() == 0) {
                    x0(true);
                } else {
                    o0();
                }
            } catch (Exception e10) {
                AtomicInteger atomicInteger3 = this.F;
                atomicInteger3.set(atomicInteger3.get() - 1);
                e10.printStackTrace();
                if (this.f71568m == 1 && arrayList.size() == 0) {
                    x0(false);
                } else {
                    o0();
                }
            }
        } finally {
            this.f71576u = false;
        }
    }

    void h0() {
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        this.f71579x = arguments.getString("type");
        this.C = arguments.getInt("pageIndex");
        this.f71577v = arguments.getBoolean("fromHome");
        this.f71580y = arguments.getString("title");
        this.B = (ExtBean) arguments.getSerializable("parentExtBean");
        this.f71578w = (List) arguments.getSerializable("datas");
        this.f71573r = this.f71579x;
        ExtBean extBean = this.B;
        if (extBean != null) {
            this.E.setParent(extBean);
        } else {
            this.E.setFirstModule(EventP.FirstModel.rankingList.name()).setSecondModule(EventP.SecondModel.rankingGroup.name());
        }
        if (this.f71577v) {
            this.A = "home";
        } else {
            this.A = "ranking";
        }
        if ("1".equals(this.f71579x)) {
            this.G = 10903;
            this.H = 10903;
            this.E.setFrom("10017");
            return;
        }
        if ("2".equals(this.f71579x)) {
            this.G = 10902;
            this.H = 10902;
            this.E.setFrom("10018");
            return;
        }
        if ("3".equals(this.f71579x)) {
            this.G = 10901;
            this.H = 10901;
            this.E.setFrom("10019");
            return;
        }
        if ("6".equals(this.f71579x)) {
            this.G = 10904;
            this.H = 10904;
            this.E.setFrom("10016");
        } else if ("7".equals(this.f71579x)) {
            this.G = 10905;
            this.H = 10905;
            this.E.setFrom("10014");
        } else if (GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD.equals(this.f71579x)) {
            this.G = 10906;
            this.H = 10906;
            this.E.setFrom("10015");
        }
    }

    void i0() {
        XRecyclerView xRecyclerView;
        if (TextUtils.isEmpty(this.f71579x) || (xRecyclerView = this.f71562g) == null) {
            return;
        }
        View view = this.M;
        if (view != null) {
            xRecyclerView.removeView(view);
            this.f71560e.f62498g = false;
            this.M = null;
            return;
        }
        RecomDatabean recomDatabean = this.f71581z;
        if (recomDatabean == null || recomDatabean.getMain() == null || this.f71581z.getSub() == null || this.f71581z.getSub().isEmpty()) {
            return;
        }
        if (this.M == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_ranking_item_header, (ViewGroup) null, false);
            this.M = viewInflate;
            this.N = (SimpleDraweeView) viewInflate.findViewById(R.id.cover);
            this.f71562g.addHeaderView(this.M);
            this.f71560e.f62498g = true;
        }
        com.join.android.app.common.utils.l.d(this.N, R.drawable.img_qs, this.f71581z.getMain() != null ? this.f71581z.getMain().getPic_remote() : "");
        this.M.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.w4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f71440b.j0(view2);
            }
        });
    }

    @Click
    void l0() {
        this.f71568m = 1;
        g0(this.f71573r, this.f71575t, true);
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
        e0();
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null || !parentFragment.isVisible()) {
            return;
        }
        Ext ext = new Ext();
        ext.setFrom(this.G + "");
        com.papa.sim.statistic.t.l(this.f71558c).R1(Event.goGameRankGame, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o0() {
        XRecyclerView xRecyclerView = this.f71562g;
        if (xRecyclerView != null) {
            xRecyclerView.setNoMore();
        }
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            updateUI(downloadTaskA, 1);
            return;
        }
        if (iC == 3) {
            updateUI(downloadTaskA, 2);
            return;
        }
        if (iC != 5) {
            if (iC == 6) {
                updateUI(downloadTaskA, 6);
                return;
            }
            if (iC == 7) {
                updateUI(downloadTaskA, 3);
                return;
            }
            if (iC == 8) {
                if (this.f71571p) {
                    return;
                }
                updateProgressPartly();
                return;
            } else if (iC != 48) {
                switch (iC) {
                    case 10:
                        updateUI(downloadTaskA, 7);
                        break;
                    case 12:
                        updateUI(downloadTaskA, 8);
                        break;
                    case 13:
                        updateUI(downloadTaskA, 9);
                        break;
                }
                return;
            }
        }
        updateUI(downloadTaskA, 5);
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        j6 j6Var;
        super.onHiddenChanged(hidden);
        if (hidden || (j6Var = this.f71560e) == null) {
            return;
        }
        j6Var.notifyDataSetChanged();
    }

    @Override // com.join.mgps.callbacks.q
    public void onPageVisible(int position) {
        ExtBean extBean;
        boolean z10 = position == this.C;
        this.D = z10;
        if (!z10 || (extBean = this.E) == null || extBean.hasExplore()) {
            return;
        }
        com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonExp, this.E.copy().setTypeCode(EventP.TypeCode.page.name()).buildScene().toExt());
        expDiscountGame();
        this.E.setHasExplore(true);
    }

    @Click
    void p0() {
        if (this.f71572q != 1001) {
            getActivity().finish();
        }
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void q0(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        j6 j6Var = this.f71560e;
        if (j6Var != null) {
            j6Var.notifyDataSetChanged();
        }
    }

    public void r0(List<CollectionBeanSub> defaultdatas, int from) {
        if (defaultdatas == null || defaultdatas.equals(this.f71578w)) {
            return;
        }
        this.f71578w = defaultdatas;
        ArrayList arrayList = new ArrayList();
        for (CollectionBeanSub collectionBeanSub : defaultdatas) {
            collectionBeanSub.set_from_type(from);
            collectionBeanSub.set_from(from);
            arrayList.add(collectionBeanSub);
        }
        this.f71559d.clear();
        showMain(arrayList, true);
        this.f71562g.setNoMore();
    }

    @Click
    void relodingimag() {
        this.f71568m = 1;
        showLoding();
        g0(this.f71573r, this.f71575t, true);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f71558c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        LinearLayout linearLayout = this.f71563h;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f71564i;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f71562g;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f71565j;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CollectionBeanSub> subList, boolean refresh) {
        try {
            if (this.F.get() > 0) {
                return;
            }
            LinearLayout linearLayout = this.f71564i;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            LinearLayout linearLayout2 = this.f71563h;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            XRecyclerView xRecyclerView = this.f71562g;
            if (xRecyclerView != null) {
                xRecyclerView.setVisibility(0);
            }
            LinearLayout linearLayout3 = this.f71565j;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(8);
            }
            XRecyclerView xRecyclerView2 = this.f71562g;
            if (xRecyclerView2 != null) {
                xRecyclerView2.stopLoadMore();
                this.f71562g.stopRefresh();
            }
            if (this.f71568m == 1) {
                this.f71559d.clear();
                i0();
            }
            Iterator<CollectionBeanSub> it2 = subList.iterator();
            while (it2.hasNext()) {
                it2.next().getExtBean().itemWithParent(this.E);
            }
            updateDownStateList(subList);
            this.f71559d.addAll(subList);
            if (this.f71562g != null) {
                if (subList.isEmpty()) {
                    this.f71562g.setNoMore();
                }
                if (refresh) {
                    this.f71560e.submitList(subList);
                } else {
                    this.f71560e.addAll(subList);
                }
                if (this.f71562g.getLastVisiblePosition() == this.f71562g.getAdapter().getItemCount() - 1 && this.f71568m == 1 && this.D) {
                    this.f71562g.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.x4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f71467b.expDiscountGame();
                        }
                    }, 500L);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void t0() {
        com.join.mgps.Util.j0.a().c(new IntentClassfyEvent(0));
    }

    public void u0(String gameType) {
        if (gameType.equals(this.f71573r)) {
            return;
        }
        this.f71573r = gameType;
        this.f71562g.reset();
        this.f71568m = 1;
        showLoding();
        this.f71559d.clear();
        this.f71560e.notifyDataSetChanged();
        g0(this.f71573r, this.f71575t, true);
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
            switch (from) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    break;
                case 3:
                    receiveDelete(downloadTask);
                    break;
                case 5:
                    receiveSuccess(downloadTask);
                    break;
                case 6:
                    receiveError(downloadTask);
                    break;
            }
        }
    }

    public void v0(String romType) {
        String str = this.f71575t;
        if (str == null || romType == null || romType.equals(str)) {
            return;
        }
        this.f71575t = romType;
        XRecyclerView xRecyclerView = this.f71562g;
        if (xRecyclerView != null) {
            xRecyclerView.reset();
        }
        this.f71568m = 1;
        showLoding();
        this.f71559d.clear();
        j6 j6Var = this.f71560e;
        if (j6Var != null) {
            j6Var.notifyDataSetChanged();
        }
        g0(this.f71573r, this.f71575t, true);
    }

    public void w0(String gameType, String romType) {
        this.f71575t = romType;
        this.f71573r = gameType;
        this.f71562g.reset();
        this.f71568m = 1;
        showLoding();
        this.f71559d.clear();
        this.f71560e.notifyDataSetChanged();
        g0(this.f71573r, this.f71575t, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void x0(boolean isNormal) {
        XRecyclerView xRecyclerView = this.f71562g;
        if (xRecyclerView != null) {
            xRecyclerView.stopLoadMore();
            this.f71562g.stopRefresh();
        }
        if (isNormal) {
            if (isNormal && this.f71568m == 1 && this.f71559d.size() == 0) {
                LinearLayout linearLayout = this.f71564i;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                LinearLayout linearLayout2 = this.f71563h;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(8);
                }
                XRecyclerView xRecyclerView2 = this.f71562g;
                if (xRecyclerView2 != null) {
                    xRecyclerView2.setVisibility(8);
                }
                LinearLayout linearLayout3 = this.f71565j;
                if (linearLayout3 != null) {
                    linearLayout3.setVisibility(0);
                    return;
                }
                return;
            }
            return;
        }
        if (this.f71568m != 1 || this.f71559d.size() != 0) {
            try {
                com.join.mgps.Util.a3.b(this.f71558c).d(getString(R.string.net_connect_failed));
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        LinearLayout linearLayout4 = this.f71564i;
        if (linearLayout4 != null) {
            linearLayout4.setVisibility(0);
        }
        LinearLayout linearLayout5 = this.f71563h;
        if (linearLayout5 != null) {
            linearLayout5.setVisibility(8);
        }
        XRecyclerView xRecyclerView3 = this.f71562g;
        if (xRecyclerView3 != null) {
            xRecyclerView3.setVisibility(8);
        }
        LinearLayout linearLayout6 = this.f71565j;
        if (linearLayout6 != null) {
            linearLayout6.setVisibility(8);
        }
    }
}
