package com.join.mgps.fragment;

import android.content.Context;
import android.os.Bundle;
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
import com.join.mgps.dto.CollectionDataBean;
import com.join.mgps.dto.CollectionMessageBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.helper.MGFightUtils;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.lang.reflect.Field;
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
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.collection_rank)
public class q extends Fragment implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final String f70518y = "CollectionModuleFourFragment";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70519c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    XListView2 f70520d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f70521e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f70522f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    ImageView f70523g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f70524h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<CollectionBeanSub> f70525i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.join.mgps.adapter.n f70526j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    List<DownloadTask> f70527k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    com.join.mgps.rpc.e f70529m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @StringRes(resName = "net_excption")
    String f70530n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @StringRes(resName = "connect_server_excption")
    String f70531o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f70533q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f70534r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f70535s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f70536t;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Map<String, DownloadTask> f70528l = new ConcurrentHashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f70532p = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f70537u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private CollectionDataBean f70538v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f70539w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f70540x = false;

    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (q.this.f70540x) {
                return;
            }
            q.this.f70532p = 1;
            q.this.R();
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (q.this.f70540x) {
                return;
            }
            q.this.R();
        }
    }

    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            if (i10 > q.this.f70525i.size() || i10 < 0 || ((CollectionBeanSub) q.this.f70525i.get(i10)).getGame_id() == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(q.this.f70524h, ((CollectionBeanSub) q.this.f70525i.get(i10)).getIntentDataBean());
        }
    }

    private void Y(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSub collectionBeanSub : this.f70525i) {
                if (collectionBeanSub.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSub.getMod_info();
                    DownloadTask downloadTask2 = this.f70528l.get(mod_info.getMain_game_id());
                    boolean z10 = true;
                    boolean z11 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.f70528l.get(mod_info.getMod_game_id());
                    if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                        z10 = false;
                    }
                    if (z10 && z11) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                        }
                    } else if (z10) {
                        if (collectionBeanSub.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getMod_info().getMod_game_id())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                        }
                    } else if (!z11) {
                        DownloadTask downloadTaskG = collectionBeanSub.getMod_info() != null ? q5.f.M().G(collectionBeanSub.getMod_info().getMod_game_id()) : null;
                        if (downloadTaskG == null) {
                            downloadTaskG = q5.f.M().G(collectionBeanSub.getCrc_sign_id());
                        }
                        if (downloadTaskG != null && downloadTask.getCrc_link_type_val().equals(downloadTaskG.getCrc_link_type_val())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                        }
                    } else if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                        collectionBeanSub.setDownloadTask(downloadTask);
                    }
                } else if (collectionBeanSub.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                    collectionBeanSub.setDownloadTask(downloadTask);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.f70527k.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f70528l.remove(next.getCrc_link_type_val());
                    it2.remove();
                    for (CollectionBeanSub collectionBeanSub : this.f70525i) {
                        if (collectionBeanSub.getMod_info() != null) {
                            DownloadTask downloadTask2 = this.f70528l.get(collectionBeanSub.getMod_info().getMod_game_id());
                            DownloadTask downloadTask3 = this.f70528l.get(collectionBeanSub.getGame_id());
                            if (downloadTask2 == null && downloadTask3 == null) {
                                collectionBeanSub.setDownloadTask(null);
                            } else if (downloadTask2 != null) {
                                collectionBeanSub.setDownloadTask(downloadTask2);
                            } else if (downloadTask3 != null) {
                                collectionBeanSub.setDownloadTask(downloadTask3);
                            } else if (collectionBeanSub.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                                collectionBeanSub.setDownloadTask(null);
                            }
                        } else if (collectionBeanSub.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                            collectionBeanSub.setDownloadTask(null);
                        }
                    }
                    break;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f70526j.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f70528l;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            this.f70526j.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.Y4(this.f70527k, downloadTask);
        if (!this.f70528l.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f70527k.add(downloadTask);
            this.f70528l.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        Y(downloadTask);
        this.f70526j.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f70528l;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f70527k.add(downloadTask);
            this.f70528l.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        Y(downloadTask);
        DownloadTask downloadTask2 = this.f70528l.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        this.f70526j.notifyDataSetChanged();
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        for (int i10 = this.f70537u; i10 <= this.f70536t; i10++) {
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) this.f70520d.getItemAtPosition(i10);
            if (collectionBeanSub != null && (downloadTask = collectionBeanSub.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f70520d.getChildAt(i10 - this.f70537u);
                if (childAt.getTag() instanceof com.join.mgps.adapter.n.a) {
                    com.join.mgps.adapter.n.a aVar = (com.join.mgps.adapter.n.a) childAt.getTag();
                    try {
                        DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                        if (downloadTaskG == null) {
                            return;
                        }
                        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            aVar.f62793i.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        } else {
                            aVar.f62793i.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        }
                        if (downloadTask.getStatus() == 12) {
                            aVar.f62796l.setProgress((int) downloadTaskG.getProgress());
                        } else {
                            aVar.f62795k.setProgress((int) downloadTaskG.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            aVar.f62794j.setText(downloadTaskG.getSpeed() + "/S");
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
    void Q(CollectionDataBean collectionDataBeanFirst) {
        if (collectionDataBeanFirst != null) {
            this.f70532p++;
            if (collectionDataBeanFirst.getInfo() == null || collectionDataBeanFirst.getInfo().size() <= 0) {
                showLodingFailed();
            } else {
                collectionDataBeanFirst.getInfo().get(0).getSub();
            }
        }
    }

    @Background
    void R() {
        List<CollectionBeanSub> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        if (!com.join.android.app.common.utils.m.j(this.f70524h)) {
            Z();
            showLodingFailed();
            return;
        }
        this.f70540x = true;
        try {
            try {
                CollectionMessageBean messages = this.f70529m.o0(S(this.f70533q, this.f70532p)).getMessages();
                if (messages == null) {
                    Z();
                    showLodingFailed();
                } else if (messages.getData().size() > 0) {
                    CollectionDataBean collectionDataBean = messages.getData().get(0);
                    if (collectionDataBean.getInfo() != null && collectionDataBean.getInfo().size() > 0) {
                        collectionDataBean.getInfo();
                        arrayList = collectionDataBean.getInfo().get(0).getSub();
                    }
                    if (arrayList != null && arrayList.size() != 0) {
                        this.f70532p++;
                        for (CollectionBeanSub collectionBeanSub : arrayList) {
                            collectionBeanSub.set_from(111);
                            collectionBeanSub.set_from_type(121);
                            arrayList2.add(collectionBeanSub);
                        }
                    } else if (this.f70532p == 1) {
                        showLodingFailed();
                    } else {
                        U();
                    }
                    showMain(arrayList2);
                    Z();
                } else {
                    U();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                Z();
                showLodingFailed();
            }
        } finally {
            this.f70540x = false;
        }
    }

    public CommonRequestBean S(String collection_id, int Page) {
        return RequestBeanUtil.getInstance(this.f70524h).getCollectionRequestBean(collection_id, Page, 10, this.f70534r, this.f70535s, null);
    }

    @Click
    void T() {
        this.f70532p = 1;
        R();
    }

    @UiThread
    void U() {
        this.f70520d.setNoMore();
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void V(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        com.join.mgps.adapter.n nVar = this.f70526j;
        if (nVar != null) {
            nVar.notifyDataSetChanged();
        }
    }

    public void W(CollectionDataBean data) {
        this.f70538v = data;
    }

    public void X(String belongToTag, String gameType) {
        this.f70535s = belongToTag;
        this.f70534r = gameType;
        this.f70532p = 1;
        R();
    }

    @UiThread
    void Z() {
        this.f70520d.u();
        this.f70520d.v();
    }

    @AfterViews
    void afterViews() {
        this.f70529m = com.join.mgps.rpc.impl.d.O1();
        this.f70524h = getActivity();
        com.join.mgps.Util.j0.a().d(this);
        List<DownloadTask> listD = q5.f.M().d();
        this.f70527k = listD;
        if (listD != null && listD.size() > 0) {
            for (DownloadTask downloadTask : this.f70527k) {
                this.f70528l.put(downloadTask.getCrc_link_type_val(), downloadTask);
                com.join.mgps.Util.g1.d("infoo", this.f70527k.size() + " tasksiz     mapsize  " + downloadTask.getStatus());
                com.join.mgps.Util.g1.d("infoo", downloadTask.toString());
            }
        }
        Bundle arguments = getArguments();
        this.f70533q = arguments.getString("collection_id");
        this.f70534r = arguments.getString(com.join.mgps.Util.o2.f49894p2);
        this.f70535s = arguments.getString(com.join.mgps.Util.o2.f49898q2);
        com.join.mgps.adapter.n nVar = new com.join.mgps.adapter.n(this.f70524h);
        this.f70526j = nVar;
        this.f70525i = nVar.b();
        showLoding();
        CollectionDataBean collectionDataBean = this.f70538v;
        if (collectionDataBean == null) {
            this.f70532p = 1;
            R();
        } else {
            Q(collectionDataBean);
        }
        this.f70520d.setPreLoadCount(10);
        this.f70520d.setPullRefreshEnable(new a());
        this.f70520d.setPullLoadEnable(new b());
        this.f70520d.setOnItemClickListener(new c());
        this.f70520d.setOnScrollListener(this);
        this.f70520d.setAdapter((ListAdapter) this.f70526j);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        try {
            Field declaredField = Fragment.class.getDeclaredField("mChildFragmentManager");
            declaredField.setAccessible(true);
            declaredField.set(this, null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
        } catch (NoSuchFieldException e11) {
            e11.printStackTrace();
        }
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
                if (!isHidden() && (map = this.f70528l) != null && !map.isEmpty() && !this.f70539w) {
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
        this.f70536t = (visibleItemCount + firstVisibleItem) - 1;
        this.f70537u = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        this.f70539w = scrollState != 0;
    }

    @Click
    void relodingimag() {
        this.f70532p = 1;
        showLoding();
        R();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(getActivity());
    }

    @UiThread
    void showLoding() {
        this.f70521e.setVisibility(0);
        this.f70522f.setVisibility(8);
        this.f70519c.setVisibility(8);
    }

    @UiThread
    void showLodingFailed() {
        List<CollectionBeanSub> list = this.f70525i;
        if (list == null || list.size() == 0) {
            this.f70522f.setVisibility(0);
            this.f70521e.setVisibility(8);
            this.f70519c.setVisibility(8);
        }
    }

    @UiThread
    void showMain(List<CollectionBeanSub> subList) {
        if (subList == null || subList.size() == 0) {
            return;
        }
        this.f70522f.setVisibility(8);
        this.f70521e.setVisibility(8);
        this.f70519c.setVisibility(0);
        if (this.f70532p == 2) {
            this.f70525i.clear();
        }
        MGFightUtils.updateStatus(getContext(), subList, this.f70527k, this.f70528l);
        this.f70525i.addAll(subList);
        if (this.f70532p == 2) {
            this.f70525i.size();
        }
        com.join.mgps.Util.g1.d("infoo", this.f70525i.size() + "   showMain");
        this.f70526j.notifyDataSetChanged();
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
