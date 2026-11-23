package com.join.mgps.activity;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.facebook.drawee.view.SimpleDraweeView;
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
import com.join.mgps.dto.BreakBeanMain;
import com.join.mgps.dto.CollectionBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionDataBean;
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
@EActivity(R.layout.category_collection_break)
public class CollectionModuleTwoActivity extends BaseFragmentActivity implements AbsListView.OnScrollListener {
    private static final String TAG = "CollectionModuleTwoActivity";

    @ViewById
    ImageView back_image;
    private BreakBeanMain breakBeanMain;

    @ViewById
    XListView2 breakListView;
    private com.join.mgps.adapter.n collectionAdapter;
    private CollectionBean collectionBean;
    private List<CollectionBeanSub> collectionBeanSubs;
    private CollectionDataBean collectionDataBean;

    @Extra
    String collection_id;
    private String collection_title;

    @ViewById
    ImageView comment;

    @ViewById
    RelativeLayout commentParent;
    private Context context;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;

    @Extra
    ExtBean extBean;
    private SimpleDraweeView imgBreak;
    private String info;

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
    ImageView relodingimag;

    @ViewById
    TextView roundMessage;
    com.join.mgps.rpc.e rpcClient;

    @ViewById(R.id.title_normal_search_img)
    ImageView searchImg;
    private TextView textViewBreak;

    @ViewById
    TextView title_textview;
    private String tpl_pic;
    private int pn = 1;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f50858pc = 10;
    private int lastVisibleIndex = 0;
    private int firstVisiblePosition = 0;
    private boolean isRequesting = false;
    ExtBean pageExtBean = new ExtBean().setTypeCode(EventP.TypeCode.page.name()).setChatId(EventP.ChatId.collect.name());
    private boolean SCROLLING = false;
    private boolean isExposuring = false;

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (CollectionModuleTwoActivity.this.isRequesting) {
                return;
            }
            CollectionModuleTwoActivity.this.getBreakData();
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (CollectionModuleTwoActivity.this.isRequesting) {
                return;
            }
            CollectionModuleTwoActivity.this.pn = 1;
            CollectionModuleTwoActivity.this.getBreakData();
        }
    }

    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            int i11 = i10 - 1;
            if (i11 >= CollectionModuleTwoActivity.this.collectionBeanSubs.size() || i11 < 0) {
                return;
            }
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) CollectionModuleTwoActivity.this.collectionBeanSubs.get(i11);
            if (collectionBeanSub.getGame_id() != null) {
                com.papa.sim.statistic.t.l(CollectionModuleTwoActivity.this).R1(Event.commonClick, collectionBeanSub.getExtBean().buildScene().toExt());
                IntentUtil.getInstance().intentActivity(CollectionModuleTwoActivity.this.context, collectionBeanSub.getIntentDataBean());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expDiscountGame() {
        try {
            try {
                if (!this.isExposuring) {
                    this.isExposuring = true;
                    for (int i10 = 0; i10 <= this.lastVisibleIndex; i10++) {
                        CollectionBeanSub collectionBeanSub = this.collectionBeanSubs.get(i10);
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
                            if (collectionBeanSub.getExtBean() != null) {
                                com.papa.sim.statistic.t.l(this).R1(Event.expGameAdPage, collectionBeanSub.getExtBean().buildScene().toExt());
                            }
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
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    private void receiveDelete(DownloadTask downloadTask) {
        updateDownStateList(this.collectionBeanSubs);
        this.collectionAdapter.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        try {
            updateDownStateList(this.collectionBeanSubs);
            this.collectionAdapter.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        updateDownStateList(this.collectionBeanSubs);
        this.collectionAdapter.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        updateDownStateList(this.collectionBeanSubs);
        this.breakListView.requestLayout();
        this.collectionAdapter.notifyDataSetChanged();
    }

    private void updateDownStateList(List<CollectionBeanSub> collectionBeanSubList) {
        try {
            Iterator<CollectionBeanSub> it2 = collectionBeanSubList.iterator();
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
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) this.breakListView.getItemAtPosition(i10);
            if (collectionBeanSub != null && (downloadTask = collectionBeanSub.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.breakListView.getChildAt(i10 - this.firstVisiblePosition);
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
        ExtBean extBean;
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        try {
            this.context = this;
            com.join.mgps.Util.j0.a().d(this);
            if (TextUtils.equals(this.collection_id, "1635244880") && (extBean = this.extBean) != null) {
                extBean.setFrom("166");
                this.extBean.set_from_type(166);
            }
            getDownloadTaskInfo();
            this.searchImg.setVisibility(0);
            this.downloadView.setVisibility(0);
            showLoding();
            View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.collection_two_header, (ViewGroup) null);
            this.imgBreak = (SimpleDraweeView) viewInflate.findViewById(R.id.imgBreak);
            this.textViewBreak = (TextView) viewInflate.findViewById(R.id.textViewBreak);
            this.breakListView.addHeaderView(viewInflate);
            com.join.mgps.adapter.n nVar = new com.join.mgps.adapter.n(this.context);
            this.collectionAdapter = nVar;
            nVar.d("807719946".equals(this.collection_id) ? false : true);
            this.collectionBeanSubs = this.collectionAdapter.b();
            this.breakListView.setAdapter((ListAdapter) this.collectionAdapter);
            this.breakListView.setPreLoadCount(10);
            getBreakData();
            this.breakListView.setPullLoadEnable(new a());
            this.breakListView.setPullRefreshEnable(new b());
            this.breakListView.setOnItemClickListener(new c());
            this.breakListView.setOnScrollListener(this);
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
    public void getBreakData() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            updateListFooter();
            showLodingFailed();
            return;
        }
        this.isRequesting = true;
        try {
            try {
                CollectionBean collectionBeanO0 = this.rpcClient.o0(getRequestBean(this.collection_id, this.pn));
                this.collectionBean = collectionBeanO0;
                if (collectionBeanO0 == null || collectionBeanO0.getMessages().getData() == null || this.collectionBean.getMessages().getData().size() <= 0) {
                    showLodingFailed();
                    updateListFooter();
                } else {
                    CollectionDataBean collectionDataBean = this.collectionBean.getMessages().getData().get(0);
                    this.collectionDataBean = collectionDataBean;
                    try {
                        showMessageCount(collectionDataBean.getComment_switch(), this.collectionDataBean.getComment_count());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    if (this.collectionDataBean.getInfo().size() > 0) {
                        List<CollectionBeanSub> sub = this.collectionDataBean.getInfo().get(0).getSub();
                        BreakBeanMain main = this.collectionDataBean.getInfo().get(0).getMain();
                        this.breakBeanMain = main;
                        if (main != null) {
                            this.collection_title = main.getCollection_title();
                            this.tpl_pic = this.breakBeanMain.getTpl_pic();
                            this.info = this.breakBeanMain.getInfo();
                        }
                        this.pn++;
                        ArrayList arrayList = new ArrayList();
                        for (CollectionBeanSub collectionBeanSub : sub) {
                            ExtBean extBean = this.extBean;
                            if (extBean == null || !extBean.isKeepOrginFrom() || TextUtils.isEmpty(this.extBean.getOrginFrom())) {
                                ExtBean extBean2 = this.extBean;
                                if (extBean2 == null || extBean2.get_from_type() != 166) {
                                    ExtBean extBean3 = this.extBean;
                                    if (extBean3 == null || extBean3.get_from_type() != 134) {
                                        collectionBeanSub.set_from(111);
                                        collectionBeanSub.set_from_type(121);
                                    } else {
                                        collectionBeanSub.set_from(13401);
                                        collectionBeanSub.set_from_type(13401);
                                    }
                                } else {
                                    collectionBeanSub.set_from(166);
                                    collectionBeanSub.set_from_type(166);
                                }
                            } else {
                                try {
                                    collectionBeanSub.set_from(Integer.parseInt(this.extBean.getOrginFrom()));
                                    collectionBeanSub.set_from_type(Integer.parseInt(this.extBean.getOrginFrom()));
                                } catch (Exception unused) {
                                }
                            }
                            collectionBeanSub.getExtBean().itemWithParent(this.pageExtBean).setChatId(EventP.ChatId.bannerGameList.name());
                            arrayList.add(collectionBeanSub);
                        }
                        showMain(arrayList);
                    } else if (this.pn == 1) {
                        showLodingFailed();
                        updateListFooter();
                    } else {
                        noMore();
                        updateListFooter();
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                updateListFooter();
                showLodingFailed();
            }
        } finally {
            this.isRequesting = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        updateDownloadView();
    }

    public ExtBean getPageExtBean() {
        return this.pageExtBean;
    }

    public CommonRequestBean getRequestBean(String collection_id, int Page) {
        return RequestBeanUtil.getInstance(this.context).getCollectionRequestBean(collection_id, Page, this.f50858pc, "", "", this.extBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void netWorkException() {
        com.join.android.app.common.manager.a.h().j(this.context, this.netExcption, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void noMore() {
        this.breakListView.setNoMore();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.r0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57945b.lambda$onEventMainThread$0();
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

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
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
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        com.join.mgps.Util.g1.c("onstop");
    }

    @Click
    void relodingimag() {
        this.pn = 1;
        showLoding();
        getBreakData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void serverConnectionException() {
        com.join.android.app.common.manager.a.h().j(this.context, this.netConnectExcption, 1);
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
            this.mPtrFrame.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            List<CollectionBeanSub> list = this.collectionBeanSubs;
            if (list != null || list.size() == 0) {
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
    public void showMain(List<CollectionBeanSub> collectionBeanSubList) {
        if (collectionBeanSubList != null) {
            try {
                if (collectionBeanSubList.size() == 0) {
                    return;
                }
                this.loding_faile.setVisibility(8);
                this.loding_layout.setVisibility(8);
                this.mPtrFrame.setVisibility(0);
                if (this.pn == 2) {
                    this.collectionBeanSubs.clear();
                }
                this.extBean = null;
                updateDownStateList(collectionBeanSubList);
                this.collectionBeanSubs.addAll(collectionBeanSubList);
                if (this.pn == 2) {
                    String str = this.collection_title;
                    if (str != null) {
                        this.title_textview.setText(str);
                    }
                    String str2 = this.info;
                    if (str2 != null) {
                        this.textViewBreak.setText(str2);
                    }
                    String str3 = this.tpl_pic;
                    if (str3 != null) {
                        com.join.android.app.common.utils.l.d(this.imgBreak, R.drawable.banner_normal_icon, str3.trim());
                    }
                    if (collectionBeanSubList.size() < 10) {
                        noMore();
                    }
                }
                this.collectionAdapter.notifyDataSetChanged();
                updateListFooter();
                this.breakListView.postDelayed(new Runnable() { // from class: com.join.mgps.activity.s0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f57978b.expDiscountGame();
                    }
                }, 500L);
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
        com.papa.sim.statistic.t.l(this.context).y2(Where.modetwo, AccountUtil_.getInstance_(this.context).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        try {
            this.downloadView.setDownloadGameNum();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateListFooter() {
        this.breakListView.u();
        this.breakListView.v();
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
        this.breakListView.requestLayout();
        this.collectionAdapter.notifyDataSetChanged();
    }
}
