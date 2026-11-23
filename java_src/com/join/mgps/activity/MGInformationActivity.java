package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.bykv.vk.component.ttvideo.player.C;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.InformationListDataBean;
import com.join.mgps.dto.InformationMainBean;
import com.join.mgps.dto.InformationMessageBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.information_layout)
public class MGInformationActivity extends BaseFragmentActivity implements AbsListView.OnScrollListener {
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
    private com.join.mgps.adapter.h3 mgInformationAdapter;
    private int pn;
    com.join.mgps.rpc.e rpcClient;

    @ViewById(R.id.title_normal_search_img)
    ImageView searchImg;

    @ViewById
    TextView title_textview;

    @ViewById
    XListView2 xListView;
    private List<InformationListDataBean> informationListDataBeanList = new ArrayList();
    private boolean isRequesting = false;
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();
    ExtBean pageExtBean = new ExtBean().setChatId("bigManageGameList");

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (MGInformationActivity.this.isRequesting) {
                return;
            }
            MGInformationActivity.this.getInformationData();
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (MGInformationActivity.this.isRequesting) {
                return;
            }
            MGInformationActivity.this.pn = 1;
            MGInformationActivity.this.getInformationData();
        }
    }

    private void finishM() {
        Activity splashActivity = IntentUtil.getInstance().getSplashActivity();
        if (splashActivity != null) {
            splashActivity.finish();
            IntentUtil.getInstance().setSplashActivity(null);
            Intent intent = new Intent();
            intent.setClass(splashActivity, MGMainActivity_.class);
            intent.setFlags(67108864);
            intent.addFlags(C.ENCODING_PCM_A_LAW);
            startActivity(intent);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    @AfterViews
    void AfterViews() {
        try {
            this.pageExtBean.setParent(this.extBean);
            this.rpcClient = com.join.mgps.rpc.impl.d.O1();
            getDownloadTaskInfo();
            org.greenrobot.eventbus.c.f().v(this);
            this.searchImg.setVisibility(0);
            this.downloadView.setVisibility(0);
            this.context = this;
            this.xListView.setPreLoadCount(10);
            this.xListView.setPullLoadEnable(new a());
            this.xListView.setPullRefreshEnable(new b());
            showLoading();
            com.join.mgps.adapter.h3 h3Var = new com.join.mgps.adapter.h3(this.context, this.informationListDataBeanList, this.extBean);
            this.mgInformationAdapter = h3Var;
            this.xListView.setAdapter((ListAdapter) h3Var);
            this.pn = 1;
            getInformationData();
            this.xListView.setOnScrollListener(this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void back_image() {
        finishM();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getInformationData() {
        InformationMessageBean messages;
        List<InformationListDataBean> data;
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showFailed();
            return;
        }
        this.isRequesting = true;
        try {
            try {
                InformationMainBean informationMainBeanJ = this.rpcClient.j(getRequestBean(this.pn, this.extBean));
                if (informationMainBeanJ == null || (messages = informationMainBeanJ.getMessages()) == null || (data = messages.getData()) == null) {
                    showFailed();
                } else {
                    showMainUi(data);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showFailed();
            }
        } finally {
            this.isRequesting = false;
        }
    }

    public CommonRequestBean getRequestBean(int pn, ExtBean extBean) {
        return RequestBeanUtil.getInstance(this.context).getInformationIndexRequestBean(pn, extBean);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finishM();
        super.onBackPressed();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        changeDownloadTaskNumber(downloadTaskEvent.a(), downloadTaskEvent.c());
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.j6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57350b.lambda$onEventMainThread$0();
            }
        });
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
    }

    @Click
    void relodingimag() {
        showLoading();
        this.pn = 1;
        getInformationData();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showFailed() {
        List<InformationListDataBean> list = this.informationListDataBeanList;
        if (list == null || list.size() <= 0) {
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(0);
            this.mPtrFrame.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoading() {
        this.title_textview.setText("大总管播报");
        this.loding_layout.setVisibility(0);
        this.loding_faile.setVisibility(8);
        this.mPtrFrame.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMainUi(List<InformationListDataBean> informationListDataBeans) {
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(8);
        this.mPtrFrame.setVisibility(0);
        this.xListView.u();
        this.xListView.v();
        if (this.pn == 1) {
            this.informationListDataBeanList.clear();
        }
        if (informationListDataBeans.size() > 0) {
            for (InformationListDataBean informationListDataBean : informationListDataBeans) {
                informationListDataBean.setExtBean(new ExtBean().setParent(this.pageExtBean).setGameId(informationListDataBean.getGame_id()).setResourceId(informationListDataBean.getGame_id()));
            }
            this.informationListDataBeanList.addAll(informationListDataBeans);
            this.pn++;
        } else {
            this.xListView.setNoMore();
        }
        this.mgInformationAdapter.notifyDataSetChanged();
    }

    @Click
    void title_normal_download_cdv() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Click
    void title_normal_search_img() {
        SearchHintActivity_.intent(this).start();
        com.papa.sim.statistic.t.l(this.context).y2(Where.information, AccountUtil_.getInstance_(this.context).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        this.downloadView.setDownloadGameNum();
    }
}
