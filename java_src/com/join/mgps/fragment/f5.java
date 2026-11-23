package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.activity.SearchListActivity1;
import com.join.mgps.adapter.x6;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestSearchGameArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.SearchGameListBean;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.Where;
import com.sigmob.sdk.base.mta.PointType;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_search_game_list)
public class f5 extends com.join.mgps.fragment.e implements x6.f, com.join.mgps.callbacks.n {

    @ViewById
    View A;

    @ViewById
    View B;

    @ViewById
    View C;

    @ViewById
    TextView D;

    @ViewById
    TextView E;

    @ViewById
    TextView F;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById(R.id.rv_list_data)
    XQuickRecyclerView f69575c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    View f69576d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    View f69577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f69578f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    ImageView f69579g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    TextView f69580h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    com.join.mgps.rpc.k f69581i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    x6 f69582j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    com.join.android.app.component.video.h f69583k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @FragmentArg
    int f69584l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @FragmentArg
    String f69585m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f69587o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f69588p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f69589q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f69591s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Context f69593u;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @FragmentArg
    String f69586n = "";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f69590r = 20;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f69592t = 1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f69594v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f69595w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f69596x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f69597y = "";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private List<CommonGameInfoBean> f69598z = new ArrayList();
    private int G = 0;
    private int H = 0;
    private boolean I = false;

    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            if (newState == 0) {
                com.join.android.app.component.video.h hVar = f5.this.f69583k;
                if (hVar != null) {
                    hVar.i(2);
                }
                f5.this.g0();
            }
            f5.this.I = newState != 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
            f5 f5Var = f5.this;
            f5Var.G = f5Var.f69575c.getLastVisiblePosition();
            f5 f5Var2 = f5.this;
            f5Var2.H = f5Var2.f69575c.getFirstVisiblePosition();
        }
    }

    class b extends com.join.mgps.base.decoration.b {
        b() {
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
            aVar.f64116f = 0;
            aVar.f64117a = (int) f5.this.getResources().getDimension(R.dimen.wdp10);
            aVar.f64118b = (int) f5.this.getResources().getDimension(R.dimen.wdp10);
            aVar.f64119c = (int) f5.this.getResources().getDimension(R.dimen.wdp10);
            aVar.f64120d = (int) f5.this.getResources().getDimension(R.dimen.wdp10);
            return aVar;
        }
    }

    class c implements XQuickRecyclerView.g {
        c() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XQuickRecyclerView.g
        public void onLoadMore() throws Throwable {
            if (f5.this.f69596x) {
                f5 f5Var = f5.this;
                f5Var.f69589q = 1;
                f5Var.f69596x = false;
            }
            if (!f5.this.f69595w) {
                f5 f5Var2 = f5.this;
                f5Var2.d0(f5Var2.f69589q + 1);
            } else {
                f5 f5Var3 = f5.this;
                int i10 = f5Var3.f69592t + 1;
                f5Var3.f69592t = i10;
                f5Var3.d0(i10);
            }
        }

        @Override // com.join.android.app.component.xrecyclerview.XQuickRecyclerView.g
        public void onRefresh() throws Throwable {
            f5.this.loading();
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DomainInfoBean f69602b;

        d(final DomainInfoBean val$pdInfo) {
            this.f69602b = val$pdInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.papa.sim.statistic.t.l(f5.this.f69593u).R1(Event.pdGameWishClick, new Ext().setTestAbNumber(this.f69602b.getAb_test_number()).setIsResultPage("0").setIsJoin(this.f69602b.getIs_join()));
            UtilsMy.D4(f5.this.getContext(), this.f69602b.getInfo(), "game_search_wish");
        }
    }

    class e implements Function0<Unit> {
        e() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unit invoke() {
            f5 f5Var = f5.this;
            f5Var.updateDownStateList(f5Var.f69598z);
            f5.this.f69582j.notifyDataSetChanged();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void g0() {
        x6 x6Var;
        if (this.f69575c == null || (x6Var = this.f69582j) == null || x6Var.getItemCount() <= 0) {
            return;
        }
        int lastCompletelyVisiblePosition = this.f69575c.getLastCompletelyVisiblePosition();
        for (int firstCompletelyVisiblePosition = this.f69575c.getFirstCompletelyVisiblePosition(); firstCompletelyVisiblePosition <= lastCompletelyVisiblePosition; firstCompletelyVisiblePosition++) {
            x6.h hVar = (x6.h) this.f69582j.getItem(firstCompletelyVisiblePosition);
            if (hVar != null && (hVar.a() instanceof CommonGameInfoBean)) {
                CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) hVar.a();
                if (commonGameInfoBean != null && commonGameInfoBean.getG_info() != null && ((commonGameInfoBean.isMiniGame() || (commonGameInfoBean.getStatistics() != null && (commonGameInfoBean.getStatistics().getMin_game_search_source().intValue() == 1 || commonGameInfoBean.getStatistics().getMin_game_search_source().intValue() == 2))) && !commonGameInfoBean.getExposure())) {
                    Ext ext = new Ext();
                    ext.setPage("");
                    ext.setFrom(PointType.ANTI_SPAM);
                    ext.setGameId(commonGameInfoBean.getG_info().getId());
                    if (commonGameInfoBean.getStatistics() != null) {
                        ext.setDataFlag(commonGameInfoBean.getStatistics().getMin_game_search_source() + "");
                    }
                    ext.setWhere(Where.search.name());
                    commonGameInfoBean.setExposure(true);
                    com.papa.sim.statistic.t.l(this.f69593u).k0(Event.expSmallGameAdPage, ext, commonGameInfoBean.getG_info().getId());
                }
                if (UtilsMy.p2(commonGameInfoBean)) {
                    try {
                        Ext ext2 = new Ext();
                        ext2.setResultCode("discount_game");
                        ext2.setScenesCode(getClass().getSimpleName());
                        Data data = new Data();
                        data.setGameId(commonGameInfoBean.getG_info().getId());
                        com.papa.sim.statistic.t.l(this.f69593u).Y(Event.expGameAdPage, ext2, data);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDownStateList(List<CommonGameInfoBean> allDownloadBeans) {
        Iterator<CommonGameInfoBean> it2 = allDownloadBeans.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateProgressPartly() {
        CommonGameInfoBean commonGameInfoBean;
        DownloadTask downloadTask;
        View childAt;
        if (this.H < 0 || this.G >= this.f69582j.getItemCount()) {
            return;
        }
        for (int i10 = this.H; i10 <= this.G; i10++) {
            try {
                Object objA = ((x6.h) this.f69582j.getItem(i10)).a();
                if (CommonGameInfoBean.class.isInstance(objA)) {
                    commonGameInfoBean = (CommonGameInfoBean) objA;
                    if (commonGameInfoBean != null && (downloadTask = commonGameInfoBean.getDownloadTask()) != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (childAt = this.f69575c.getChildAt(i10 - this.H)) != null)) {
                        RecyclerView.ViewHolder childViewHolder = this.f69575c.getChildViewHolder(childAt);
                        if (childViewHolder instanceof com.join.mgps.base.b) {
                            com.join.mgps.base.b bVar = (com.join.mgps.base.b) childViewHolder;
                            try {
                                DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                                if (downloadTaskG == null) {
                                    return;
                                }
                                long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                                if (downloadTask.getSize() == 0) {
                                    ((TextView) bVar.getView(R.id.appSize)).setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                } else {
                                    ((TextView) bVar.getView(R.id.appSize)).setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                }
                                if (downloadTask.getStatus() == 12) {
                                    ((ProgressBar) bVar.getView(R.id.progressBarZip)).setProgress((int) downloadTaskG.getProgress());
                                } else {
                                    ((ProgressBar) bVar.getView(R.id.progressBar)).setProgress((int) downloadTaskG.getProgress());
                                }
                                if (downloadTask.getStatus() == 2) {
                                    bVar.setText(R.id.loding_info, downloadTaskG.getSpeed() + "/S");
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        } else {
                            continue;
                        }
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                commonGameInfoBean = null;
            }
        }
    }

    void O(Context context, String id2, String uid, String game_id, String company_id) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) GameDetailActivity_.class);
        intent.putExtra("fromid", id2);
        intent.putExtra("_from", 11102);
        intent.putExtra("groupuid", !TextUtils.isEmpty(uid) ? Integer.parseInt(uid) : 0);
        intent.putExtra("gameid", game_id);
        intent.putExtra("company_id", company_id);
        context.startActivity(intent);
    }

    @Override // com.join.mgps.fragment.e
    @UiThread
    void T(String msg) {
        com.join.mgps.Util.a3.b(this.f69593u).d(msg);
    }

    List<CommonGameInfoBean> a0(List<CommonGameInfoBean> searchDataBeans, SearchGameListBean listBean, boolean domain) {
        DomainInfoBean pd_info;
        ArrayList arrayList = new ArrayList();
        if (searchDataBeans != null) {
            arrayList.addAll(searchDataBeans);
        }
        if (listBean != null) {
            try {
                CommonGameInfoBean ad_info = listBean.getAd_info();
                if (ad_info != null) {
                    ad_info.setAdInfo(true);
                    int iMin = 0;
                    if (!ad_info.isIs_head()) {
                        iMin = Math.min(ad_info.getPosition(), Math.max(arrayList.size() - 1, 0));
                    }
                    arrayList.add(iMin, ad_info);
                }
                if (domain && (pd_info = listBean.getPd_info()) != null) {
                    CommonGameInfoBean commonGameInfoBean = new CommonGameInfoBean();
                    commonGameInfoBean.setPd_info(pd_info);
                    commonGameInfoBean.setIsPrivateDomain(true);
                    arrayList.add(Math.min(pd_info.getIndex(), arrayList.size() - 1), commonGameInfoBean);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return arrayList;
    }

    @AfterViews
    void afterViews() throws Throwable {
        this.f69593u = getActivity();
        this.f69581i = com.join.mgps.rpc.impl.i.Q0();
        com.join.mgps.Util.j0.a().d(this);
        this.f69583k = new com.join.android.app.component.video.h(this.f69575c, "SearchGameListFragmentVideoHelper");
        x6 x6Var = new x6(this.f69593u, this.f69583k);
        this.f69582j = x6Var;
        x6Var.o0(this);
        this.f69582j.r0(c0());
        this.f69575c.setLayoutManager(new StaggeredGridLayoutManager(2, 1));
        RecyclerView.ItemAnimator itemAnimator = this.f69575c.getItemAnimator();
        if (itemAnimator instanceof SimpleItemAnimator) {
            ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        }
        this.f69575c.addOnScrollListener(new a());
        this.f69575c.addItemDecoration(new b());
        XQuickRecyclerView xQuickRecyclerView = this.f69575c;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setLoadingListener(new c());
        }
        this.f69575c.setAdapter(this.f69582j);
        loading();
        this.f69594v = true;
    }

    @UiThread(delay = 500)
    void autoPlay() {
        com.join.android.app.component.video.h hVar = this.f69583k;
        if (hVar != null) {
            hVar.i(2);
        }
        g0();
    }

    @Override // com.join.mgps.adapter.x6.f
    public void b(String pid) {
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        forumPostsBean.setPid(Integer.parseInt(pid));
        com.join.mgps.Util.r0.v0(this.f69593u, forumPostsBean);
    }

    boolean b0(String keyword) {
        Context context = this.f69593u;
        if (context == null || !(context instanceof SearchListActivity1)) {
            return false;
        }
        return ((SearchListActivity1) context).isNeedLoad(keyword);
    }

    @Override // com.join.mgps.adapter.x6.f
    public void c(String gameId) {
    }

    String c0() {
        Context context = this.f69593u;
        return (context == null || !(context instanceof SearchListActivity1)) ? "" : ((SearchListActivity1) context).keyword();
    }

    @Override // com.join.mgps.adapter.x6.f
    public void d(String crc_link_type_val) {
        com.papa.sim.statistic.t.l(this.f69593u).d0(this.f69584l == 0 ? "searchTotalList" : "searchGameList", crc_link_type_val, AccountUtil_.getInstance_(this.f69593u).getUid());
    }

    void d0(int page) throws Throwable {
        Context context = this.f69593u;
        if (context != null && (context instanceof SearchListActivity1)) {
            this.f69587o = ((SearchListActivity1) context).getCurrentPluginNum();
            this.f69588p = ((SearchListActivity1) this.f69593u).getCurrentLangId();
        }
        e0(page, this.f69595w);
    }

    @Override // com.join.mgps.adapter.x6.f
    public void e(String crc_sign_id) {
        com.papa.sim.statistic.t.l(this.f69593u).E(this.f69584l == 0 ? "searchTotalList" : "searchGameList", crc_sign_id, AccountUtil_.getInstance_(this.f69593u).getUid());
    }

    /* JADX WARN: Code duplicated, block: B:111:0x0233  */
    /* JADX WARN: Code duplicated, block: B:124:0x0248  */
    /* JADX WARN: Code duplicated, block: B:125:0x024b  */
    /* JADX WARN: Code duplicated, block: B:126:0x024e  */
    @Background
    void e0(int pn, boolean recommend) throws Throwable {
        x6 x6Var;
        int size;
        boolean z10 = true;
        if (!com.join.android.app.common.utils.m.j(this.f69593u)) {
            if (pn == 1 && (x6Var = this.f69582j) != null && x6Var.getItemCount() == 0) {
                showLoadFailed();
            }
            Context context = this.f69593u;
            if (context != null) {
                T(context.getResources().getString(R.string.net_connect_failed));
                return;
            }
            return;
        }
        int i10 = this.f69591s;
        if (pn == i10 || i10 == -1) {
            return;
        }
        this.f69591s = pn;
        showLoadingView();
        UserInfo accountData = AccountUtil_.getInstance_(this.f69593u).getAccountData();
        try {
            try {
                try {
                    RequestSearchGameArgs requestSearchGameArgs = new RequestSearchGameArgs();
                    requestSearchGameArgs.setGameId(this.f69585m);
                    requestSearchGameArgs.setLangId(Integer.valueOf(this.f69588p));
                    requestSearchGameArgs.setPc(Integer.valueOf(this.f69590r));
                    requestSearchGameArgs.setPn(Integer.valueOf(pn));
                    requestSearchGameArgs.setKeyword(c0());
                    if (accountData != null) {
                        requestSearchGameArgs.setUid(Integer.valueOf(accountData.getUid()));
                    } else {
                        requestSearchGameArgs.setUid(0);
                    }
                    requestSearchGameArgs.setPluginNum(Integer.valueOf(this.f69587o));
                    if (recommend) {
                        requestSearchGameArgs.setRec_pn(Integer.valueOf(this.f69592t));
                    } else {
                        requestSearchGameArgs.setRec_pn(0);
                    }
                    requestSearchGameArgs.setIsRecommend(Integer.valueOf(recommend ? 1 : 0));
                    if (!TextUtils.isEmpty(this.f69597y) && pn != 1) {
                        requestSearchGameArgs.setPageOfFirstGameId(this.f69597y);
                    }
                    RequestModel requestModel = new RequestModel(this.f69593u);
                    requestModel.setArgs(requestSearchGameArgs);
                    requestModel.makeSign();
                    try {
                        ResponseModel<SearchGameListBean> responseModelX = this.f69581i.x(requestModel.makeSign());
                        if (responseModelX == null || responseModelX.getData() == null) {
                            z10 = false;
                            hideLoading();
                            if (z10) {
                                this.f69589q = pn;
                                this.f69591s = 0;
                            } else if (this.f69595w) {
                                this.f69591s = -1;
                            } else {
                                this.f69589q = pn;
                            }
                        } else {
                            SearchGameListBean data = responseModelX.getData();
                            this.f69597y = data.getPage_first_gid();
                            if (this.f69595w) {
                                try {
                                    if (data.getRecommend_list() != null && data.getRecommend_list().size() > 0 && data.getRecommend_list().size() > 0) {
                                        i0(a0(data.getRecommend_list(), data, responseModelX.getData().getList() != null), false, false);
                                        z10 = false;
                                    }
                                } catch (Exception e10) {
                                    e = e10;
                                    try {
                                        e.printStackTrace();
                                        showLoadFailed();
                                    } catch (Exception e11) {
                                        e = e11;
                                        e.printStackTrace();
                                        if (!z10) {
                                            this.f69589q = pn;
                                            this.f69591s = 0;
                                        } else if (this.f69595w) {
                                            this.f69591s = -1;
                                        }
                                        k0();
                                    }
                                }
                            } else {
                                boolean z11 = responseModelX.getData().getList() == null || responseModelX.getData().getList().size() <= 0;
                                try {
                                    if (responseModelX.getData() != null && responseModelX.getData().getList() != null && responseModelX.getData().getList().size() > 0) {
                                        h0(responseModelX.getData(), pn);
                                        if (responseModelX.getData().getRecommend_list() != null && responseModelX.getData().getRecommend_list().size() > 0) {
                                            z11 = true;
                                        }
                                    }
                                    if (z11 && pn == 1 && (responseModelX.getData().getList() == null || responseModelX.getData().getList().size() <= 0)) {
                                        j0(true, responseModelX.getData().getPd_info());
                                    }
                                    if (responseModelX.getData().getRecommend_list() == null || responseModelX.getData().getRecommend_list().size() <= 0) {
                                        size = 0;
                                    } else {
                                        this.f69595w = true;
                                        size = responseModelX.getData().getRecommend_list().size();
                                        z11 = false;
                                    }
                                    if (!z11 || size > 0) {
                                        List<CommonGameInfoBean> listA0 = a0(data.getRecommend_list(), data, responseModelX.getData().getList() != null && responseModelX.getData().getList().size() > 0);
                                        boolean z12 = (responseModelX.getData().getList() == null || responseModelX.getData().getList().size() <= 0) && pn == 1;
                                        if (!this.f69595w || pn == 1) {
                                            z10 = false;
                                        }
                                        i0(listA0, z12, z10);
                                    }
                                    z10 = z11;
                                } catch (Exception e12) {
                                    e = e12;
                                    z10 = z11;
                                    e.printStackTrace();
                                    showLoadFailed();
                                } catch (Throwable th) {
                                    th = th;
                                    z10 = z11;
                                    if (!z10) {
                                        this.f69589q = pn;
                                        this.f69591s = 0;
                                    } else if (this.f69595w) {
                                        this.f69591s = -1;
                                    } else {
                                        this.f69589q = pn;
                                    }
                                    k0();
                                    throw th;
                                }
                            }
                            hideLoading();
                            if (z10) {
                                this.f69589q = pn;
                                this.f69591s = 0;
                            } else if (this.f69595w) {
                                this.f69591s = -1;
                            } else {
                                this.f69589q = pn;
                            }
                        }
                    } catch (Exception e13) {
                        e = e13;
                        z10 = false;
                    }
                } catch (Exception e14) {
                    e = e14;
                    z10 = false;
                }
                k0();
            } catch (Throwable th2) {
                th = th2;
                z10 = false;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    void f0(Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("gameid");
            int intExtra = intent.getIntExtra("game_book", 0);
            String stringExtra2 = intent.getStringExtra("message");
            DomainInfoBean domainInfoBean = (DomainInfoBean) intent.getSerializableExtra("pd_info");
            l0(stringExtra, intExtra);
            if (intExtra == 1) {
                if (domainInfoBean != null) {
                    UtilsMy.D4(getContext(), domainInfoBean.getInfo(), "game_search_subscribe");
                }
                com.join.mgps.Util.h0.h0(getContext()).J(getContext(), domainInfoBean, stringExtra2);
            }
        }
    }

    @Override // com.join.mgps.adapter.x6.f
    public void g(Context context, String s10, String uid, String s11, String s12) {
        String str = !TextUtils.isEmpty(this.f69585m) ? "fromSearchP2" : "fromSearchP3";
        if (this.f69584l == 0) {
            str = "fromSearchP4";
        }
        O(context, s10, uid, s11, s12);
        com.papa.sim.statistic.t.l(context).j0(str, s10, uid);
    }

    @UiThread
    void h0(SearchGameListBean data, int pn) {
        if (data == null) {
            return;
        }
        if (pn == 1) {
            data.setKeyword(this.f69586n);
            com.join.mgps.Util.r0.t1("1", JsonMapper.toJsonString(data));
        }
        ArrayList arrayList = new ArrayList();
        List<CommonGameInfoBean> listA0 = a0(data.getList(), data, data.getList() != null && data.getList().size() > 0);
        if (listA0 == null || listA0.size() == 0) {
            j0(true, data.getPd_info());
            if (data.getRecommend_list() != null && data.getRecommend_list().size() != 0) {
                for (CommonGameInfoBean commonGameInfoBean : data.getRecommend_list()) {
                    commonGameInfoBean.set_from(112);
                    commonGameInfoBean.set_from_type(112);
                    int i10 = this.f69584l;
                    if (i10 == 0) {
                        commonGameInfoBean.setReMarks("1");
                    } else if (i10 == 1) {
                        commonGameInfoBean.setReMarks("2");
                    }
                    if (commonGameInfoBean.isMiniGame()) {
                        arrayList.add(new x6.h(com.join.mgps.Util.t2.i(commonGameInfoBean.getV_url()) ? 12 : 11, commonGameInfoBean));
                    } else if (commonGameInfoBean.getStatistics() == null || !(commonGameInfoBean.getStatistics().getMin_game_search_source().intValue() == 1 || commonGameInfoBean.getStatistics().getMin_game_search_source().intValue() == 2)) {
                        arrayList.add(new x6.h(7, commonGameInfoBean));
                    } else {
                        arrayList.add(new x6.h(com.join.mgps.Util.t2.i(commonGameInfoBean.getOnlineGameAdVideoUrl()) ? 17 : 16, commonGameInfoBean));
                    }
                    this.f69598z.add(commonGameInfoBean);
                }
            }
        } else {
            j0(false, data.getPd_info());
            for (CommonGameInfoBean commonGameInfoBean2 : listA0) {
                if (commonGameInfoBean2.isAdInfo()) {
                    commonGameInfoBean2.set_from(147);
                    commonGameInfoBean2.set_from_type(147);
                } else {
                    commonGameInfoBean2.set_from(112);
                    commonGameInfoBean2.set_from_type(112);
                }
                int i11 = this.f69584l;
                if (i11 == 0) {
                    commonGameInfoBean2.setReMarks("1");
                } else if (i11 == 1) {
                    commonGameInfoBean2.setReMarks("2");
                }
                if (commonGameInfoBean2.isMiniGame()) {
                    arrayList.add(new x6.h(com.join.mgps.Util.t2.i(commonGameInfoBean2.getV_url()) ? 12 : 11, commonGameInfoBean2));
                } else if (commonGameInfoBean2.getStatistics() != null && (commonGameInfoBean2.getStatistics().getMin_game_search_source().intValue() == 1 || commonGameInfoBean2.getStatistics().getMin_game_search_source().intValue() == 2)) {
                    arrayList.add(new x6.h(com.join.mgps.Util.t2.i(commonGameInfoBean2.getOnlineGameAdVideoUrl()) ? 17 : 16, commonGameInfoBean2));
                } else if (commonGameInfoBean2.isAdInfo() && commonGameInfoBean2.isIs_head()) {
                    arrayList.add(new x6.h(14, commonGameInfoBean2));
                } else if (commonGameInfoBean2.isPrivateDomain()) {
                    arrayList.add(new x6.h(15, commonGameInfoBean2));
                } else {
                    arrayList.add(new x6.h(7, commonGameInfoBean2));
                }
                this.f69598z.add(commonGameInfoBean2);
            }
        }
        if (pn == 1) {
            x6 x6Var = new x6(this.f69593u, this.f69583k);
            this.f69582j = x6Var;
            x6Var.r0(c0());
            XQuickRecyclerView xQuickRecyclerView = this.f69575c;
            if (xQuickRecyclerView != null) {
                xQuickRecyclerView.setAdapter(this.f69582j);
            }
            this.f69582j.setNewData(arrayList);
            autoPlay();
        } else {
            this.f69582j.addData((Collection) arrayList);
        }
        updateDownStateList(this.f69598z);
    }

    @UiThread
    void hideLoading() {
        View view = this.A;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.B;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        XQuickRecyclerView xQuickRecyclerView = this.f69575c;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setVisibility(0);
        }
    }

    @UiThread
    void i0(List<CommonGameInfoBean> data, boolean resetAdapter, boolean showRecommendTitle) {
        if (data == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (showRecommendTitle) {
            arrayList.add(new x6.h(13, 1));
        }
        if (data.size() != 0) {
            for (CommonGameInfoBean commonGameInfoBean : data) {
                commonGameInfoBean.set_from(103);
                commonGameInfoBean.set_from_type(112);
                commonGameInfoBean.setRecommend(true);
                int i10 = this.f69584l;
                if (i10 == 0) {
                    commonGameInfoBean.setReMarks("1");
                } else if (i10 == 1) {
                    commonGameInfoBean.setReMarks("2");
                }
                if (commonGameInfoBean.isMiniGame()) {
                    arrayList.add(new x6.h(com.join.mgps.Util.t2.i(commonGameInfoBean.getV_url()) ? 12 : 11, commonGameInfoBean));
                } else if (commonGameInfoBean.getStatistics() != null && (commonGameInfoBean.getStatistics().getMin_game_search_source().intValue() == 1 || commonGameInfoBean.getStatistics().getMin_game_search_source().intValue() == 2)) {
                    arrayList.add(new x6.h(com.join.mgps.Util.t2.i(commonGameInfoBean.getOnlineGameAdVideoUrl()) ? 17 : 16, commonGameInfoBean));
                } else if (commonGameInfoBean.isPrivateDomain()) {
                    arrayList.add(new x6.h(15, commonGameInfoBean));
                } else {
                    arrayList.add(new x6.h(7, commonGameInfoBean));
                }
                this.f69598z.add(commonGameInfoBean);
            }
        }
        if (!resetAdapter) {
            this.f69582j.addData((Collection) arrayList);
            return;
        }
        x6 x6Var = new x6(this.f69593u, this.f69583k);
        this.f69582j = x6Var;
        x6Var.r0(c0());
        XQuickRecyclerView xQuickRecyclerView = this.f69575c;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setAdapter(this.f69582j);
        }
        this.f69582j.setNewData(arrayList);
        autoPlay();
    }

    @UiThread
    void j0(boolean show, DomainInfoBean pdInfo) {
        if (!show) {
            View view = this.f69576d;
            if (view != null) {
                view.setVisibility(8);
            }
            View view2 = this.f69577e;
            if (view2 != null) {
                view2.setVisibility(8);
                return;
            }
            return;
        }
        if (pdInfo != null) {
            View view3 = this.f69577e;
            if (view3 != null) {
                view3.setVisibility(0);
            }
            View view4 = this.f69576d;
            if (view4 != null) {
                view4.setVisibility(8);
            }
            SimpleDraweeView simpleDraweeView = this.f69578f;
            if (simpleDraweeView != null) {
                com.join.android.app.common.utils.l.h(simpleDraweeView, pdInfo.getPic());
                this.f69578f.setOnClickListener(new d(pdInfo));
            }
            com.papa.sim.statistic.t.l(this.f69593u).R1(Event.pdGameWish, new Ext().setIsJoin(pdInfo.getIs_join()).setTestAbNumber(pdInfo.getAb_test_number()).setIsResultPage("0"));
            return;
        }
        View view5 = this.f69577e;
        if (view5 != null) {
            view5.setVisibility(8);
        }
        View view6 = this.f69576d;
        if (view6 != null) {
            view6.setVisibility(0);
        }
        ImageView imageView = this.f69579g;
        if (imageView != null) {
            imageView.setImageResource(R.drawable.img_bg_game);
        }
        TextView textView = this.f69580h;
        if (textView != null) {
            textView.setText("未搜索到相应游戏\n已为您推荐其它游戏");
        }
    }

    @UiThread
    void k0() {
        XQuickRecyclerView xQuickRecyclerView = this.f69575c;
        if (xQuickRecyclerView == null) {
            return;
        }
        if (this.f69591s == -1) {
            xQuickRecyclerView.setNoMore();
        } else {
            xQuickRecyclerView.stopLoadMore();
        }
    }

    @UiThread
    void l0(String gameId, int game_book) {
        GInfoBean g_info;
        if (com.join.mgps.Util.t2.h(gameId)) {
            return;
        }
        for (T t10 : this.f69582j.getData()) {
            CommonGameInfoBean commonGameInfoBean = t10.a() instanceof CommonGameInfoBean ? (CommonGameInfoBean) t10.a() : null;
            if (commonGameInfoBean != null && (g_info = commonGameInfoBean.getG_info()) != null && gameId.equals(g_info.getId())) {
                g_info.setGame_book(game_book);
                break;
            }
        }
        notifyDataSetChanged();
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() throws Throwable {
        if (this.f69594v && b0(this.f69586n)) {
            loading();
        }
    }

    @Override // com.join.mgps.callbacks.n
    public void loading() throws Throwable {
        this.f69589q = 0;
        this.f69591s = 0;
        this.f69592t = 1;
        Context context = this.f69593u;
        if (context != null && (context instanceof SearchListActivity1)) {
            this.f69587o = ((SearchListActivity1) context).getCurrentPluginNum();
            this.f69588p = ((SearchListActivity1) this.f69593u).getCurrentLangId();
            this.f69585m = ((SearchListActivity1) this.f69593u).getGameId();
        }
        showLoadingView();
        this.f69586n = c0();
        this.f69595w = false;
        this.f69596x = false;
        this.f69598z.clear();
        XQuickRecyclerView xQuickRecyclerView = this.f69575c;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.reset();
        }
        e0(1, false);
    }

    void notifyDataSetChanged() {
        x6 x6Var = this.f69582j;
        if (x6Var != null) {
            x6Var.r0(c0());
            this.f69582j.notifyDataSetChanged();
        }
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
        com.join.android.app.component.video.h hVar = this.f69583k;
        if (hVar != null) {
            hVar.x();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new e());
        if (downloadTaskEvent.c() == 8 && !this.I) {
            updateProgressPartly();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.join.android.app.component.video.h hVar = this.f69583k;
        if (hVar != null) {
            hVar.y();
        }
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.h hVar = this.f69583k;
        if (hVar != null) {
            hVar.E();
        }
    }

    @Click
    void relodingimag() throws Throwable {
        loading();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f69593u);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean isVisibleToUser) {
        com.join.android.app.component.video.h hVar;
        super.setUserVisibleHint(isVisibleToUser);
        if (!isVisibleToUser || (hVar = this.f69583k) == null) {
            return;
        }
        hVar.E();
    }

    void showLoadFailed() {
        showLoadFailed("");
    }

    @UiThread
    void showLoadingView() {
        x6 x6Var = this.f69582j;
        if (x6Var == null || x6Var.getItemCount() <= 0) {
            XQuickRecyclerView xQuickRecyclerView = this.f69575c;
            if (xQuickRecyclerView != null) {
                xQuickRecyclerView.setVisibility(8);
            }
            View view = this.A;
            if (view != null) {
                view.setVisibility(0);
            }
        } else {
            XQuickRecyclerView xQuickRecyclerView2 = this.f69575c;
            if (xQuickRecyclerView2 != null && xQuickRecyclerView2.getVisibility() == 8) {
                this.f69575c.setVisibility(0);
            }
            View view2 = this.A;
            if (view2 != null && view2.getVisibility() == 0) {
                this.A.setVisibility(8);
            }
        }
        View view3 = this.B;
        if (view3 != null) {
            view3.setVisibility(8);
        }
    }

    @UiThread
    void showLoadFailed(String msg) {
        XQuickRecyclerView xQuickRecyclerView = this.f69575c;
        if (xQuickRecyclerView != null) {
            xQuickRecyclerView.setVisibility(8);
        }
        View view = this.A;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.B;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }
}
