package com.join.mgps.fragment;

import android.app.Activity;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import androidx.fragment.app.Fragment;
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
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.GameOLHeadAdMain;
import com.join.mgps.dto.GameOLNoOpenTestBean;
import com.join.mgps.dto.ModInfoBean;
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
@EFragment(R.layout.game_online_first_layout)
public class q3 extends Fragment implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70582c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    XListView2 f70583d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f70584e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f70585f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    ImageView f70586g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    com.join.mgps.rpc.e f70587h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Activity f70588i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<DownloadTask> f70590k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    List<l6.a<GameOLNoOpenTestBean>> f70593n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f70594o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f70595p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.join.mgps.adapter.l2 f70597r;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f70589j = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Map<String, DownloadTask> f70591l = new ConcurrentHashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f70592m = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f70596q = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f70598s = true;

    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (q3.this.f70589j) {
                return;
            }
            q3.this.f70592m = 1;
            q3.this.f70598s = true;
            q3.this.Q();
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (q3.this.f70589j) {
                return;
            }
            q3.this.Q();
        }
    }

    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            if (i10 > q3.this.f70593n.size() || i10 < 0) {
                return;
            }
            l6.a<GameOLNoOpenTestBean> aVar = q3.this.f70593n.get(i10);
            if (aVar.d() == 2 && q3.this.f70593n.get(i10).c().getGame_id() != null) {
                IntentUtil.getInstance().intentActivity(q3.this.f70588i, aVar.c().getIntentDataBean());
            }
        }
    }

    private void V(DownloadTask downloadTask) {
        try {
            for (l6.a<GameOLNoOpenTestBean> aVar : this.f70593n) {
                if (aVar.d() == 2) {
                    GameOLNoOpenTestBean gameOLNoOpenTestBeanC = aVar.c();
                    if (gameOLNoOpenTestBeanC.getMod_info() != null) {
                        ModInfoBean mod_info = gameOLNoOpenTestBeanC.getMod_info();
                        DownloadTask downloadTask2 = this.f70591l.get(mod_info.getMain_game_id());
                        boolean z10 = true;
                        boolean z11 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                        DownloadTask downloadTask3 = this.f70591l.get(mod_info.getMod_game_id());
                        if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                            z10 = false;
                        }
                        if (z10 && z11) {
                            if (downloadTask.getCrc_link_type_val().equals(gameOLNoOpenTestBeanC.getCrc_sign_id())) {
                                aVar.f(downloadTask);
                                return;
                            }
                        } else if (z10) {
                            if (gameOLNoOpenTestBeanC.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(gameOLNoOpenTestBeanC.getMod_info().getMod_game_id())) {
                                aVar.f(downloadTask);
                                return;
                            }
                        } else if (!z11) {
                            DownloadTask downloadTaskG = gameOLNoOpenTestBeanC.getMod_info() != null ? q5.f.M().G(gameOLNoOpenTestBeanC.getMod_info().getMod_game_id()) : null;
                            if (downloadTaskG == null) {
                                downloadTaskG = q5.f.M().G(gameOLNoOpenTestBeanC.getCrc_sign_id());
                            }
                            if (downloadTaskG != null && downloadTask.getCrc_link_type_val().equals(downloadTaskG.getCrc_link_type_val())) {
                                aVar.f(downloadTask);
                                return;
                            }
                        } else if (downloadTask.getCrc_link_type_val().equals(gameOLNoOpenTestBeanC.getCrc_sign_id())) {
                            aVar.f(downloadTask);
                            return;
                        }
                    } else if (gameOLNoOpenTestBeanC.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                        aVar.f(downloadTask);
                        return;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.f70590k.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f70591l.remove(next.getCrc_link_type_val());
                    it2.remove();
                    for (l6.a<GameOLNoOpenTestBean> aVar : this.f70593n) {
                        if (aVar.d() == 2) {
                            GameOLNoOpenTestBean gameOLNoOpenTestBeanC = aVar.c();
                            if (gameOLNoOpenTestBeanC.getMod_info() != null) {
                                DownloadTask downloadTask2 = this.f70591l.get(gameOLNoOpenTestBeanC.getMod_info().getMod_game_id());
                                DownloadTask downloadTask3 = this.f70591l.get(gameOLNoOpenTestBeanC.getGame_id());
                                if (downloadTask2 == null && downloadTask3 == null) {
                                    aVar.f(null);
                                } else if (downloadTask2 != null) {
                                    aVar.f(downloadTask2);
                                } else if (downloadTask3 != null) {
                                    aVar.f(downloadTask3);
                                } else if (gameOLNoOpenTestBeanC.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                                    aVar.f(null);
                                }
                            } else if (gameOLNoOpenTestBeanC.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
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
        this.f70597r.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f70591l;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            this.f70597r.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.Y4(this.f70590k, downloadTask);
        if (!this.f70591l.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f70590k.add(downloadTask);
            this.f70591l.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        V(downloadTask);
        this.f70597r.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f70591l;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f70590k.add(downloadTask);
            this.f70591l.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        V(downloadTask);
        DownloadTask downloadTask2 = this.f70591l.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        this.f70597r.notifyDataSetChanged();
    }

    private void updateProgressPartly() {
        DownloadTask downloadTaskA;
        for (int i10 = this.f70595p; i10 <= this.f70594o; i10++) {
            l6.a aVar = (l6.a) this.f70583d.getItemAtPosition(i10);
            if (aVar != null && (downloadTaskA = aVar.a()) != null && (downloadTaskA.getStatus() == 2 || downloadTaskA.getStatus() == 12)) {
                View childAt = this.f70583d.getChildAt(i10 - this.f70595p);
                if (childAt.getTag() instanceof com.join.mgps.adapter.l2.d) {
                    com.join.mgps.adapter.l2.d dVar = (com.join.mgps.adapter.l2.d) childAt.getTag();
                    try {
                        if (aVar.d() == 2) {
                            DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTaskA.getCrc_link_type_val());
                            if (downloadTaskG == null) {
                                return;
                            }
                            long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                            if (downloadTaskA.getSize() == 0) {
                                dVar.f62678k.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            } else {
                                dVar.f62678k.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            }
                            if (downloadTaskA.getStatus() == 12) {
                                dVar.f62671d.setProgress((int) downloadTaskG.getProgress());
                            } else {
                                dVar.f62672e.setProgress((int) downloadTaskG.getProgress());
                            }
                            if (downloadTaskA.getStatus() == 2) {
                                dVar.f62679l.setText(downloadTaskG.getSpeed() + "/S");
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

    @Background
    void Q() {
        GameOLHeadAdBean gameOLHeadAdBean;
        GameOLHeadAdMain main;
        if (!com.join.android.app.common.utils.m.j(this.f70588i)) {
            W();
            showLodingFailed();
            return;
        }
        this.f70589j = true;
        try {
            try {
                ResultMainBean<GameOLDataBean<GameOLNoOpenTestBean>> resultMainBeanT0 = this.f70587h.t0(R(this.f70592m));
                if (resultMainBeanT0 == null || resultMainBeanT0.getFlag() != 1) {
                    W();
                    showLodingFailed();
                } else {
                    GameOLDataBean<GameOLNoOpenTestBean> data = resultMainBeanT0.getMessages().getData();
                    if (data != null) {
                        ArrayList arrayList = new ArrayList();
                        List<GameOLHeadAdBean> head_ad = data.getHead_ad();
                        if (head_ad != null && head_ad.size() > 0 && this.f70592m == 1 && (gameOLHeadAdBean = head_ad.get(0)) != null && (main = gameOLHeadAdBean.getMain()) != null && "1".equals(main.getAd_switch())) {
                            l6.a<GameOLNoOpenTestBean> aVar = new l6.a<>();
                            aVar.i(0);
                            aVar.g(gameOLHeadAdBean);
                            arrayList.add(aVar);
                        }
                        List<GameOLNoOpenTestBean> game_list = data.getGame_list();
                        if (game_list != null && game_list.size() > 0) {
                            boolean z10 = false;
                            for (GameOLNoOpenTestBean gameOLNoOpenTestBean : game_list) {
                                String game_open_time = gameOLNoOpenTestBean.getGame_open_time();
                                if (com.join.mgps.Util.t2.i(game_open_time)) {
                                    if (com.join.android.app.common.utils.i.h(Long.parseLong(game_open_time + "000"))) {
                                        this.f70598s = true;
                                        if (this.f70592m == 1 && !z10) {
                                            l6.a<GameOLNoOpenTestBean> aVar2 = new l6.a<>();
                                            aVar2.i(1);
                                            aVar2.j("今日开测");
                                            arrayList.add(aVar2);
                                            z10 = true;
                                        }
                                        l6.a<GameOLNoOpenTestBean> aVar3 = new l6.a<>();
                                        aVar3.i(2);
                                        aVar3.h(gameOLNoOpenTestBean);
                                        arrayList.add(aVar3);
                                    } else {
                                        if (this.f70598s) {
                                            l6.a<GameOLNoOpenTestBean> aVar4 = new l6.a<>();
                                            aVar4.i(1);
                                            aVar4.j("未来两周");
                                            arrayList.add(aVar4);
                                            this.f70598s = false;
                                        }
                                        l6.a<GameOLNoOpenTestBean> aVar5 = new l6.a<>();
                                        aVar5.i(2);
                                        aVar5.h(gameOLNoOpenTestBean);
                                        arrayList.add(aVar5);
                                    }
                                }
                            }
                            if (game_list.size() < 10) {
                                T();
                            }
                        } else if (this.f70592m == 1) {
                            showLodingFailed();
                        } else {
                            T();
                        }
                        this.f70592m++;
                        showMain(arrayList);
                        W();
                    } else if (this.f70592m == 1) {
                        showLodingFailed();
                    } else {
                        T();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                W();
                showLodingFailed();
            }
            this.f70589j = false;
        } catch (Throwable th) {
            this.f70589j = false;
            throw th;
        }
    }

    public CommonRequestBean R(int pn) {
        return RequestBeanUtil.getInstance(this.f70588i).getGameOLRequest(pn, 20);
    }

    @Click
    void S() {
        this.f70592m = 1;
        Q();
    }

    @UiThread
    void T() {
        this.f70583d.setNoMore();
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void U(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        com.join.mgps.adapter.l2 l2Var = this.f70597r;
        if (l2Var != null) {
            l2Var.notifyDataSetChanged();
        }
    }

    @UiThread
    void W() {
        try {
            this.f70583d.u();
            this.f70583d.v();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void X(List<l6.a<GameOLNoOpenTestBean>> gameOLItemBussneses, List<DownloadTask> downloadTasks) {
        if (downloadTasks == null || downloadTasks.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : downloadTasks) {
            for (l6.a<GameOLNoOpenTestBean> aVar : gameOLItemBussneses) {
                if (aVar.d() == 2) {
                    if (aVar.c().getMod_info() == null) {
                        if (downloadTask.getCrc_link_type_val().equals(aVar.c().getGame_id())) {
                            aVar.f(downloadTask);
                            break;
                        }
                    } else {
                        ModInfoBean mod_info = aVar.c().getMod_info();
                        DownloadTask downloadTask2 = this.f70591l.get(mod_info.getMain_game_id());
                        boolean zK = false;
                        boolean zE = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : com.join.android.app.common.utils.g.t0(getContext()).e(getContext(), downloadTask2.getPackageName());
                        DownloadTask downloadTask3 = this.f70591l.get(mod_info.getMod_game_id());
                        if (downloadTask3 != null && downloadTask3.getStatus() == 5) {
                            zK = com.join.mgps.va.overmind.i.q().K(downloadTask3.getPackageName());
                        }
                        if (!zK || !zE) {
                            if (zK) {
                                if (aVar.c().getMod_info() != null && downloadTask.getCrc_link_type_val().equals(aVar.c().getMod_info().getMod_game_id())) {
                                    aVar.f(downloadTask);
                                    break;
                                }
                            } else if (zE) {
                                if (downloadTask.getCrc_link_type_val().equals(aVar.c().getCrc_sign_id())) {
                                    aVar.f(downloadTask);
                                    break;
                                }
                            } else {
                                DownloadTask downloadTaskG = aVar.c().getMod_info() != null ? q5.f.M().G(aVar.c().getMod_info().getMod_game_id()) : null;
                                if (downloadTaskG == null) {
                                    downloadTaskG = q5.f.M().G(aVar.c().getCrc_sign_id());
                                }
                                if (downloadTaskG != null && downloadTask.getCrc_link_type_val().equals(downloadTaskG.getCrc_link_type_val())) {
                                    aVar.f(downloadTask);
                                    break;
                                }
                            }
                        } else if (downloadTask.getCrc_link_type_val().equals(aVar.c().getCrc_sign_id())) {
                            aVar.f(downloadTask);
                            break;
                        }
                    }
                }
            }
        }
    }

    @AfterViews
    void afterviews() {
        this.f70587h = com.join.mgps.rpc.impl.d.O1();
        this.f70588i = getActivity();
        this.f70590k = q5.f.M().d();
        com.join.mgps.Util.j0.a().d(this);
        List<DownloadTask> list = this.f70590k;
        if (list != null && list.size() > 0) {
            for (DownloadTask downloadTask : this.f70590k) {
                this.f70591l.put(downloadTask.getCrc_link_type_val(), downloadTask);
                com.join.mgps.Util.g1.d("infoo", this.f70590k.size() + " tasksiz     mapsize  " + downloadTask.getStatus());
                com.join.mgps.Util.g1.d("infoo", downloadTask.toString());
            }
        }
        com.join.mgps.adapter.l2 l2Var = new com.join.mgps.adapter.l2(this.f70588i);
        this.f70597r = l2Var;
        this.f70593n = l2Var.c();
        showLoding();
        Q();
        this.f70583d.setPreLoadCount(10);
        this.f70583d.setPullRefreshEnable(new a());
        this.f70583d.setPullLoadEnable(new b());
        this.f70583d.setOnItemClickListener(new c());
        this.f70583d.setOnScrollListener(this);
        this.f70583d.setAdapter((ListAdapter) this.f70597r);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        Map<String, DownloadTask> map;
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
                if (isHidden() || (map = this.f70591l) == null || map.isEmpty() || this.f70596q) {
                    return;
                }
                updateProgressPartly();
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
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f70594o = (visibleItemCount + firstVisibleItem) - 1;
        this.f70595p = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        this.f70596q = scrollState != 0;
    }

    @Click
    void relodingimag() {
        this.f70592m = 1;
        showLoding();
        Q();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(getActivity());
    }

    @UiThread
    void showLoding() {
        try {
            this.f70584e.setVisibility(0);
            this.f70585f.setVisibility(8);
            this.f70582c.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingFailed() {
        try {
            List<l6.a<GameOLNoOpenTestBean>> list = this.f70593n;
            if (list == null || list.size() == 0) {
                this.f70585f.setVisibility(0);
                this.f70584e.setVisibility(8);
                this.f70582c.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showMain(List<l6.a<GameOLNoOpenTestBean>> subList) {
        if (subList == null || subList.size() == 0) {
            return;
        }
        try {
            this.f70585f.setVisibility(8);
            this.f70584e.setVisibility(8);
            this.f70582c.setVisibility(0);
            if (this.f70592m == 2) {
                this.f70593n.clear();
            }
            X(subList, this.f70590k);
            this.f70593n.addAll(subList);
            if (this.f70592m == 2) {
                this.f70593n.size();
            }
            com.join.mgps.Util.g1.d("infoo", this.f70593n.size() + "   showMain");
            this.f70597r.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
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
