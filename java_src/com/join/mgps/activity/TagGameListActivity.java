package com.join.mgps.activity;

import android.content.Context;
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
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.helper.MGFightUtils;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
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
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.category_collection_rank)
public class TagGameListActivity extends BaseFragmentActivity implements AbsListView.OnScrollListener {

    @ViewById
    ImageView back_image;
    private com.join.mgps.adapter.n collectionAdapter;
    private List<CollectionBeanSub> collectionBeanSubList;

    @ViewById
    ImageView comment;

    @ViewById
    RelativeLayout commentParent;

    @Extra
    String companyName;
    private Context context;
    List<DownloadTask> downloadTasks;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;

    @Extra
    int from;

    @Extra
    boolean isSingle;

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
    com.join.mgps.rpc.k rpcGameClient;

    @ViewById(R.id.title_normal_search_img)
    ImageView searchImg;

    @Extra
    String tag;

    @Extra
    int tagId;

    @Extra
    String tagType;

    @ViewById
    TextView title_textview;
    private int pn = 1;
    private int lastVisibleIndex = 0;
    private Map<String, DownloadTask> downloadTasksMap = new ConcurrentHashMap();
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();
    private String collection_title = "";
    private int firstVisiblePosition = 0;
    private boolean isRequesting = false;

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (TagGameListActivity.this.isRequesting) {
                return;
            }
            TagGameListActivity.this.getListData();
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (TagGameListActivity.this.isRequesting) {
                return;
            }
            TagGameListActivity.this.pn = 1;
            TagGameListActivity.this.getListData();
        }
    }

    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            if (i10 > TagGameListActivity.this.collectionBeanSubList.size() || i10 < 0) {
                return;
            }
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) TagGameListActivity.this.collectionBeanSubList.get(i10);
            if (collectionBeanSub.getGame_id() != null) {
                IntentUtil.getInstance().intentActivity(TagGameListActivity.this.context, collectionBeanSub.getIntentDataBean());
            }
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
                for (CollectionBeanSub collectionBeanSub : this.collectionBeanSubList) {
                    if (collectionBeanSub.getMod_info() != null) {
                        DownloadTask downloadTask2 = this.downloadTasksMap.get(collectionBeanSub.getMod_info().getMod_game_id());
                        DownloadTask downloadTask3 = this.downloadTasksMap.get(collectionBeanSub.getGame_id());
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
        this.rankListView.requestLayout();
        this.collectionAdapter.notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            this.collectionAdapter.notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.Y4(this.downloadTasks, downloadTask);
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map != null) {
            if (map.containsKey(downloadTask.getCrc_link_type_val())) {
                this.downloadTasksMap.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
            } else {
                this.downloadTasks.add(downloadTask);
                this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        updateDowStateList(downloadTask);
        this.collectionAdapter.notifyDataSetChanged();
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
        this.rankListView.requestLayout();
        this.collectionAdapter.notifyDataSetChanged();
    }

    private void updateDowStateList(DownloadTask downloadTask) {
        try {
            for (CollectionBeanSub collectionBeanSub : this.collectionBeanSubList) {
                if (collectionBeanSub.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSub.getMod_info();
                    DownloadTask downloadTask2 = this.downloadTasksMap.get(mod_info.getMain_game_id());
                    boolean z10 = true;
                    boolean z11 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.downloadTasksMap.get(mod_info.getMod_game_id());
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
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        try {
            com.join.mgps.Util.j0.a().d(this);
            this.context = this;
            this.downloadTasks = q5.f.M().d();
            getDownloadTaskInfo();
            this.searchImg.setVisibility(0);
            this.downloadView.setVisibility(0);
            List<DownloadTask> list = this.downloadTasks;
            if (list != null && list.size() > 0) {
                for (DownloadTask downloadTask : this.downloadTasks) {
                    this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
            this.collectionAdapter = new com.join.mgps.adapter.n(this.context);
            this.collectionBeanSubList = new ArrayList();
            this.collectionBeanSubList = this.collectionAdapter.b();
            showLoding();
            getListData();
            this.rankListView.setPreLoadCount(10);
            this.rankListView.setPullLoadEnable(new a());
            this.rankListView.setPullRefreshEnable(new b());
            this.rankListView.setOnItemClickListener(new c());
            this.rankListView.setOnScrollListener(this);
            this.rankListView.setAdapter((ListAdapter) this.collectionAdapter);
        } catch (Exception e10) {
            e10.printStackTrace();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
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

    public ResponseModel<List<CollectionBeanSub>> getGame_tag_game_list() {
        RequestModel requestModel = new RequestModel(this.context);
        requestModel.setArgs(new RequestGameIdArgs(this.pn, this.tagId + "", this.tag, this.tagType));
        return this.rpcGameClient.b0(requestModel.makeSign());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getListData() {
        List<CollectionBeanSub> data;
        ArrayList<CollectionBeanSub> arrayList = new ArrayList();
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            updateListFooter();
            showLodingFailed();
            return;
        }
        this.isRequesting = true;
        try {
            try {
                if (this.from == 2) {
                    com.papa.sim.statistic.t.l(this.context).R1(Event.goGameListPage, new Ext().setFrom("2"));
                    data = getGame_tag_game_list().getData();
                } else {
                    data = getRequestBean().getMessages().getData();
                }
                if (data != null) {
                    Iterator<CollectionBeanSub> it2 = data.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(it2.next());
                    }
                }
                if (arrayList.size() > 0) {
                    this.pn++;
                } else {
                    noMore();
                }
                ArrayList arrayList2 = new ArrayList();
                for (CollectionBeanSub collectionBeanSub : arrayList) {
                    collectionBeanSub.set_from(111);
                    collectionBeanSub.set_from_type(121);
                    arrayList2.add(collectionBeanSub);
                }
                showMain(arrayList2);
                updateListFooter();
            } catch (Exception e10) {
                e10.printStackTrace();
                updateListFooter();
                showLodingFailed();
            }
        } finally {
            this.isRequesting = false;
        }
    }

    public ResultMainBean<List<CollectionBeanSub>> getRequestBean() {
        int i10 = this.from;
        if (i10 == 0) {
            return this.isSingle ? this.rpcClient.y1(RequestBeanUtil.getInstance(this.context).getTagGameListData(this.pn, this.tagId)) : this.rpcClient.y0(RequestBeanUtil.getInstance(this.context).getTagGameListData(this.pn, this.tagId));
        }
        if (i10 == 1) {
            return this.rpcClient.E0(RequestBeanUtil.getInstance(this.context).getCompanyGameListData(this.pn, this.companyName));
        }
        return null;
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
        changeDownloadTaskNumber(downloadTaskA, downloadTaskEvent.c());
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.x9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f58238b.lambda$onEventMainThread$0();
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
        com.join.mgps.adapter.n nVar = this.collectionAdapter;
        if (nVar != null) {
            nVar.notifyDataSetChanged();
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        updateDownloadView();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.lastVisibleIndex = (visibleItemCount + firstVisibleItem) - 1;
        this.firstVisiblePosition = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
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
        String str;
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
                MGFightUtils.updateStatus(this, subList, this.downloadTasks, this.downloadTasksMap);
                this.collectionBeanSubList.addAll(subList);
                if (this.pn != 2) {
                    this.collectionAdapter.notifyDataSetChanged();
                    return;
                }
                int i10 = this.from;
                if (i10 == 0) {
                    String str2 = this.tag;
                    if (str2 != null) {
                        this.title_textview.setText(str2);
                    }
                } else if (i10 == 1) {
                    String str3 = this.companyName;
                    if (str3 != null) {
                        this.title_textview.setText(str3);
                    }
                } else if (i10 == 2 && (str = this.tag) != null) {
                    this.title_textview.setText(str);
                }
                this.collectionBeanSubList.size();
                this.collectionAdapter.notifyDataSetChanged();
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

    private void updateDowStateList(List<CollectionBeanSub> SearchDataBeanList) {
        if (this.downloadTasks == null) {
            return;
        }
        for (CollectionBeanSub collectionBeanSub : SearchDataBeanList) {
            for (DownloadTask downloadTask : this.downloadTasks) {
                if (collectionBeanSub.getMod_info() != null) {
                    ModInfoBean mod_info = collectionBeanSub.getMod_info();
                    DownloadTask downloadTask2 = this.downloadTasksMap.get(mod_info.getMain_game_id());
                    boolean z10 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                    DownloadTask downloadTask3 = this.downloadTasksMap.get(mod_info.getMod_game_id());
                    boolean z11 = downloadTask3 != null && downloadTask3.getStatus() == 5;
                    if (z11 && z10) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                        }
                    } else if (z11) {
                        if (collectionBeanSub.getMod_info() != null && downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getMod_info().getMod_game_id())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                        }
                    } else if (z10) {
                        if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                        }
                    } else {
                        DownloadTask downloadTaskG = collectionBeanSub.getMod_info() != null ? q5.f.M().G(collectionBeanSub.getMod_info().getMod_game_id()) : null;
                        if (downloadTaskG == null) {
                            downloadTaskG = q5.f.M().G(collectionBeanSub.getCrc_sign_id());
                        }
                        if (downloadTaskG != null && downloadTask.getCrc_link_type_val().equals(downloadTaskG.getCrc_link_type_val())) {
                            collectionBeanSub.setDownloadTask(downloadTask);
                        }
                    }
                } else if (downloadTask.getCrc_link_type_val().equals(collectionBeanSub.getCrc_sign_id())) {
                    collectionBeanSub.setDownloadTask(downloadTask);
                }
            }
        }
    }
}
