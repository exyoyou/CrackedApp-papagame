package com.join.mgps.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.MustPlayAd;
import com.join.mgps.dto.MustPlayAdSub;
import com.join.mgps.dto.MustPlayData;
import com.join.mgps.dto.MustPlayNetDataBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.helper.MGFightUtils;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.must_play_layout)
public class MustPlayActivity extends BaseActivity implements AbsListView.OnScrollListener, View.OnClickListener {
    private static final String TAG = "MustPlayActivity";
    private com.join.mgps.adapter.q3 adapter;

    @ViewById
    ImageView back_image;
    private Context context;
    List<DownloadTask> downloadTasks;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;
    private LinearLayout headerView;

    @ViewById
    XListView2 listview;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @ViewById
    PtrClassicFrameLayout mPtrFrame;
    private List<l6.c> mustPlay;
    private LinearLayout palyMustHeaderLayout;
    private SimpleDraweeView playLeft;
    private SimpleDraweeView playRight;
    com.join.mgps.rpc.e recommendClient;

    @ViewById
    ImageView relodingimag;

    @ViewById(R.id.title_normal_search_img)
    ImageView searchImg;

    @ViewById
    TextView title_textview;
    private int pn = 1;
    private int lastVisibleIndex = 0;
    private Map<String, DownloadTask> downloadTasksMap = new ConcurrentHashMap();
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();
    private int firstVisiblePosition = 0;
    boolean isLoading = false;

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            MustPlayActivity mustPlayActivity = MustPlayActivity.this;
            if (mustPlayActivity.isLoading) {
                return;
            }
            mustPlayActivity.loadData(mustPlayActivity.pn);
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            MustPlayActivity mustPlayActivity = MustPlayActivity.this;
            if (mustPlayActivity.isLoading) {
                return;
            }
            mustPlayActivity.pn = 1;
            MustPlayActivity.this.loadData(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.downloadTasks.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.downloadTasksMap.remove(next.getCrc_link_type_val());
                it2.remove();
                for (l6.c cVar : this.mustPlay) {
                    if (!cVar.c()) {
                        for (CollectionBeanSub collectionBeanSub : cVar.a()) {
                            if (collectionBeanSub.getMod_info() != null) {
                                DownloadTask downloadTask2 = this.downloadTasksMap.get(collectionBeanSub.getMod_info().getMod_game_id());
                                DownloadTask downloadTask3 = this.downloadTasksMap.get(collectionBeanSub.getCrc_sign_id());
                                if (downloadTask2 == null && downloadTask3 == null) {
                                    collectionBeanSub.setDownloadTask(null);
                                } else if (downloadTask2 != null) {
                                    collectionBeanSub.setDownloadTask(downloadTask2);
                                } else if (downloadTask3 != null) {
                                    collectionBeanSub.setDownloadTask(downloadTask3);
                                } else if (collectionBeanSub.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                    collectionBeanSub.setDownloadTask(null);
                                }
                            } else if (collectionBeanSub.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                collectionBeanSub.setDownloadTask(downloadTask);
                            }
                        }
                    }
                }
                break;
            }
        }
        this.listview.requestLayout();
        this.adapter.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            map.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
            this.listview.requestLayout();
            this.adapter.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.Y4(this.downloadTasks, downloadTask);
        if (this.downloadTasksMap.containsKey(downloadTask.getCrc_link_type_val())) {
            this.downloadTasksMap.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
        } else {
            this.downloadTasks.add(downloadTask);
            this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        this.adapter.notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.downloadTasks.add(downloadTask);
            this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        DownloadTask downloadTask2 = this.downloadTasksMap.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.listview.requestLayout();
        this.adapter.notifyDataSetChanged();
    }

    private void updateDowStateList(DownloadTask downloadTask) {
        try {
            for (l6.c cVar : this.mustPlay) {
                if (!cVar.c()) {
                    for (CollectionBeanSub collectionBeanSub : cVar.a()) {
                        if (collectionBeanSub.getMod_info() == null) {
                            if (collectionBeanSub.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                                collectionBeanSub.setDownloadTask(downloadTask);
                                break;
                            }
                        } else {
                            ModInfoBean mod_info = collectionBeanSub.getMod_info();
                            DownloadTask downloadTask2 = this.downloadTasksMap.get(mod_info.getMain_game_id());
                            boolean z10 = true;
                            boolean z11 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                            DownloadTask downloadTask3 = this.downloadTasksMap.get(mod_info.getMod_game_id());
                            if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                                z10 = false;
                            }
                            if (!z10 || !z11) {
                                if (z10) {
                                    if (collectionBeanSub.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getMod_info().getMod_game_id())) {
                                        collectionBeanSub.setDownloadTask(downloadTask);
                                        break;
                                    }
                                } else if (z11) {
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
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisibleIndex; i10++) {
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) this.listview.getItemAtPosition(i10);
            if (collectionBeanSub != null && (downloadTask = collectionBeanSub.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.listview.getChildAt(i10 - this.firstVisiblePosition);
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
    void afterview() {
        this.recommendClient = com.join.mgps.rpc.impl.d.O1();
        try {
            this.context = this;
            com.join.mgps.Util.j0.a().d(this);
            List<DownloadTask> listD = q5.f.M().d();
            this.downloadTasks = listD;
            if (listD != null && listD.size() > 0) {
                for (DownloadTask downloadTask : this.downloadTasks) {
                    this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
            this.title_textview.setText("必玩游戏");
            this.searchImg.setVisibility(0);
            this.downloadView.setVisibility(0);
            getDownloadTaskInfo();
            this.mustPlay = new ArrayList();
            this.adapter = new com.join.mgps.adapter.q3(this, this.mustPlay);
            LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this).inflate(R.layout.layout_play_must_header, (ViewGroup) null);
            this.headerView = linearLayout;
            this.palyMustHeaderLayout = (LinearLayout) linearLayout.findViewById(R.id.palyMustHeaderLayout);
            this.playLeft = (SimpleDraweeView) this.headerView.findViewById(R.id.playLeft);
            this.playRight = (SimpleDraweeView) this.headerView.findViewById(R.id.playRight);
            this.playLeft.setOnClickListener(this);
            this.playRight.setOnClickListener(this);
            this.listview.addHeaderView(this.headerView);
            this.listview.setAdapter((ListAdapter) this.adapter);
            this.listview.setPreLoadCount(15);
            this.listview.setPullLoadEnable(new a());
            this.listview.setPullRefreshEnable(new b());
            loadData(this.pn);
            this.listview.setOnScrollListener(this);
        } catch (Exception unused) {
        }
    }

    @Click
    void back_image() {
        finish();
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                this.downloadedMap.put(crc_link_type_val, task);
            }
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                return;
            }
            this.downloadingMap.put(crc_link_type_val, task);
            return;
        }
        if (from == 3) {
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.remove(crc_link_type_val);
                return;
            }
            return;
        }
        if (from != 5) {
            if (from == 6) {
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 7) {
                if (this.downloadedMap.containsKey(crc_link_type_val)) {
                    this.downloadedMap.remove(crc_link_type_val);
                }
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 10) {
                if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                    this.downloadedMap.put(crc_link_type_val, task);
                }
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    return;
                }
                this.downloadingMap.put(crc_link_type_val, task);
                return;
            }
            if (from != 11) {
                return;
            }
        } else if (this.downloadedMap.containsKey(crc_link_type_val)) {
            this.downloadedMap.remove(crc_link_type_val);
        }
        if (this.downloadingMap.containsKey(crc_link_type_val)) {
            this.downloadingMap.remove(crc_link_type_val);
        }
    }

    @Background
    void getDownloadTaskInfo() {
        List<DownloadTask> listR = q5.f.M().r();
        List<DownloadTask> listQ = q5.f.M().q();
        if (listQ != null && listQ.size() > 0) {
            for (DownloadTask downloadTask : listQ) {
                this.downloadedMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (listR != null && listR.size() > 0) {
            for (DownloadTask downloadTask2 : listR) {
                this.downloadingMap.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    @Background
    void loadData(int pnNowLoad) {
        try {
            if (!com.join.android.app.common.utils.m.j(this.context) || this.isLoading) {
                updateListFooter();
                showLodingFailed();
                return;
            }
            try {
                try {
                    this.isLoading = true;
                    ArrayList arrayList = new ArrayList();
                    ResultMainBean<MustPlayData> resultMainBeanH0 = this.recommendClient.h0(RequestBeanUtil.getInstance(getApplicationContext()).getMustplay(pnNowLoad));
                    if (resultMainBeanH0 == null) {
                        showLodingFailed();
                    } else if (resultMainBeanH0.getFlag() == 1) {
                        List<MustPlayAd> head_ad = resultMainBeanH0.getMessages().getData().getHead_ad();
                        if (head_ad != null && head_ad.size() > 0) {
                            showHeaderView(head_ad);
                        }
                        List<MustPlayNetDataBean> list = resultMainBeanH0.getMessages().getData().getList();
                        if (list == null) {
                            updateListFooter();
                        } else if (list.size() > 0) {
                            for (MustPlayNetDataBean mustPlayNetDataBean : list) {
                                arrayList.add(new l6.c(true, mustPlayNetDataBean.getTitle()));
                                List<CollectionBeanSub> gamelist = mustPlayNetDataBean.getGamelist();
                                ArrayList arrayList2 = new ArrayList();
                                Iterator<CollectionBeanSub> it2 = gamelist.iterator();
                                while (it2.hasNext()) {
                                    arrayList2.add(it2.next());
                                    if (arrayList2.size() == 4) {
                                        arrayList.add(new l6.c(false, (List<CollectionBeanSub>) arrayList2));
                                        arrayList2 = new ArrayList();
                                    }
                                }
                                if (arrayList2.size() > 0) {
                                    arrayList.add(new l6.c(false, (List<CollectionBeanSub>) arrayList2));
                                }
                            }
                            int i10 = this.pn + pnNowLoad;
                            this.pn = i10;
                            updateList(arrayList, i10);
                        } else {
                            noMore();
                        }
                    } else {
                        noMore();
                    }
                } catch (Throwable th) {
                    this.isLoading = false;
                    throw th;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showLodingFailed();
            }
            this.isLoading = false;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Click
    void mg_loading() {
        this.pn = 1;
        loadData(1);
    }

    @UiThread
    void noMore() {
        this.listview.setNoMore();
    }

    @Override // android.view.View.OnClickListener
    @Click({R.id.playLeft, R.id.playRight, R.id.title_normal_search_img, R.id.title_normal_download_cdv})
    public void onClick(View v10) {
        switch (v10.getId()) {
            case R.id.playLeft /* 2131366493 */:
                IntentUtil.getInstance().intentActivity(this, (IntentDateBean) this.playLeft.getTag());
                break;
            case R.id.playRight /* 2131366494 */:
                IntentUtil.getInstance().intentActivity(this, (IntentDateBean) this.playRight.getTag());
                break;
            case R.id.title_normal_download_cdv /* 2131367819 */:
                IntentUtil.getInstance().goDownloadCenterActivity(this);
                break;
            case R.id.title_normal_search_img /* 2131367821 */:
                IntentUtil.getInstance().goSearchHintActivity(this);
                com.papa.sim.statistic.t.l(this.context).y2(Where.mustplay, AccountUtil_.getInstance_(this.context).getUid());
                break;
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        changeDownloadTaskNumber(downloadTaskA, downloadTaskEvent.c());
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.w7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f58196b.lambda$onEventMainThread$0();
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
                Map<String, DownloadTask> map = this.downloadTasksMap;
                if (map == null || map.isEmpty()) {
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
        com.join.mgps.adapter.q3 q3Var = this.adapter;
        if (q3Var != null) {
            q3Var.notifyDataSetChanged();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.lastVisibleIndex = (visibleItemCount + firstVisibleItem) - 1;
        this.firstVisiblePosition = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
    }

    @Override // com.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    @Click
    void relodingimag() {
        this.pn = 1;
        showLoding();
        loadData(1);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    @UiThread
    void showHeaderView(List<MustPlayAd> head_ad) {
        for (int i10 = 0; i10 < 2; i10++) {
            MustPlayAd mustPlayAd = head_ad.get(i10);
            this.palyMustHeaderLayout.setVisibility(0);
            if (i10 == 0) {
                com.join.android.app.common.utils.l.h(this.playLeft, mustPlayAd.getMain().getPic_remote());
                IntentDateBean intentDateBean = new IntentDateBean();
                MustPlayAdSub mustPlayAdSub = mustPlayAd.getSub().get(0);
                if (mustPlayAdSub != null) {
                    intentDateBean.setLink_type_val(mustPlayAdSub.getLink_type_val());
                    intentDateBean.setJump_type(Integer.parseInt(mustPlayAdSub.getJump_type()));
                    intentDateBean.setCrc_link_type_val(mustPlayAdSub.getCrc_link_type_val());
                    intentDateBean.setLink_type(Integer.parseInt(mustPlayAdSub.getLink_type()));
                    intentDateBean.setTpl_type(mustPlayAdSub.getTpl_type());
                }
                this.playLeft.setTag(intentDateBean);
                this.playLeft.setVisibility(0);
            } else if (i10 == 1) {
                com.join.android.app.common.utils.l.h(this.playRight, mustPlayAd.getMain().getPic_remote());
                IntentDateBean intentDateBean2 = new IntentDateBean();
                MustPlayAdSub mustPlayAdSub2 = mustPlayAd.getSub().get(0);
                if (mustPlayAdSub2 != null) {
                    intentDateBean2.setLink_type_val(mustPlayAdSub2.getLink_type_val());
                    intentDateBean2.setJump_type(Integer.parseInt(mustPlayAdSub2.getJump_type()));
                    intentDateBean2.setCrc_link_type_val(mustPlayAdSub2.getCrc_link_type_val());
                    intentDateBean2.setLink_type(Integer.parseInt(mustPlayAdSub2.getLink_type()));
                    intentDateBean2.setTpl_type(mustPlayAdSub2.getTpl_type());
                }
                this.playRight.setTag(intentDateBean2);
                this.playRight.setVisibility(0);
            }
        }
    }

    @UiThread
    void showLoding() {
        this.loding_layout.setVisibility(0);
        this.loding_faile.setVisibility(8);
    }

    @UiThread
    void showLodingFailed() {
        List<l6.c> list = this.mustPlay;
        if (list == null || list.size() == 0) {
            this.loding_faile.setVisibility(0);
            this.loding_layout.setVisibility(8);
            this.mPtrFrame.setVisibility(8);
        }
    }

    @UiThread
    void updateDownloadView() {
        this.downloadView.setDownloadGameNum();
    }

    @UiThread
    void updateList(List<l6.c> mustPlayx, int pn) {
        if (mustPlayx == null || mustPlayx.size() == 0) {
            return;
        }
        com.join.mgps.Util.g1.c("mustplay mustPlayx.size= " + mustPlayx.size() + " mustPlay.size=" + this.mustPlay.size() + "   pn=" + pn);
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.mPtrFrame.setVisibility(0);
        for (l6.c cVar : mustPlayx) {
            if (!cVar.c()) {
                MGFightUtils.updateStatus(this, cVar.a(), this.downloadTasks, this.downloadTasksMap);
            }
        }
        if (pn == 2) {
            this.mustPlay.clear();
            this.mustPlay.addAll(mustPlayx);
        } else {
            this.mustPlay.addAll(mustPlayx);
        }
        this.adapter.c(this.mustPlay);
        updateListFooter();
    }

    @UiThread
    void updateListFooter() {
        this.listview.u();
        this.listview.v();
        this.isLoading = false;
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
