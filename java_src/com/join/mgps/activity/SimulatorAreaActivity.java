package com.join.mgps.activity;

import android.content.Context;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SimulatorAreaDataBean;
import com.join.mgps.enums.ConstantIntEnum;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
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
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_simulator_area)
public class SimulatorAreaActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private com.join.mgps.adapter.h7 mAdapter;
    private com.join.mgps.rpc.impl.d mRpcClient;

    @Extra
    String simulatorTitle;

    @ViewById
    XListView2 simulator_listview;

    @ViewById
    ImageView title_normal_search_img;

    @ViewById
    TextView title_textview;
    private Context mContext = this;

    @Extra
    int simulatorType = ConstantIntEnum.FBA.value();
    private List<com.join.mgps.adapter.h7.f> mListData = new ArrayList();
    private int pn = 1;
    private String tag = "m1";
    private boolean isLoading = false;
    private int firstVisiblePosition = 0;
    private int lastVisibleIndex = 0;
    private boolean SCROLLING = false;
    private List<Map<String, Object>> data_list = null;
    private List<SimulatorAreaDataBean.GameTypeBean> gameTypeBeanList = new ArrayList();
    private List<CollectionBeanSub> allDownloadAppBeans = new ArrayList();
    int _from = 0;
    int _from_type = 0;

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (SimulatorAreaActivity.this.isLoading) {
                return;
            }
            SimulatorAreaActivity.this.tag = "m2";
            SimulatorAreaActivity simulatorAreaActivity = SimulatorAreaActivity.this;
            simulatorAreaActivity.loadData(simulatorAreaActivity.tag, SimulatorAreaActivity.this.pn);
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (SimulatorAreaActivity.this.isLoading) {
                return;
            }
            SimulatorAreaActivity.this.pn = 1;
            SimulatorAreaActivity.this.tag = "m1";
            SimulatorAreaActivity.this.allDownloadAppBeans.clear();
            SimulatorAreaActivity simulatorAreaActivity = SimulatorAreaActivity.this;
            simulatorAreaActivity.loadData(simulatorAreaActivity.tag, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    private void receiveDelete(DownloadTask downloadTask) {
        updateDownStateList(this.allDownloadAppBeans);
        this.mAdapter.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        try {
            updateDownStateList(this.allDownloadAppBeans);
            this.mAdapter.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        updateDownStateList(this.allDownloadAppBeans);
        this.mAdapter.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        updateDownStateList(this.allDownloadAppBeans);
        this.mAdapter.notifyDataSetChanged();
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

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisibleIndex; i10++) {
            com.join.mgps.adapter.h7.f fVar = (com.join.mgps.adapter.h7.f) this.simulator_listview.getItemAtPosition(i10);
            if (fVar != null && fVar.f62290b == 2 && (downloadTask = ((CollectionBeanSub) fVar.f62289a).getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.simulator_listview.getChildAt(i10 - this.firstVisiblePosition);
                if (childAt.getTag() instanceof com.join.mgps.adapter.n.a) {
                    com.join.mgps.adapter.n.a aVar = (com.join.mgps.adapter.n.a) childAt.getTag();
                    try {
                        DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                        if (downloadTaskG == null) {
                            return;
                        }
                        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTaskG.getSize() == 0) {
                            aVar.f62793i.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        } else {
                            aVar.f62793i.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        }
                        if (downloadTaskG.getStatus() == 12) {
                            aVar.f62796l.setProgress((int) downloadTaskG.getProgress());
                        } else {
                            aVar.f62795k.setProgress((int) downloadTaskG.getProgress());
                        }
                        if (downloadTaskG.getStatus() == 2) {
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
    void afterviews() {
        this.mRpcClient = com.join.mgps.rpc.impl.d.O1();
        org.greenrobot.eventbus.c.f().v(this.mContext);
        this.title_normal_search_img.setVisibility(0);
        this.downloadView.setVisibility(0);
        String str = this.simulatorTitle;
        if (str == null || str.isEmpty()) {
            this.title_textview.setText("街机");
        } else {
            this.title_textview.setText(this.simulatorTitle);
        }
        getDownloadTaskInfo();
        this.simulator_listview.setPreLoadCount(10);
        this.simulator_listview.setVerticalScrollBarEnabled(false);
        this.simulator_listview.setPullLoadEnable(new a());
        this.simulator_listview.setPullRefreshEnable(new b());
        this.simulator_listview.setOnScrollListener(this);
        com.join.mgps.adapter.h7 h7Var = new com.join.mgps.adapter.h7(this.mContext, this.simulatorType, this.title_textview.getText().toString());
        this.mAdapter = h7Var;
        this.mListData = h7Var.g();
        this.simulator_listview.setAdapter((ListAdapter) this.mAdapter);
        loadData(this.tag, 1);
    }

    @Click
    void back_image() {
        finish();
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadData(String tag, int pn) {
        ResultMainBean<SimulatorAreaDataBean> resultMainBeanK1;
        if (!com.join.android.app.common.utils.m.j(this.mContext.getApplicationContext())) {
            showFailLayout();
            return;
        }
        try {
            this.isLoading = true;
            if (this.simulatorType == ConstantIntEnum.FBA.value()) {
                resultMainBeanK1 = this.mRpcClient.J1(RequestBeanUtil.getInstance(this.mContext).getSimulatorIndexRequestBean(tag, pn));
            } else if (this.simulatorType == ConstantIntEnum.FC.value()) {
                resultMainBeanK1 = this.mRpcClient.L1(RequestBeanUtil.getInstance(this.mContext).getSimulatorIndexRequestBean(tag, pn));
            } else if (this.simulatorType == ConstantIntEnum.GBA.value()) {
                resultMainBeanK1 = this.mRpcClient.M1(RequestBeanUtil.getInstance(this.mContext).getSimulatorIndexRequestBean(tag, pn));
            } else {
                resultMainBeanK1 = this.simulatorType == ConstantIntEnum.PSP.value() ? this.mRpcClient.K1(RequestBeanUtil.getInstance(this.mContext).getSimulatorIndexRequestBean(tag, pn)) : this.mRpcClient.J1(RequestBeanUtil.getInstance(this.mContext).getSimulatorIndexRequestBean(tag, pn));
            }
            if (resultMainBeanK1 == null || resultMainBeanK1.getFlag() != 1 || resultMainBeanK1.getMessages() == null) {
                if (this.mAdapter.getCount() == 0) {
                    showFailLayout();
                    return;
                } else {
                    updateListFooter(false);
                    return;
                }
            }
            SimulatorAreaDataBean data = resultMainBeanK1.getMessages().getData();
            if (data != null) {
                showUi(data);
            } else {
                showFailLayout();
            }
        } catch (Exception e10) {
            showFailLayout();
            e10.printStackTrace();
        }
    }

    @Click
    void loding_faile() {
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(0);
        this.simulator_listview.setVisibility(8);
        this.pn = 1;
        this.tag = "m1";
        loadData("m1", 1);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this.mContext);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.m9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57492b.lambda$onEventMainThread$0();
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
        com.join.mgps.adapter.h7 h7Var = this.mAdapter;
        if (h7Var != null) {
            h7Var.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
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
        this.SCROLLING = scrollState != 0;
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showFailLayout() {
        this.loding_faile.setVisibility(0);
        this.loding_layout.setVisibility(8);
        this.simulator_listview.setVisibility(8);
        updateListFooter(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:74:0x0270  */
    @UiThread
    public void showUi(SimulatorAreaDataBean simulatorAreaDataBean) {
        List<SimulatorAreaDataBean.SimulatorFbaEncyclopediasBean> simulator_fba_encyclopedias;
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
        boolean z10 = false;
        z10 = false;
        this.simulator_listview.setVisibility(0);
        if (!this.tag.equals("m1")) {
            List<SimulatorAreaDataBean.CollectionRecommendBean> collection_recommend = simulatorAreaDataBean.getCollection_recommend();
            if (collection_recommend != null && collection_recommend.size() > 0) {
                for (int i10 = 0; i10 < collection_recommend.size(); i10++) {
                    List<CollectionBeanSub> game_list = collection_recommend.get(i10).getGame_list();
                    if (game_list != null && game_list.size() > 0) {
                        this.mListData.add(new com.join.mgps.adapter.h7.f(collection_recommend.get(i10).getCollection_info().getTitle(), 4));
                        for (CollectionBeanSub collectionBeanSub : game_list) {
                            collectionBeanSub.set_from(this._from);
                            collectionBeanSub.set_from_type(this._from_type);
                            this.mListData.add(new com.join.mgps.adapter.h7.f(collectionBeanSub, 2));
                            this.allDownloadAppBeans.add(collectionBeanSub);
                        }
                        this.mListData.add(new com.join.mgps.adapter.h7.f("", 6));
                    }
                }
            }
            updateDownStateList(this.allDownloadAppBeans);
            if (this.tag.equals("m2")) {
                this.pn++;
            }
            updateListFooter(z10);
        }
        List<CollectionBeanSub> top_5 = simulatorAreaDataBean.getTop_5();
        List<SimulatorAreaDataBean.SubjectListBean> subject_list = simulatorAreaDataBean.getSubject_list();
        List<CollectionBeanSub> the_new_release = simulatorAreaDataBean.getThe_new_release();
        new ArrayList();
        if (this.simulatorType == ConstantIntEnum.FBA.value()) {
            this._from = 113;
            this._from_type = 123;
            simulator_fba_encyclopedias = simulatorAreaDataBean.getSimulator_fba_encyclopedias();
        } else if (this.simulatorType == ConstantIntEnum.FC.value()) {
            this._from = 115;
            this._from_type = 125;
            simulator_fba_encyclopedias = simulatorAreaDataBean.getSimulator_fc_encyclopedias();
        } else if (this.simulatorType == ConstantIntEnum.GBA.value()) {
            this._from = 116;
            this._from_type = 126;
            simulator_fba_encyclopedias = simulatorAreaDataBean.getSimulator_gba_encyclopedias();
        } else if (this.simulatorType == ConstantIntEnum.PSP.value()) {
            simulator_fba_encyclopedias = simulatorAreaDataBean.getSimulator_psp_encyclopedias();
            this._from = 114;
            this._from_type = 124;
        } else {
            simulator_fba_encyclopedias = simulatorAreaDataBean.getSimulator_fba_encyclopedias();
        }
        this.gameTypeBeanList = simulatorAreaDataBean.getGame_type();
        try {
            this.mListData.clear();
            this.mListData.add(new com.join.mgps.adapter.h7.f("", 6));
            if (top_5 != null && top_5.size() > 0) {
                this.mListData.add(new com.join.mgps.adapter.h7.f("排行榜", 1));
                for (CollectionBeanSub collectionBeanSub2 : top_5) {
                    collectionBeanSub2.set_from(this._from);
                    collectionBeanSub2.set_from_type(this._from_type);
                    this.mListData.add(new com.join.mgps.adapter.h7.f(collectionBeanSub2, 2));
                    this.allDownloadAppBeans.add(collectionBeanSub2);
                }
                this.mListData.add(new com.join.mgps.adapter.h7.f("", 3));
                this.mListData.add(new com.join.mgps.adapter.h7.f("", 6));
            }
            if (subject_list != null && subject_list.size() > 0) {
                this.mListData.add(new com.join.mgps.adapter.h7.f("精选专题", 4));
                this.mListData.add(new com.join.mgps.adapter.h7.f("", 8));
                Iterator<SimulatorAreaDataBean.SubjectListBean> it2 = subject_list.iterator();
                while (it2.hasNext()) {
                    this.mListData.add(new com.join.mgps.adapter.h7.f(it2.next(), 7));
                    this.mListData.add(new com.join.mgps.adapter.h7.f("", 8));
                }
                this.mListData.add(new com.join.mgps.adapter.h7.f("", 6));
            }
            if (the_new_release != null && the_new_release.size() > 0) {
                this.mListData.add(new com.join.mgps.adapter.h7.f("最新上架", 4));
                for (CollectionBeanSub collectionBeanSub3 : the_new_release) {
                    collectionBeanSub3.set_from(this._from);
                    collectionBeanSub3.set_from_type(this._from_type);
                    this.mListData.add(new com.join.mgps.adapter.h7.f(collectionBeanSub3, 2));
                    this.allDownloadAppBeans.add(collectionBeanSub3);
                }
                this.mListData.add(new com.join.mgps.adapter.h7.f("", 6));
            }
            if (simulator_fba_encyclopedias != null && simulator_fba_encyclopedias.size() > 0) {
                this.mListData.add(new com.join.mgps.adapter.h7.f("模拟器百科", 4));
                this.mListData.add(new com.join.mgps.adapter.h7.f("", 8));
                Iterator<SimulatorAreaDataBean.SimulatorFbaEncyclopediasBean> it3 = simulator_fba_encyclopedias.iterator();
                while (it3.hasNext()) {
                    this.mListData.add(new com.join.mgps.adapter.h7.f(it3.next(), 9));
                    this.mListData.add(new com.join.mgps.adapter.h7.f("", 8));
                }
                this.mListData.add(new com.join.mgps.adapter.h7.f("", 6));
            }
            this.mAdapter.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        z10 = true;
        updateDownStateList(this.allDownloadAppBeans);
        if (this.tag.equals("m2")) {
            this.pn++;
        }
        updateListFooter(z10);
    }

    @Click
    void title_normal_download_cdv() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Click
    void title_normal_search_img() {
        SearchHintActivity_.intent(this).start();
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
    public void updateListFooter(boolean isCanMore) {
        List<SimulatorAreaDataBean.GameTypeBean> list;
        this.isLoading = false;
        this.simulator_listview.u();
        this.simulator_listview.v();
        if (isCanMore) {
            return;
        }
        this.simulator_listview.setNoMore();
        if (this.mAdapter.h() || (list = this.gameTypeBeanList) == null || list.size() <= 0) {
            return;
        }
        this.mListData.add(new com.join.mgps.adapter.h7.f("游戏分类", 4));
        Iterator<SimulatorAreaDataBean.GameTypeBean> it2 = this.gameTypeBeanList.iterator();
        while (it2.hasNext()) {
            this.mListData.add(new com.join.mgps.adapter.h7.f(it2.next(), 5));
        }
        this.mAdapter.notifyDataSetChanged();
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
}
