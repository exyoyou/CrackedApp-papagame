package com.join.mgps.fragment;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionInfo;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameHeadAd;
import com.join.mgps.dto.PaPaBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.StandAloneListBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
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
@EFragment(R.layout.fragment_papa_standalone_v2)
public class q4 extends Fragment implements AbsListView.OnScrollListener, com.join.mgps.callbacks.q {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f70602u = 20;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f70603v = 3;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f70604w = 1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f70605x = 2;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f70606y = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.join.mgps.rpc.e f70610f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    XListView2 f70611g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    com.join.mgps.adapter.x4 f70612h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    LinearLayout f70614j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    LinearLayout f70615k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70616l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Activity f70617m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    ExtBean f70618n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private PaPaBean f70619o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f70621q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f70622r;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f70607c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f70608d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f70609e = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    List<PaPaBean> f70613i = new ArrayList();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f70620p = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f70623s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final View.OnClickListener f70624t = new d();

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!q4.this.isActivityFinish() && q4.this.f70609e) {
                if (com.join.android.app.common.utils.m.j(q4.this.f70617m)) {
                    q4.this.R();
                    return;
                }
                q4.this.f70611g.u();
                q4 q4Var = q4.this;
                q4Var.showToast(q4Var.getString(R.string.net_connect_failed));
            }
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (q4.this.isActivityFinish()) {
                return;
            }
            if (com.join.android.app.common.utils.m.j(q4.this.f70617m)) {
                q4.this.f70608d = 1;
                q4.this.R();
            } else {
                q4.this.f70611g.v();
                q4 q4Var = q4.this;
                q4Var.showToast(q4Var.getString(R.string.net_connect_failed));
            }
        }
    }

    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            List<PaPaBean> list = q4.this.f70613i;
            if (list == null || list.size() <= 0 || position >= q4.this.f70613i.size() || q4.this.f70613i.get(position).getType() != PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value()) {
                return;
            }
            q4.this.T((AppBean) q4.this.f70613i.get(position).getTypeValue());
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (v10.getTag() instanceof AppBean) {
                q4.this.T((AppBean) v10.getTag());
                return;
            }
            if (!(v10.getTag() instanceof CollectionInfo)) {
                if (v10.getTag() instanceof GameHeadAd.SubInfo) {
                    IntentUtil.getInstance().intentActivity(q4.this.f70617m, ((GameHeadAd.SubInfo) v10.getTag()).getIntentDataBean());
                    return;
                }
                return;
            }
            CollectionInfo collectionInfo = (CollectionInfo) v10.getTag();
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(2);
            intentDateBean.setTpl_type("4");
            intentDateBean.setCrc_link_type_val(collectionInfo.getCollection_id());
            IntentUtil.getInstance().intentActivity(q4.this.f70617m, intentDateBean);
        }
    }

    private void S() {
        if (!com.join.android.app.common.utils.m.j(this.f70617m)) {
            Z();
        } else {
            b0();
            R();
        }
    }

    private void V(ResultMainBean<List<StandAloneListBean>> resultMainBean) {
        if (isActivityFinish()) {
            return;
        }
        if (resultMainBean == null || resultMainBean.getMessages() == null || resultMainBean.getMessages().getData() == null) {
            a0();
            return;
        }
        if (resultMainBean.getFlag() == 0) {
            c0();
            return;
        }
        List<StandAloneListBean> data = resultMainBean.getMessages().getData();
        if (data == null || data.size() <= 0) {
            this.f70609e = false;
        } else {
            this.f70609e = true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Q(data));
        d0(arrayList);
        hideLoading();
    }

    public static q4 X(int type, Bundle args) {
        PaPaStandAloneV2Fragment_ paPaStandAloneV2Fragment_ = new PaPaStandAloneV2Fragment_();
        Bundle bundle = new Bundle();
        bundle.putInt("type", type);
        bundle.putAll(args);
        paPaStandAloneV2Fragment_.setArguments(bundle);
        return paPaStandAloneV2Fragment_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: expDiscountGame, reason: merged with bridge method [inline-methods] */
    public void W() {
        try {
            try {
                if (isAdded() && !this.f70620p) {
                    this.f70620p = true;
                    int lastVisiblePosition = this.f70611g.getLastVisiblePosition();
                    for (int i10 = 0; i10 <= lastVisiblePosition; i10++) {
                        PaPaBean paPaBean = this.f70613i.get(i10);
                        if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_HORIZONTAL.value()) {
                            if (paPaBean.getTypeValue() instanceof List) {
                                for (AppBean appBean : (List) paPaBean.getTypeValue()) {
                                    if (!appBean.getExposure()) {
                                        appBean.setExposure(true);
                                        if (UtilsMy.n2(appBean)) {
                                            try {
                                                Ext ext = new Ext();
                                                ext.setResultCode("discount_game");
                                                ext.setScenesCode(getClass().getSimpleName());
                                                Data data = new Data();
                                                data.setGameId(appBean.getGame_id());
                                                com.papa.sim.statistic.t.l(com.join.android.app.common.http.c.f34545a).Y(Event.expGameAdPage, ext, data);
                                            } catch (Exception e10) {
                                                e10.printStackTrace();
                                            }
                                        }
                                        com.papa.sim.statistic.t.l(requireContext()).R1(Event.expGameAdPage, appBean.getExtBean().buildScene().toExt());
                                    }
                                }
                            }
                        } else if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value() && (paPaBean.getTypeValue() instanceof AppBean)) {
                            AppBean appBean2 = (AppBean) paPaBean.getTypeValue();
                            if (!appBean2.getExposure()) {
                                appBean2.setExposure(true);
                                if (UtilsMy.n2(appBean2)) {
                                    try {
                                        Ext ext2 = new Ext();
                                        ext2.setResultCode("discount_game");
                                        ext2.setScenesCode(getClass().getSimpleName());
                                        Data data2 = new Data();
                                        data2.setGameId(appBean2.getGame_id());
                                        com.papa.sim.statistic.t.l(com.join.android.app.common.http.c.f34545a).Y(Event.expGameAdPage, ext2, data2);
                                    } catch (Exception e11) {
                                        e11.printStackTrace();
                                    }
                                }
                                com.papa.sim.statistic.t.l(requireContext()).R1(Event.expGameAdPage, appBean2.getExtBean().buildScene().toExt());
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        } finally {
            this.f70620p = false;
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        try {
            for (PaPaBean paPaBean : this.f70613i) {
                if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_HORIZONTAL.value()) {
                    Iterator it2 = ((List) paPaBean.getTypeValue()).iterator();
                    while (it2.hasNext()) {
                        DlTaskManager.INSTANCE.updateDownloadTask((AppBean) it2.next());
                    }
                } else if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value()) {
                    DlTaskManager.INSTANCE.updateDownloadTask((AppBean) paPaBean.getTypeValue());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f70612h.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        try {
            this.f70612h.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        updateDownStateList();
        this.f70612h.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        updateDownStateList();
        this.f70612h.notifyDataSetChanged();
    }

    private void updateDownStateList() {
        try {
            updateDownStateList(this.f70613i);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void updateProgressPartly() {
        for (int i10 = this.f70622r; i10 <= this.f70621q; i10++) {
            PaPaBean paPaBean = (PaPaBean) this.f70611g.getItemAtPosition(i10);
            if (paPaBean != null) {
                if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value()) {
                    DownloadTask downloadTask = ((AppBean) paPaBean.getTypeValue()).getDownloadTask();
                    if (downloadTask != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                        View childAt = this.f70611g.getChildAt(i10 - this.f70622r);
                        if (childAt.getTag() instanceof com.join.mgps.adapter.x4.h) {
                            com.join.mgps.adapter.x4.h hVar = (com.join.mgps.adapter.x4.h) childAt.getTag();
                            try {
                                DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                                if (downloadTaskG == null) {
                                    return;
                                }
                                long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                                if (downloadTask.getSize() == 0) {
                                    hVar.f63899j.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                } else {
                                    hVar.f63899j.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                }
                                if (downloadTask.getStatus() == 12) {
                                    hVar.f63894e.setProgress((int) downloadTaskG.getProgress());
                                } else {
                                    hVar.f63895f.setProgress((int) downloadTaskG.getProgress());
                                }
                                if (downloadTask.getStatus() == 2) {
                                    hVar.f63900k.setText(downloadTaskG.getSpeed() + "/S");
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        } else {
                            continue;
                        }
                    }
                } else if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_HORIZONTAL.value()) {
                    List list = (List) paPaBean.getTypeValue();
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        DownloadTask downloadTask2 = ((AppBean) list.get(i11)).getDownloadTask();
                        if (downloadTask2 != null && (downloadTask2.getStatus() == 2 || downloadTask2.getStatus() == 12)) {
                            View childAt2 = this.f70611g.getChildAt(i10 - this.f70622r);
                            if (childAt2.getTag() instanceof com.join.mgps.adapter.x4.j) {
                                com.join.mgps.adapter.x4.j jVar = (com.join.mgps.adapter.x4.j) childAt2.getTag();
                                try {
                                    DownloadTask downloadTaskG2 = com.join.android.app.common.servcie.j.f().g(downloadTask2.getCrc_link_type_val());
                                    if (downloadTaskG2 == null) {
                                        return;
                                    }
                                    DownloadNormalView downloadNormalView = (DownloadNormalView) jVar.f63904a.getLayoutManager().findViewByPosition(i11).findViewById(R.id.dv_view);
                                    if (downloadNormalView != null && downloadTaskG2.getStatus() == 2) {
                                        downloadNormalView.s(downloadTaskG2.getProgress());
                                    }
                                } catch (Exception e11) {
                                    e11.printStackTrace();
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                } else {
                    continue;
                }
            }
        }
    }

    List<PaPaBean> Q(List<StandAloneListBean> gameFactoryListBean) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; gameFactoryListBean.size() > 0 && i10 < gameFactoryListBean.size(); i10++) {
            StandAloneListBean standAloneListBean = gameFactoryListBean.get(i10);
            PaPaBean paPaBean = new PaPaBean();
            String title = standAloneListBean.getTitle();
            if (!com.join.mgps.Util.t2.h(title)) {
                CollectionInfo collectionInfo = new CollectionInfo();
                collectionInfo.setTitle(title);
                paPaBean.setType(PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_TITLE.value());
                paPaBean.setTypeValue(collectionInfo);
            }
            if (standAloneListBean.getType().equals("game_list_h") && standAloneListBean.getGame_list() != null && standAloneListBean.getGame_list().size() > 0) {
                int i11 = this.f70607c;
                if (i11 == 1) {
                    arrayList.add(this.f70619o);
                    arrayList.add(paPaBean);
                } else if (i11 == 2 && this.f70608d < 2) {
                    arrayList.add(this.f70619o);
                    arrayList.add(paPaBean);
                }
                for (AppBean appBean : standAloneListBean.getGame_list()) {
                    appBean.set_from(107);
                    appBean.set_from_type(117);
                    appBean.getExtBean().itemWithParent(this.f70618n).setSopName(title);
                }
                PaPaBean paPaBean2 = new PaPaBean();
                paPaBean2.setType(PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_HORIZONTAL.value());
                paPaBean2.setTypeValue(standAloneListBean.getGame_list());
                arrayList.add(paPaBean2);
            } else if (standAloneListBean.getType().equals("game_list_v") && standAloneListBean.getGame_list() != null && standAloneListBean.getGame_list().size() > 0) {
                int i12 = this.f70607c;
                if (i12 == 1) {
                    arrayList.add(this.f70619o);
                    arrayList.add(paPaBean);
                } else if (i12 == 2 && this.f70608d < 2) {
                    arrayList.add(this.f70619o);
                    arrayList.add(paPaBean);
                }
                for (int i13 = 0; i13 < standAloneListBean.getGame_list().size(); i13++) {
                    PaPaBean paPaBean3 = new PaPaBean();
                    paPaBean3.setType(PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value());
                    AppBean appBean2 = standAloneListBean.getGame_list().get(i13);
                    appBean2.set_from(107);
                    appBean2.set_from_type(117);
                    appBean2.getExtBean().itemWithParent(this.f70618n).setSopName(title);
                    paPaBean3.setTypeValue(appBean2);
                    arrayList.add(paPaBean3);
                }
            } else if (standAloneListBean.getType().equals("tag_type") && standAloneListBean.getList() != null && standAloneListBean.getList().size() > 0) {
                int i14 = this.f70607c;
                if (i14 == 1) {
                    arrayList.add(this.f70619o);
                    arrayList.add(paPaBean);
                } else if (i14 == 2 && this.f70608d < 2) {
                    arrayList.add(this.f70619o);
                    arrayList.add(paPaBean);
                }
                ArrayList arrayList2 = new ArrayList();
                for (int i15 = 0; i15 < standAloneListBean.getList().size(); i15++) {
                    arrayList2.add(standAloneListBean.getList().get(i15));
                    if (arrayList2.size() == 3 || i15 == standAloneListBean.getList().size() - 1) {
                        ArrayList arrayList3 = new ArrayList();
                        arrayList3.addAll(arrayList2);
                        PaPaBean paPaBean4 = new PaPaBean();
                        paPaBean4.setType(PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_TAG.value());
                        paPaBean4.setTypeValue(arrayList3);
                        arrayList.add(paPaBean4);
                        arrayList2.clear();
                    }
                }
                PaPaBean paPaBean5 = new PaPaBean();
                paPaBean5.setType(PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_LINE_40.value());
                arrayList.add(paPaBean5);
            } else if (standAloneListBean.getType().equals("company_type") && standAloneListBean.getList() != null && standAloneListBean.getList().size() > 0) {
                int i16 = this.f70607c;
                if (i16 == 1) {
                    arrayList.add(this.f70619o);
                    arrayList.add(paPaBean);
                } else if (i16 == 2 && this.f70608d < 2) {
                    arrayList.add(this.f70619o);
                    arrayList.add(paPaBean);
                }
                PaPaBean paPaBean6 = new PaPaBean();
                paPaBean6.setType(PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_COMPANY.value());
                paPaBean6.setTypeValue(standAloneListBean.getList());
                arrayList.add(paPaBean6);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R() {
        try {
            PaPaBean paPaBean = new PaPaBean();
            this.f70619o = paPaBean;
            paPaBean.setType(PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_LINE_20.value());
            int i10 = this.f70607c;
            if (i10 == 1) {
                U(this.f70610f.W(RequestBeanUtil.getInstance(this.f70617m).getStandAloneOne()));
            } else if (i10 == 2) {
                V(this.f70610f.n0(RequestBeanUtil.getInstance(this.f70617m).getStandAloneTwo(this.f70608d)));
            }
        } catch (Exception e10) {
            com.join.mgps.Util.g1.b("PaPaList", "fetchData exception:" + e10.getMessage());
            a0();
        }
    }

    void T(AppBean gameInfoV2_2Bean) {
        IntentUtil.getInstance().intentActivity(this.f70617m, gameInfoV2_2Bean.getIntentDataBean());
    }

    void U(ResultMainBean<List<StandAloneListBean>> resultMainBean) {
        if (isActivityFinish()) {
            return;
        }
        if (resultMainBean == null || resultMainBean.getMessages() == null || resultMainBean.getMessages().getData() == null) {
            a0();
            return;
        }
        if (resultMainBean.getFlag() == 0) {
            c0();
            return;
        }
        List<StandAloneListBean> data = resultMainBean.getMessages().getData();
        if (data.size() > 0) {
            this.f70609e = false;
        }
        d0(Q(data));
        hideLoading();
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void Y(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        com.join.mgps.adapter.x4 x4Var = this.f70612h;
        if (x4Var != null) {
            x4Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z() {
        if (isDetached()) {
            return;
        }
        this.f70611g.u();
        this.f70611g.v();
        this.f70616l.setVisibility(8);
        this.f70615k.setVisibility(8);
        this.f70614j.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0() {
        if (this.f70608d <= 1) {
            Z();
        }
        XListView2 xListView2 = this.f70611g;
        if (xListView2 != null) {
            xListView2.u();
            this.f70611g.v();
        }
    }

    @AfterViews
    void afterViews() {
        this.f70610f = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.adapter.x4 x4Var = new com.join.mgps.adapter.x4(this.f70617m, this.f70613i);
        this.f70612h = x4Var;
        x4Var.e(this.f70624t);
        this.f70616l.j(true);
        this.f70611g.setPreLoadCount(10);
        this.f70611g.setAdapter((ListAdapter) this.f70612h);
        this.f70611g.setPullLoadEnable(new a());
        this.f70611g.setPullRefreshEnable(new b());
        this.f70611g.setOnItemClickListener(new c());
        this.f70611g.setOnScrollListener(this);
        S();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0() {
        if (isDetached()) {
            return;
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f70616l;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.setVisibility(8);
        }
        LinearLayout linearLayout = this.f70615k;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f70614j;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0() {
        this.f70609e = false;
        if (this.f70608d <= 1) {
            this.f70616l.setVisibility(8);
            this.f70615k.setVisibility(8);
            this.f70614j.setVisibility(8);
        }
        this.f70611g.v();
        this.f70611g.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d0(List<PaPaBean> datas) {
        if (this.f70608d <= 1) {
            this.f70613i.clear();
            datas.add(0, this.f70619o);
        }
        if (this.f70609e) {
            this.f70608d++;
        }
        if (datas != null && datas.size() > 0) {
            this.f70613i.addAll(datas);
        }
        XListView2 xListView2 = this.f70611g;
        if (xListView2 != null) {
            xListView2.u();
            this.f70611g.v();
            if (!this.f70609e) {
                this.f70611g.setNoMore();
                if (this.f70613i.size() <= 0) {
                    return;
                }
            }
        }
        updateDownStateList(datas);
        this.f70612h.notifyDataSetChanged();
        if (isVisible()) {
            this.f70611g.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.p4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f70517b.W();
                }
            }, 300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoading() {
        if (isDetached()) {
            return;
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f70616l;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.setVisibility(0);
        }
        LinearLayout linearLayout = this.f70615k;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f70614j;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    boolean isActivityFinish() {
        Activity activity = this.f70617m;
        return activity == null || activity.isFinishing() || this.f70617m.isDestroyed();
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f70617m = (Activity) context;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        com.join.mgps.Util.j0.a().d(this);
        Bundle arguments = getArguments();
        this.f70607c = arguments.getInt("type");
        this.f70618n = (ExtBean) arguments.getSerializable("pageExtBean");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f70617m = null;
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
                if (isHidden() || this.f70623s) {
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

    @Override // com.join.mgps.callbacks.q
    public void onPageVisible(int position) {
        ExtBean extBean = this.f70618n;
        if (extBean == null || extBean.hasExplore()) {
            return;
        }
        com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonExp, this.f70618n.copy().setTypeCode(EventP.TypeCode.page.name()).buildScene().toExt());
        W();
        this.f70618n.setHasExplore(true);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f70621q = (visibleItemCount + firstVisibleItem) - 1;
        this.f70622r = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        this.f70623s = scrollState != 0;
    }

    @Click
    void relodingimag() {
        S();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f70617m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String info) {
        if (isActivityFinish()) {
            return;
        }
        com.join.mgps.Util.a3.b(this.f70617m).d(info);
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

    private void updateDownStateList(List<PaPaBean> subList) {
        try {
            for (PaPaBean paPaBean : subList) {
                if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_HORIZONTAL.value()) {
                    Iterator it2 = ((List) paPaBean.getTypeValue()).iterator();
                    while (it2.hasNext()) {
                        DlTaskManager.INSTANCE.updateDownloadTask((AppBean) it2.next());
                    }
                } else if (paPaBean.getType() == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value()) {
                    DlTaskManager.INSTANCE.updateDownloadTask((AppBean) paPaBean.getTypeValue());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
