package com.join.mgps.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.RequestTypePn;
import com.join.mgps.dto.ResultMainBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
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

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.classify_list_recy_layout)
public class m extends Fragment implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f57454c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.join.mgps.adapter.g1 f57456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    XRecyclerView f57457f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f57458g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    LinearLayout f57459h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f57460i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    ImageView f57461j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    ImageView f57462k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    com.join.mgps.rpc.e f57463l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    LinearLayoutManager f57464m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ClassifyGameActivity f57473v;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<CollectionBeanSub> f57455d = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f57465n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f57466o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f57467p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f57468q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f57469r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f57470s = "";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f57471t = "";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f57472u = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final AtomicInteger f57474w = new AtomicInteger(0);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f57475x = com.join.mgps.Util.v0.f50057a;

    class a implements XRecyclerView.f {
        a() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            if (m.this.f57472u) {
                return;
            }
            m.P(m.this);
            m mVar = m.this;
            mVar.T(mVar.f57470s, m.this.f57471t);
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
        }
    }

    static /* synthetic */ int P(m mVar) {
        int i10 = mVar.f57465n;
        mVar.f57465n = i10 + 1;
        return i10;
    }

    public static m V(int rankingType, String RomType) {
        ClassifyListGameFragment_ classifyListGameFragment_ = new ClassifyListGameFragment_();
        Bundle bundle = new Bundle();
        bundle.putString("romType", RomType);
        bundle.putInt("rankingType", rankingType);
        classifyListGameFragment_.setArguments(bundle);
        return classifyListGameFragment_;
    }

    public static m W(String type, String RomType) {
        ClassifyListGameFragment_ classifyListGameFragment_ = new ClassifyListGameFragment_();
        Bundle bundle = new Bundle();
        bundle.putString("romType", RomType);
        bundle.putString("type", type);
        classifyListGameFragment_.setArguments(bundle);
        return classifyListGameFragment_;
    }

    public static m X(int rankingType, String type) {
        ClassifyListGameFragment_ classifyListGameFragment_ = new ClassifyListGameFragment_();
        Bundle bundle = new Bundle();
        bundle.putString("type", type);
        bundle.putInt("rankingType", rankingType);
        classifyListGameFragment_.setArguments(bundle);
        return classifyListGameFragment_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownStateList(this.f57455d);
        this.f57456e.notifyDataSetChanged();
        return null;
    }

    private void updateDownStateList(List<CollectionBeanSub> beanList) {
        if (beanList == null || beanList.isEmpty()) {
            return;
        }
        Iterator<CollectionBeanSub> it2 = beanList.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        try {
            this.f57467p = this.f57464m.findFirstVisibleItemPosition();
            this.f57466o = this.f57464m.findLastVisibleItemPosition();
            for (int i10 = this.f57467p; i10 <= this.f57466o; i10++) {
                CollectionBeanSub collectionBeanSub = this.f57456e.getItems().get(i10);
                if (collectionBeanSub != null && (downloadTask = collectionBeanSub.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                    View childAt = this.f57457f.getChildAt(i10 - this.f57467p);
                    try {
                        TextView textView = (TextView) childAt.findViewById(R.id.appSize);
                        TextView textView2 = (TextView) childAt.findViewById(R.id.loding_info);
                        ProgressBar progressBar = (ProgressBar) childAt.findViewById(R.id.progressBarZip);
                        ProgressBar progressBar2 = (ProgressBar) childAt.findViewById(R.id.progressBar);
                        DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                        if (downloadTaskG == null) {
                            return;
                        }
                        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            textView.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        } else {
                            textView.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        }
                        if (downloadTask.getStatus() == 12) {
                            progressBar.setProgress((int) downloadTaskG.getProgress());
                        } else {
                            progressBar2.setProgress((int) downloadTaskG.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            textView2.setText(downloadTaskG.getSpeed() + "/S");
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void N() {
        XRecyclerView xRecyclerView;
        if (getActivity() == null || this.f57456e == null || ((ClassifyGameActivity) getActivity()).getSortPoint().equals(this.f57475x)) {
            return;
        }
        if (com.join.mgps.Util.t2.h(this.f57470s) && com.join.mgps.Util.t2.h(this.f57471t)) {
            return;
        }
        if (this.f57472u && (xRecyclerView = this.f57457f) != null) {
            xRecyclerView.stopLoadMore();
            this.f57457f.stopRefresh();
            this.f57473v.setShowRefresh(false);
        }
        LinearLayout linearLayout = this.f57459h;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f57458g;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(0);
        }
        XRecyclerView xRecyclerView2 = this.f57457f;
        if (xRecyclerView2 != null) {
            xRecyclerView2.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f57460i;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        this.f57465n = 1;
        T(this.f57470s, this.f57471t);
    }

    public CommonRequestBean S(String gameType, String romType, String sort_type) {
        return RequestBeanUtil.getInstance(this.f57454c).getGameListRequestBean(this.f57465n, 10, gameType, romType, this.f57469r, sort_type);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void T(String gameType, String romType) {
        ResultMainBean<List<CollectionBeanSub>> resultMainBeanG1;
        if (!com.join.android.app.common.utils.m.j(this.f57454c)) {
            g0(false);
            return;
        }
        if (getActivity() instanceof ClassifyGameActivity) {
            this.f57475x = ((ClassifyGameActivity) getActivity()).getSortPoint();
        }
        this.f57472u = true;
        AtomicInteger atomicInteger = this.f57474w;
        atomicInteger.set(atomicInteger.get() + 1);
        ArrayList arrayList = new ArrayList();
        try {
            try {
                if (this.f57469r == 1001) {
                    resultMainBeanG1 = this.f57463l.O0(RequestBeanUtil.getInstance(this.f57454c).getRankingV3(new RequestTypePn(Integer.parseInt(gameType), this.f57465n)));
                } else {
                    resultMainBeanG1 = this.f57463l.g1(S(gameType, romType, this.f57475x));
                }
                AtomicInteger atomicInteger2 = this.f57474w;
                atomicInteger2.set(atomicInteger2.get() - 1);
                Iterator<CollectionBeanSub> it2 = resultMainBeanG1.getMessages().getData().iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
                if (arrayList.size() > 0) {
                    showMain(arrayList);
                } else if (this.f57465n == 1 && arrayList.size() == 0) {
                    g0(true);
                } else {
                    Y();
                }
            } catch (Exception e10) {
                AtomicInteger atomicInteger3 = this.f57474w;
                atomicInteger3.set(atomicInteger3.get() - 1);
                e10.printStackTrace();
                if (this.f57465n == 1 && arrayList.size() == 0) {
                    g0(false);
                } else {
                    Y();
                }
            }
        } finally {
            this.f57472u = false;
        }
    }

    @Click
    void U() {
        this.f57465n = 1;
        T(this.f57470s, this.f57471t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y() {
        XRecyclerView xRecyclerView = this.f57457f;
        if (xRecyclerView != null) {
            xRecyclerView.setNoMore();
        }
        this.f57473v.setShowRefresh(false);
    }

    @Click
    void Z() {
        if (this.f57469r != 1001) {
            getActivity().finish();
        }
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void a0(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        com.join.mgps.adapter.g1 g1Var = this.f57456e;
        if (g1Var != null) {
            g1Var.notifyDataSetChanged();
        }
    }

    @AfterViews
    void afterViews() {
        this.f57463l = com.join.mgps.rpc.impl.d.O1();
        this.f57473v = (ClassifyGameActivity) getActivity();
        com.join.mgps.Util.j0.a().d(this);
        this.f57458g.setBackgroundResource(R.color.activity_default_background);
        this.f57454c = getActivity();
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        this.f57470s = arguments.getString("type");
        this.f57471t = arguments.getString("romType");
        int i10 = arguments.getInt("rankingType");
        this.f57469r = i10;
        if (i10 == 0) {
            this.f57469r = 1;
        }
        this.f57465n = 1;
        com.join.mgps.adapter.g1 g1Var = new com.join.mgps.adapter.g1(this.f57454c);
        this.f57456e = g1Var;
        this.f57455d = g1Var.getItems();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f57454c);
        this.f57464m = linearLayoutManager;
        this.f57457f.setLayoutManager(linearLayoutManager);
        this.f57457f.setAdapter(this.f57456e);
        this.f57457f.setPreLoadCount(10);
        showLoding();
        T(this.f57470s, this.f57471t);
        this.f57457f.setLoadingMoreEnabled(true);
        this.f57457f.setLoadingListener(new a());
    }

    @Click
    void b0() {
        if (this.f57469r != 1001) {
            getActivity().finish();
        }
    }

    public void c0(String gameType) {
        if (gameType.equals(this.f57470s)) {
            return;
        }
        this.f57470s = gameType;
        this.f57457f.reset();
        this.f57465n = 1;
        showLoding();
        this.f57455d.clear();
        this.f57456e.notifyDataSetChanged();
        this.f57457f.setVisibility(8);
        T(this.f57470s, this.f57471t);
    }

    public void d0() {
        if (this.f57472u) {
            return;
        }
        this.f57465n = 1;
        this.f57457f.reset();
        T(this.f57470s, this.f57471t);
    }

    public void e0(String romType) {
        String str = this.f57471t;
        if (str == null || romType == null || romType.equals(str)) {
            return;
        }
        this.f57471t = romType;
        XRecyclerView xRecyclerView = this.f57457f;
        if (xRecyclerView != null) {
            xRecyclerView.reset();
        }
        this.f57465n = 1;
        showLoding();
        this.f57455d.clear();
        com.join.mgps.adapter.g1 g1Var = this.f57456e;
        if (g1Var != null) {
            g1Var.notifyDataSetChanged();
        }
        this.f57457f.setVisibility(8);
        T(this.f57470s, this.f57471t);
    }

    public void f0(String gameType, String romType) {
        this.f57471t = romType;
        this.f57470s = gameType;
        this.f57457f.reset();
        this.f57465n = 1;
        showLoding();
        this.f57455d.clear();
        this.f57456e.notifyDataSetChanged();
        this.f57457f.setVisibility(8);
        T(this.f57470s, this.f57471t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g0(boolean isNormal) {
        XRecyclerView xRecyclerView = this.f57457f;
        if (xRecyclerView != null) {
            xRecyclerView.stopLoadMore();
            this.f57457f.stopRefresh();
            this.f57473v.setShowRefresh(false);
        }
        if (!isNormal) {
            if (this.f57465n != 1 || this.f57455d.size() != 0) {
                try {
                    com.join.mgps.Util.a3.b(this.f57454c).d(getString(R.string.net_connect_failed));
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            LinearLayout linearLayout = this.f57459h;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f57458g;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            XRecyclerView xRecyclerView2 = this.f57457f;
            if (xRecyclerView2 != null) {
                xRecyclerView2.setVisibility(8);
            }
            LinearLayout linearLayout3 = this.f57460i;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(8);
                return;
            }
            return;
        }
        if (isNormal && this.f57465n == 1 && this.f57455d.size() == 0) {
            LinearLayout linearLayout4 = this.f57459h;
            if (linearLayout4 != null) {
                linearLayout4.setVisibility(8);
            }
            LinearLayout linearLayout5 = this.f57458g;
            if (linearLayout5 != null) {
                linearLayout5.setVisibility(8);
            }
            XRecyclerView xRecyclerView3 = this.f57457f;
            if (xRecyclerView3 != null) {
                xRecyclerView3.setVisibility(8);
            }
            LinearLayout linearLayout6 = this.f57460i;
            if (linearLayout6 != null) {
                linearLayout6.setVisibility(0);
                return;
            }
            return;
        }
        if (isNormal && this.f57465n == 1 && this.f57455d.size() > 0) {
            LinearLayout linearLayout7 = this.f57459h;
            if (linearLayout7 != null) {
                linearLayout7.setVisibility(8);
            }
            LinearLayout linearLayout8 = this.f57458g;
            if (linearLayout8 != null) {
                linearLayout8.setVisibility(8);
            }
            XRecyclerView xRecyclerView4 = this.f57457f;
            if (xRecyclerView4 != null) {
                xRecyclerView4.setVisibility(8);
            }
            LinearLayout linearLayout9 = this.f57460i;
            if (linearLayout9 != null) {
                linearLayout9.setVisibility(0);
            }
        }
    }

    public void h0(String gameType, String romType) {
        this.f57457f.reset();
        this.f57465n = 1;
        this.f57470s = gameType;
        this.f57471t = romType;
        T(gameType, romType);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57390b.lambda$onEventMainThread$0();
            }
        });
        if (downloadTaskEvent.c() == 8 && !this.f57468q) {
            updateProgressPartly();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        com.join.mgps.adapter.g1 g1Var;
        super.onHiddenChanged(hidden);
        if (hidden || (g1Var = this.f57456e) == null) {
            return;
        }
        g1Var.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f57466o = (visibleItemCount + firstVisibleItem) - 1;
        this.f57467p = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        this.f57468q = scrollState != 0;
    }

    @Click
    void relodingimag() {
        this.f57465n = 1;
        showLoding();
        T(this.f57470s, this.f57471t);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f57454c);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (isVisibleToUser && (getActivity() instanceof ClassifyGameActivity)) {
            N();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        LinearLayout linearLayout = this.f57458g;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f57459h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f57457f;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f57460i;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CollectionBeanSub> subList) {
        try {
            if (this.f57474w.get() > 0) {
                return;
            }
            LinearLayout linearLayout = this.f57459h;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            LinearLayout linearLayout2 = this.f57458g;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            XRecyclerView xRecyclerView = this.f57457f;
            if (xRecyclerView != null) {
                xRecyclerView.setVisibility(0);
            }
            LinearLayout linearLayout3 = this.f57460i;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(8);
            }
            XRecyclerView xRecyclerView2 = this.f57457f;
            if (xRecyclerView2 != null) {
                xRecyclerView2.stopLoadMore();
                this.f57457f.stopRefresh();
                this.f57473v.setShowRefresh(false);
            }
            if (this.f57465n == 1) {
                this.f57455d.clear();
            }
            this.f57455d.addAll(subList);
            for (CollectionBeanSub collectionBeanSub : subList) {
                collectionBeanSub.set_from(108);
                collectionBeanSub.set_from_type(118);
            }
            if (this.f57457f != null) {
                if (subList.isEmpty()) {
                    this.f57457f.setNoMore();
                }
                this.f57456e.notifyDataSetChanged();
            }
            updateDownStateList(this.f57455d);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
