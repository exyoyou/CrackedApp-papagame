package com.join.mgps.fragment;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.BreakBeanMain;
import com.join.mgps.dto.CollectionBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionDataBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
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
@EFragment(R.layout.collection_break)
public class r extends Fragment implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f70633d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70634e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    XListView2 f70635f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f70636g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    LinearLayout f70637h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    ImageView f70638i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private CollectionBean f70639j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<CollectionBeanSub> f70640k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.join.mgps.adapter.n f70641l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private CollectionDataBean f70642m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f70643n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f70644o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    com.join.mgps.rpc.e f70645p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @StringRes(resName = "net_excption")
    String f70646q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @StringRes(resName = "connect_server_excption")
    String f70647r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f70650u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private SimpleDraweeView f70651v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private TextView f70652w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private BreakBeanMain f70654y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    List<DownloadTask> f70655z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f70632c = "CollectionModuleTwoFragment";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private AtomicInteger f70648s = new AtomicInteger(1);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f70649t = 10;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f70653x = "";
    private Map<String, DownloadTask> A = new ConcurrentHashMap();
    private int B = 0;
    private CollectionDataBean C = null;
    private int D = 0;
    private boolean E = false;

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (r.this.E) {
                return;
            }
            r.this.Q();
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (r.this.E) {
                return;
            }
            r.this.f70648s.set(1);
            r.this.Q();
        }
    }

    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            int i11 = i10 - 1;
            if (i11 >= r.this.f70640k.size() || i11 < 0) {
                return;
            }
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) r.this.f70640k.get(i11);
            if (collectionBeanSub.getGame_id() != null) {
                IntentUtil.getInstance().intentActivity(r.this.f70633d, collectionBeanSub.getIntentDataBean());
            }
        }
    }

    private List<CollectionBeanSub> Y(List<CollectionBeanSub> collectionBeanSubList) {
        for (CollectionBeanSub collectionBeanSub : collectionBeanSubList) {
            for (DownloadTask downloadTask : this.f70655z) {
                if (collectionBeanSub.getMod_info() == null) {
                    if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                        collectionBeanSub.setDownloadTask(downloadTask);
                        break;
                    }
                } else {
                    ModInfoBean mod_info = collectionBeanSub.getMod_info();
                    DownloadTask downloadTask2 = this.A.get(mod_info.getMain_game_id());
                    boolean zK = false;
                    boolean zE = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : com.join.android.app.common.utils.g.t0(getContext()).e(getContext(), downloadTask2.getPackageName());
                    DownloadTask downloadTask3 = this.A.get(mod_info.getMod_game_id());
                    if (downloadTask3 != null && downloadTask3.getStatus() == 5) {
                        zK = com.join.mgps.va.overmind.i.q().K(downloadTask3.getPackageName());
                    }
                    if (!zK || !zE) {
                        if (zK) {
                            if (collectionBeanSub.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getMod_info().getMod_game_id())) {
                                collectionBeanSub.setDownloadTask(downloadTask);
                                break;
                            }
                        } else if (zE) {
                            if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                                collectionBeanSub.setDownloadTask(downloadTask);
                                break;
                            }
                        } else {
                            DownloadTask downloadTaskG = collectionBeanSub.getMod_info() != null ? q5.f.M().G(collectionBeanSub.getMod_info().getMod_game_id()) : null;
                            if (downloadTaskG == null) {
                                downloadTaskG = q5.f.M().G(collectionBeanSub.getCrc_sign_id());
                            }
                            if (downloadTaskG != null && downloadTask.getCrc_link_type_val().equals(downloadTaskG.getCrc_link_type_val())) {
                                collectionBeanSub.setDownloadTask(downloadTask);
                                break;
                            }
                        }
                    } else if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                        collectionBeanSub.setDownloadTask(downloadTask);
                        break;
                    }
                }
            }
        }
        return collectionBeanSubList;
    }

    private void Z(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSub collectionBeanSub : this.f70640k) {
                if (collectionBeanSub.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSub.getMod_info();
                    DownloadTask downloadTask2 = this.A.get(mod_info.getMain_game_id());
                    boolean z10 = true;
                    boolean z11 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.A.get(mod_info.getMod_game_id());
                    if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                        z10 = false;
                    }
                    if (z10 && z11) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (z10) {
                        if (collectionBeanSub.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getMod_info().getMod_game_id())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (!z11) {
                        DownloadTask downloadTaskG = collectionBeanSub.getMod_info() != null ? q5.f.M().G(collectionBeanSub.getMod_info().getMod_game_id()) : null;
                        if (downloadTaskG == null) {
                            downloadTaskG = q5.f.M().G(collectionBeanSub.getCrc_sign_id());
                        }
                        if (downloadTaskG != null && downloadTask.getCrc_link_type_val().equals(downloadTaskG.getCrc_link_type_val())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                        collectionBeanSub.setDownloadTask(downloadTask);
                        return;
                    }
                } else if (collectionBeanSub.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                    collectionBeanSub.setDownloadTask(downloadTask);
                    return;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f70655z.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.A.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CollectionBeanSub collectionBeanSub : this.f70640k) {
                    if (collectionBeanSub.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.A.get(collectionBeanSub.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.A.get(collectionBeanSub.getGame_id());
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
        this.f70641l.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.A;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            this.f70641l.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.Y4(this.f70655z, downloadTask);
        if (!this.A.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f70655z.add(downloadTask);
            this.A.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        Z(downloadTask);
        this.f70641l.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.A;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f70655z.add(downloadTask);
            this.A.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        Z(downloadTask);
        DownloadTask downloadTask2 = this.A.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f70641l.notifyDataSetChanged();
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        for (int i10 = this.D; i10 <= this.B; i10++) {
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) this.f70635f.getItemAtPosition(i10);
            if (collectionBeanSub != null && (downloadTask = collectionBeanSub.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f70635f.getChildAt(i10 - this.D);
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
    void Q() {
        if (!com.join.android.app.common.utils.m.j(this.f70633d)) {
            a0();
            showLodingFailed();
            return;
        }
        this.E = true;
        try {
            try {
                CollectionBean collectionBeanO0 = this.f70645p.o0(S(this.f70650u, this.f70648s.get()));
                this.f70639j = collectionBeanO0;
                if (collectionBeanO0 == null) {
                    showLodingFailed();
                    a0();
                } else if (collectionBeanO0.getMessages().getData() != null && this.f70639j.getMessages().getData().size() > 0) {
                    CollectionDataBean collectionDataBean = this.f70639j.getMessages().getData().get(0);
                    this.f70642m = collectionDataBean;
                    if (collectionDataBean.getInfo().size() > 0) {
                        List<CollectionBeanSub> sub = this.f70642m.getInfo().get(0).getSub();
                        BreakBeanMain main = this.f70642m.getInfo().get(0).getMain();
                        this.f70654y = main;
                        if (main != null) {
                            this.f70643n = main.getTpl_pic();
                            this.f70644o = this.f70654y.getInfo();
                        }
                        this.f70648s.incrementAndGet();
                        ArrayList arrayList = new ArrayList();
                        for (CollectionBeanSub collectionBeanSub : sub) {
                            collectionBeanSub.set_from(111);
                            collectionBeanSub.set_from_type(121);
                            arrayList.add(collectionBeanSub);
                        }
                        showMain(Y(arrayList));
                    } else if (this.f70648s.get() == 1) {
                        showLodingFailed();
                    } else {
                        U();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showLodingFailed();
                a0();
            }
        } finally {
            this.E = false;
        }
    }

    @Background
    void R(CollectionDataBean collectionDataBeanFirst) {
        if (collectionDataBeanFirst == null) {
            Q();
            return;
        }
        this.f70648s.incrementAndGet();
        List<CollectionBeanSub> sub = collectionDataBeanFirst.getInfo().get(0).getSub();
        this.f70643n = collectionDataBeanFirst.getInfo().get(0).getMain().getTpl_pic();
        this.f70644o = collectionDataBeanFirst.getInfo().get(0).getMain().getInfo();
        ArrayList arrayList = new ArrayList();
        Iterator<CollectionBeanSub> it2 = sub.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        showMain(Y(arrayList));
    }

    public CommonRequestBean S(String collection_id, int Page) {
        return RequestBeanUtil.getInstance(this.f70633d).getCollectionRequestBean(collection_id, Page, this.f70649t, "", "", null);
    }

    @UiThread
    void T() {
        com.join.android.app.common.manager.a.h().j(this.f70633d, this.f70646q, 1);
    }

    @UiThread
    void U() {
        this.f70635f.setNoMore();
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
        com.join.mgps.adapter.n nVar = this.f70641l;
        if (nVar != null) {
            nVar.notifyDataSetChanged();
        }
    }

    @UiThread
    void W() {
        com.join.android.app.common.manager.a.h().j(this.f70633d, this.f70647r, 1);
    }

    public void X(CollectionDataBean data) {
        this.C = data;
    }

    @UiThread
    void a0() {
        this.f70635f.u();
        this.f70635f.v();
    }

    @AfterViews
    void afterViews() {
        this.f70645p = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.Util.j0.a().d(this);
        this.f70633d = getActivity();
        List<DownloadTask> listD = q5.f.M().d();
        this.f70655z = listD;
        if (listD != null && listD.size() > 0) {
            for (DownloadTask downloadTask : this.f70655z) {
                this.A.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        this.f70650u = getArguments().getString("collection_id");
        showLoding();
        R(this.C);
        View viewInflate = LayoutInflater.from(this.f70633d).inflate(R.layout.collection_two_header, (ViewGroup) null);
        this.f70651v = (SimpleDraweeView) viewInflate.findViewById(R.id.imgBreak);
        this.f70652w = (TextView) viewInflate.findViewById(R.id.textViewBreak);
        this.f70635f.addHeaderView(viewInflate);
        this.f70635f.setPreLoadCount(10);
        com.join.mgps.adapter.n nVar = new com.join.mgps.adapter.n(this.f70633d);
        this.f70641l = nVar;
        this.f70640k = nVar.b();
        this.f70635f.setAdapter((ListAdapter) this.f70641l);
        this.f70635f.setPullLoadEnable(new a());
        this.f70635f.setPullRefreshEnable(new b());
        this.f70635f.setOnItemClickListener(new c());
        this.f70635f.setOnScrollListener(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        try {
            Field declaredField = Fragment.class.getDeclaredField("mChildFragmentManager");
            declaredField.setAccessible(true);
            declaredField.set(this, null);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        } catch (NoSuchFieldException e11) {
            throw new RuntimeException(e11);
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
            if (iC == 8) {
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
        this.B = (visibleItemCount + firstVisibleItem) - 1;
        this.D = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
    }

    @Click
    void relodingimag() {
        this.f70648s.set(1);
        showLoding();
        Q();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f70633d);
    }

    @UiThread
    void showLoding() {
        this.f70636g.setVisibility(0);
        this.f70637h.setVisibility(8);
        this.f70634e.setVisibility(8);
    }

    @UiThread
    void showLodingFailed() {
        List<CollectionBeanSub> list = this.f70640k;
        if (list != null || list.size() == 0) {
            this.f70637h.setVisibility(0);
            this.f70636g.setVisibility(8);
            this.f70634e.setVisibility(8);
        }
    }

    @UiThread
    void showMain(List<CollectionBeanSub> collectionBeanSubList) {
        if (collectionBeanSubList == null || collectionBeanSubList.size() == 0) {
            return;
        }
        this.f70637h.setVisibility(8);
        this.f70636g.setVisibility(8);
        this.f70634e.setVisibility(0);
        if (this.f70648s.get() == 2) {
            this.f70640k.clear();
        }
        this.f70640k.addAll(collectionBeanSubList);
        if (this.f70648s.get() == 2) {
            this.f70653x = collectionBeanSubList.get(0).getGame_id();
            String str = this.f70644o;
            if (str != null) {
                this.f70652w.setText(str);
            }
            String str2 = this.f70643n;
            if (str2 != null) {
                com.join.android.app.common.utils.l.d(this.f70651v, R.drawable.banner_normal_icon, str2.trim());
                this.f70651v.setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
            if (collectionBeanSubList.size() < 10) {
                U();
            }
        }
        this.f70641l.notifyDataSetChanged();
        a0();
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
        this.f70641l.notifyDataSetChanged();
    }
}
