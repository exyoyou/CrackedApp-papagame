package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestRankingListArgs;
import com.join.mgps.dto.RequestTypePn;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
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
@EFragment(R.layout.classify_list_layout)
public class k extends Fragment implements AbsListView.OnScrollListener, com.join.mgps.callbacks.q {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f57354c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.join.mgps.adapter.e1 f57356e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    RelativeLayout f57357f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    XListView2 f57358g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f57359h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f57360i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    LinearLayout f57361j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    LinearLayout f57362k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    ImageView f57363l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    ImageView f57364m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    com.join.mgps.rpc.e f57365n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    com.join.mgps.rpc.k f57366o;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f57375x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f57376y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    ExtBean f57377z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<CollectionBeanSub> f57355d = new ArrayList();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f57367p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f57368q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f57369r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f57370s = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f57371t = "";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f57372u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f57373v = "";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f57374w = false;
    final AtomicInteger A = new AtomicInteger(0);
    private String B = "";
    private boolean C = false;
    private int D = 0;
    private int E = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S() {
        if (this.f57374w) {
            return;
        }
        this.f57367p++;
        R(this.f57371t, this.f57373v);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T() {
        if (this.f57374w) {
            return;
        }
        this.f57367p = 1;
        R(this.f57371t, this.f57373v);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U(AdapterView adapterView, View view, int i10, long j10) {
        if (i10 > this.f57355d.size() || i10 < 0) {
            return;
        }
        CollectionBeanSub collectionBeanSub = this.f57355d.get(i10);
        if (collectionBeanSub.getCrc_sign_id() != null) {
            IntentUtil.getInstance().intentActivity(this.f57354c, collectionBeanSub.getIntentDataBean());
        }
    }

    public static k W(int rankingType, String RomType) {
        ClassifyListFragment_ classifyListFragment_ = new ClassifyListFragment_();
        Bundle bundle = new Bundle();
        bundle.putString("romType", RomType);
        bundle.putInt("uiType", 0);
        bundle.putInt("rankingType", rankingType);
        classifyListFragment_.setArguments(bundle);
        return classifyListFragment_;
    }

    public static k X(String type, String RomType) {
        ClassifyListFragment_ classifyListFragment_ = new ClassifyListFragment_();
        Bundle bundle = new Bundle();
        bundle.putString("romType", RomType);
        bundle.putString("type", type);
        bundle.putInt("uiType", 0);
        classifyListFragment_.setArguments(bundle);
        return classifyListFragment_;
    }

    public static k Y(int rankingType, String type, String rankTag, String dimensionId) {
        ClassifyListFragment_ classifyListFragment_ = new ClassifyListFragment_();
        Bundle bundle = new Bundle();
        bundle.putString("type", type);
        int i10 = 0;
        bundle.putInt("uiType", 0);
        bundle.putInt("rankingType", rankingType);
        if ("4".equals(type)) {
            bundle.putString(RankingHomeActivity_.RANK_TAG_EXTRA, rankTag);
            bundle.putString(RankingHomeActivity_.DIMENSION_ID_EXTRA, dimensionId);
        }
        int i11 = 119;
        if (rankingType != 1001) {
            i10 = 109;
        } else if ("1".equals(type)) {
            i10 = 10902;
            i11 = 10902;
        } else if ("2".equals(type)) {
            i10 = 10901;
            i11 = 10901;
        } else if ("3".equals(type)) {
            i10 = 10903;
            i11 = 10903;
        } else if ("4".equals(type)) {
            i10 = 12101;
            i11 = 12101;
        }
        bundle.putInt("_from", i10);
        bundle.putInt("_from_type", i11);
        classifyListFragment_.setArguments(bundle);
        return classifyListFragment_;
    }

    public static k Z(int rankingType, String type) {
        return Y(rankingType, type, "", "0");
    }

    public static k a0(int rankingType, String type, int uiType, Bundle args) {
        ClassifyListFragment_ classifyListFragment_ = new ClassifyListFragment_();
        Bundle bundle = new Bundle();
        bundle.putString("type", type);
        bundle.putInt("uiType", uiType);
        bundle.putInt("rankingType", rankingType);
        bundle.putInt("_from", 107);
        bundle.putInt("_from_type", 117);
        bundle.putAll(args);
        classifyListFragment_.setArguments(bundle);
        return classifyListFragment_;
    }

    private void expDiscountGame() {
        try {
            try {
                if (!this.C) {
                    this.C = true;
                    int lastVisiblePosition = this.f57358g.getLastVisiblePosition();
                    for (int i10 = 0; i10 <= lastVisiblePosition; i10++) {
                        CollectionBeanSub collectionBeanSub = this.f57355d.get(i10);
                        if (!collectionBeanSub.getExposure()) {
                            collectionBeanSub.setExposure(true);
                            if (UtilsMy.o2(collectionBeanSub)) {
                                try {
                                    Ext ext = new Ext();
                                    ext.setResultCode("discount_game");
                                    ext.setScenesCode(getClass().getSimpleName());
                                    Data data = new Data();
                                    data.setGameId(collectionBeanSub.getGame_id());
                                    com.papa.sim.statistic.t.l(this.f57354c).Y(Event.expGameAdPage, ext, data);
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                            com.papa.sim.statistic.t.l(requireContext()).R1(Event.expGameAdPage, collectionBeanSub.getExtBean().buildScene().toExt());
                        }
                    }
                }
            } finally {
                this.C = false;
            }
        } catch (Exception unused) {
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<CollectionBeanSub> it2 = this.f57355d.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
        this.f57356e.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        try {
            this.f57356e.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        updateDownStateList();
        this.f57356e.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        updateDownStateList();
        this.f57356e.notifyDataSetChanged();
    }

    private void updateDownStateList() {
        try {
            Iterator<CollectionBeanSub> it2 = this.f57355d.iterator();
            while (it2.hasNext()) {
                DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        if (this.f57369r < 0 || this.f57368q >= this.f57358g.getCount()) {
            return;
        }
        for (int i10 = this.f57369r; i10 <= this.f57368q; i10++) {
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) this.f57358g.getItemAtPosition(i10);
            if (collectionBeanSub != null && (downloadTask = collectionBeanSub.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.f57358g.getChildAt(i10 - this.f57369r);
                if (childAt.getTag() instanceof com.join.mgps.adapter.e1.a) {
                    com.join.mgps.adapter.e1.a aVar = (com.join.mgps.adapter.e1.a) childAt.getTag();
                    try {
                        DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                        if (downloadTaskG == null) {
                            return;
                        }
                        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            aVar.f62046k.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        } else {
                            aVar.f62046k.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        }
                        if (downloadTask.getStatus() == 12) {
                            aVar.f62049n.setProgress((int) downloadTaskG.getProgress());
                        } else {
                            aVar.f62048m.setProgress((int) downloadTaskG.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            aVar.f62047l.setText(downloadTaskG.getSpeed() + "/S");
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

    public void P() {
        XListView2 xListView2;
        if (getActivity() == null || this.f57356e == null || ((ClassifyGameActivity) getActivity()).getSortPoint() == this.B) {
            return;
        }
        if (com.join.mgps.Util.t2.h(this.f57371t) && com.join.mgps.Util.t2.h(this.f57373v)) {
            return;
        }
        if (this.f57374w && (xListView2 = this.f57358g) != null) {
            xListView2.u();
            this.f57358g.v();
        }
        LinearLayout linearLayout = this.f57361j;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f57360i;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(0);
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f57359h;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f57362k;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
        this.f57367p = 1;
        R(this.f57371t, this.f57373v);
    }

    public CommonRequestBean Q(String gameType, String romType, String sort_type) {
        return RequestBeanUtil.getInstance(this.f57354c).getGameListRequestBean(this.f57367p, 10, gameType, romType, this.f57370s, sort_type);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:19:0x00b7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x00b9 A[Catch: all -> 0x0113, Exception -> 0x0115, TryCatch #1 {Exception -> 0x0115, blocks: (B:8:0x002f, B:11:0x0038, B:13:0x003e, B:17:0x00a7, B:20:0x00b9, B:24:0x00d0, B:25:0x00d4, B:27:0x00da, B:28:0x00f7, B:30:0x00fd, B:31:0x0101, B:33:0x0105, B:35:0x010b, B:36:0x010f, B:22:0x00c3, B:14:0x007e, B:15:0x009a), top: B:52:0x002f, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x00c1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x00c3 A[Catch: all -> 0x0113, Exception -> 0x0115, TryCatch #1 {Exception -> 0x0115, blocks: (B:8:0x002f, B:11:0x0038, B:13:0x003e, B:17:0x00a7, B:20:0x00b9, B:24:0x00d0, B:25:0x00d4, B:27:0x00da, B:28:0x00f7, B:30:0x00fd, B:31:0x0101, B:33:0x0105, B:35:0x010b, B:36:0x010f, B:22:0x00c3, B:14:0x007e, B:15:0x009a), top: B:52:0x002f, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x00d0 A[Catch: all -> 0x0113, Exception -> 0x0115, TryCatch #1 {Exception -> 0x0115, blocks: (B:8:0x002f, B:11:0x0038, B:13:0x003e, B:17:0x00a7, B:20:0x00b9, B:24:0x00d0, B:25:0x00d4, B:27:0x00da, B:28:0x00f7, B:30:0x00fd, B:31:0x0101, B:33:0x0105, B:35:0x010b, B:36:0x010f, B:22:0x00c3, B:14:0x007e, B:15:0x009a), top: B:52:0x002f, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00da A[Catch: all -> 0x0113, Exception -> 0x0115, LOOP:0: B:25:0x00d4->B:27:0x00da, LOOP_END, TryCatch #1 {Exception -> 0x0115, blocks: (B:8:0x002f, B:11:0x0038, B:13:0x003e, B:17:0x00a7, B:20:0x00b9, B:24:0x00d0, B:25:0x00d4, B:27:0x00da, B:28:0x00f7, B:30:0x00fd, B:31:0x0101, B:33:0x0105, B:35:0x010b, B:36:0x010f, B:22:0x00c3, B:14:0x007e, B:15:0x009a), top: B:52:0x002f, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x00fd A[Catch: all -> 0x0113, Exception -> 0x0115, TryCatch #1 {Exception -> 0x0115, blocks: (B:8:0x002f, B:11:0x0038, B:13:0x003e, B:17:0x00a7, B:20:0x00b9, B:24:0x00d0, B:25:0x00d4, B:27:0x00da, B:28:0x00f7, B:30:0x00fd, B:31:0x0101, B:33:0x0105, B:35:0x010b, B:36:0x010f, B:22:0x00c3, B:14:0x007e, B:15:0x009a), top: B:52:0x002f, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0101 A[Catch: all -> 0x0113, Exception -> 0x0115, TryCatch #1 {Exception -> 0x0115, blocks: (B:8:0x002f, B:11:0x0038, B:13:0x003e, B:17:0x00a7, B:20:0x00b9, B:24:0x00d0, B:25:0x00d4, B:27:0x00da, B:28:0x00f7, B:30:0x00fd, B:31:0x0101, B:33:0x0105, B:35:0x010b, B:36:0x010f, B:22:0x00c3, B:14:0x007e, B:15:0x009a), top: B:52:0x002f, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x010f A[Catch: all -> 0x0113, Exception -> 0x0115, TRY_LEAVE, TryCatch #1 {Exception -> 0x0115, blocks: (B:8:0x002f, B:11:0x0038, B:13:0x003e, B:17:0x00a7, B:20:0x00b9, B:24:0x00d0, B:25:0x00d4, B:27:0x00da, B:28:0x00f7, B:30:0x00fd, B:31:0x0101, B:33:0x0105, B:35:0x010b, B:36:0x010f, B:22:0x00c3, B:14:0x007e, B:15:0x009a), top: B:52:0x002f, outer: #0 }] */
    @Background
    public void R(String gameType, String romType) {
        ResultMainBean<List<CollectionBeanSub>> resultMainBeanG1;
        ResponseModel<List<CollectionBeanSub>> responseModelW;
        if (!com.join.android.app.common.utils.m.j(this.f57354c)) {
            i0(false);
            return;
        }
        if (getActivity() instanceof ClassifyGameActivity) {
            this.B = ((ClassifyGameActivity) getActivity()).getSortPoint();
        }
        this.f57374w = true;
        AtomicInteger atomicInteger = this.A;
        atomicInteger.set(atomicInteger.get() + 1);
        ArrayList arrayList = new ArrayList();
        try {
            try {
                List<CollectionBeanSub> data = null;
                if (this.f57370s == 1001) {
                    if ("4".equals(gameType)) {
                        RequestModel requestModel = new RequestModel(getContext());
                        RequestRankingListArgs requestRankingListArgs = new RequestRankingListArgs();
                        requestRankingListArgs.setUid(AccountUtil_.getInstance_(getContext()).getUid());
                        requestRankingListArgs.setPage(Integer.valueOf(this.f57367p));
                        requestRankingListArgs.setType(this.f57375x);
                        requestRankingListArgs.setDimensionId(this.f57376y);
                        requestModel.setArgs(requestRankingListArgs);
                        responseModelW = this.f57366o.w(requestModel.makeSign());
                        resultMainBeanG1 = null;
                    } else {
                        resultMainBeanG1 = this.f57365n.O0(RequestBeanUtil.getInstance(this.f57354c).getRankingV3(new RequestTypePn(Integer.parseInt(gameType), this.f57367p)));
                    }
                    AtomicInteger atomicInteger2 = this.A;
                    atomicInteger2.set(atomicInteger2.get() - 1);
                    if ("4".equals(gameType)) {
                        if (responseModelW != null) {
                            data = responseModelW.getData();
                        }
                    } else if (resultMainBeanG1 != null) {
                        data = resultMainBeanG1.getMessages().getData();
                    }
                    if (data != null) {
                        for (CollectionBeanSub collectionBeanSub : data) {
                            collectionBeanSub.set_from_type(this.E);
                            collectionBeanSub.set_from(this.D);
                            collectionBeanSub.getExtBean().itemWithParent(this.f57377z);
                            arrayList.add(collectionBeanSub);
                        }
                    }
                    if (arrayList.size() > 0) {
                        showMain(arrayList);
                    } else if (this.f57367p == 1 || arrayList.size() != 0) {
                        b0();
                    } else {
                        i0(true);
                    }
                }
                resultMainBeanG1 = this.f57365n.g1(Q(gameType, romType, this.B));
                responseModelW = null;
                AtomicInteger atomicInteger3 = this.A;
                atomicInteger3.set(atomicInteger3.get() - 1);
                if ("4".equals(gameType)) {
                    if (responseModelW != null) {
                        data = responseModelW.getData();
                    }
                } else if (resultMainBeanG1 != null) {
                    data = resultMainBeanG1.getMessages().getData();
                }
                if (data != null) {
                    while (r9.hasNext()) {
                        collectionBeanSub.set_from_type(this.E);
                        collectionBeanSub.set_from(this.D);
                        collectionBeanSub.getExtBean().itemWithParent(this.f57377z);
                        arrayList.add(collectionBeanSub);
                    }
                }
                if (arrayList.size() > 0) {
                    showMain(arrayList);
                } else if (this.f57367p == 1) {
                    b0();
                } else {
                    b0();
                }
            } catch (Exception e10) {
                AtomicInteger atomicInteger4 = this.A;
                atomicInteger4.set(atomicInteger4.get() - 1);
                e10.printStackTrace();
                if (this.f57367p == 1 && arrayList.size() == 0) {
                    i0(false);
                } else {
                    b0();
                }
            }
        } finally {
            this.f57374w = false;
        }
    }

    @Click
    void V() {
        this.f57367p = 1;
        R(this.f57371t, this.f57373v);
    }

    @AfterViews
    void afterViews() {
        this.f57365n = com.join.mgps.rpc.impl.d.O1();
        this.f57366o = com.join.mgps.rpc.impl.i.P0();
        com.join.mgps.Util.j0.a().d(this);
        this.f57360i.setBackgroundResource(R.color.activity_default_background);
        this.f57354c = getActivity();
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        this.f57371t = arguments.getString("type");
        this.f57372u = arguments.getInt("uiType");
        this.f57373v = arguments.getString("romType");
        this.f57370s = arguments.getInt("rankingType");
        this.D = arguments.getInt("_from");
        this.E = arguments.getInt("_from_type");
        this.f57375x = arguments.getString(RankingHomeActivity_.RANK_TAG_EXTRA);
        this.f57376y = arguments.getString(RankingHomeActivity_.DIMENSION_ID_EXTRA);
        this.f57377z = (ExtBean) arguments.getSerializable("pageExtBean");
        if ("4".equals(this.f57371t)) {
            com.papa.sim.statistic.t.l(this.f57354c).R1(Event.goGameListPage, new Ext().setFrom("1"));
        }
        if (this.f57372u > 0) {
            this.f57357f.setBackgroundColor(Color.parseColor("#efeff4"));
        }
        if (this.f57370s == 0) {
            this.f57370s = 1;
        }
        this.f57367p = 1;
        com.join.mgps.adapter.e1 e1Var = new com.join.mgps.adapter.e1(this.f57354c);
        this.f57356e = e1Var;
        e1Var.b(this.f57372u);
        this.f57355d = this.f57356e.a();
        this.f57358g.setAdapter((ListAdapter) this.f57356e);
        this.f57358g.setPreLoadCount(10);
        showLoding();
        R(this.f57371t, this.f57373v);
        this.f57358g.setPullLoadEnable(new com.join.mgps.customview.i() { // from class: com.join.mgps.activity.h
            @Override // com.join.mgps.customview.i
            public final void onLoadMore() {
                this.f57255b.S();
            }
        });
        this.f57358g.setPullRefreshEnable(new com.join.mgps.customview.j() { // from class: com.join.mgps.activity.i
            @Override // com.join.mgps.customview.j
            public final void onRefresh() {
                this.f57328b.T();
            }
        });
        this.f57358g.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.join.mgps.activity.j
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                this.f57343b.U(adapterView, view, i10, j10);
            }
        });
        this.f57358g.setOnScrollListener(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0() {
        XListView2 xListView2 = this.f57358g;
        if (xListView2 != null) {
            xListView2.setNoMore();
        }
    }

    @Click
    void c0() {
        if (this.f57370s != 1001) {
            getActivity().finish();
        }
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
        com.join.mgps.adapter.e1 e1Var = this.f57356e;
        if (e1Var != null) {
            e1Var.notifyDataSetChanged();
        }
    }

    @Click
    void e0() {
        if (this.f57370s != 1001) {
            getActivity().finish();
        }
    }

    public void f0(String gameType) {
        if (gameType.equals(this.f57371t)) {
            return;
        }
        this.f57371t = gameType;
        this.f57358g.l();
        this.f57367p = 1;
        showLoding();
        this.f57355d.clear();
        this.f57356e.notifyDataSetChanged();
        this.f57359h.setVisibility(8);
        R(this.f57371t, this.f57373v);
    }

    public void g0(String romType) {
        String str = this.f57373v;
        if (str == null || romType == null || romType.equals(str)) {
            return;
        }
        this.f57373v = romType;
        XListView2 xListView2 = this.f57358g;
        if (xListView2 != null) {
            xListView2.l();
        }
        this.f57367p = 1;
        showLoding();
        this.f57355d.clear();
        com.join.mgps.adapter.e1 e1Var = this.f57356e;
        if (e1Var != null) {
            e1Var.notifyDataSetChanged();
        }
        this.f57359h.setVisibility(8);
        R(this.f57371t, this.f57373v);
    }

    public void h0(String gameType, String romType) {
        this.f57373v = romType;
        this.f57371t = gameType;
        this.f57358g.l();
        this.f57367p = 1;
        showLoding();
        this.f57355d.clear();
        this.f57356e.notifyDataSetChanged();
        this.f57359h.setVisibility(8);
        R(this.f57371t, this.f57373v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i0(boolean isNormal) {
        XListView2 xListView2 = this.f57358g;
        if (xListView2 != null) {
            xListView2.u();
            this.f57358g.v();
        }
        if (isNormal) {
            if (isNormal && this.f57367p == 1 && this.f57355d.size() == 0) {
                LinearLayout linearLayout = this.f57361j;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                LinearLayout linearLayout2 = this.f57360i;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(8);
                }
                PtrClassicFrameLayout ptrClassicFrameLayout = this.f57359h;
                if (ptrClassicFrameLayout != null) {
                    ptrClassicFrameLayout.setVisibility(8);
                }
                LinearLayout linearLayout3 = this.f57362k;
                if (linearLayout3 != null) {
                    linearLayout3.setVisibility(0);
                    return;
                }
                return;
            }
            return;
        }
        if (this.f57367p != 1 || this.f57355d.size() != 0) {
            try {
                com.join.mgps.Util.a3.b(this.f57354c).d(getString(R.string.net_connect_failed));
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        LinearLayout linearLayout4 = this.f57361j;
        if (linearLayout4 != null) {
            linearLayout4.setVisibility(0);
        }
        LinearLayout linearLayout5 = this.f57360i;
        if (linearLayout5 != null) {
            linearLayout5.setVisibility(8);
        }
        PtrClassicFrameLayout ptrClassicFrameLayout2 = this.f57359h;
        if (ptrClassicFrameLayout2 != null) {
            ptrClassicFrameLayout2.setVisibility(8);
        }
        LinearLayout linearLayout6 = this.f57362k;
        if (linearLayout6 != null) {
            linearLayout6.setVisibility(8);
        }
    }

    public void j0(String gameType, String romType) {
        this.f57367p = 1;
        R(gameType, romType);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
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
    public void onHiddenChanged(boolean hidden) {
        com.join.mgps.adapter.e1 e1Var;
        super.onHiddenChanged(hidden);
        if (hidden || (e1Var = this.f57356e) == null) {
            return;
        }
        e1Var.notifyDataSetChanged();
    }

    @Override // com.join.mgps.callbacks.q
    public void onPageVisible(int position) {
        ExtBean extBean = this.f57377z;
        if (extBean == null || extBean.hasExplore()) {
            return;
        }
        com.papa.sim.statistic.t.l(requireContext()).R1(Event.commonExp, this.f57377z.copy().setTypeCode(EventP.TypeCode.page.name()).buildScene().toExt());
        expDiscountGame();
        this.f57377z.setHasExplore(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f57368q = (visibleItemCount + firstVisibleItem) - 1;
        this.f57369r = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        expDiscountGame();
    }

    @Click
    void relodingimag() {
        this.f57367p = 1;
        showLoding();
        R(this.f57371t, this.f57373v);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f57354c);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (isVisibleToUser && (getActivity() instanceof ClassifyGameActivity)) {
            P();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        LinearLayout linearLayout = this.f57360i;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f57361j;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f57359h;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f57362k;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CollectionBeanSub> subList) {
        try {
            if (this.A.get() > 0) {
                return;
            }
            LinearLayout linearLayout = this.f57361j;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            LinearLayout linearLayout2 = this.f57360i;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            PtrClassicFrameLayout ptrClassicFrameLayout = this.f57359h;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.setVisibility(0);
            }
            LinearLayout linearLayout3 = this.f57362k;
            if (linearLayout3 != null) {
                linearLayout3.setVisibility(8);
            }
            XListView2 xListView2 = this.f57358g;
            if (xListView2 != null) {
                xListView2.u();
                this.f57358g.v();
            }
            if (this.f57367p == 1) {
                this.f57355d.clear();
            }
            updateDownStateList();
            this.f57355d.addAll(subList);
            if (this.f57358g != null) {
                if (subList.size() == 0) {
                    this.f57358g.setNoMore();
                }
                this.f57356e.notifyDataSetChanged();
                if (this.f57367p == 1) {
                    this.f57358g.setSelection(0);
                    expDiscountGame();
                }
            }
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
