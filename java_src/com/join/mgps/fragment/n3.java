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
import com.join.mgps.dto.GameOLFirstBean;
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.GameOLHeadAdMain;
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
public class n3 extends Fragment implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70291c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    XListView2 f70292d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f70293e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f70294f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    ImageView f70295g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    com.join.mgps.rpc.e f70296h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Activity f70297i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<DownloadTask> f70299k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    List<l6.a<GameOLFirstBean>> f70302n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f70303o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f70304p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.join.mgps.adapter.j2 f70306r;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f70298j = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Map<String, DownloadTask> f70300l = new ConcurrentHashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f70301m = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f70305q = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f70307s = true;

    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (n3.this.f70298j) {
                return;
            }
            n3.this.f70301m = 1;
            n3.this.f70307s = true;
            n3.this.Q();
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (n3.this.f70298j) {
                return;
            }
            n3.this.Q();
        }
    }

    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            if (i10 > n3.this.f70302n.size() || i10 < 0) {
                return;
            }
            l6.a<GameOLFirstBean> aVar = n3.this.f70302n.get(i10);
            if (aVar.d() == 2 && n3.this.f70302n.get(i10).c().getGame_id() != null) {
                IntentUtil.getInstance().intentActivity(n3.this.f70297i, aVar.c().getIntentDataBean());
            }
        }
    }

    private void V(DownloadTask downloadTask) {
        try {
            for (l6.a<GameOLFirstBean> aVar : this.f70302n) {
                if (aVar.d() == 2) {
                    GameOLFirstBean gameOLFirstBeanC = aVar.c();
                    if (gameOLFirstBeanC.getMod_info() != null) {
                        ModInfoBean mod_info = gameOLFirstBeanC.getMod_info();
                        DownloadTask downloadTask2 = this.f70300l.get(mod_info.getMain_game_id());
                        boolean z10 = true;
                        boolean z11 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                        DownloadTask downloadTask3 = this.f70300l.get(mod_info.getMod_game_id());
                        if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                            z10 = false;
                        }
                        if (z10 && z11) {
                            if (downloadTask.getCrc_link_type_val().equals(gameOLFirstBeanC.getCrc_sign_id())) {
                                aVar.f(downloadTask);
                                return;
                            }
                        } else if (z10) {
                            if (gameOLFirstBeanC.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(gameOLFirstBeanC.getMod_info().getMod_game_id())) {
                                aVar.f(downloadTask);
                                return;
                            }
                        } else if (!z11) {
                            DownloadTask downloadTaskG = gameOLFirstBeanC.getMod_info() != null ? q5.f.M().G(gameOLFirstBeanC.getMod_info().getMod_game_id()) : null;
                            if (downloadTaskG == null) {
                                downloadTaskG = q5.f.M().G(gameOLFirstBeanC.getCrc_sign_id());
                            }
                            if (downloadTaskG != null && downloadTask.getCrc_link_type_val().equals(downloadTaskG.getCrc_link_type_val())) {
                                aVar.f(downloadTask);
                                return;
                            }
                        } else if (downloadTask.getCrc_link_type_val().equals(gameOLFirstBeanC.getCrc_sign_id())) {
                            aVar.f(downloadTask);
                            return;
                        }
                    } else if (gameOLFirstBeanC.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
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
            Iterator<DownloadTask> it2 = this.f70299k.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f70300l.remove(next.getCrc_link_type_val());
                    it2.remove();
                    for (l6.a<GameOLFirstBean> aVar : this.f70302n) {
                        if (aVar.d() == 2) {
                            GameOLFirstBean gameOLFirstBeanC = aVar.c();
                            if (gameOLFirstBeanC.getMod_info() != null) {
                                DownloadTask downloadTask2 = this.f70300l.get(gameOLFirstBeanC.getMod_info().getMod_game_id());
                                DownloadTask downloadTask3 = this.f70300l.get(gameOLFirstBeanC.getGame_id());
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
        this.f70306r.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f70300l;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            this.f70306r.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.Y4(this.f70299k, downloadTask);
        if (!this.f70300l.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f70300l.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        this.f70299k.add(downloadTask);
        V(downloadTask);
        this.f70306r.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f70300l;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f70299k.add(downloadTask);
            this.f70300l.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        V(downloadTask);
        DownloadTask downloadTask2 = this.f70300l.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        this.f70306r.notifyDataSetChanged();
    }

    private void updateProgressPartly() {
        DownloadTask downloadTaskA;
        for (int i10 = this.f70304p; i10 <= this.f70303o; i10++) {
            l6.a aVar = (l6.a) this.f70292d.getItemAtPosition(i10);
            if (aVar != null && (downloadTaskA = aVar.a()) != null && (downloadTaskA.getStatus() == 2 || downloadTaskA.getStatus() == 12)) {
                View childAt = this.f70292d.getChildAt(i10 - this.f70304p);
                if (childAt.getTag() instanceof com.join.mgps.adapter.j2.e) {
                    com.join.mgps.adapter.j2.e eVar = (com.join.mgps.adapter.j2.e) childAt.getTag();
                    try {
                        if (aVar.d() == 2) {
                            DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTaskA.getCrc_link_type_val());
                            if (downloadTaskG == null) {
                                return;
                            }
                            long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                            if (downloadTaskA.getSize() == 0) {
                                eVar.f62482k.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            } else {
                                eVar.f62482k.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            }
                            if (downloadTaskA.getStatus() == 12) {
                                eVar.f62475d.setProgress((int) downloadTaskG.getProgress());
                            } else {
                                eVar.f62476e.setProgress((int) downloadTaskG.getProgress());
                            }
                            if (downloadTaskA.getStatus() == 2) {
                                eVar.f62483l.setText(downloadTaskG.getSpeed() + "/S");
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
        if (!com.join.android.app.common.utils.m.j(this.f70297i)) {
            W();
            showLodingFailed();
            return;
        }
        this.f70298j = true;
        try {
            try {
                ResultMainBean<GameOLDataBean<GameOLFirstBean>> resultMainBeanL = this.f70296h.l(R(this.f70301m));
                if (resultMainBeanL == null || resultMainBeanL.getFlag() != 1) {
                    W();
                    showLodingFailed();
                } else {
                    GameOLDataBean<GameOLFirstBean> data = resultMainBeanL.getMessages().getData();
                    if (data != null) {
                        ArrayList arrayList = new ArrayList();
                        List<GameOLHeadAdBean> head_ad = data.getHead_ad();
                        if (head_ad != null && head_ad.size() > 0 && this.f70301m == 1 && (gameOLHeadAdBean = head_ad.get(0)) != null && (main = gameOLHeadAdBean.getMain()) != null && "1".equals(main.getAd_switch())) {
                            l6.a<GameOLFirstBean> aVar = new l6.a<>();
                            aVar.i(0);
                            aVar.g(gameOLHeadAdBean);
                            arrayList.add(aVar);
                        }
                        List<GameOLFirstBean> game_list = data.getGame_list();
                        if (game_list != null && game_list.size() > 0) {
                            for (GameOLFirstBean gameOLFirstBean : game_list) {
                                String update_times = gameOLFirstBean.getUpdate_times();
                                if (com.join.mgps.Util.t2.i(update_times)) {
                                    if (com.join.android.app.common.utils.i.h(Long.parseLong(update_times + "000"))) {
                                        this.f70307s = true;
                                        l6.a<GameOLFirstBean> aVar2 = new l6.a<>();
                                        aVar2.i(2);
                                        aVar2.h(gameOLFirstBean);
                                        arrayList.add(aVar2);
                                    } else {
                                        l6.a<GameOLFirstBean> aVar3 = new l6.a<>();
                                        aVar3.i(2);
                                        aVar3.h(gameOLFirstBean);
                                        arrayList.add(aVar3);
                                    }
                                }
                            }
                            if (game_list.size() < 10) {
                                T();
                            }
                        } else if (this.f70301m == 1) {
                            showLodingFailed();
                        } else {
                            T();
                        }
                        this.f70301m++;
                        showMain(arrayList);
                        W();
                    } else if (this.f70301m == 1) {
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
            this.f70298j = false;
        } catch (Throwable th) {
            this.f70298j = false;
            throw th;
        }
    }

    public CommonRequestBean R(int pn) {
        return RequestBeanUtil.getInstance(this.f70297i).getGameOLRequest(pn, 10);
    }

    @Click
    void S() {
        this.f70301m = 1;
        Q();
    }

    @UiThread
    void T() {
        this.f70292d.setNoMore();
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
        com.join.mgps.adapter.j2 j2Var = this.f70306r;
        if (j2Var != null) {
            j2Var.notifyDataSetChanged();
        }
    }

    @UiThread
    void W() {
        try {
            this.f70292d.u();
            this.f70292d.v();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void X(List<l6.a<GameOLFirstBean>> gameOLItemBussneses, List<DownloadTask> downloadTasks) {
        if (downloadTasks == null || downloadTasks.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : downloadTasks) {
            for (l6.a<GameOLFirstBean> aVar : gameOLItemBussneses) {
                if (aVar.d() == 2) {
                    if (aVar.c().getMod_info() == null) {
                        if (downloadTask.getCrc_link_type_val().equals(aVar.c().getGame_id())) {
                            aVar.f(downloadTask);
                            break;
                        }
                    } else {
                        ModInfoBean mod_info = aVar.c().getMod_info();
                        DownloadTask downloadTask2 = this.f70300l.get(mod_info.getMain_game_id());
                        boolean zK = false;
                        boolean zE = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : com.join.android.app.common.utils.g.t0(getContext()).e(getContext(), downloadTask2.getPackageName());
                        DownloadTask downloadTask3 = this.f70300l.get(mod_info.getMod_game_id());
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
        this.f70296h = com.join.mgps.rpc.impl.d.O1();
        this.f70297i = getActivity();
        this.f70299k = q5.f.M().d();
        com.join.mgps.Util.j0.a().d(this);
        List<DownloadTask> list = this.f70299k;
        if (list != null && list.size() > 0) {
            for (DownloadTask downloadTask : this.f70299k) {
                this.f70300l.put(downloadTask.getCrc_link_type_val(), downloadTask);
                com.join.mgps.Util.g1.d("infoo", this.f70299k.size() + " tasksiz     mapsize  " + downloadTask.getStatus());
                com.join.mgps.Util.g1.d("infoo", downloadTask.toString());
            }
        }
        com.join.mgps.adapter.j2 j2Var = new com.join.mgps.adapter.j2(this.f70297i);
        this.f70306r = j2Var;
        this.f70302n = j2Var.c();
        showLoding();
        Q();
        this.f70292d.setPreLoadCount(10);
        this.f70292d.setPullRefreshEnable(new a());
        this.f70292d.setPullLoadEnable(new b());
        this.f70292d.setOnItemClickListener(new c());
        this.f70292d.setOnScrollListener(this);
        this.f70292d.setAdapter((ListAdapter) this.f70306r);
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
                if (!isHidden() && (map = this.f70300l) != null && !map.isEmpty() && !this.f70305q) {
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

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f70303o = (visibleItemCount + firstVisibleItem) - 1;
        this.f70304p = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        this.f70305q = scrollState != 0;
    }

    @Click
    void relodingimag() {
        this.f70301m = 1;
        showLoding();
        Q();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(getActivity());
    }

    @UiThread
    void showLoding() {
        this.f70293e.setVisibility(0);
        this.f70294f.setVisibility(8);
        this.f70291c.setVisibility(8);
    }

    @UiThread
    void showLodingFailed() {
        try {
            List<l6.a<GameOLFirstBean>> list = this.f70302n;
            if (list == null || list.size() == 0) {
                this.f70294f.setVisibility(0);
                this.f70293e.setVisibility(8);
                this.f70291c.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showMain(List<l6.a<GameOLFirstBean>> subList) {
        if (subList == null || subList.size() == 0) {
            return;
        }
        try {
            this.f70294f.setVisibility(8);
            this.f70293e.setVisibility(8);
            this.f70291c.setVisibility(0);
            if (this.f70301m == 2) {
                this.f70302n.clear();
            }
            X(subList, this.f70299k);
            this.f70302n.addAll(subList);
            if (this.f70301m == 2) {
                this.f70302n.size();
            }
            com.join.mgps.Util.g1.d("infoo", this.f70302n.size() + "   showMain");
            this.f70306r.notifyDataSetChanged();
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
