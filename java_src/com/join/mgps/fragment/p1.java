package com.join.mgps.fragment;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.join.android.app.component.video.MultiStandVideo;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.impl.Downloadable;
import com.join.kotlin.ui.findgame.adapter.FindMiniRecentGameAdapter;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.H5GameDataBean;
import com.join.mgps.dto.JpInfoBean;
import com.join.mgps.dto.RequestMiniGameArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Event;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_find_mini_game)
public class p1 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    XQuickRecyclerView f70462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    LinearLayout f70463d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    d f70464e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Context f70465f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f70466g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70467h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f70468i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    RecyclerView f70469j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    ConstraintLayout f70470k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @FragmentArg
    String f70471l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    com.join.mgps.rpc.k f70472m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    com.join.android.app.component.video.h f70474o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private FindMiniRecentGameAdapter f70477r;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f70473n = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f70475p = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f70476q = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    ExtBean f70478s = new ExtBean().setFirstModule("rankList").setSecondModule("quickGame").setFrom(Constants.COUNTYLY_CONNECT_INPUT_WS_SUCCESS);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private List<CommonGameInfoBean> f70479t = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    boolean f70480u = false;

    class a implements XQuickRecyclerView.g {
        a() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XQuickRecyclerView.g
        public void onLoadMore() {
            p1 p1Var = p1.this;
            int i10 = p1Var.f70473n + 1;
            p1Var.f70473n = i10;
            p1Var.R(i10);
        }

        @Override // com.join.android.app.component.xrecyclerview.XQuickRecyclerView.g
        public void onRefresh() {
            p1.this.f70462c.reset();
            p1.this.f70475p = false;
            p1 p1Var = p1.this;
            p1Var.f70473n = 1;
            p1Var.f70479t.clear();
            p1 p1Var2 = p1.this;
            p1Var2.R(p1Var2.f70473n);
        }
    }

    class b extends com.join.mgps.base.decoration.b {
        b() {
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
            aVar.f64116f = 0;
            aVar.f64117a = (int) p1.this.getResources().getDimension(R.dimen.wdp10);
            aVar.f64118b = (int) p1.this.getResources().getDimension(R.dimen.wdp10);
            if (position == 0 || position == 1) {
                aVar.f64119c = (int) p1.this.getResources().getDimension(R.dimen.wdp20);
            } else {
                aVar.f64119c = (int) p1.this.getResources().getDimension(R.dimen.wdp10);
            }
            aVar.f64120d = (int) p1.this.getResources().getDimension(R.dimen.wdp10);
            return aVar;
        }
    }

    class c extends RecyclerView.OnScrollListener {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            if (newState == 0) {
                com.join.android.app.component.video.h hVar = p1.this.f70474o;
                if (hVar != null) {
                    hVar.h(2);
                }
                p1.this.T();
            }
        }
    }

    public class d extends com.join.mgps.base.a<CommonGameInfoBean, com.join.mgps.base.b> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final int f70484i = 1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final int f70485j = 2;

        class a extends com.join.mgps.callbacks.w {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ DownloadNormalView f70487b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ CommonGameInfoBean f70488c;

            a(final DownloadNormalView val$dv_view, final CommonGameInfoBean val$item) {
                this.f70487b = val$dv_view;
                this.f70488c = val$item;
            }

            @Override // com.join.mgps.callbacks.w, v7.h
            public void onClickBlank(String s10, Object... objects) {
                super.onClickBlank(s10, objects);
                this.f70487b.performClick();
                com.papa.sim.statistic.t.l(p1.this.requireContext()).R1(Event.commonClick, this.f70488c.getExtBean().buildScene().toExt());
            }

            @Override // com.join.mgps.callbacks.w, com.join.mgps.callbacks.y
            public void onClickCover() {
                super.onClickCover();
                this.f70487b.performClick();
                com.papa.sim.statistic.t.l(p1.this.requireContext()).R1(Event.commonClick, this.f70488c.getExtBean().buildScene().toExt());
            }
        }

        class b extends m6.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CommonGameInfoBean f70490a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ DownloadTask f70491b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ DownloadNormalView f70492c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(Context ctx, Downloadable info, final CommonGameInfoBean val$item, final DownloadTask val$downloadTask, final DownloadNormalView val$dv_view) {
                super(ctx, info);
                this.f70490a = val$item;
                this.f70491b = val$downloadTask;
                this.f70492c = val$dv_view;
            }

            @Override // m6.c, com.join.mgps.callbacks.f
            public void onViewUpdate(DownloadNormalView downView) {
                if (this.f70490a.isMiniGame() || this.f70490a.isH5VmGame()) {
                    DownloadTask downloadTask = this.f70491b;
                    if (downloadTask != null && downloadTask.isSingleGame() && this.f70491b.getStatus() == 11) {
                        this.f70492c.q("安装");
                    } else {
                        this.f70492c.q("打开");
                    }
                    this.f70492c.setTextColor(-1);
                }
            }
        }

        public d() {
            super(null);
            r(1, R.layout.item_find_mini_game);
            r(2, R.layout.item_find_mini_game_video);
        }

        private void z(com.join.mgps.base.b helper, CommonGameInfoBean item) {
            MultiStandVideo multiStandVideo;
            DownloadTask downloadTask = item.getDownloadTask();
            JpInfoBean jp_info = item.getJp_info();
            final DownloadNormalView downloadNormalView = (DownloadNormalView) helper.getView(R.id.dv_view);
            if (jp_info != null) {
                if (jp_info.isGame()) {
                    GInfoBean g_info = item.getG_info();
                    if (g_info != null) {
                        helper.setText(R.id.mgListviewItemAppname, g_info.getName());
                        ((TextView) helper.getView(R.id.mgListviewItemAppname)).setTypeface(Typeface.DEFAULT, 0);
                        if (com.join.mgps.Util.t2.h(item.getV_url())) {
                            if (com.join.mgps.Util.t2.i(item.getBig_pic())) {
                                com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.sdv_image), item.getBig_pic());
                            } else {
                                List<String> pic_info = g_info.getPic_info();
                                if (com.join.mgps.Util.t2.h("") && pic_info != null && pic_info.size() > 0) {
                                    com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.sdv_image), pic_info.get(0));
                                }
                            }
                        }
                        helper.setGone(R.id.giftPackageSwich, g_info.getGift_package_switch() == 1);
                        if (g_info.getScore().doubleValue() <= 0.0d || !g_info.showScore()) {
                            helper.setGone(R.id.tv_score, false);
                        } else {
                            helper.setText(R.id.tv_score, String.valueOf(g_info.getScore()));
                            helper.setGone(R.id.tv_score, true);
                        }
                        helper.setText(R.id.tv_label, UtilsMy.P1(g_info.getSp_tag_info(), g_info.getTag_info()));
                    }
                } else {
                    helper.setText(R.id.appName, item.getTitle());
                    com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.sdv_image), item.getBig_pic());
                }
                if (com.join.mgps.Util.t2.i(item.getV_url()) && (multiStandVideo = (MultiStandVideo) helper.getView(R.id.wf_video)) != null) {
                    multiStandVideo.l(item.getBig_pic());
                    multiStandVideo.setName(item.getTitle());
                    multiStandVideo.setPlayTag(p1.this.f70474o.s());
                    multiStandVideo.setPlayPosition(item.hashCode());
                    multiStandVideo.setUpLazy(item.getV_url(), false, null, null, "");
                    multiStandVideo.setRotateViewAuto(false);
                    multiStandVideo.setLockLand(true);
                    multiStandVideo.setReleaseWhenLossAudio(false);
                    multiStandVideo.setShowFullAnimation(false);
                    multiStandVideo.setIsTouchWiget(false);
                    multiStandVideo.setNeedLockFull(false);
                    multiStandVideo.setVideoAllCallBack(new a(downloadNormalView, item));
                }
                if (com.join.mgps.Util.t2.i(item.getBg_color())) {
                    try {
                        if (item.getBg_color().startsWith("#")) {
                            helper.setBackgroundColor(R.id.ll_bottom_container, Color.parseColor(item.getBg_color()));
                        } else {
                            helper.setBackgroundColor(R.id.ll_bottom_container, Color.parseColor("#" + item.getBg_color()));
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else {
                    helper.setBackgroundColor(R.id.ll_bottom_container, Color.parseColor("#994558"));
                }
            }
            downloadNormalView.f(new b(p1.this.f70465f, item, item, downloadTask, downloadNormalView));
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.q1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    downloadNormalView.performClick();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, CommonGameInfoBean item) {
            if (item == null) {
                return;
            }
            z(helper, item);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
        public void onViewRecycled(@NonNull com.join.mgps.base.b holder) {
            super.onViewRecycled(holder);
            holder.itemView.setOnClickListener(null);
            MultiStandVideo multiStandVideo = (MultiStandVideo) holder.getView(R.id.wf_video);
            if (multiStandVideo != null) {
                multiStandVideo.onVideoPause();
                multiStandVideo.release();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.join.mgps.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            return (getItem(position) == 0 || !com.join.mgps.Util.t2.i(((CommonGameInfoBean) getItem(position)).getV_url())) ? 1 : 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void T() {
        d dVar;
        if (this.f70462c == null || (dVar = this.f70464e) == null || dVar.getItemCount() <= 0) {
            return;
        }
        int[] iArrM = com.join.android.app.component.video.h.m(this.f70462c);
        for (int i10 = iArrM[0]; i10 <= iArrM[1]; i10++) {
            CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) this.f70464e.getItem(i10);
            if (commonGameInfoBean != null && !commonGameInfoBean.getExposure() && commonGameInfoBean.getExtBean() != null) {
                com.papa.sim.statistic.t.l(requireContext()).R1(Event.expGameAdPage, commonGameInfoBean.getExtBean().buildScene().toExt());
                commonGameInfoBean.setExposure(true);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void X(DownloadTask downloadTask) {
        for (int i10 = 0; i10 < this.f70464e.getItemCount(); i10++) {
            try {
                DlTaskManager.INSTANCE.updateDownloadTask((CommonGameInfoBean) this.f70464e.getItem(i10));
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        updateDownStateList(this.f70479t);
        d dVar = this.f70464e;
        if (dVar != null) {
            dVar.notifyDataSetChanged();
        }
    }

    private void receiveError(DownloadTask downloadTask) {
        updateDownStateList(this.f70479t);
        this.f70464e.notifyDataSetChanged();
    }

    private void receiveStart(DownloadTask downloadTask) {
        X(downloadTask);
        d dVar = this.f70464e;
        if (dVar != null) {
            dVar.notifyDataSetChanged();
        }
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        updateDownStateList(this.f70479t);
        this.f70464e.notifyDataSetChanged();
    }

    private void updateDownStateList(List<CommonGameInfoBean> SearchDataBeanList) {
        Iterator<CommonGameInfoBean> it2 = SearchDataBeanList.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
    }

    @AfterViews
    void M() {
        this.f70465f = getActivity();
        com.join.mgps.Util.j0.a().d(this);
        this.f70472m = com.join.mgps.rpc.impl.i.P0();
        this.f70464e = new d();
        this.f70462c.setLayoutManager(new GridLayoutManager(this.f70465f, 2));
        this.f70462c.setAdapter(this.f70464e);
        this.f70462c.setPreLoadCount(10);
        this.f70462c.setPtrFrameLayout(this.f70467h);
        this.f70462c.setItemViewCacheSize(8);
        this.f70462c.setHasFixedSize(true);
        this.f70474o = new com.join.android.app.component.video.h(this.f70462c, "FindMiniGameFragmentVideoHelper");
        this.f70462c.setLoadingListener(new a());
        RecyclerView.ItemAnimator itemAnimator = this.f70462c.getItemAnimator();
        if (itemAnimator instanceof SimpleItemAnimator) {
            ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        }
        this.f70462c.addItemDecoration(new b());
        this.f70462c.addOnScrollListener(new c());
        if (this.f70477r == null) {
            this.f70477r = new FindMiniRecentGameAdapter();
        }
        this.f70469j.setLayoutManager(new LinearLayoutManager(requireContext(), 0, false));
        this.f70469j.setAdapter(this.f70477r);
        R(1);
    }

    @UiThread
    void N() {
        LinearLayout linearLayout = this.f70463d;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        S();
        XQuickRecyclerView xQuickRecyclerView = this.f70462c;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setVisibility(8);
        }
    }

    @Background
    void R(int page) {
        try {
            if (!com.join.android.app.common.utils.m.j(this.f70465f)) {
                showLodingFailed();
                return;
            }
            if (page == 1 && this.f70475p) {
                showLoding();
            }
            RequestModel requestModel = new RequestModel(this.f70465f);
            RequestMiniGameArgs requestMiniGameArgs = new RequestMiniGameArgs();
            requestMiniGameArgs.setPage(page);
            requestMiniGameArgs.setPageSize(20);
            requestMiniGameArgs.setUid(com.join.mgps.Util.r0.o0(this.f70465f));
            String str = this.f70471l;
            if (str != null) {
                requestMiniGameArgs.setGameId(str);
            }
            requestModel.setArgs(requestMiniGameArgs);
            ResponseModel<H5GameDataBean> responseModelH = this.f70472m.h(requestModel.makeSign());
            if (responseModelH != null && responseModelH.getData() != null && responseModelH.getData().getGame_list() != null && !responseModelH.getData().getGame_list().isEmpty()) {
                S();
                W();
                V(responseModelH.getData());
            } else if (page == 1) {
                N();
            } else {
                U();
            }
        } catch (Exception e10) {
            showLodingFailed();
            e10.printStackTrace();
        }
    }

    @UiThread
    void S() {
        LinearLayout linearLayout = this.f70466g;
        if (linearLayout == null || this.f70468i == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f70468i.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void U() {
        XQuickRecyclerView xQuickRecyclerView = this.f70462c;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setNoMore();
        }
    }

    @UiThread
    void V(H5GameDataBean data) {
        if (isAdded()) {
            if (data != null) {
                S();
                int i10 = 0;
                if (data.getTop_game_list() != null && !data.getTop_game_list().isEmpty()) {
                    ConstraintLayout constraintLayout = this.f70470k;
                    if (constraintLayout != null) {
                        constraintLayout.setVisibility(0);
                    }
                    FindMiniRecentGameAdapter findMiniRecentGameAdapter = this.f70477r;
                    if (findMiniRecentGameAdapter != null) {
                        findMiniRecentGameAdapter.submitList(data.getTop_game_list());
                    }
                }
                if (this.f70464e != null) {
                    for (CommonGameInfoBean commonGameInfoBean : data.getGame_list()) {
                        int i11 = i10 / 2;
                        int i12 = i10 % 2;
                        i10++;
                        commonGameInfoBean.getExtBean().itemWithParent(this.f70478s).setPosition((i11 + 1) + "_" + (i12 + 1)).setTypeCode(commonGameInfoBean.isH5VmGame() ? "H5Game" : "game").setResourceId(commonGameInfoBean.getGameId());
                        this.f70479t.add(commonGameInfoBean);
                    }
                    if (this.f70473n == 1) {
                        this.f70464e.setNewData(data.getGame_list());
                    } else {
                        this.f70464e.addData((Collection) data.getGame_list());
                    }
                    updateDownStateList(this.f70479t);
                }
            }
            XQuickRecyclerView xQuickRecyclerView = this.f70462c;
            if (xQuickRecyclerView != null) {
                xQuickRecyclerView.loadMoreComplete();
            }
            if (this.f70480u) {
                U();
            }
        }
    }

    @UiThread
    void W() {
        XQuickRecyclerView xQuickRecyclerView = this.f70462c;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setVisibility(0);
        }
        LinearLayout linearLayout = this.f70463d;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
    }

    public void Y() {
        com.join.android.app.component.video.h hVar = this.f70474o;
        if (hVar != null) {
            hVar.y();
        }
    }

    public void Z() {
        com.join.android.app.component.video.h hVar = this.f70474o;
        if (hVar != null) {
            hVar.A();
        }
    }

    @UiThread(delay = 500)
    void autoPlay() {
        if (this.f70476q) {
            com.join.android.app.component.video.h hVar = this.f70474o;
            if (hVar != null) {
                hVar.h(2);
            }
            T();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
        com.join.android.app.component.video.h hVar = this.f70474o;
        if (hVar != null) {
            hVar.x();
        }
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
            if (iC != 48) {
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
    public void onPause() {
        super.onPause();
        Y();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Z();
    }

    @Click
    void relodingimag() {
        showLoding();
        R(this.f70473n);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f70465f);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (!isVisibleToUser) {
            this.f70476q = false;
            Y();
            return;
        }
        this.f70476q = true;
        Z();
        if (this.f70478s.hasExplore()) {
            return;
        }
        com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonExp, this.f70478s.copy().setTypeCode("page").buildScene().toExt());
        this.f70478s.setHasExplore(true);
        autoPlay();
    }

    @UiThread
    void showLoding() {
        try {
            LinearLayout linearLayout = this.f70466g;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f70468i;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.f70468i;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f70466g;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
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
}
