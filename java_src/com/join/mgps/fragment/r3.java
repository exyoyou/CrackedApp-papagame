package com.join.mgps.fragment;

import android.app.Activity;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.GameOLDataBean;
import com.join.mgps.dto.GameOLFirstBean;
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.GameOLHeadAdMain;
import com.join.mgps.dto.RequestPnAndPcArgs;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
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
@EFragment
public class r3 extends com.join.mgps.basefragment.a implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    XListView2 f70679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.join.mgps.rpc.e f70680f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Activity f70681g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<DownloadTask> f70683i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    List<l6.a<GameOLFirstBean>> f70686l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f70687m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f70688n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.join.mgps.adapter.m2 f70690p;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f70682h = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Map<String, DownloadTask> f70684j = new ConcurrentHashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f70685k = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f70689o = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f70691q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f70692r = true;

    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (r3.this.f70682h) {
                return;
            }
            r3.this.f70685k = 1;
            r3.this.f70692r = true;
            r3.this.c0();
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (r3.this.f70682h) {
                return;
            }
            r3.this.c0();
        }
    }

    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            if (i10 > r3.this.f70686l.size() || i10 < 0) {
                return;
            }
            l6.a<GameOLFirstBean> aVar = r3.this.f70686l.get(i10);
            if (aVar.d() == 2 && r3.this.f70686l.get(i10).c().getGame_id() != null) {
                IntentUtil.getInstance().intentActivity(r3.this.f70681g, aVar.c().getIntentDataBean());
            }
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.f70683i.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f70684j.remove(next.getCrc_link_type_val());
                    it2.remove();
                    for (l6.a<GameOLFirstBean> aVar : this.f70686l) {
                        if (aVar.d() == 2) {
                            GameOLFirstBean gameOLFirstBeanC = aVar.c();
                            if (gameOLFirstBeanC.getMod_info() != null) {
                                DownloadTask downloadTask2 = this.f70684j.get(gameOLFirstBeanC.getMod_info().getMod_game_id());
                                DownloadTask downloadTask3 = this.f70684j.get(gameOLFirstBeanC.getGame_id());
                                if (downloadTask2 == null && downloadTask3 == null) {
                                    aVar.f(null);
                                } else if (downloadTask2 != null) {
                                    aVar.f(downloadTask2);
                                } else if (downloadTask3 != null) {
                                    aVar.f(downloadTask3);
                                } else if (gameOLFirstBeanC.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                                    aVar.f(null);
                                }
                            } else if (gameOLFirstBeanC.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                aVar.f(null);
                            }
                        }
                    }
                    break;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f70690p.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f70684j;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            this.f70690p.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.Y4(this.f70683i, downloadTask);
        if (!this.f70684j.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f70683i.add(downloadTask);
            for (l6.a<GameOLFirstBean> aVar : this.f70686l) {
                if (aVar.d() == 2 && aVar.c().getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                    aVar.f(downloadTask);
                    break;
                }
            }
            this.f70684j.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        this.f70690p.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f70684j;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f70683i.add(downloadTask);
            for (l6.a<GameOLFirstBean> aVar : this.f70686l) {
                if (aVar.d() == 2 && aVar.c().getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                    aVar.f(downloadTask);
                    break;
                }
            }
            this.f70684j.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.f70684j.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        this.f70690p.notifyDataSetChanged();
    }

    private void updateProgressPartly() {
        DownloadTask downloadTaskA;
        for (int i10 = this.f70688n; i10 <= this.f70687m; i10++) {
            l6.a aVar = (l6.a) this.f70679e.getItemAtPosition(i10);
            if (aVar != null && (downloadTaskA = aVar.a()) != null && (downloadTaskA.getStatus() == 2 || downloadTaskA.getStatus() == 12)) {
                View childAt = this.f70679e.getChildAt(i10 - this.f70688n);
                if (childAt.getTag() instanceof com.join.mgps.adapter.m2.d) {
                    com.join.mgps.adapter.m2.d dVar = (com.join.mgps.adapter.m2.d) childAt.getTag();
                    try {
                        if (aVar.d() == 2) {
                            DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTaskA.getCrc_link_type_val());
                            if (downloadTaskG == null) {
                                return;
                            }
                            long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                            if (downloadTaskA.getSize() == 0) {
                                dVar.f62767j.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            } else {
                                dVar.f62767j.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            }
                            if (downloadTaskA.getStatus() == 12) {
                                dVar.f62761d.setProgress((int) downloadTaskG.getProgress());
                            } else {
                                dVar.f62762e.setProgress((int) downloadTaskG.getProgress());
                            }
                            if (downloadTaskA.getStatus() == 2) {
                                dVar.f62768k.setText(downloadTaskG.getSpeed() + "/S");
                            }
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

    @Override // com.join.mgps.basefragment.a
    protected int P() {
        return R.layout.fragment_olopen_test;
    }

    @Override // com.join.mgps.basefragment.a
    protected int Q() {
        return R.id.game_online_first_layout;
    }

    @AfterViews
    void afterviews() {
        this.f70680f = com.join.mgps.rpc.impl.d.O1();
        this.f70681g = getActivity();
        getView();
        try {
            this.f70691q = getArguments().getInt("intentTo");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        com.join.mgps.Util.j0.a().d(this);
        List<DownloadTask> listD = q5.f.M().d();
        this.f70683i = listD;
        if (listD != null && listD.size() > 0) {
            for (DownloadTask downloadTask : this.f70683i) {
                this.f70684j.put(downloadTask.getCrc_link_type_val(), downloadTask);
                com.join.mgps.Util.g1.d("infoo", this.f70683i.size() + " tasksiz     mapsize  " + downloadTask.getStatus());
                com.join.mgps.Util.g1.d("infoo", downloadTask.toString());
            }
        }
        com.join.mgps.adapter.m2 m2Var = new com.join.mgps.adapter.m2(this.f70681g);
        this.f70690p = m2Var;
        this.f70686l = m2Var.c();
        this.f70679e.setPreLoadCount(10);
        this.f70679e.setPullRefreshEnable(new a());
        this.f70679e.setPullLoadEnable(new b());
        this.f70679e.setOnItemClickListener(new c());
        loadData();
        this.f70679e.setOnScrollListener(this);
        this.f70679e.setAdapter((ListAdapter) this.f70690p);
    }

    @Background
    void c0() {
        ResultMainBean<GameOLDataBean<GameOLFirstBean>> resultMainBeanE;
        GameOLHeadAdBean gameOLHeadAdBean;
        GameOLHeadAdMain main;
        if (!com.join.android.app.common.utils.m.j(this.f70681g)) {
            h0();
            showLodingFailed();
            return;
        }
        this.f70682h = true;
        try {
            try {
                CommonRequestBean<RequestPnAndPcArgs> commonRequestBeanD0 = d0(this.f70685k);
                int i10 = this.f70691q;
                if (i10 == -1) {
                    resultMainBeanE = this.f70680f.E(commonRequestBeanD0);
                } else if (i10 == 0) {
                    resultMainBeanE = this.f70680f.D1(commonRequestBeanD0);
                } else if (i10 == 1) {
                    resultMainBeanE = this.f70680f.u1(commonRequestBeanD0);
                } else if (i10 != 2) {
                    resultMainBeanE = i10 != 3 ? this.f70680f.E(commonRequestBeanD0) : this.f70680f.f(commonRequestBeanD0);
                } else {
                    resultMainBeanE = this.f70680f.g0(commonRequestBeanD0);
                }
                if (resultMainBeanE == null || resultMainBeanE.getFlag() != 1) {
                    h0();
                    showLodingFailed();
                } else {
                    GameOLDataBean<GameOLFirstBean> data = resultMainBeanE.getMessages().getData();
                    if (data != null) {
                        ArrayList arrayList = new ArrayList();
                        List<GameOLHeadAdBean> head_ad = data.getHead_ad();
                        if (head_ad != null && head_ad.size() > 0 && this.f70685k == 1 && (gameOLHeadAdBean = head_ad.get(0)) != null && (main = gameOLHeadAdBean.getMain()) != null && "1".equals(main.getAd_switch())) {
                            l6.a<GameOLFirstBean> aVar = new l6.a<>();
                            aVar.i(0);
                            aVar.g(gameOLHeadAdBean);
                            arrayList.add(aVar);
                        }
                        List<GameOLFirstBean> game_list = data.getGame_list();
                        if (game_list != null && game_list.size() > 0) {
                            boolean z10 = false;
                            for (GameOLFirstBean gameOLFirstBean : game_list) {
                                String game_open_time = gameOLFirstBean.getGame_open_time();
                                if (this.f70691q != -1) {
                                    l6.a<GameOLFirstBean> aVar2 = new l6.a<>();
                                    aVar2.i(2);
                                    aVar2.h(gameOLFirstBean);
                                    arrayList.add(aVar2);
                                } else if (com.join.mgps.Util.t2.i(game_open_time)) {
                                    if (com.join.android.app.common.utils.i.h(Long.parseLong(game_open_time + "000"))) {
                                        this.f70692r = true;
                                        int i11 = this.f70691q;
                                        if ((i11 == -1 || i11 == 0) && this.f70685k == 1 && !z10) {
                                            l6.a<GameOLFirstBean> aVar3 = new l6.a<>();
                                            aVar3.i(1);
                                            if (this.f70691q == -1) {
                                                aVar3.j("今日开测");
                                            } else {
                                                aVar3.j("今日上新");
                                            }
                                            arrayList.add(aVar3);
                                            z10 = true;
                                        }
                                        l6.a<GameOLFirstBean> aVar4 = new l6.a<>();
                                        aVar4.i(2);
                                        aVar4.h(gameOLFirstBean);
                                        arrayList.add(aVar4);
                                    } else {
                                        int i12 = this.f70691q;
                                        if ((i12 == -1 || i12 == 0) && this.f70692r) {
                                            l6.a<GameOLFirstBean> aVar5 = new l6.a<>();
                                            aVar5.i(1);
                                            aVar5.j("过去两周");
                                            arrayList.add(aVar5);
                                            this.f70692r = false;
                                        }
                                        l6.a<GameOLFirstBean> aVar6 = new l6.a<>();
                                        aVar6.i(2);
                                        aVar6.h(gameOLFirstBean);
                                        arrayList.add(aVar6);
                                    }
                                } else if (this.f70685k == 1) {
                                    showLodingFailed();
                                } else {
                                    f0();
                                }
                            }
                            if (game_list.size() < 10) {
                                f0();
                            }
                        } else if (this.f70685k == 1) {
                            showLodingFailed();
                        } else {
                            f0();
                        }
                        this.f70685k++;
                        showMain(arrayList);
                        h0();
                    } else if (this.f70685k == 1) {
                        showLodingFailed();
                    } else {
                        f0();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                h0();
                showLodingFailed();
            }
            this.f70682h = false;
        } catch (Throwable th) {
            this.f70682h = false;
            throw th;
        }
    }

    public CommonRequestBean d0(int pn) {
        return RequestBeanUtil.getInstance(this.f70681g).getGameOLRequest(pn, 20);
    }

    @Click
    void e0() {
        this.f70685k = 1;
        c0();
    }

    @UiThread
    void f0() {
        try {
            this.f70679e.setNoMore();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void g0(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        com.join.mgps.adapter.m2 m2Var = this.f70690p;
        if (m2Var != null) {
            m2Var.notifyDataSetChanged();
        }
    }

    @UiThread
    void h0() {
        try {
            this.f70679e.u();
            this.f70679e.v();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void i0(List<l6.a<GameOLFirstBean>> gameOLItemBussneses, List<DownloadTask> downloadTasks) {
        if (downloadTasks == null || downloadTasks.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : downloadTasks) {
            for (l6.a<GameOLFirstBean> aVar : gameOLItemBussneses) {
                if (aVar.d() == 2 && downloadTask.getCrc_link_type_val().equals(aVar.c().getGame_id())) {
                    aVar.f(downloadTask);
                    break;
                }
            }
        }
    }

    @Override // com.join.mgps.basefragment.a
    @Background
    protected void loadData() {
        c0();
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        Map<String, DownloadTask> map;
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        switch (downloadTaskEvent.c()) {
            case 2:
                updateUI(downloadTaskA, 1);
                break;
            case 3:
                updateUI(downloadTaskA, 2);
                break;
            case 5:
            case 11:
                updateUI(downloadTaskA, 5);
                break;
            case 6:
                updateUI(downloadTaskA, 6);
                break;
            case 7:
                updateUI(downloadTaskA, 3);
                break;
            case 8:
                if (!isHidden() && (map = this.f70684j) != null && !map.isEmpty() && !this.f70689o) {
                    updateProgressPartly();
                    break;
                }
                break;
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
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f70687m = (visibleItemCount + firstVisibleItem) - 1;
        this.f70688n = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        this.f70689o = scrollState != 0;
    }

    @UiThread
    void showLodingFailed() {
        List<l6.a<GameOLFirstBean>> list = this.f70686l;
        if (list == null || list.size() == 0) {
            V();
        }
    }

    @UiThread
    void showMain(List<l6.a<GameOLFirstBean>> subList) {
        if (subList != null) {
            try {
                if (subList.size() == 0) {
                    return;
                }
                S();
                if (this.f70685k == 2) {
                    this.f70686l.clear();
                }
                i0(subList, this.f70683i);
                this.f70686l.addAll(subList);
                if (this.f70685k == 2) {
                    this.f70686l.size();
                }
                com.join.mgps.Util.g1.d("infoo", this.f70686l.size() + "   showMain");
                this.f70690p.notifyDataSetChanged();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
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
