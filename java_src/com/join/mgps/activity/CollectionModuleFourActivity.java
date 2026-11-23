package com.join.mgps.activity;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionDataBean;
import com.join.mgps.dto.CollectionMessageBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.category_collection_rank)
public class CollectionModuleFourActivity extends BaseFragmentActivity implements AbsListView.OnScrollListener {

    @ViewById
    ImageView back_image;
    private com.join.mgps.adapter.n collectionAdapter;
    private List<CollectionBeanSub> collectionBeanSubList;

    @Extra
    String collection_id;

    @ViewById
    ImageView comment;

    @ViewById
    RelativeLayout commentParent;
    private Context context;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;

    @Extra
    ExtBean extBean;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @ViewById
    PtrClassicFrameLayout mPtrFrame;

    @StringRes(resName = "connect_server_excption")
    String netConnectExcption;

    @StringRes(resName = "net_excption")
    String netExcption;

    @ViewById
    XListView2 rankListView;

    @ViewById
    ImageView relodingimag;

    @ViewById
    TextView roundMessage;
    com.join.mgps.rpc.e rpcClient;

    @ViewById(R.id.title_normal_search_img)
    ImageView searchImg;

    @ViewById
    TextView title_textview;
    private int pn = 1;
    private int lastVisibleIndex = 0;
    private String collection_title = "";
    private int firstVisiblePosition = 0;
    private boolean isRequesting = false;
    private boolean SCROLLING = false;
    ExtBean pageExtBean = new ExtBean().setChatId(EventP.ChatId.commonGameList.name());
    private boolean isExposuring = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void expDiscountGame() {
        try {
            try {
                if (!this.isExposuring) {
                    this.isExposuring = true;
                    int lastVisiblePosition = this.rankListView.getLastVisiblePosition();
                    for (int i10 = 0; i10 <= lastVisiblePosition; i10++) {
                        CollectionBeanSub collectionBeanSub = this.collectionBeanSubList.get(i10);
                        if (!collectionBeanSub.getExposure()) {
                            collectionBeanSub.setExposure(true);
                            if (UtilsMy.o2(collectionBeanSub)) {
                                try {
                                    Ext ext = new Ext();
                                    ext.setResultCode("discount_game");
                                    ext.setScenesCode(getClass().getSimpleName());
                                    Data data = new Data();
                                    data.setGameId(collectionBeanSub.getGame_id());
                                    com.papa.sim.statistic.t.l(this.context).Y(Event.expGameAdPage, ext, data);
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                            com.papa.sim.statistic.t.l(this.context).R1(Event.expGameAdPage, collectionBeanSub.getExtBean().buildScene().toExt());
                        }
                    }
                }
            } finally {
                this.isExposuring = false;
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterViews$0() {
        if (this.isRequesting) {
            return;
        }
        getListData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterViews$1() {
        if (this.isRequesting) {
            return;
        }
        this.pn = 1;
        getListData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterViews$2(AdapterView adapterView, View view, int i10, long j10) {
        if (i10 > this.collectionBeanSubList.size() || i10 < 0) {
            return;
        }
        CollectionBeanSub collectionBeanSub = this.collectionBeanSubList.get(i10);
        if (collectionBeanSub.getGame_id() != null) {
            IntentUtil.getInstance().intentActivity(this.context, collectionBeanSub.getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$3() {
        updateDownloadView();
        return null;
    }

    private void receiveDelete(DownloadTask downloadTask) {
        updateDownStateList();
        this.collectionAdapter.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        try {
            updateDownStateList();
            this.collectionAdapter.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        updateDownStateList();
        this.collectionAdapter.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        updateDownStateList();
        this.rankListView.requestLayout();
        this.collectionAdapter.notifyDataSetChanged();
    }

    private void updateDownStateList() {
        try {
            Iterator<CollectionBeanSub> it2 = this.collectionBeanSubList.iterator();
            while (it2.hasNext()) {
                DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisibleIndex; i10++) {
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) this.rankListView.getItemAtPosition(i10);
            if (collectionBeanSub != null && (downloadTask = collectionBeanSub.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.rankListView.getChildAt(i10 - this.firstVisiblePosition);
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

    @AfterViews
    void afterViews() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        try {
            com.join.mgps.Util.j0.a().d(this);
            this.context = this;
            getDownloadTaskInfo();
            this.searchImg.setVisibility(0);
            this.downloadView.setVisibility(0);
            com.join.mgps.adapter.n nVar = new com.join.mgps.adapter.n(this.context);
            this.collectionAdapter = nVar;
            this.collectionBeanSubList = nVar.b();
            showLoding();
            getListData();
            this.rankListView.setPreLoadCount(10);
            this.rankListView.setPullLoadEnable(new com.join.mgps.customview.i() { // from class: com.join.mgps.activity.g0
                @Override // com.join.mgps.customview.i
                public final void onLoadMore() {
                    this.f57219b.lambda$afterViews$0();
                }
            });
            this.rankListView.setPullRefreshEnable(new com.join.mgps.customview.j() { // from class: com.join.mgps.activity.h0
                @Override // com.join.mgps.customview.j
                public final void onRefresh() {
                    this.f57256b.lambda$afterViews$1();
                }
            });
            this.rankListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.join.mgps.activity.i0
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                    this.f57329b.lambda$afterViews$2(adapterView, view, i10, j10);
                }
            });
            this.rankListView.setOnScrollListener(this);
            this.rankListView.setAdapter((ListAdapter) this.collectionAdapter);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.pageExtBean.setParent(this.extBean);
        com.papa.sim.statistic.t.l(this).R1(Event.commonExp, this.pageExtBean.copy().buildScene().toExt());
    }

    @Click
    void back_image() {
        finish();
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        updateDownloadView();
    }

    @Click
    void comment() {
        IntentUtil.getInstance().goCollectionCommentActivity(this, this.collection_id);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getListData() {
        List<CollectionBeanSub> arrayList = new ArrayList<>();
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            updateListFooter();
            showLodingFailed();
            return;
        }
        this.isRequesting = true;
        try {
            try {
                CollectionMessageBean messages = this.rpcClient.o0(getRequestBean(this.collection_id, this.pn)).getMessages();
                if (messages == null) {
                    updateListFooter();
                    showLodingFailed();
                } else if (messages.getData().size() > 0) {
                    CollectionDataBean collectionDataBean = messages.getData().get(0);
                    try {
                        showMessageCount(collectionDataBean.getComment_switch(), collectionDataBean.getComment_count());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    if (collectionDataBean.getInfo().size() > 0) {
                        collectionDataBean.getInfo();
                        this.collection_title = collectionDataBean.getInfo().get(0).getMain().getCollection_title();
                        arrayList = collectionDataBean.getInfo().get(0).getSub();
                    }
                    if (arrayList == null || arrayList.size() == 0) {
                        noMore();
                    } else {
                        this.pn++;
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (CollectionBeanSub collectionBeanSub : arrayList) {
                        ExtBean extBean = this.extBean;
                        if (extBean == null || !extBean.isKeepOrginFrom() || TextUtils.isEmpty(this.extBean.getOrginFrom())) {
                            ExtBean extBean2 = this.extBean;
                            if (extBean2 == null || extBean2.get_from_type() != 134) {
                                ExtBean extBean3 = this.extBean;
                                if (extBean3 == null || TextUtils.isEmpty(extBean3.getFrom()) || !this.extBean.getFrom().startsWith("207")) {
                                    collectionBeanSub.set_from(111);
                                    collectionBeanSub.set_from_type(121);
                                } else {
                                    collectionBeanSub.set_from(Integer.valueOf(this.extBean.getFrom()).intValue());
                                    collectionBeanSub.set_from_type(this.extBean.get_from_type());
                                }
                            } else {
                                collectionBeanSub.set_from(13401);
                                collectionBeanSub.set_from_type(13401);
                            }
                        } else {
                            try {
                                collectionBeanSub.set_from(Integer.parseInt(this.extBean.getOrginFrom()));
                                collectionBeanSub.set_from_type(Integer.parseInt(this.extBean.getOrginFrom()));
                            } catch (Exception unused) {
                            }
                        }
                        collectionBeanSub.getExtBean().itemWithParent(this.pageExtBean).setChatId(EventP.ChatId.commonGameList.name());
                        arrayList2.add(collectionBeanSub);
                    }
                    showMain(arrayList2);
                    updateListFooter();
                } else {
                    noMore();
                }
            } finally {
                this.isRequesting = false;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            updateListFooter();
            showLodingFailed();
        }
    }

    public CommonRequestBean getRequestBean(String collection_id, int Page) {
        return RequestBeanUtil.getInstance(this.context).getCollectionRequestBean(collection_id, Page, 10, "", "", this.extBean);
    }

    @Click
    void mg_loading() {
        this.pn = 1;
        getListData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void noMore() {
        XListView2 xListView2 = this.rankListView;
        if (xListView2 == null) {
            return;
        }
        xListView2.setNoMore();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.f0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57147b.lambda$onEventMainThread$3();
            }
        });
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
                if (this.SCROLLING) {
                    return;
                }
                updateProgressPartly();
                return;
            } else if (iC != 48) {
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

    @Receiver(actions = {p5.a.G, p5.a.I})
    void onPayGameSuccess(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        com.join.mgps.adapter.n nVar = this.collectionAdapter;
        if (nVar != null) {
            nVar.notifyDataSetChanged();
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        UtilsMy.N4(this);
        updateDownloadView();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.lastVisibleIndex = (visibleItemCount + firstVisibleItem) - 1;
        this.firstVisiblePosition = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        if (scrollState == 0) {
            expDiscountGame();
        }
        this.SCROLLING = scrollState != 0;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    @Click
    void relodingimag() {
        this.pn = 1;
        showLoding();
        getListData();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.loding_layout.setVisibility(0);
            this.loding_faile.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            List<CollectionBeanSub> list = this.collectionBeanSubList;
            if (list == null || list.size() == 0) {
                this.loding_faile.setVisibility(0);
                this.loding_layout.setVisibility(8);
                this.mPtrFrame.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(List<CollectionBeanSub> subList) {
        if (subList != null) {
            try {
                if (subList.size() == 0) {
                    return;
                }
                this.loding_faile.setVisibility(8);
                this.loding_layout.setVisibility(8);
                this.mPtrFrame.setVisibility(0);
                if (this.pn == 2) {
                    this.collectionBeanSubList.clear();
                }
                this.extBean = null;
                this.collectionBeanSubList.addAll(subList);
                updateDownStateList(subList);
                if (this.pn == 2) {
                    String str = this.collection_title;
                    if (str != null) {
                        this.title_textview.setText(str);
                    }
                    this.collectionBeanSubList.size();
                    this.collectionAdapter.notifyDataSetChanged();
                } else {
                    this.collectionAdapter.notifyDataSetChanged();
                }
                this.rankListView.postDelayed(new Runnable() { // from class: com.join.mgps.activity.j0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f57344b.expDiscountGame();
                    }
                }, 800L);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessageCount(int switchInt, int comment_count) {
        if (switchInt != 1) {
            this.commentParent.setVisibility(8);
            this.comment.setVisibility(8);
            this.roundMessage.setVisibility(8);
            return;
        }
        this.commentParent.setVisibility(0);
        this.comment.setVisibility(0);
        if (comment_count > 0) {
            this.roundMessage.setVisibility(0);
        }
        this.roundMessage.setText(comment_count + "");
    }

    @Click
    void title_normal_download_cdv() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Click
    void title_normal_search_img() {
        SearchHintActivity_.intent(this.context).start();
        com.papa.sim.statistic.t.l(this.context).y2(Where.modufour, AccountUtil_.getInstance_(this.context).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView == null) {
            return;
        }
        customerDownloadView.setDownloadGameNum();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateListFooter() {
        XListView2 xListView2 = this.rankListView;
        if (xListView2 == null) {
            return;
        }
        xListView2.v();
        this.rankListView.u();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUI(DownloadTask downloadTask, int from) {
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

    private void updateDownStateList(List<CollectionBeanSub> subList) {
        try {
            Iterator<CollectionBeanSub> it2 = subList.iterator();
            while (it2.hasNext()) {
                DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
