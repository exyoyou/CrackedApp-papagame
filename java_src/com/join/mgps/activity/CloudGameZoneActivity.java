package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Handler;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.MApplication;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.je;
import com.join.kotlin.ui.hmcloud.dialog.DialogUtils;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionModuleSevenArgs;
import com.join.mgps.dto.CollectionModuleSevenBean;
import com.join.mgps.dto.CollectionModuleSevenItemBean;
import com.join.mgps.dto.CollectionModuleSevenSubBean;
import com.join.mgps.dto.CollectionSevenListBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.H5GameDataBean;
import com.join.mgps.dto.RequestMiniGameArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import com.kongzue.dialogx.dialogs.CustomDialog;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.ext.ToastManager;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.NewMemberInfo;
import com.wufan.user.service.protobuf.UserInfo;
import com.wufan.user.service.protobuf.enumeration.SceneType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_cloud_game_zone)
public class CloudGameZoneActivity extends BaseAppCompatActivity {
    private static final String TAG = "CloudGameZoneActivity";
    UserInfo accountBean;
    private com.join.mgps.rpc.c accountClientV2;

    @ViewById
    ImageView back_image;

    @ViewById
    RecyclerView breakListView;

    @ViewById
    ConstraintLayout cl_recent_games;
    private Context context;
    private int firstVisiblePosition;

    @ViewById
    ImageView iv_btn_1;
    private int lastVisibleIndex;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @Extra
    ExtBean parentExtBean;

    @Pref
    PrefDef_ prefDef_;
    private com.join.mgps.adapter.j recentGameAdapter;

    @ViewById
    ImageView relodingimag;
    com.join.mgps.rpc.k rpcGameClient;

    @ViewById
    RecyclerView rv_list;
    private com.join.mgps.adapter.t sevenAdapter;

    @Extra
    String templateId;

    @ViewById
    TextView title_textview;
    private com.join.android.app.component.video.h videoHelper;
    private List<CollectionSevenListBean> datas = new ArrayList();
    private List<CommonGameInfoBean> allDownloadAppHomeBeans = new ArrayList();
    private boolean SCROLLING = false;
    ExtBean pageExtBean = new ExtBean().setTypeCode(EventP.TypeCode.page.name()).setFrom(Constants.COUNTYLY_CLOUD_PLAY_IS_RUN);
    private Handler mHanler = new Handler();
    boolean isSign = false;
    private boolean isExposuring = false;

    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            if (newState == 0) {
                CloudGameZoneActivity.this.autoPlay();
                CloudGameZoneActivity.this.expDiscountGame();
            }
            CloudGameZoneActivity.this.SCROLLING = newState != 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            if (linearLayoutManager != null) {
                CloudGameZoneActivity.this.lastVisibleIndex = linearLayoutManager.findLastVisibleItemPosition();
                CloudGameZoneActivity.this.firstVisiblePosition = linearLayoutManager.findFirstVisibleItemPosition();
            }
        }
    }

    class b extends m6.d {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onEvent$0(String str) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                CloudGameZoneActivity.this.showSignDialog(jSONObject.optString("totalTime"), jSONObject.optString("freeTime"), jSONObject.optString("vipTime"));
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }

        @Override // m6.d, com.join.mgps.callbacks.r
        public void onEvent(Activity activity, int event, final String jsonParams) {
            super.onEvent(activity, event, jsonParams);
            if (event == 2) {
                activity.finish();
                CloudGameZoneActivity.this.mHanler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.c0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f56874b.lambda$onEvent$0(jsonParams);
                    }
                }, 800L);
            }
        }
    }

    class c extends com.kongzue.dialogx.interfaces.s<CustomDialog, je> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DownloadTask f50691a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ExtBean f50692b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50693c;

        c(final DownloadTask val$task, final ExtBean val$extBean, final String val$gameId) {
            this.f50691a = val$task;
            this.f50692b = val$extBean;
            this.f50693c = val$gameId;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(CustomDialog customDialog, ExtBean extBean, String str, View view) {
            customDialog.E1();
            com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(CloudGameZoneActivity.this);
            Event event = Event.commonClick;
            ExtBean extBeanCopy = extBean.copy();
            EventP.TypeCode typeCode = EventP.TypeCode.cloudGame;
            tVarL.R1(event, extBeanCopy.setTypeCode(typeCode.name()).buildScene().toExt());
            com.join.mgps.Util.w0.h().s(CloudGameZoneActivity.this.context, str, extBean.copy().setTypeCode(typeCode.name()).buildScene());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(ExtBean extBean, CustomDialog customDialog, View view) {
            com.papa.sim.statistic.t.l(CloudGameZoneActivity.this).R1(Event.commonClick, extBean.copy().setTypeCode(EventP.TypeCode.btnClose.name()).buildScene().toExt());
            customDialog.E1();
        }

        @Override // com.kongzue.dialogx.interfaces.s
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public void onBind(final CustomDialog dialog, View v10, je binding) {
            binding.B(this.f50691a.getPortraitURL());
            binding.C(this.f50691a.getShowName());
            binding.D(Html.fromHtml("<font color='#999999'>上次进度时间：</font>" + com.join.mgps.Util.e0.I(CloudGameZoneActivity.this.prefDef_.lastLaunchCloudGameTipTime().d().longValue())));
            binding.E(Boolean.valueOf(CloudGameZoneActivity.this.prefDef_.lastLaunchCloudGameTipTime().d().longValue() > 0));
            LinearLayout linearLayout = binding.f40194e;
            final ExtBean extBean = this.f50692b;
            final String str = this.f50693c;
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f56902b.j(dialog, extBean, str, view);
                }
            });
            ImageView imageView = binding.f40193d;
            final ExtBean extBean2 = this.f50692b;
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.e0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57124b.k(extBean2, dialog, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expDiscountGame() {
        try {
            try {
                if (!this.isExposuring) {
                    this.isExposuring = true;
                    LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.breakListView.getLayoutManager();
                    if (linearLayoutManager != null) {
                        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                        for (int i10 = 0; i10 <= iFindLastVisibleItemPosition; i10++) {
                            CollectionSevenListBean collectionSevenListBean = this.datas.get(i10);
                            if (!collectionSevenListBean.isHasExposure()) {
                                collectionSevenListBean.setHasExposure(true);
                                int itemType = collectionSevenListBean.getItemType();
                                if ((itemType == 2 || itemType == 3) && (collectionSevenListBean.getItem() instanceof CommonGameInfoBean)) {
                                    CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) collectionSevenListBean.getItem();
                                    if (UtilsMy.p2(commonGameInfoBean)) {
                                        try {
                                            Ext ext = new Ext();
                                            ext.setResultCode("discount_game");
                                            ext.setScenesCode(getClass().getSimpleName());
                                            Data data = new Data();
                                            data.setGameId(commonGameInfoBean.getG_info().getId());
                                            com.papa.sim.statistic.t.l(this.context).Y(Event.expGameAdPage, ext, data);
                                        } catch (Exception e10) {
                                            e10.printStackTrace();
                                        }
                                    }
                                    com.papa.sim.statistic.t.l(this).R1(Event.expGameAdPage, commonGameInfoBean.getExtBean().buildScene().toExt());
                                }
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        } finally {
            this.isExposuring = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterviews$0(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Object item = this.datas.get(i10).getItem();
        if (item instanceof CommonGameInfoBean) {
            IntentUtil.getInstance().intentActivity(this, ((CommonGameInfoBean) item).getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$showSignDialog$2(DownloadTask downloadTask) {
        ExtBean extBean = new ExtBean();
        extBean.setParent(this.pageExtBean);
        extBean.setChatId(EventP.ChatId.cloudGameVipDailySignPop.name());
        extBean.setTypeCode(EventP.TypeCode.cloudGame.name());
        extBean.setGameId(downloadTask.getCrc_link_type_val().replace("cld_", ""));
        extBean.setResourceId(downloadTask.getCrc_link_type_val().replace("cld_", ""));
        com.papa.sim.statistic.t.l(this).R1(Event.gameStart, extBean.copy().buildScene().toExt());
        com.join.mgps.Util.w0.h().s(this, downloadTask.getCrc_link_type_val(), extBean);
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$showSignDialog$3() {
        refreshUserCenter();
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateData$5() {
        autoPlay();
        expDiscountGame();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateUserInfo$1(NewMemberInfo newMemberInfo, View view) {
        checkSign(false);
        if (newMemberInfo.getIsSigned()) {
            return;
        }
        ExtBean extBean = new ExtBean();
        extBean.setParent(this.parentExtBean);
        extBean.setChatId(EventP.ChatId.cloudGameZone.name());
        extBean.setTypeCode(EventP.TypeCode.btnSign.name());
        extBean.setScenesCode("日签");
        com.papa.sim.statistic.t.l(this).R1(Event.commonClick, extBean.buildScene().toExt());
    }

    private void notifyDataSetChanged() {
        this.sevenAdapter.notifyDataSetChanged();
    }

    private void openWebPage(MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        Intent intent = new Intent();
        IntentDateBean intentDateBean = new IntentDateBean();
        String str = com.join.mgps.rpc.h.U;
        intentDateBean.setLink_type(4);
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (!str.contains("isVip")) {
            if (str.contains("?") && str.contains(SimpleComparison.EQUAL_TO_OPERATION)) {
                str = str + "&isVip=" + com.join.mgps.Util.b.pivc(accountData) + "&currentDay=" + adCfgInfo.getSignDay();
            } else {
                str = str + "?isVip=" + com.join.mgps.Util.b.pivc(accountData) + "&currentDay=" + adCfgInfo.getSignDay();
            }
        }
        if (com.join.mgps.Util.t2.i(str)) {
            intentDateBean.setLink_type_val(str);
            intent.putExtra("intentdate", intentDateBean);
            intent.putExtra("parentExtBean", new ExtBean().setFirstModule(EventP.FirstModel.meTab.name()).setSecondModule(EventP.SecondModel.myCloudGame.name()).setChatId(EventP.ChatId.myCloudGame.name()).buildScene());
            IntentUtil.getInstance().startActivityWithCallback(this, FullShareWebActivity_.class, intent, new b());
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        updateDownStateList();
        notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        updateDownStateList();
        notifyDataSetChanged();
    }

    private void receiveStart(DownloadTask downloadTask) {
        updateDownStateList();
        notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        updateDownStateList();
        notifyDataSetChanged();
    }

    private void updateDownStateList() {
        Iterator<CommonGameInfoBean> it2 = this.allDownloadAppHomeBeans.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
    }

    private void updateProgressPartly() {
        DownloadNormalView downloadNormalView;
        View childAt;
        View viewFindViewByPosition;
        DownloadNormalView downloadNormalView2;
        int i10 = this.firstVisiblePosition;
        if (i10 >= 0) {
            while (i10 <= Math.min(this.lastVisibleIndex + 1, this.sevenAdapter.getItemCount() - 1)) {
                CollectionSevenListBean item = this.sevenAdapter.getItem(i10);
                if (item != null) {
                    int itemType = item.getItemType();
                    if (itemType == 2) {
                        try {
                            CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) item.getItem();
                            View childAt2 = this.breakListView.getChildAt(i10 - this.firstVisiblePosition);
                            if (childAt2 != null) {
                                RecyclerView.ViewHolder childViewHolder = this.breakListView.getChildViewHolder(childAt2);
                                if (childViewHolder instanceof com.join.mgps.base.b) {
                                    com.join.mgps.base.b bVar = (com.join.mgps.base.b) childViewHolder;
                                    if (commonGameInfoBean != null && commonGameInfoBean.getDownloadTask() != null) {
                                        DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(commonGameInfoBean.getDownloadTask().getCrc_link_type_val());
                                        if (downloadTaskG != null && downloadTaskG.getStatus() == 2 && (downloadNormalView = (DownloadNormalView) bVar.getView(R.id.dv_view)) != null) {
                                            downloadNormalView.s(downloadTaskG.getProgress());
                                        }
                                    }
                                }
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    } else if (itemType == 3) {
                        try {
                            CommonGameInfoBean commonGameInfoBean2 = (CommonGameInfoBean) item.getItem();
                            View childAt3 = this.breakListView.getChildAt(i10 - this.firstVisiblePosition);
                            if (childAt3 != null) {
                                RecyclerView.ViewHolder childViewHolder2 = this.breakListView.getChildViewHolder(childAt3);
                                if (childViewHolder2 instanceof com.join.mgps.base.b) {
                                    com.join.mgps.base.b bVar2 = (com.join.mgps.base.b) childViewHolder2;
                                    if (commonGameInfoBean2 != null && commonGameInfoBean2.getDownloadTask() != null) {
                                        DownloadTask downloadTask = commonGameInfoBean2.getDownloadTask();
                                        DownloadTask downloadTaskG2 = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                                        if (downloadTaskG2 != null) {
                                            long j10 = (long) (Double.parseDouble(downloadTaskG2.getShowSize()) * 1024.0d * 1024.0d);
                                            if (downloadTask.getSize() == 0) {
                                                bVar2.setText(R.id.appSize, UtilsMy.c(downloadTaskG2.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                            } else {
                                                bVar2.setText(R.id.appSize, UtilsMy.c(downloadTaskG2.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                            }
                                            if (downloadTask.getStatus() == 12) {
                                                bVar2.setProgress(R.id.progressBarZip, (int) downloadTaskG2.getProgress());
                                            } else {
                                                bVar2.setProgress(R.id.progressBar, (int) downloadTaskG2.getProgress());
                                            }
                                            if (downloadTask.getStatus() == 2) {
                                                bVar2.setText(R.id.loding_info, downloadTaskG2.getSpeed() + "/S");
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    } else if (itemType != 4) {
                        continue;
                    } else {
                        List list = (List) item.getItem();
                        for (int i11 = 0; i11 < list.size(); i11++) {
                            DownloadTask downloadTask2 = ((CommonGameInfoBean) list.get(i11)).getDownloadTask();
                            if (downloadTask2 != null && ((downloadTask2.getStatus() == 2 || downloadTask2.getStatus() == 12) && (childAt = this.breakListView.getChildAt(i10 - this.firstVisiblePosition)) != null)) {
                                RecyclerView.ViewHolder childViewHolder3 = this.breakListView.getChildViewHolder(childAt);
                                if (childViewHolder3 instanceof com.join.mgps.base.b) {
                                    try {
                                        DownloadTask downloadTaskG3 = com.join.android.app.common.servcie.j.f().g(downloadTask2.getCrc_link_type_val());
                                        if (downloadTaskG3 == null) {
                                            return;
                                        }
                                        RecyclerView recyclerView = (RecyclerView) ((com.join.mgps.base.b) childViewHolder3).getView(R.id.recyclerView);
                                        if (recyclerView != null && (viewFindViewByPosition = recyclerView.getLayoutManager().findViewByPosition(i11)) != null && (downloadNormalView2 = (DownloadNormalView) viewFindViewByPosition.findViewById(R.id.dv_view)) != null && downloadTaskG3.getStatus() == 2) {
                                            downloadNormalView2.s(downloadTaskG3.getProgress());
                                        }
                                    } catch (Exception e12) {
                                        e12.printStackTrace();
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                    }
                }
                i10++;
            }
        }
    }

    @AfterViews
    void afterviews() {
        this.context = this;
        if (TextUtils.isEmpty(this.templateId)) {
            showMessage("专区id不存在");
            finish();
        }
        com.join.mgps.Util.p2.v(this);
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        com.join.mgps.Util.j0.a().d(this);
        this.videoHelper = new com.join.android.app.component.video.h(this.breakListView, "PapaMainV3Fragment");
        this.breakListView.setLayoutManager(new LinearLayoutManager(this.context));
        com.join.mgps.adapter.t tVar = new com.join.mgps.adapter.t(this.datas, this.videoHelper);
        this.sevenAdapter = tVar;
        this.breakListView.setAdapter(tVar);
        this.sevenAdapter.setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.mgps.activity.b0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f56749a.lambda$afterviews$0(baseQuickAdapter, view, i10);
            }
        });
        this.accountClientV2 = com.join.mgps.rpc.impl.b.C();
        checkSign(true);
        this.breakListView.addOnScrollListener(new a());
        getData();
        if (this.recentGameAdapter == null) {
            this.recentGameAdapter = new com.join.mgps.adapter.j();
        }
        this.rv_list.setLayoutManager(new LinearLayoutManager(this, 0, false));
        this.rv_list.setAdapter(this.recentGameAdapter);
        getTopGameData();
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.accountBean = accountData;
        updateUserInfo(accountData);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void autoPlay() {
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.i(1);
        }
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkSign(boolean proactive) {
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.accountBean = accountData;
        if (accountData == null || TextUtils.isEmpty(accountData.getToken())) {
            if (proactive) {
                showCloudSign(null, true);
                return;
            }
            return;
        }
        if (!com.join.android.app.common.utils.m.j(this)) {
            if (proactive) {
                showCloudSign(null, true);
                return;
            }
            return;
        }
        try {
            MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters.b bVarNewBuilder = MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters.newBuilder();
            bVarNewBuilder.setUid(this.accountBean.getUid());
            bVarNewBuilder.setToken(this.accountBean.getToken());
            bVarNewBuilder.setSceneType(SceneType.CLOUD_GAMING_SIGN_BTN);
            bVarNewBuilder.setAppVersion(g8.b.a(this));
            HashMap map = new HashMap();
            map.put("uid", bVarNewBuilder.getUid() + "");
            map.put(com.czhj.sdk.common.Constants.TOKEN, bVarNewBuilder.getToken());
            map.put("sceneType", bVarNewBuilder.getSceneType().name());
            map.put("appVersion", bVarNewBuilder.getAppVersion());
            bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
            MessageCloudGamingAdCfgResponse.MessageCloudGamingAdCfgResponseResult messageCloudGamingAdCfgResponseResultN = this.accountClientV2.n(bVarNewBuilder.build());
            if (messageCloudGamingAdCfgResponseResultN != null) {
                if (messageCloudGamingAdCfgResponseResultN.getError() == 200) {
                    showCloudSign(messageCloudGamingAdCfgResponseResultN.getData(), proactive);
                } else if (proactive) {
                    showCloudSign(null, true);
                }
            } else if (proactive) {
                showCloudSign(null, true);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            if (proactive) {
                showCloudSign(null, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showMessage("当前网络不可用");
            showLodingFailed();
            return;
        }
        try {
            showLoding();
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.context);
            CollectionModuleSevenArgs collectionModuleSevenArgs = new CollectionModuleSevenArgs();
            collectionModuleSevenArgs.setTemplateId(this.templateId);
            requestModel.setArgs(collectionModuleSevenArgs);
            ResponseModel<CollectionModuleSevenBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().N(requestModel.makeSign()).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 200 || responseModelBody.getData() == null) {
                showLodingFailed();
            } else {
                updateData(responseModelBody.getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getTopGameData() {
        try {
            if (com.join.android.app.common.utils.m.j(this.context)) {
                RequestModel requestModel = new RequestModel(this.context);
                RequestMiniGameArgs requestMiniGameArgs = new RequestMiniGameArgs();
                requestMiniGameArgs.setUid(com.join.mgps.Util.r0.o0(this.context));
                requestModel.setArgs(requestMiniGameArgs);
                setTopGameValue(this.rpcGameClient.O(requestModel.makeSign()));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onAccountChangeEvent(com.join.mgps.event.b event) {
        if (event.b() == 2) {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            this.accountBean = accountData;
            updateUserInfo(accountData);
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        this.mHanler.removeCallbacksAndMessages(null);
        super.onDestroy();
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.x();
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0041  */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            updateUI(downloadTaskA, 1);
        } else if (iC == 3) {
            updateUI(downloadTaskA, 2);
        } else if (iC == 5) {
            updateUI(downloadTaskA, 5);
        } else if (iC == 6) {
            updateUI(downloadTaskA, 6);
        } else if (iC == 7) {
            updateUI(downloadTaskA, 3);
        } else if (iC != 8) {
            if (iC != 48) {
                switch (iC) {
                    case 10:
                        updateUI(downloadTaskA, 7);
                        break;
                    case 11:
                        updateUI(downloadTaskA, 5);
                        break;
                    case 12:
                        updateUI(downloadTaskA, 8);
                        break;
                    case 13:
                        updateUI(downloadTaskA, 9);
                        break;
                }
            } else {
                updateUI(downloadTaskA, 5);
            }
        } else if (!this.SCROLLING) {
            updateProgressPartly();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("receiveStart: ");
        sb2.append(downloadTaskEvent.c());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.y();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.E();
        }
    }

    public void refreshUserCenter() {
        AccountUtil_.getInstance_(this).reload();
    }

    @Click
    void relodingimag() {
        getData();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setTopGameValue(ResponseModel<H5GameDataBean> data) {
        if (data == null || data.getData() == null) {
            this.cl_recent_games.setVisibility(8);
            return;
        }
        if (data.getData().getTop_game_list() == null || data.getData().getTop_game_list().isEmpty()) {
            this.cl_recent_games.setVisibility(8);
            return;
        }
        this.cl_recent_games.setVisibility(0);
        for (CommonGameInfoBean commonGameInfoBean : data.getData().getTop_game_list()) {
            commonGameInfoBean.getExtBean().setChatId(EventP.ChatId.cloudGameZone.name()).setSopName("最近在玩");
            DlTaskManager.INSTANCE.updateDownloadTask(commonGameInfoBean);
        }
        this.recentGameAdapter.submitList(data.getData().getTop_game_list());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showCloudSign(MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        showCloudSign(adCfgInfo, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLastLaunchCloudGame(DownloadTask task) {
        String strReplace = task.getCrc_link_type_val().replace("cld_", "");
        ExtBean extBean = new ExtBean();
        extBean.setParent(this.parentExtBean);
        extBean.setChatId(EventP.ChatId.continuePlayCloudGamePop.name());
        extBean.setGameId(strReplace);
        extBean.setResourceId(strReplace);
        new CustomDialog(new c(task, extBean, strReplace)).P2(Color.parseColor("#90000000")).C2(false).M0();
        com.papa.sim.statistic.t.l(this).R1(Event.commonExp, extBean.copy().setTypeCode(EventP.TypeCode.popup.name()).buildScene().toExt());
    }

    void showLastLaunchCloudGameIfNeeded() {
        DownloadTask downloadTaskL;
        if (com.join.mgps.Util.e0.z(this.prefDef_.lastLaunchCloudGameTipTime().d().longValue())) {
            return;
        }
        String strD = this.prefDef_.lastLaunchCloudGameId().d();
        if (!com.join.mgps.Util.t2.i(strD) || (downloadTaskL = q5.f.M().L(strD)) == null) {
            return;
        }
        showLastLaunchCloudGame(downloadTaskL);
        this.prefDef_.lastLaunchCloudGameTipTime().g(Long.valueOf(System.currentTimeMillis()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.loding_layout;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.loding_faile;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain() {
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void showSignDialog(String totalTime, String freeTime, String vipTime) {
        DialogUtils.INSTANCE.showSignDialog(this, totalTime, freeTime, vipTime, new Function1() { // from class: com.join.mgps.activity.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f58187b.lambda$showSignDialog$2((DownloadTask) obj);
            }
        }, new Function0() { // from class: com.join.mgps.activity.x
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f58199b.lambda$showSignDialog$3();
            }
        }, new Function0() { // from class: com.join.mgps.activity.y
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.FALSE;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sign() {
        if (this.isSign) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(this)) {
            ToastManager.show("网络异常，请检查网络");
            return;
        }
        if (this.accountBean.getNewMemberInfo().getIsSigned()) {
            com.kongzue.dialogx.dialogs.o.F3("今日已签,明日再来吧~");
            return;
        }
        this.isSign = true;
        MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest.b bVarNewBuilder = MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest.newBuilder();
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        bVarNewBuilder.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0");
        HashMap map = new HashMap();
        map.put("uid", bVarNewBuilder.getUid() + "");
        map.put(com.czhj.sdk.common.Constants.TOKEN, bVarNewBuilder.getToken());
        map.put("appVersion", "517_6.1.7.0");
        bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
        updateSignUI(this.accountClientV2.l(bVarNewBuilder.build()));
        this.isSign = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateData(CollectionModuleSevenBean data) {
        showMain();
        if (data == null || data.getTemplate_items() == null) {
            showLodingFailed();
            return;
        }
        this.title_textview.setText(data.getTitle());
        if (data.getTemplate_type() == 1) {
            this.pageExtBean.setChatId(EventP.ChatId.cloudGameZone.name()).setParent(this.parentExtBean).setKeyword(this.templateId).setSopName(data.getTitle());
            if (!this.pageExtBean.hasExplore()) {
                com.papa.sim.statistic.t.l(this).R1(Event.commonExp, this.pageExtBean.copy().buildScene().toExt());
                this.pageExtBean.setHasExplore(true);
            }
        }
        for (CollectionModuleSevenSubBean collectionModuleSevenSubBean : data.getTemplate_items()) {
            if (collectionModuleSevenSubBean != null && collectionModuleSevenSubBean.getModel_val() != null) {
                int model_type = collectionModuleSevenSubBean.getModel_type();
                CollectionModuleSevenItemBean model_val = collectionModuleSevenSubBean.getModel_val();
                if (model_val != null && !TextUtils.isEmpty(model_val.getTitle())) {
                    CollectionSevenListBean collectionSevenListBean = new CollectionSevenListBean();
                    collectionSevenListBean.setType(1);
                    if (collectionModuleSevenSubBean.getModel_val() != null) {
                        collectionSevenListBean.setTitle(collectionModuleSevenSubBean.getModel_val().getTitle());
                        collectionSevenListBean.setSubTitle(collectionModuleSevenSubBean.getModel_val().getSub_title());
                        collectionSevenListBean.setCollection_id(collectionModuleSevenSubBean.getModel_val().getCollection_id());
                        collectionSevenListBean.setTpl_type(collectionModuleSevenSubBean.getModel_val().getTpl_type());
                    } else {
                        collectionSevenListBean.setTitle(collectionModuleSevenSubBean.getTitle());
                    }
                    this.datas.add(collectionSevenListBean);
                }
                if (model_type == 1) {
                    if (model_val != null && model_val.getGame_info() != null) {
                        CommonGameInfoBean game_info = model_val.getGame_info();
                        if (!TextUtils.isEmpty(model_val.getCover_url())) {
                            game_info.setBig_pic(model_val.getCover_url());
                        }
                        if (!TextUtils.isEmpty(model_val.getVideo_url())) {
                            game_info.setV_url(model_val.getVideo_url());
                        }
                        game_info.getExtBean().itemWithParent(this.pageExtBean);
                        this.datas.add(new CollectionSevenListBean(2, game_info));
                        this.allDownloadAppHomeBeans.add(model_val.getGame_info());
                    }
                } else if (model_type == 2) {
                    if (model_val != null && model_val.getCollection_list() != null) {
                        List<CommonGameInfoBean> collection_list = model_val.getCollection_list();
                        Iterator<CommonGameInfoBean> it2 = collection_list.iterator();
                        while (it2.hasNext()) {
                            it2.next().getExtBean().itemWithParent(this.pageExtBean);
                        }
                        this.datas.add(new CollectionSevenListBean(4, collection_list));
                        this.allDownloadAppHomeBeans.addAll(model_val.getCollection_list());
                    }
                    if (model_val != null && model_val.getGame_list() != null) {
                        for (CommonGameInfoBean commonGameInfoBean : model_val.getGame_list()) {
                            commonGameInfoBean.getExtBean().itemWithParent(this.pageExtBean);
                            this.datas.add(new CollectionSevenListBean(3, commonGameInfoBean));
                            this.allDownloadAppHomeBeans.add(commonGameInfoBean);
                        }
                    }
                } else if (model_type == 3) {
                    if (model_val != null && model_val.getGame_big() != null) {
                        CommonGameInfoBean game_big = model_val.getGame_big();
                        if (!TextUtils.isEmpty(model_val.getCover_url())) {
                            game_big.setBig_pic(model_val.getCover_url());
                        }
                        if (!TextUtils.isEmpty(model_val.getVideo_url())) {
                            game_big.setV_url(model_val.getVideo_url());
                        }
                        game_big.getExtBean().itemWithParent(this.pageExtBean);
                        this.datas.add(new CollectionSevenListBean(2, game_big));
                        this.allDownloadAppHomeBeans.add(model_val.getGame_big());
                    }
                    if (model_val != null && model_val.getGame_list() != null) {
                        for (CommonGameInfoBean commonGameInfoBean2 : model_val.getGame_list()) {
                            commonGameInfoBean2.getExtBean().itemWithParent(this.pageExtBean);
                            this.datas.add(new CollectionSevenListBean(3, commonGameInfoBean2));
                            this.allDownloadAppHomeBeans.add(commonGameInfoBean2);
                        }
                    }
                } else if (model_type == 4) {
                    if (model_val != null && model_val.getGame_big_list() != null) {
                        for (CommonGameInfoBean commonGameInfoBean3 : model_val.getGame_big_list()) {
                            commonGameInfoBean3.getExtBean().itemWithParent(this.pageExtBean);
                            this.datas.add(new CollectionSevenListBean(2, commonGameInfoBean3));
                            this.allDownloadAppHomeBeans.add(commonGameInfoBean3);
                        }
                    }
                } else if (model_type == 5) {
                    if (model_val != null && model_val.getGame_list() != null) {
                        for (CommonGameInfoBean commonGameInfoBean4 : model_val.getGame_list()) {
                            commonGameInfoBean4.getExtBean().itemWithParent(this.pageExtBean);
                            this.datas.add(new CollectionSevenListBean(3, commonGameInfoBean4));
                            this.allDownloadAppHomeBeans.add(commonGameInfoBean4);
                        }
                    }
                } else if (model_type == 6) {
                    if (model_val != null && model_val.getCollection_list() != null) {
                        List<CommonGameInfoBean> collection_list2 = model_val.getCollection_list();
                        Iterator<CommonGameInfoBean> it3 = collection_list2.iterator();
                        while (it3.hasNext()) {
                            it3.next().getExtBean().itemWithParent(this.pageExtBean);
                        }
                        this.datas.add(new CollectionSevenListBean(4, collection_list2));
                        this.allDownloadAppHomeBeans.addAll(model_val.getCollection_list());
                    }
                } else if (model_type == 7) {
                    if (model_val != null && model_val.getAdvert_list() != null) {
                        this.datas.add(new CollectionSevenListBean(5, model_val.getAdvert_list()));
                    }
                } else if (model_type == 14 && model_val != null && model_val.getGame_list() != null) {
                    for (CommonGameInfoBean commonGameInfoBean5 : model_val.getGame_list()) {
                        commonGameInfoBean5.getExtBean().itemWithParent(this.pageExtBean);
                        this.datas.add(new CollectionSevenListBean(3, commonGameInfoBean5));
                        this.allDownloadAppHomeBeans.add(commonGameInfoBean5);
                    }
                }
            }
        }
        for (CommonGameInfoBean commonGameInfoBean6 : this.allDownloadAppHomeBeans) {
            commonGameInfoBean6.set_from(168);
            commonGameInfoBean6.set_from_type(168);
            DlTaskManager.INSTANCE.updateDownloadTask(commonGameInfoBean6);
        }
        com.join.mgps.adapter.t tVar = this.sevenAdapter;
        if (tVar != null) {
            tVar.C(this.datas);
        }
        this.breakListView.postDelayed(new Runnable() { // from class: com.join.mgps.activity.v
            @Override // java.lang.Runnable
            public final void run() {
                this.f58164b.lambda$updateData$5();
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateSignUI(MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult result) {
        boolean z10;
        String string = "";
        if (result == null || result.getError() != 200) {
            ToastManager.show("签到失败，请重试");
            z10 = false;
        } else {
            showSignDialog(result.getInto().getTotalTime(), result.getInto().getFreeTime(), result.getInto().getVipTime());
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("total", result.getInto().getTotalTime());
                jSONObject.put("dailySign", result.getInto().getFreeTime());
                jSONObject.put("cloudGameVipSign", result.getInto().getVipTime());
                string = jSONObject.toString();
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            z10 = true;
        }
        com.papa.sim.statistic.t.l(this).R1(Event.commonReport, this.pageExtBean.copy().setChatId(EventP.ChatId.cloudGameVipDailySignPop.name()).setResultCode((z10 ? EventP.ResultCode.succ : EventP.ResultCode.fail).name()).setReMarks(string).buildScene().toExt());
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUserInfo(UserInfo userInfo) {
        final NewMemberInfo newMemberInfo = userInfo.getNewMemberInfo();
        if (newMemberInfo.getIsSigned()) {
            this.iv_btn_1.setImageResource(R.drawable.bg_cloud_game_zone_3);
        } else {
            this.iv_btn_1.setImageResource(R.drawable.bg_cloud_game_zone_2);
        }
        this.iv_btn_1.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f56451b.lambda$updateUserInfo$1(newMemberInfo, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showCloudSign(MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, boolean proactive) {
        if (adCfgInfo != null && adCfgInfo.getShowOldMember()) {
            if (DialogUtils.INSTANCE.showCloudGameSignTip(this, adCfgInfo, this.pageExtBean.copy().setChatId(EventP.ChatId.cloudGameOldUserDailySignPop.name()).buildScene(), new Runnable() { // from class: com.join.mgps.activity.z
                @Override // java.lang.Runnable
                public final void run() {
                    this.f58272b.sign();
                }
            })) {
                return;
            }
        }
        if (proactive) {
            showLastLaunchCloudGameIfNeeded();
        } else {
            if (adCfgInfo == null) {
                return;
            }
            if (adCfgInfo.getIsSigned()) {
                openWebPage(adCfgInfo);
            } else {
                sign();
            }
        }
    }
}
