package com.join.mgps.activity;

import android.content.ClipboardManager;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.haima.hmcp.utils.HmIMEManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetialMoreGameInfo;
import com.join.mgps.dto.GamedetialMoreGiftData;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.dto.ResultMessageBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.HashMap;
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
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.category_collection_rank)
public class GameDetialGiftMoreActivity extends BaseFragmentActivity implements AbsListView.OnScrollListener {
    private UserInfo accountBean;

    @ViewById
    ImageView back_image;
    private com.join.mgps.adapter.c1 collectionAdapter;
    private CollectionBeanSub collectionBeanSub;
    private List<GiftPackageDataInfoBean> collectionBeanSubList;
    private Context context;
    private DownloadTask downloadTask;
    List<DownloadTask> downloadTasks;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;

    @Extra
    String gameId;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private com.join.mgps.customview.t mDialog;

    @ViewById
    PtrClassicFrameLayout mPtrFrame;
    private com.join.mgps.customview.t myDialog;

    @StringRes(resName = "connect_server_excption")
    String netConnectExcption;

    @StringRes(resName = "net_excption")
    String netExcption;

    @ViewById
    XListView2 rankListView;

    @ViewById
    ImageView relodingimag;
    com.join.mgps.rpc.e rpcClient;

    @ViewById(R.id.title_normal_search_img)
    ImageView searchImg;

    @ViewById
    TextView title_textview;
    private View view;
    private int pn = 1;
    private int lastVisibleIndex = 0;
    private Map<String, DownloadTask> downloadTasksMap = new ConcurrentHashMap();
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();
    private String collection_title = "";
    private int firstVisiblePosition = 0;
    private boolean isRequesting = false;
    private int tabNumber = 0;
    Handler handler2 = new b();
    private boolean isFirst = true;
    private boolean hasHead = false;
    com.join.mgps.customview.t mGiftDialog = null;
    com.join.mgps.customview.t mVipDialog = null;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTaskG;
            if (GameDetialGiftMoreActivity.this.myDialog != null && GameDetialGiftMoreActivity.this.myDialog.isShowing()) {
                GameDetialGiftMoreActivity.this.myDialog.dismiss();
            }
            int status = GameDetialGiftMoreActivity.this.downloadTask != null ? GameDetialGiftMoreActivity.this.downloadTask.getStatus() : 0;
            if (GameDetialGiftMoreActivity.this.collectionBeanSub != null && UtilsMy.x0(GameDetialGiftMoreActivity.this.collectionBeanSub.getPay_tag_info(), GameDetialGiftMoreActivity.this.collectionBeanSub.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.k4(GameDetialGiftMoreActivity.this.context, GameDetialGiftMoreActivity.this.downloadTask);
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            GameDetialGiftMoreActivity.this.downloadTask.setKeyword(Where.detail.name());
            if (com.join.mgps.Util.t2.i(GameDetialGiftMoreActivity.this.downloadTask.getCrc_link_type_val()) && (downloadTaskG = q5.f.M().G(GameDetialGiftMoreActivity.this.downloadTask.getCrc_link_type_val())) != null) {
                UtilsMy.V4(GameDetialGiftMoreActivity.this.downloadTask, downloadTaskG);
            }
            if (GameDetialGiftMoreActivity.this.collectionBeanSub != null) {
                if (UtilsMy.z0(GameDetialGiftMoreActivity.this.collectionBeanSub.getPay_tag_info(), GameDetialGiftMoreActivity.this.collectionBeanSub.getCrc_sign_id()) > 0) {
                    UtilsMy.z4(GameDetialGiftMoreActivity.this.context, GameDetialGiftMoreActivity.this.downloadTask.getCrc_link_type_val());
                } else {
                    UtilsMy.z1(GameDetialGiftMoreActivity.this.downloadTask, GameDetialGiftMoreActivity.this.collectionBeanSub);
                    if (!UtilsMy.o1(GameDetialGiftMoreActivity.this.context, GameDetialGiftMoreActivity.this.downloadTask)) {
                        if (GameDetialGiftMoreActivity.this.collectionBeanSub.getDown_status() == 5) {
                            UtilsMy.l1(GameDetialGiftMoreActivity.this.context, GameDetialGiftMoreActivity.this.downloadTask);
                        } else {
                            UtilsMy.U0(GameDetialGiftMoreActivity.this.context, GameDetialGiftMoreActivity.this.downloadTask, GameDetialGiftMoreActivity.this.collectionBeanSub.getTp_down_url(), GameDetialGiftMoreActivity.this.collectionBeanSub.getOther_down_switch(), GameDetialGiftMoreActivity.this.collectionBeanSub.getCdn_down_switch());
                        }
                    }
                }
            }
            GameDetialGiftMoreActivity.this.downloadTask.setStatus(2);
        }
    }

    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            GameDetialGiftMoreActivity gameDetialGiftMoreActivity = GameDetialGiftMoreActivity.this;
            gameDetialGiftMoreActivity.accountBean = AccountUtil_.getInstance_(gameDetialGiftMoreActivity.getApplicationContext()).getAccountData();
            int i10 = msg.what;
            if (i10 == 2) {
                if (IntentUtil.getInstance().goLoginNetGame(GameDetialGiftMoreActivity.this.context)) {
                    return;
                }
                GameDetialGiftMoreActivity.this.showDialog((GiftPackageDataInfoBean) msg.obj);
                return;
            }
            if (i10 == 3 && !IntentUtil.getInstance().goLoginNetGame(GameDetialGiftMoreActivity.this.context)) {
                GiftPackageDataInfoBean giftPackageDataInfoBean = (GiftPackageDataInfoBean) msg.obj;
                if (GameDetialGiftMoreActivity.this.checkRight(giftPackageDataInfoBean.getGift_package_type())) {
                    GameDetialGiftMoreActivity.this.getGiftPackageOperation(giftPackageDataInfoBean);
                }
            }
        }
    }

    class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (GameDetialGiftMoreActivity.this.isRequesting) {
                return;
            }
            GameDetialGiftMoreActivity.this.getListData();
        }
    }

    class d implements com.join.mgps.customview.j {
        d() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (GameDetialGiftMoreActivity.this.isRequesting) {
                return;
            }
            GameDetialGiftMoreActivity.this.pn = 1;
            GameDetialGiftMoreActivity.this.getListData();
        }
    }

    class e implements AdapterView.OnItemClickListener {
        e() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            if (GameDetialGiftMoreActivity.this.hasHead) {
                i10--;
            }
            if (i10 > GameDetialGiftMoreActivity.this.collectionBeanSubList.size() || i10 < 0) {
                return;
            }
            GiftPackageDataInfoBean giftPackageDataInfoBean = (GiftPackageDataInfoBean) GameDetialGiftMoreActivity.this.collectionBeanSubList.get(i10);
            UserInfo accountData = AccountUtil_.getInstance_(GameDetialGiftMoreActivity.this.context).getAccountData();
            if (accountData == null) {
                GiftsDetailActivity_.intent(GameDetialGiftMoreActivity.this.context).c(giftPackageDataInfoBean).start();
            } else {
                GiftsDetailActivity_.intent(GameDetialGiftMoreActivity.this.context).c(giftPackageDataInfoBean).a(accountData.getUid()).start();
            }
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f52463b;

        f(final GiftPackageDataInfoBean val$bean) {
            this.f52463b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) GameDetialGiftMoreActivity.this.context.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(this.f52463b.getGift_package_code());
            com.join.mgps.Util.a3.b(GameDetialGiftMoreActivity.this.context).d(this.f52463b.getGift_package_code() + "已复制到剪贴板");
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GameDetialGiftMoreActivity.this.myDialog == null || !GameDetialGiftMoreActivity.this.myDialog.isShowing()) {
                return;
            }
            GameDetialGiftMoreActivity.this.myDialog.dismiss();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTaskG;
            if (GameDetialGiftMoreActivity.this.myDialog != null && GameDetialGiftMoreActivity.this.myDialog.isShowing()) {
                GameDetialGiftMoreActivity.this.myDialog.dismiss();
            }
            int status = GameDetialGiftMoreActivity.this.downloadTask != null ? GameDetialGiftMoreActivity.this.downloadTask.getStatus() : 0;
            if (GameDetialGiftMoreActivity.this.collectionBeanSub != null && UtilsMy.x0(GameDetialGiftMoreActivity.this.collectionBeanSub.getPay_tag_info(), GameDetialGiftMoreActivity.this.collectionBeanSub.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.k4(GameDetialGiftMoreActivity.this.context, GameDetialGiftMoreActivity.this.downloadTask);
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            GameDetialGiftMoreActivity.this.downloadTask.setKeyword(Where.detail.name());
            if (com.join.mgps.Util.t2.i(GameDetialGiftMoreActivity.this.downloadTask.getCrc_link_type_val()) && (downloadTaskG = q5.f.M().G(GameDetialGiftMoreActivity.this.downloadTask.getCrc_link_type_val())) != null) {
                UtilsMy.V4(GameDetialGiftMoreActivity.this.downloadTask, downloadTaskG);
            }
            if (GameDetialGiftMoreActivity.this.collectionBeanSub != null) {
                if (UtilsMy.z0(GameDetialGiftMoreActivity.this.collectionBeanSub.getPay_tag_info(), GameDetialGiftMoreActivity.this.collectionBeanSub.getCrc_sign_id()) > 0) {
                    UtilsMy.z4(GameDetialGiftMoreActivity.this.context, GameDetialGiftMoreActivity.this.downloadTask.getCrc_link_type_val());
                } else {
                    UtilsMy.z1(GameDetialGiftMoreActivity.this.downloadTask, GameDetialGiftMoreActivity.this.collectionBeanSub);
                    if (!UtilsMy.o1(GameDetialGiftMoreActivity.this.context, GameDetialGiftMoreActivity.this.downloadTask)) {
                        if (GameDetialGiftMoreActivity.this.collectionBeanSub.getDown_status() == 5) {
                            UtilsMy.l1(GameDetialGiftMoreActivity.this.context, GameDetialGiftMoreActivity.this.downloadTask);
                        } else {
                            UtilsMy.U0(GameDetialGiftMoreActivity.this.context, GameDetialGiftMoreActivity.this.downloadTask, GameDetialGiftMoreActivity.this.collectionBeanSub.getTp_down_url(), GameDetialGiftMoreActivity.this.collectionBeanSub.getOther_down_switch(), GameDetialGiftMoreActivity.this.collectionBeanSub.getCdn_down_switch());
                        }
                    }
                }
            }
            GameDetialGiftMoreActivity.this.downloadTask.setStatus(2);
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f52467b;

        i(final GiftPackageDataOperationBean val$bean) {
            this.f52467b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) GameDetialGiftMoreActivity.this.context.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(this.f52467b.getGift_info().getGift_package_code());
            com.join.mgps.Util.a3.b(GameDetialGiftMoreActivity.this.context).d(this.f52467b.getGift_info().getGift_package_code() + "已复制到剪贴板");
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GameDetialGiftMoreActivity.this.myDialog == null || !GameDetialGiftMoreActivity.this.myDialog.isShowing()) {
                return;
            }
            GameDetialGiftMoreActivity.this.myDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkRight(String finalType) {
        if (com.join.mgps.Util.t2.h(finalType)) {
            com.join.mgps.Util.a3.b(this.context).d(this.context.getString(R.string.unknow_gift_type));
            return false;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        if (finalType.equals("6")) {
            if (!com.join.mgps.Util.b.piv(accountData)) {
                showVipDialog();
                return false;
            }
        } else if (finalType.equals("7") && accountData.getSVIPLevel() <= 0) {
            showSvipGiftDialog();
            return false;
        }
        return true;
    }

    private void dismissSvipGiftDialog() {
        com.join.mgps.customview.t tVar = this.mGiftDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mGiftDialog.dismiss();
    }

    private void dismissVipDialog() {
        com.join.mgps.customview.t tVar = this.mVipDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mVipDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    @AfterViews
    void afterViews() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        this.context = this;
        getDownloadTaskInfo();
        com.join.mgps.Util.j0.a().d(this.context);
        this.downloadTask = q5.f.M().G(this.gameId);
        this.view = LayoutInflater.from(this.context).inflate(R.layout.gamedetial_more_gift_top_layout, (ViewGroup) null);
        com.join.mgps.adapter.c1 c1Var = new com.join.mgps.adapter.c1(this.context, this.handler2);
        this.collectionAdapter = c1Var;
        this.collectionBeanSubList = c1Var.b();
        this.title_textview.setText("礼包");
        showLoding();
        this.rankListView.setPreLoadCount(10);
        this.rankListView.setPullLoadEnable(new c());
        this.rankListView.setPullRefreshEnable(new d());
        this.rankListView.setOnItemClickListener(new e());
        this.rankListView.setOnScrollListener(this);
        this.rankListView.setAdapter((ListAdapter) this.collectionAdapter);
        getListData();
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
            if (!this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.put(crc_link_type_val, task);
            }
        } else if (from != 3) {
            if (from != 5) {
                if (from != 6) {
                    if (from == 7) {
                        if (this.downloadedMap.containsKey(crc_link_type_val)) {
                            this.downloadedMap.remove(crc_link_type_val);
                        }
                        if (this.downloadingMap.containsKey(crc_link_type_val)) {
                            this.downloadingMap.remove(crc_link_type_val);
                        }
                    } else if (from == 10) {
                        if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                            this.downloadedMap.put(crc_link_type_val, task);
                        }
                        if (!this.downloadingMap.containsKey(crc_link_type_val)) {
                            this.downloadingMap.put(crc_link_type_val, task);
                        }
                    } else if (from == 11) {
                    }
                } else if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                }
            } else if (this.downloadedMap.containsKey(crc_link_type_val)) {
                this.downloadedMap.remove(crc_link_type_val);
            }
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.remove(crc_link_type_val);
            }
        } else if (this.downloadingMap.containsKey(crc_link_type_val)) {
            this.downloadingMap.remove(crc_link_type_val);
        }
        updateDownloadView();
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
    void getGiftPackageOperation(GiftPackageDataInfoBean bean) {
        try {
            if (!com.join.android.app.common.utils.m.j(this.context)) {
                showToast("领取失败");
                return;
            }
            try {
                GiftPackageOperationBean giftPackageOperationBeanN0 = this.rpcClient.N0(RequestBeanUtil.getInstance(getApplicationContext()).getGiftPackageOperationRequestBean(this.accountBean.getUid(), bean.getGift_package_id(), this.gameId));
                if (giftPackageOperationBeanN0 != null) {
                    if (giftPackageOperationBeanN0.getFlag().equals("0")) {
                        String error_info = giftPackageOperationBeanN0.getError_info();
                        if (error_info == null || !giftPackageOperationBeanN0.getCode().equals(HmIMEManager.ERROR_CODE_NOT_ENABLE)) {
                            return;
                        }
                        showToast(error_info);
                        return;
                    }
                    List<GiftPackageDataOperationBean> data = giftPackageOperationBeanN0.getMessages().getData();
                    if (data == null || data.size() <= 0) {
                        showToast("领取失败");
                        return;
                    }
                    GiftPackageDataOperationBean giftPackageDataOperationBean = data.get(0);
                    List<GiftPackageDataInfoBean> list = this.collectionBeanSubList;
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        GiftPackageDataInfoBean giftPackageDataInfoBean = list.get(i10);
                        if (bean.getGift_package_id() == giftPackageDataInfoBean.getGift_package_id()) {
                            giftPackageDataInfoBean.setGift_package_status(1);
                            giftPackageDataInfoBean.setGift_package_overdue(giftPackageDataOperationBean.getGift_info().getGift_package_overdue());
                            giftPackageDataInfoBean.setGift_package_code(giftPackageDataOperationBean.getGift_info().getGift_package_code());
                        }
                    }
                    showDialog(giftPackageDataOperationBean);
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            showToast("领取失败");
        } catch (Throwable th) {
            showToast("领取失败");
            throw th;
        }
    }

    @Background
    void getListData() {
        int uid;
        new ArrayList();
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            updateListFooter();
            showLodingFailed();
            return;
        }
        this.isRequesting = true;
        try {
            try {
                UserInfo userInfo = this.accountBean;
                if (userInfo != null) {
                    uid = userInfo.getUid();
                } else {
                    UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
                    this.accountBean = accountData;
                    uid = accountData.getUid();
                }
                ResultMessageBean<GamedetialMoreGiftData> messages = this.rpcClient.D(getRequestBean(this.gameId, this.pn, 0, uid)).getMessages();
                if (messages != null) {
                    GamedetialMoreGiftData data = messages.getData();
                    if (data != null) {
                        if (data.getGift_list() != null && data.getGift_list().size() == 0) {
                            noMore();
                        } else if (data.getGift_list() != null && data.getGift_list().size() > 0) {
                            this.pn++;
                        }
                        showMain(data);
                        updateListFooter();
                    } else {
                        noMore();
                    }
                } else {
                    updateListFooter();
                    showLodingFailed();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                updateListFooter();
                showLodingFailed();
            }
        } finally {
            this.isRequesting = false;
        }
    }

    public CommonRequestBean getRequestBean(String gameid, int pn, int tag_id, int uid) {
        return RequestBeanUtil.getInstance(this.context).getDetialImfMore(gameid, pn, tag_id, uid);
    }

    @Click
    void mg_loading() {
        this.pn = 1;
        getListData();
    }

    @UiThread
    void noMore() {
        this.rankListView.setNoMore();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this.context);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.c2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f56877b.lambda$onEventMainThread$0();
            }
        });
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        if (downloadTaskA == null || this.downloadTask == null || !downloadTaskA.getCrc_link_type_val().equals(this.downloadTask.getCrc_link_type_val())) {
            return;
        }
        this.downloadTask = downloadTaskA;
        int iC = downloadTaskEvent.c();
        if ((iC == 5 || iC == 11 || iC == 48) && this.downloadTask != null && downloadTaskA.getCrc_link_type_val().equals(this.downloadTask.getCrc_link_type_val())) {
            this.downloadTask = downloadTaskA;
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
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

    /* JADX WARN: Code duplicated, block: B:22:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:24:0x00ff  */
    @UiThread
    void showDialog(final GiftPackageDataInfoBean bean) {
        CollectionBeanSub collectionBeanSub;
        com.join.mgps.customview.t tVar = this.myDialog;
        if (tVar != null && tVar.isShowing()) {
            this.myDialog.dismiss();
            this.myDialog = null;
        }
        com.join.mgps.customview.t tVar2 = new com.join.mgps.customview.t(this.context, R.style.MyDialog);
        this.myDialog = tVar2;
        tVar2.setContentView(R.layout.save_code_dialog);
        Button button = (Button) this.myDialog.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) this.myDialog.findViewById(R.id.dialog_button_ok);
        ((LinearLayout) this.myDialog.findViewById(R.id.layoutTop)).setVisibility(8);
        ((LinearLayout) this.myDialog.findViewById(R.id.layoutBottom)).setVisibility(0);
        TextView textView = (TextView) this.myDialog.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) this.myDialog.findViewById(R.id.saveCodeTv);
        TextView textView3 = (TextView) this.myDialog.findViewById(R.id.saveCodeContent);
        TextView textView4 = (TextView) this.myDialog.findViewById(R.id.dialog_time);
        TextView textView5 = (TextView) this.myDialog.findViewById(R.id.moneyText);
        textView.setText("领号成功");
        textView3.setText(bean.getGift_package_code());
        button2.setText("关闭");
        button.setText("下载游戏");
        textView4.setText(com.join.mgps.Util.e0.A(bean.getGift_package_times_end()));
        textView2.setOnClickListener(new f(bean));
        button2.setOnClickListener(new g());
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.x0(this.collectionBeanSub.getPay_tag_info(), this.collectionBeanSub.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 0) {
            button.setText("下载游戏");
            collectionBeanSub = this.collectionBeanSub;
            if (collectionBeanSub != null) {
                UtilsMy.x0(collectionBeanSub.getPay_tag_info(), this.collectionBeanSub.getCrc_sign_id());
                UtilsMy.I3(button, this.collectionBeanSub.getDown_status(), this.collectionBeanSub.getPay_tag_info(), this.collectionBeanSub.getCrc_sign_id());
                button.setBackgroundColor(-1);
                UtilsMy.B3(this.collectionBeanSub.getSp_tag_info(), textView5);
            }
        } else if (status == 5) {
            button.setText("启动游戏");
        } else if (status == 9 || status == 43) {
            button.setText("下载游戏");
            collectionBeanSub = this.collectionBeanSub;
            if (collectionBeanSub != null) {
                UtilsMy.x0(collectionBeanSub.getPay_tag_info(), this.collectionBeanSub.getCrc_sign_id());
                UtilsMy.I3(button, this.collectionBeanSub.getDown_status(), this.collectionBeanSub.getPay_tag_info(), this.collectionBeanSub.getCrc_sign_id());
                button.setBackgroundColor(-1);
                UtilsMy.B3(this.collectionBeanSub.getSp_tag_info(), textView5);
            }
        } else {
            button.setText("下载中..");
        }
        CollectionBeanSub collectionBeanSub2 = this.collectionBeanSub;
        if (collectionBeanSub2 != null && collectionBeanSub2.getDown_status() == 2) {
            button.setEnabled(false);
            button.setText("即将开放");
        }
        button.setOnClickListener(new h());
        com.join.mgps.customview.t tVar3 = this.myDialog;
        if (tVar3 == null || tVar3.isShowing()) {
            return;
        }
        this.myDialog.show();
    }

    @UiThread
    void showLoding() {
        this.loding_layout.setVisibility(0);
        this.loding_faile.setVisibility(8);
    }

    @UiThread
    void showLodingFailed() {
        List<GiftPackageDataInfoBean> list = this.collectionBeanSubList;
        if (list == null || list.size() == 0) {
            this.loding_faile.setVisibility(0);
            this.loding_layout.setVisibility(8);
            this.mPtrFrame.setVisibility(8);
        }
    }

    @UiThread
    void showMain(GamedetialMoreGiftData subList) {
        if (subList == null || subList.getGift_list() == null || subList.getGift_list().size() == 0) {
            return;
        }
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.mPtrFrame.setVisibility(0);
        if (this.pn == 2) {
            this.collectionBeanSubList.clear();
            DetialMoreGameInfo game_info = subList.getGame_info();
            this.collectionBeanSub = game_info;
            this.title_textview.setText(this.collectionBeanSub.getGame_name() + "礼包");
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) this.view.findViewById(R.id.appIcon);
            TextView textView = (TextView) this.view.findViewById(R.id.appName);
            LinearLayout linearLayout = (LinearLayout) this.view.findViewById(R.id.tipsLayout);
            TextView textView2 = (TextView) this.view.findViewById(R.id.appSize);
            com.join.android.app.common.utils.l.h(simpleDraweeView, game_info.getIco_remote());
            textView.setText(game_info.getGame_name());
            textView2.setText("礼包总数：" + game_info.getGift_package_count());
            UtilsMy.K(game_info.getScore(), game_info.getDown_count(), game_info.getSize(), game_info.getSp_tag_info(), game_info.getTag_info(), linearLayout, this.context);
            if (this.isFirst) {
                this.downloadTask = game_info.buildDownloadTask();
                this.rankListView.addHeaderView(this.view);
                this.hasHead = true;
                this.isFirst = false;
            }
        }
        this.collectionBeanSubList.addAll(subList.getGift_list());
        if (this.pn != 2) {
            this.collectionAdapter.notifyDataSetChanged();
        } else {
            this.collectionBeanSubList.size();
            this.collectionAdapter.notifyDataSetChanged();
        }
    }

    @UiThread
    void showSvipGiftDialog() {
        com.join.mgps.customview.t tVar = this.mGiftDialog;
        if (tVar == null) {
            this.mGiftDialog = com.join.mgps.Util.h0.h0(this.context).e0(this.context);
        } else if (tVar.isShowing()) {
            return;
        }
        this.mGiftDialog.show();
    }

    @UiThread
    void showToast(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    @UiThread
    void showVipDialog() {
        com.join.mgps.customview.t tVar = this.mVipDialog;
        if (tVar == null) {
            this.mVipDialog = com.join.mgps.Util.h0.h0(this.context).g0(this.context);
        } else if (tVar.isShowing()) {
            return;
        }
        this.mVipDialog.show();
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

    @UiThread
    void updateDownloadView() {
        this.downloadView.setDownloadGameNum();
    }

    @UiThread
    void updateListFooter() {
        this.rankListView.v();
        this.rankListView.u();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:26:0x00db  */
    @UiThread
    void showDialog(final GiftPackageDataOperationBean bean) {
        com.join.mgps.customview.t tVar = this.myDialog;
        if (tVar != null && tVar.isShowing()) {
            this.myDialog.dismiss();
            this.myDialog = null;
        }
        com.join.mgps.customview.t tVar2 = new com.join.mgps.customview.t(this.context, R.style.MyDialog);
        this.myDialog = tVar2;
        tVar2.setContentView(R.layout.save_code_dialog);
        Button button = (Button) this.myDialog.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) this.myDialog.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.myDialog.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) this.myDialog.findViewById(R.id.saveCodeTv);
        TextView textView3 = (TextView) this.myDialog.findViewById(R.id.saveCodeContent);
        TextView textView4 = (TextView) this.myDialog.findViewById(R.id.moneyText);
        textView.setText("领号成功");
        textView3.setText(bean.getGift_info().getGift_package_code());
        button2.setText("关闭");
        button.setText("下载游戏");
        textView2.setOnClickListener(new i(bean));
        button2.setOnClickListener(new j());
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (bean.getGame_info() != null && UtilsMy.x0(bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 0) {
            button.setText("下载游戏");
            if (bean.getGame_info() != null) {
                UtilsMy.x0(bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id());
                UtilsMy.I3(button, bean.getGame_info().getDown_status(), bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id());
                button.setBackgroundColor(-1);
                UtilsMy.B3(bean.getGame_info().getSp_tag_info(), textView4);
            }
        } else if (status == 5) {
            button.setText("启动游戏");
        } else if (status != 9 && status != 43) {
            button.setText("下载中..");
        } else {
            button.setText("下载游戏");
            if (bean.getGame_info() != null) {
                UtilsMy.x0(bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id());
                UtilsMy.I3(button, bean.getGame_info().getDown_status(), bean.getGame_info().getPay_tag_info(), bean.getGame_info().getCrc_sign_id());
                button.setBackgroundColor(-1);
                UtilsMy.B3(bean.getGame_info().getSp_tag_info(), textView4);
            }
        }
        CollectionBeanSub collectionBeanSub = this.collectionBeanSub;
        if (collectionBeanSub != null && collectionBeanSub.getDown_status() == 2) {
            button.setEnabled(false);
            button.setText("即将开放");
        }
        button.setOnClickListener(new a());
        this.collectionAdapter.notifyDataSetChanged();
        com.join.mgps.customview.t tVar3 = this.myDialog;
        if (tVar3 == null || tVar3.isShowing()) {
            return;
        }
        this.myDialog.show();
    }
}
