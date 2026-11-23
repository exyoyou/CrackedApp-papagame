package com.join.mgps.fragment;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionInfo;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.GameFactoryListBean;
import com.join.mgps.dto.GameHeadAd;
import com.join.mgps.dto.GameListAndCollectionInfo;
import com.join.mgps.dto.GameListAndHeadAdAndCollectionInfoBean;
import com.join.mgps.dto.GameListAndHeadAdBean;
import com.join.mgps.dto.PaPaBean;
import com.join.mgps.dto.RequestGoogleRankArgs;
import com.join.mgps.dto.RequestPnAndPcArgs;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_papa_banner_list)
public class k4 extends Fragment implements AbsListView.OnScrollListener {
    public static final int A = 12;
    public static final int B = 13;
    public static final int C = 14;
    public static final int D = 15;
    public static final int E = 16;
    public static final int F = 17;
    public static final int G = 18;
    public static final int H = 19;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f70020w = 20;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f70021x = 3;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f70022y = 1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f70023z = 11;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.join.mgps.rpc.e f70027f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    XListView2 f70028g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    com.join.mgps.adapter.v4 f70029h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    LinearLayout f70031j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    LinearLayout f70032k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70033l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Activity f70034m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    String f70036o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    String f70037p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    String f70038q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f70039r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f70040s;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f70024c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f70025d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f70026e = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    List<PaPaBean> f70030i = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f70035n = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f70041t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final View.OnClickListener f70042u = new d();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private View.OnClickListener f70043v = new e();

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!k4.this.isActivityFinish() && k4.this.f70026e) {
                if (com.join.android.app.common.utils.m.j(k4.this.f70034m)) {
                    k4.this.Q();
                    return;
                }
                k4.this.f70028g.u();
                k4 k4Var = k4.this;
                k4Var.showToast(k4Var.getString(R.string.net_connect_failed));
            }
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (k4.this.isActivityFinish()) {
                return;
            }
            if (com.join.android.app.common.utils.m.j(k4.this.f70034m)) {
                k4.this.f70025d = 1;
                k4.this.Q();
            } else {
                k4.this.f70028g.v();
                k4 k4Var = k4.this;
                k4Var.showToast(k4Var.getString(R.string.net_connect_failed));
            }
        }
    }

    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            List<PaPaBean> list = k4.this.f70030i;
            if (list == null || list.size() <= 0 || position >= k4.this.f70030i.size() || k4.this.f70030i.get(position).getType() != PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value()) {
                return;
            }
            k4.this.W((AppBean) k4.this.f70030i.get(position).getTypeValue());
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (v10.getTag() instanceof AppBean) {
                k4.this.W((AppBean) v10.getTag());
                return;
            }
            if (!(v10.getTag() instanceof CollectionInfo)) {
                if (v10.getTag() instanceof GameHeadAd.SubInfo) {
                    IntentUtil.getInstance().intentActivity(k4.this.f70034m, ((GameHeadAd.SubInfo) v10.getTag()).getIntentDataBean());
                    return;
                }
                return;
            }
            CollectionInfo collectionInfo = (CollectionInfo) v10.getTag();
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(2);
            intentDateBean.setTpl_type("4");
            intentDateBean.setCrc_link_type_val(collectionInfo.getCollection_id());
            IntentUtil.getInstance().intentActivity(k4.this.f70034m, intentDateBean);
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            AppBean appBean = (AppBean) v10.getTag();
            if (appBean == null) {
                return;
            }
            DownloadTask downloadTask = appBean.getDownloadTask();
            if (appBean.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(appBean.getDown_url_remote());
                if (downloadTask == null) {
                    downloadTask = appBean.getDownloadtaskDown();
                }
                UtilsMy.j3(downloadTask, k4.this.f70034m);
                IntentUtil.getInstance().intentActivity(k4.this.f70034m, intentDateBean);
                return;
            }
            if (downloadTask == null) {
                if (UtilsMy.p0(appBean.getTag_info()) && com.join.android.app.common.utils.g.t0(k4.this.f70034m).e(k4.this.f70034m, appBean.getPackageName())) {
                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(k4.this.f70034m).n(k4.this.f70034m, appBean.getPackageName());
                    if (!com.join.mgps.Util.t2.i(appBean.getVer()) || aVarN.d() >= Integer.parseInt(appBean.getVer())) {
                        com.join.android.app.common.utils.g.t0(k4.this.f70034m);
                        APKUtils.f0(k4.this.f70034m, appBean.getPackageName());
                        return;
                    }
                }
                if (UtilsMy.z0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                    UtilsMy.z4(k4.this.f70034m, appBean.getCrc_sign_id());
                    return;
                } else {
                    UtilsMy.Z0(k4.this.f70034m, appBean);
                    return;
                }
            }
            int status = downloadTask != null ? downloadTask.getStatus() : 0;
            if (UtilsMy.x0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 13) {
                    com.php25.PDownload.d.l(k4.this.f70034m, downloadTask);
                    return;
                }
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.k4(k4.this.f70034m, downloadTask);
                            return;
                        }
                        if (status != 6) {
                            if (status != 7) {
                                if (status == 42) {
                                    if (com.join.android.app.common.utils.m.j(k4.this.f70034m)) {
                                        UtilsMy.O4(k4.this.getContext(), downloadTask);
                                        return;
                                    } else {
                                        k4.this.showToast("无网络连接");
                                        return;
                                    }
                                }
                                if (status != 43) {
                                    switch (status) {
                                        case 9:
                                            if (!com.join.android.app.common.utils.m.j(k4.this.f70034m)) {
                                                k4.this.showToast("无网络连接");
                                            } else {
                                                UtilsMy.X2(k4.this.f70034m, downloadTask);
                                            }
                                            break;
                                        case 11:
                                            UtilsMy.w4(downloadTask, k4.this.f70034m);
                                            break;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(downloadTask, k4.this.f70034m);
                    return;
                }
                com.php25.PDownload.d.i(downloadTask);
                return;
            }
            if (UtilsMy.z0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                UtilsMy.z4(k4.this.f70034m, appBean.getCrc_sign_id());
                return;
            }
            UtilsMy.y1(downloadTask, appBean);
            if (UtilsMy.o1(k4.this.f70034m, downloadTask)) {
                return;
            }
            if (appBean.getDown_status() == 5) {
                UtilsMy.l1(k4.this.f70034m, downloadTask);
            } else {
                UtilsMy.U0(k4.this.f70034m, downloadTask, appBean.getTp_down_url(), appBean.getOther_down_switch(), appBean.getCdn_down_switch());
            }
        }
    }

    private void S() {
        if (!com.join.android.app.common.utils.m.j(this.f70034m)) {
            e0();
        } else {
            g0();
            Q();
        }
    }

    private CommonRequestBean<RequestPnAndPcArgs> U() {
        return this.f70024c == 11 ? RequestBeanUtil.getInstance(this.f70034m).getRequestPnAndPc(this.f70025d, 3) : RequestBeanUtil.getInstance(this.f70034m).getRequestPnAndPc(this.f70025d, 20);
    }

    private CommonRequestBean<RequestGoogleRankArgs> V() {
        return RequestBeanUtil.getInstance(this.f70034m).getRequestPnAndPcByAreaAndRank(this.f70025d, 20, R(), T());
    }

    public static k4 b0(int type) {
        PaPaBannerListFragment_ paPaBannerListFragment_ = new PaPaBannerListFragment_();
        Bundle bundle = new Bundle();
        bundle.putInt("type", type);
        paPaBannerListFragment_.setArguments(bundle);
        return paPaBannerListFragment_;
    }

    public static k4 c0(int type, HashMap<String, String> params) {
        PaPaBannerListFragment_ paPaBannerListFragment_ = new PaPaBannerListFragment_();
        Bundle bundle = new Bundle();
        bundle.putInt("type", type);
        for (String str : params.keySet()) {
            bundle.putString(str, params.get(str));
        }
        paPaBannerListFragment_.setArguments(bundle);
        return paPaBannerListFragment_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownStateList(this.f70030i);
        this.f70029h.notifyDataSetChanged();
        return null;
    }

    private void updateDownStateList(List<PaPaBean> datas) {
        if (datas == null || datas.size() == 0) {
            return;
        }
        for (PaPaBean paPaBean : datas) {
            if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_COLLECTION.value()) {
                Iterator it2 = ((List) paPaBean.getTypeValue()).iterator();
                while (it2.hasNext()) {
                    DlTaskManager.INSTANCE.updateDownloadTask((AppBean) it2.next());
                }
            } else if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value()) {
                DlTaskManager.INSTANCE.updateDownloadTask((AppBean) paPaBean.getTypeValue());
            }
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        for (int i10 = this.f70040s; i10 <= this.f70039r; i10++) {
            PaPaBean paPaBean = (PaPaBean) this.f70028g.getItemAtPosition(i10);
            if (paPaBean != null && paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value() && (downloadTask = ((AppBean) paPaBean.getTypeValue()).getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f70028g.getChildAt(i10 - this.f70040s);
                if (childAt.getTag() instanceof com.join.mgps.adapter.v4.d) {
                    com.join.mgps.adapter.v4.d dVar = (com.join.mgps.adapter.v4.d) childAt.getTag();
                    try {
                        DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                        if (downloadTaskG == null) {
                            return;
                        }
                        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            dVar.f63310i.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        } else {
                            dVar.f63310i.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        }
                        if (downloadTask.getStatus() == 12) {
                            dVar.f63305d.setProgress((int) downloadTaskG.getProgress());
                        } else {
                            dVar.f63306e.setProgress((int) downloadTaskG.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            dVar.f63311j.setText(downloadTaskG.getSpeed() + "/S");
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else {
                    continue;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q() {
        try {
            int i10 = this.f70024c;
            if (i10 != 1) {
                switch (i10) {
                    case 11:
                        Z(this.f70027f.v(U()));
                        break;
                    case 12:
                        a0(this.f70027f.z(U()));
                        break;
                    case 13:
                        a0(this.f70027f.s0(U()));
                        break;
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                        Y(this.f70027f.N(V()));
                        break;
                }
            } else if ("1".equals(this.f70038q)) {
                X(this.f70027f.u(RequestBeanUtil.getInstance(this.f70034m).getRequestGameFactoryList(Integer.parseInt(this.f70036o), this.f70025d)));
            } else {
                X(this.f70027f.H0(RequestBeanUtil.getInstance(this.f70034m).getRequestGameFactoryList(Integer.parseInt(this.f70036o), this.f70025d)));
            }
        } catch (Exception e10) {
            com.join.mgps.Util.g1.b("PaPaList", "fetchData exception:" + e10.getMessage());
            f0();
        }
    }

    int R() {
        int i10 = this.f70024c;
        if (i10 == 14 || i10 == 15) {
            return 3;
        }
        if (i10 == 16 || i10 == 17) {
            return 1;
        }
        return (i10 == 18 || i10 == 19) ? 2 : 4;
    }

    int T() {
        int i10 = this.f70024c;
        return (i10 == 14 || i10 == 16 || i10 == 18) ? 1 : 2;
    }

    void W(AppBean gameInfoV2_2Bean) {
        IntentUtil.getInstance().intentActivity(this.f70034m, gameInfoV2_2Bean.getIntentDataBean());
    }

    void X(ResultMainBean<GameFactoryListBean> resultMainBean) {
        if (isActivityFinish()) {
            return;
        }
        if (resultMainBean == null || resultMainBean.getMessages() == null || resultMainBean.getMessages().getData() == null) {
            f0();
            return;
        }
        if (resultMainBean.getFlag() == 0) {
            h0();
            return;
        }
        GameFactoryListBean data = resultMainBean.getMessages().getData();
        if (data.getGame_list() == null || data.getGame_list().size() < 20) {
            this.f70026e = false;
        } else {
            this.f70026e = true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(k0(data));
        i0(arrayList);
        hideLoading();
    }

    void Y(ResultMainBean<List<AppBean>> resultMainBean) {
        if (isActivityFinish()) {
            return;
        }
        if (resultMainBean == null || resultMainBean.getMessages() == null || resultMainBean.getMessages().getData() == null) {
            f0();
            return;
        }
        if (resultMainBean.getFlag() == 0) {
            h0();
            return;
        }
        List<AppBean> data = resultMainBean.getMessages().getData();
        ArrayList arrayList = new ArrayList();
        boolean z10 = data != null && data.size() > 0;
        if (z10) {
            this.f70026e = data.size() >= 20;
        } else {
            this.f70026e = false;
        }
        if (z10) {
            arrayList.addAll(m0(data));
        }
        i0(arrayList);
        if (this.f70025d <= 1) {
            hideLoading();
        }
    }

    void Z(ResultMainBean<GameListAndHeadAdAndCollectionInfoBean> resultMainBean) {
        if (isActivityFinish()) {
            return;
        }
        if (resultMainBean == null || resultMainBean.getMessages() == null || resultMainBean.getMessages().getData() == null) {
            f0();
            return;
        }
        if (resultMainBean.getFlag() == 0) {
            h0();
            return;
        }
        GameListAndHeadAdAndCollectionInfoBean data = resultMainBean.getMessages().getData();
        List<GameHeadAd> head_ad = data.getHead_ad();
        List<GameListAndCollectionInfo> list = data.getList();
        ArrayList arrayList = new ArrayList();
        boolean z10 = list != null && list.size() > 0;
        if (z10) {
            this.f70026e = list.size() >= 3;
        } else {
            this.f70026e = false;
        }
        if (z10) {
            arrayList.addAll(j0(head_ad, list));
        }
        i0(arrayList);
        if (this.f70025d <= 1) {
            hideLoading();
        }
    }

    void a0(ResultMainBean<GameListAndHeadAdBean> resultMainBean) {
        if (isActivityFinish()) {
            return;
        }
        if (resultMainBean == null || resultMainBean.getMessages() == null || resultMainBean.getMessages().getData() == null) {
            f0();
            return;
        }
        if (resultMainBean.getFlag() == 0) {
            h0();
            return;
        }
        GameListAndHeadAdBean data = resultMainBean.getMessages().getData();
        List<AppBean> game_list = data.getGame_list();
        ArrayList arrayList = new ArrayList();
        boolean z10 = game_list != null && game_list.size() > 0;
        if (z10) {
            this.f70026e = game_list.size() >= 20;
        } else {
            this.f70026e = false;
        }
        if (z10) {
            arrayList.addAll(l0(data));
        }
        i0(arrayList);
        if (this.f70025d <= 1) {
            hideLoading();
        }
    }

    @AfterViews
    void afterViews() {
        this.f70027f = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.adapter.v4 v4Var = new com.join.mgps.adapter.v4(this.f70034m, this.f70030i, this.f70043v);
        this.f70029h = v4Var;
        v4Var.b(this.f70042u);
        this.f70033l.j(true);
        this.f70028g.setPreLoadCount(10);
        this.f70028g.setAdapter((ListAdapter) this.f70029h);
        this.f70028g.setPullLoadEnable(new a());
        this.f70028g.setPullRefreshEnable(new b());
        this.f70028g.setOnItemClickListener(new c());
        this.f70028g.setOnScrollListener(this);
        S();
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void d0(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        com.join.mgps.adapter.v4 v4Var = this.f70029h;
        if (v4Var != null) {
            v4Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e0() {
        this.f70028g.u();
        this.f70028g.v();
        this.f70033l.setVisibility(8);
        this.f70032k.setVisibility(8);
        this.f70031j.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0() {
        if (this.f70025d <= 1) {
            e0();
        }
        XListView2 xListView2 = this.f70028g;
        if (xListView2 != null) {
            xListView2.u();
            this.f70028g.v();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g0() {
        this.f70033l.setVisibility(8);
        this.f70032k.setVisibility(0);
        this.f70031j.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h0() {
        this.f70026e = false;
        if (this.f70025d <= 1) {
            this.f70033l.setVisibility(8);
            this.f70032k.setVisibility(8);
            this.f70031j.setVisibility(8);
        }
        this.f70028g.v();
        this.f70028g.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoading() {
        this.f70033l.setVisibility(0);
        this.f70032k.setVisibility(8);
        this.f70031j.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i0(List<PaPaBean> datas) {
        if (this.f70025d <= 1) {
            this.f70030i.clear();
        }
        updateDownStateList(datas);
        if (this.f70026e) {
            this.f70025d++;
        }
        if (datas != null && datas.size() > 0) {
            this.f70030i.addAll(datas);
        }
        this.f70028g.u();
        this.f70028g.v();
        if (!this.f70026e) {
            this.f70028g.setNoMore();
            if (this.f70030i.size() <= 0) {
                return;
            }
        }
        this.f70029h.notifyDataSetChanged();
    }

    boolean isActivityFinish() {
        Activity activity = this.f70034m;
        return activity == null || activity.isFinishing() || this.f70034m.isDestroyed();
    }

    List<PaPaBean> j0(List<GameHeadAd> headAdList, List<GameListAndCollectionInfo> gameLists) {
        ArrayList arrayList = new ArrayList();
        if (this.f70025d <= 1 && headAdList != null && headAdList.size() >= 1) {
            PaPaBean paPaBean = new PaPaBean();
            paPaBean.setType(PaPaBean.PaPaBeanTypes.TYPE_IMAGE_HEADER.value());
            paPaBean.setTypeValue(headAdList);
            arrayList.add(paPaBean);
        }
        int i10 = 0;
        for (GameListAndCollectionInfo gameListAndCollectionInfo : gameLists) {
            if (i10 >= 8) {
                break;
            }
            PaPaBean paPaBean2 = new PaPaBean();
            CollectionInfo collection_info = gameListAndCollectionInfo.getCollection_info();
            paPaBean2.setType(PaPaBean.PaPaBeanTypes.TYPE_TITLE_COLLECTION.value());
            paPaBean2.setTypeValue(collection_info);
            arrayList.add(paPaBean2);
            PaPaBean paPaBean3 = new PaPaBean();
            List<AppBean> game_list = gameListAndCollectionInfo.getGame_list();
            paPaBean3.setType(PaPaBean.PaPaBeanTypes.TYPE_CONTENT_COLLECTION.value());
            paPaBean3.setTypeValue(game_list);
            arrayList.add(paPaBean3);
            i10++;
        }
        return arrayList;
    }

    List<PaPaBean> k0(GameFactoryListBean gameFactoryListBean) {
        ArrayList arrayList = new ArrayList();
        String head_ad_pic = gameFactoryListBean.getHead_ad_pic();
        if (!TextUtils.isEmpty(head_ad_pic) && this.f70025d == 1) {
            ArrayList arrayList2 = new ArrayList();
            GameHeadAd gameHeadAd = new GameHeadAd();
            GameHeadAd.GameMain gameMain = new GameHeadAd.GameMain();
            gameMain.setAd_switch(1);
            gameMain.setPic_remote(head_ad_pic);
            gameHeadAd.setMain(gameMain);
            arrayList2.add(gameHeadAd);
            PaPaBean paPaBean = new PaPaBean();
            paPaBean.setType(PaPaBean.PaPaBeanTypes.TYPE_IMAGE_HEADER.value());
            paPaBean.setTypeValue(arrayList2);
            HashMap map = new HashMap();
            map.put(PaPaBean.KEY_IMAGE_HEADER_HEIGHT, 127);
            paPaBean.setImageHeaderParams(map);
            arrayList.add(paPaBean);
        }
        if (gameFactoryListBean.getLogo_info() != null && !TextUtils.isEmpty(gameFactoryListBean.getLogo_info().getIntroduce()) && this.f70025d == 1) {
            PaPaBean paPaBean2 = new PaPaBean();
            paPaBean2.setType(PaPaBean.PaPaBeanTypes.TYPE_GAMEFACTORY_LIST.value());
            GameFactoryListBean.LogoInfo logo_info = gameFactoryListBean.getLogo_info();
            logo_info.setTitle(this.f70037p);
            paPaBean2.setTypeValue(logo_info);
            arrayList.add(paPaBean2);
        }
        if (gameFactoryListBean.getGame_list() != null && gameFactoryListBean.getGame_list().size() > 0) {
            for (AppBean appBean : gameFactoryListBean.getGame_list()) {
                if (this.f70035n == 121) {
                    appBean.set_from(111);
                    appBean.set_from_type(121);
                }
                PaPaBean paPaBean3 = new PaPaBean();
                paPaBean3.setType(PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value());
                paPaBean3.setTypeValue(appBean);
                arrayList.add(paPaBean3);
            }
        }
        return arrayList;
    }

    List<PaPaBean> l0(GameListAndHeadAdBean headAdBean) {
        ArrayList arrayList = new ArrayList();
        if (this.f70025d <= 1) {
            PaPaBean paPaBean = new PaPaBean();
            paPaBean.setType(PaPaBean.PaPaBeanTypes.TYPE_IMAGE_HEADER.value());
            paPaBean.setTypeValue(headAdBean.getHead_ad());
            arrayList.add(paPaBean);
        }
        for (AppBean appBean : headAdBean.getGame_list()) {
            PaPaBean paPaBean2 = new PaPaBean();
            paPaBean2.setType(PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value());
            paPaBean2.setTypeValue(appBean);
            arrayList.add(paPaBean2);
        }
        return arrayList;
    }

    List<PaPaBean> m0(List<AppBean> values) {
        ArrayList arrayList = new ArrayList();
        for (AppBean appBean : values) {
            PaPaBean paPaBean = new PaPaBean();
            paPaBean.setType(PaPaBean.PaPaBeanTypes.TYPE_CONTENT_GAMEINFO.value());
            paPaBean.setTypeValue(appBean);
            arrayList.add(paPaBean);
        }
        return arrayList;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f70034m = (Activity) context;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        com.join.mgps.Util.j0.a().d(this);
        Bundle arguments = getArguments();
        int i10 = arguments.getInt("type");
        this.f70024c = i10;
        if (i10 == 1) {
            this.f70037p = arguments.getString("title");
            this.f70038q = arguments.getString("isSingle");
            this.f70036o = arguments.getString("factory_id");
            String string = arguments.getString("_from");
            if (com.join.mgps.Util.t2.i(string)) {
                this.f70035n = Integer.parseInt(string);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f70034m = null;
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.fragment.j4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f69922b.lambda$onEventMainThread$0();
            }
        });
        if (downloadTaskEvent.c() != 8 || isHidden() || this.f70041t) {
            return;
        }
        updateProgressPartly();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f70039r = (visibleItemCount + firstVisibleItem) - 1;
        this.f70040s = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        this.f70041t = scrollState != 0;
    }

    @Click
    void relodingimag() {
        S();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f70034m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String info) {
        if (isActivityFinish()) {
            return;
        }
        com.join.mgps.Util.a3.b(this.f70034m).d(info);
    }
}
