package com.join.mgps.activity;

import android.content.Intent;
import android.graphics.Outline;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.activity.OnBackPressedCallback;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.BaseAppCompatActivity;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.CommonAdBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameMasteryLevel;
import com.join.mgps.dto.GameTimeLevel;
import com.join.mgps.dto.Item;
import com.join.mgps.dto.JpInfoBean;
import com.join.mgps.dto.RequestCommonAdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestSimulatorAchievementListArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.SimulatorAchievementBean;
import com.join.mgps.dto.SimulatorExitListBean;
import com.join.mgps.dto.SimulatorExitPanel;
import com.join.mgps.dto.SimulatorExitPanelArgs;
import com.join.mgps.dto.SimulatorExitPlayRequestArgs;
import com.join.mgps.dto.SimulatorExitPlayResponseData;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.bean.AchievementBean;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_simulator_exit_play_v1)
public class SimulatorExitPlayActivity1 extends BaseAppCompatActivity {

    @ViewById
    SimpleDraweeView adIcon;

    @ViewById
    TextView adTitle;

    @Extra
    int[] battleUids;

    @ViewById
    TextView btn_receive_r1;

    @ViewById
    TextView btn_receive_r2;

    @ViewById
    View btn_share;
    private SimulatorExitPlayResponseData data;

    @Extra
    String endId;
    private SimulatorExitPanel exitPanel;

    @Extra
    String gameId;

    @ViewById
    SimpleDraweeView game_bg;

    @ViewById
    View game_block;

    @ViewById
    SimpleDraweeView game_cover;
    private boolean hasStatPdPoint;

    @Extra
    boolean hideLevel;

    @ViewById
    View info;
    private boolean isBside;
    private boolean isHasAchievement;

    @Extra
    boolean isStatEndGameFailedPoint;

    @Extra
    int level;

    @ViewById
    ImageView levelIcon;

    @ViewById
    TextView levelName;

    @Extra
    String levelUrl;

    @ViewById
    ConstraintLayout level_bar;

    @Extra
    int max;
    WMNativeAdData nativeAdData;

    @ViewById
    TextView play_time;

    @Pref
    PrefDef_ prefDef;

    @Extra
    int progress;

    @ViewById
    ProgressBar progressBar;

    @ViewById
    TextView progressTv;

    @ViewById
    TextView r1_desc;

    @ViewById
    TextView r1_name;

    @ViewById
    TextView r2_desc;

    @ViewById
    TextView r2_name;

    @ViewById
    View reward;

    @ViewById
    View reward1;

    @ViewById
    ImageView reward1_icon;

    @ViewById
    View reward2;

    @ViewById
    ImageView reward2_icon;

    @ViewById
    FrameLayout reward_ad;

    @ViewById
    ImageView reward_bg;

    @ViewById
    TextView reward_title;
    com.join.mgps.rpc.k rpcGameClient;
    b7.j rpcLoginClient;

    @ViewById
    View save;

    @ViewById
    View se_reward_title;

    @ViewById
    View share_container;

    @Extra
    String snapshotPath;

    @Extra
    int time;

    @ViewById
    TextView tvTips;
    private boolean refreshData = false;
    List<SimulatorExitListBean> streamList = null;
    int adType = -1;

    class a implements WMNativeAdData.NativeADMediaListener {
        a() {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.NativeADMediaListener
        public void onVideoCompleted() {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.NativeADMediaListener
        public void onVideoError(WindMillError error) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("----------onVideoError----------:");
            sb2.append(error.toString());
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.NativeADMediaListener
        public void onVideoLoad() {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.NativeADMediaListener
        public void onVideoPause() {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.NativeADMediaListener
        public void onVideoResume() {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.NativeADMediaListener
        public void onVideoStart() {
        }
    }

    class b implements WMNativeAdData.AppDownloadListener {
        b() {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
        public void onDownloadActive(long totalBytes, long currBytes, String fileName, String appName) {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
        public void onDownloadFailed(long totalBytes, long currBytes, String fileName, String appName) {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
        public void onDownloadFinished(long totalBytes, String fileName, String appName) {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
        public void onDownloadPaused(long totalBytes, long currBytes, String fileName, String appName) {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
        public void onIdle() {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.AppDownloadListener
        public void onInstalled(String fileName, String appName) {
        }
    }

    class c implements WMNativeAdData.DislikeInteractionCallback {
        c() {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.DislikeInteractionCallback
        public void onCancel() {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.DislikeInteractionCallback
        public void onSelected(int position, String value, boolean enforce) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("----------onSelected----------:");
            sb2.append(position);
            sb2.append(":");
            sb2.append(value);
            sb2.append(":");
            sb2.append(enforce);
            FrameLayout frameLayout = SimulatorExitPlayActivity1.this.reward_ad;
            if (frameLayout != null) {
                frameLayout.removeAllViews();
            }
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.DislikeInteractionCallback
        public void onShow() {
        }
    }

    class d implements TTAdDislike.DislikeInteractionCallback {
        d() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onCancel() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onSelected(int position, String value, boolean enforce) {
            SimulatorExitPlayActivity1.this.reward_ad.removeAllViews();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onShow() {
        }
    }

    class e extends OnBackPressedCallback {
        e(boolean enabled) {
            super(enabled);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
        }
    }

    class f extends ViewOutlineProvider {
        f() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), view.getResources().getDimension(R.dimen.wdp9));
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Item f56017b;

        g(final Item val$item) {
            this.f56017b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goShareWebActivity(view.getContext(), this.f56017b.getJumpUrl());
            SimulatorExitPlayActivity1.this.refreshData = true;
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Item f56019b;

        h(final Item val$item) {
            this.f56019b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goShareWebActivity(view.getContext(), this.f56019b.getJumpUrl());
            SimulatorExitPlayActivity1.this.refreshData = true;
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            SimulatorExitPlayActivity1.this.closeSharePop();
        }
    }

    class j implements Animation.AnimationListener {
        j() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            SimulatorExitPlayActivity1.this.share_container.setVisibility(8);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class k implements WMNativeAdData.NativeAdInteractionListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ WMNativeAdData f56023a;

        k(final WMNativeAdData val$nativeAdData) {
            this.f56023a = val$nativeAdData;
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
        public void onADClicked(AdInfo adInfo) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onADClicked:");
            sb2.append(adInfo.toString());
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
        public void onADError(AdInfo adInfo, WindMillError error) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onADError:");
            sb2.append(error.toString());
            sb2.append(":");
            sb2.append(adInfo.toString());
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
        public void onADExposed(AdInfo adInfo) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onADExposed:");
            sb2.append(adInfo.toString());
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
        public void onADRenderSuccess(AdInfo adInfo, View view, float width, float height) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onADRenderSuccess:");
            sb2.append(adInfo.toString());
            View expressAdView = this.f56023a.getExpressAdView();
            FrameLayout frameLayout = SimulatorExitPlayActivity1.this.reward_ad;
            if (frameLayout != null) {
                frameLayout.removeAllViews();
                SimulatorExitPlayActivity1.this.reward_ad.addView(expressAdView);
            }
        }
    }

    class l implements WMNativeAdData.NativeAdInteractionListener {
        l() {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
        public void onADClicked(AdInfo adInfo) {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
        public void onADError(AdInfo adInfo, WindMillError error) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("----------onADError----------:");
            sb2.append(error.toString());
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
        public void onADExposed(AdInfo adInfo) {
        }

        @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
        public void onADRenderSuccess(AdInfo adInfo, View view, float width, float height) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("----------onADRenderSuccess----------:");
            sb2.append(width);
            sb2.append(":");
            sb2.append(height);
            FrameLayout frameLayout = SimulatorExitPlayActivity1.this.reward_ad;
            if (frameLayout != null) {
                frameLayout.removeAllViews();
                SimulatorExitPlayActivity1.this.reward_ad.addView(view);
            }
        }
    }

    private void bindListener(WMNativeAdData nativeAdData, String id2) {
        nativeAdData.setInteractionListener(new l());
        if (nativeAdData.getAdPatternType() == 4) {
            nativeAdData.setMediaListener(new a());
        }
        if (nativeAdData.getInteractionType() == 1) {
            nativeAdData.setDownloadListener(new b());
        }
        nativeAdData.setDislikeInteractionCallback(this, new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$bindRecommendAd$1(IntentDateBean intentDateBean, View view) {
        IntentUtil.getInstance().intentActivity(view.getContext(), intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setData$0(AppBeanMain appBeanMain, View view) {
        IntentUtil.getInstance().intentActivity(this, appBeanMain.getIntentDataBean());
    }

    private boolean needShowAd() {
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        return accountData == null || !com.join.mgps.Util.b.piv(accountData);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.action_login_success"})
    public void afterLogin() {
        load();
    }

    @AfterViews
    void afterViews() {
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        this.rpcLoginClient = com.join.mgps.rpc.impl.j.b().a();
        int i10 = 0;
        this.isBside = this.prefDef.pageVersion().d().intValue() == 2;
        this.game_block.setClipToOutline(true);
        this.game_block.setOutlineProvider(new f());
        setLevel();
        com.papa.sim.statistic.t.l(this).R1(Event.ExitGame_Recommend, new Ext());
        View view = this.info;
        if (this.isBside && this.isHasAchievement) {
            i10 = 8;
        }
        view.setVisibility(i10);
        this.play_time.setText(com.join.android.app.common.utils.i.e(this.time));
        receiveScreenShot(this.snapshotPath);
    }

    void bindGDTAdStreamListener(List<SimulatorExitListBean> ads) {
        if (ads == null || ads.size() == 0) {
            return;
        }
        this.reward_ad.removeAllViews();
        NativeExpressADView nativeExpressADView = (NativeExpressADView) ads.get(0).getData();
        this.reward_ad.addView(nativeExpressADView);
        nativeExpressADView.render();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void bindRecommendAd(CommonAdBean item) {
        if (item == null || item.getAd_info_list() == null || item.getAd_info_list().isEmpty()) {
            return;
        }
        CommonGameInfoBean commonGameInfoBean = item.getAd_info_list().get(0);
        if (commonGameInfoBean.getAd_switch().intValue() == 0) {
            return;
        }
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.item_simulator_exit_recommend_ad, (ViewGroup) this.reward_ad, false);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewInflate.findViewById(R.id.bg);
        this.reward_ad.setVisibility(0);
        this.reward_ad.addView(viewInflate);
        String big_pic = commonGameInfoBean.getBig_pic();
        if (!TextUtils.isEmpty(big_pic)) {
            simpleDraweeView.setController(Fresco.newDraweeControllerBuilder().b(Uri.parse(big_pic)).F(true).c(simpleDraweeView.getController()).build());
            simpleDraweeView.setTag(big_pic);
        }
        JpInfoBean jp_info = commonGameInfoBean.getJp_info();
        final IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(jp_info.getLink_type().intValue());
        intentDateBean.setJump_type(jp_info.getJump_type().intValue());
        intentDateBean.setLink_type_val(jp_info.getLink_type_val());
        intentDateBean.setCrc_link_type_val(jp_info.getCrc_link_type_val());
        intentDateBean.setTpl_type(jp_info.getTpl_type() + "");
        intentDateBean.setExtBean(new ExtBean().set_from_type(13102));
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.o9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SimulatorExitPlayActivity1.lambda$bindRecommendAd$1(intentDateBean, view);
            }
        });
    }

    void bindTTAdStreamListener(List<SimulatorExitListBean> ads) {
        if (ads == null || ads.size() == 0) {
            return;
        }
        this.reward_ad.removeAllViews();
        TTNativeExpressAd tTNativeExpressAd = (TTNativeExpressAd) ads.get(0).getObj();
        this.reward_ad.addView(tTNativeExpressAd.getExpressAdView());
        tTNativeExpressAd.setDislikeCallback(this, new d());
        tTNativeExpressAd.render();
    }

    @Click
    void btn_share() {
        this.share_container.setVisibility(0);
        this.share_container.startAnimation(AnimationUtils.loadAnimation(this, R.anim.slide_in_from_end));
        this.share_container.setOnClickListener(new i());
    }

    void calcLevel() {
        int i10;
        SimulatorExitPlayResponseData simulatorExitPlayResponseData = this.data;
        if (simulatorExitPlayResponseData == null || simulatorExitPlayResponseData.getGameMasteryLevel() == null) {
            return;
        }
        try {
            GameMasteryLevel gameMasteryLevel = this.data.getGameMasteryLevel();
            int i11 = 0;
            int[] iArr = new int[0];
            int i12 = this.time / 60;
            int current_lv_times = gameMasteryLevel.getCurrent_lv_times();
            int next_lv_times = gameMasteryLevel.getNext_lv_times();
            if (TextUtils.isEmpty(gameMasteryLevel.getLevel())) {
                i10 = 0;
            } else if (gameMasteryLevel.getLevel().equals("传说")) {
                i10 = 5;
            } else if (gameMasteryLevel.getLevel().equals("宗师")) {
                i10 = 4;
            } else if (gameMasteryLevel.getLevel().equals("精英")) {
                i10 = 3;
            } else {
                i10 = gameMasteryLevel.getLevel().equals("资深") ? 2 : 1;
            }
            try {
                ArrayList arrayList = (ArrayList) JsonMapper.getInstance().fromJson(this.prefDef.gameTimeLvCfg().d(), JsonMapper.getInstance().createCollectionType(ArrayList.class, GameTimeLevel.class));
                if (arrayList != null) {
                    iArr = new int[arrayList.size()];
                    for (int i13 = 0; i13 < arrayList.size(); i13++) {
                        iArr[i13] = ((GameTimeLevel) arrayList.get(i13)).getVal();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            int i14 = current_lv_times + i12;
            Arrays.sort(iArr);
            int i15 = 0;
            while (i11 < iArr.length) {
                i10 = i11 + 1;
                int i16 = iArr[i11];
                int i17 = i16 - i15;
                if (i14 > i17 && i11 != iArr.length - 1) {
                    i14 -= i17;
                    i11 = i10;
                    next_lv_times = i17;
                    i15 = i16;
                }
                next_lv_times = i17;
            }
            this.progress = Math.min(i14, next_lv_times);
            this.max = next_lv_times;
            this.level = i10;
            setLevel();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    void changeRewardType(int type) {
        if (type == 1) {
            this.reward_ad.setVisibility(0);
            this.reward.setVisibility(8);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.level_bar.getLayoutParams();
            layoutParams.bottomToTop = this.reward_ad.getId();
            this.level_bar.setLayoutParams(layoutParams);
            return;
        }
        this.reward.setVisibility(0);
        this.reward_ad.setVisibility(8);
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.level_bar.getLayoutParams();
        layoutParams2.bottomToTop = this.reward.getId();
        this.level_bar.setLayoutParams(layoutParams2);
    }

    void closeSharePop() {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this, R.anim.slide_out_to_end);
        animationLoadAnimation.setAnimationListener(new j());
        this.share_container.startAnimation(animationLoadAnimation);
    }

    @Click
    void exit() {
        try {
            if (this.isStatEndGameFailedPoint) {
                Ext ext = new Ext();
                ext.setEndId(this.endId);
                ext.setGameId(this.gameId);
                Data data = new Data();
                data.setGameId(this.gameId);
                com.papa.sim.statistic.t.l(this).i0(Event.gameVSFail, ext, data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        sendEmuExitBroadcast(1);
        com.join.mgps.va.overmind.i.q().V();
        if (needShowAd()) {
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.a(2));
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getAchievementData() {
        SimulatorAchievementBean data;
        if (com.join.android.app.common.utils.m.j(this)) {
            RequestSimulatorAchievementListArgs requestSimulatorAchievementListArgs = new RequestSimulatorAchievementListArgs();
            EMUApkTable eMUApkTableN = t6.p.o().n(q5.f.M().G(this.gameId).getPlugin_num());
            requestSimulatorAchievementListArgs.setUid(AccountUtil_.getInstance_(this).getUid());
            requestSimulatorAchievementListArgs.setPlugVersion(String.valueOf(eMUApkTableN == null ? 0 : eMUApkTableN.getVerCode()));
            requestSimulatorAchievementListArgs.setGameId(this.gameId);
            requestSimulatorAchievementListArgs.setToken(AccountUtil_.getInstance_(this).getToken());
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(requestSimulatorAchievementListArgs);
            requestModel.setDefault(this);
            ResponseModel<SimulatorAchievementBean> responseModelA0 = this.rpcGameClient.A0(requestModel.makeSign());
            if (responseModelA0 == null || responseModelA0.getData() == null || (data = responseModelA0.getData()) == null) {
                return;
            }
            showAchievement(data);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getExitPanel() {
        SimulatorAchievementBean data;
        if (com.join.android.app.common.utils.m.j(this)) {
            RequestSimulatorAchievementListArgs requestSimulatorAchievementListArgs = new RequestSimulatorAchievementListArgs();
            EMUApkTable eMUApkTableN = t6.p.o().n(q5.f.M().G(this.gameId).getPlugin_num());
            requestSimulatorAchievementListArgs.setUid(AccountUtil_.getInstance_(this).getUid());
            requestSimulatorAchievementListArgs.setPlugVersion(String.valueOf(eMUApkTableN == null ? 0 : eMUApkTableN.getVerCode()));
            requestSimulatorAchievementListArgs.setGameId(this.gameId);
            requestSimulatorAchievementListArgs.setToken(AccountUtil_.getInstance_(this).getToken());
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(requestSimulatorAchievementListArgs);
            requestModel.setDefault(this);
            ResponseModel<SimulatorAchievementBean> responseModelA0 = this.rpcGameClient.A0(requestModel.makeSign());
            if (responseModelA0 == null || responseModelA0.getData() == null || (data = responseModelA0.getData()) == null) {
                return;
            }
            showAchievement(data);
        }
    }

    @Click
    void info() {
        IntentUtil.getInstance().goShareWebActivity(this, this.levelUrl);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void load() {
        loadReward();
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
                RequestModel<SimulatorExitPlayRequestArgs> requestModel = new RequestModel<>();
                requestModel.setDefault(this).setArgs(new SimulatorExitPlayRequestArgs());
                requestModel.getArgs().setUid(accountData.getUid() + "");
                requestModel.getArgs().setToken(accountData.getToken() + "");
                requestModel.getArgs().setGameId(this.gameId);
                if (this.battleUids == null) {
                    this.battleUids = new int[0];
                }
                ArrayList arrayList = new ArrayList();
                for (int i10 : this.battleUids) {
                    arrayList.add(Integer.valueOf(i10));
                }
                requestModel.getArgs().setBattleUidList(arrayList);
                ResponseModel<SimulatorExitPlayResponseData> responseModelU = this.rpcGameClient.U(requestModel);
                if (responseModelU == null) {
                    toast(getString(R.string.request_failure));
                } else if (responseModelU.getFlag() == 1) {
                    setData(responseModelU.getData());
                } else {
                    toast(responseModelU.getMessage());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadRecommendAd() {
        List<CommonAdBean> data;
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                RequestCommonAdArgs requestCommonAdArgs = new RequestCommonAdArgs();
                requestCommonAdArgs.setPage(1);
                requestCommonAdArgs.setPositionMarkList(new ArrayList<String>() { // from class: com.join.mgps.activity.SimulatorExitPlayActivity1.8
                    {
                        add("SIMULATOR_EXIT_AD");
                    }
                });
                RequestModel requestModel = new RequestModel(this);
                requestModel.setArgs(requestCommonAdArgs);
                ResponseModel<List<CommonAdBean>> responseModelK0 = com.join.mgps.rpc.impl.i.P0().K0(requestModel.makeSign());
                if (responseModelK0 != null && responseModelK0.getData() != null && responseModelK0.getData().size() > 0 && (data = responseModelK0.getData()) != null && !data.isEmpty()) {
                    bindRecommendAd(data.get(0));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadReward() {
        ResponseModel<SimulatorExitPanel> responseModelBody;
        if (com.join.android.app.common.utils.m.j(this)) {
            SimulatorExitPanelArgs simulatorExitPanelArgs = new SimulatorExitPanelArgs();
            simulatorExitPanelArgs.setUid(AccountUtil_.getInstance_(this).getUid());
            simulatorExitPanelArgs.setGameId(this.gameId);
            simulatorExitPanelArgs.setUserToken(AccountUtil_.getInstance_(this).getToken());
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(simulatorExitPanelArgs);
            requestModel.setDefault(this);
            String uid = AccountUtil_.getInstance_(this).getUid();
            if (!TextUtils.isEmpty(uid)) {
                try {
                    requestModel.setUid(Long.valueOf(Long.parseLong(uid)));
                } catch (NumberFormatException unused) {
                }
            }
            requestModel.setUserToken(AccountUtil_.getInstance_(this).getToken());
            try {
                responseModelBody = this.rpcLoginClient.d(requestModel.makeSign()).execute().body();
            } catch (IOException e10) {
                e10.printStackTrace();
                responseModelBody = null;
            }
            updateReward(responseModelBody);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadRewardAd() {
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.a(4));
    }

    void onAdDestroy() {
        if (this.adType == 10) {
            this.reward_ad.removeAllViews();
            this.nativeAdData = null;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onAdEvent(com.join.mgps.event.b0 event) {
        if (event == null) {
            return;
        }
        if (event.c() == 6) {
            this.reward_ad.removeAllViews();
            return;
        }
        if (event.c() != 5) {
            event.c();
            return;
        }
        if (event.b() == null) {
            this.reward_ad.setVisibility(8);
            loadRecommendAd();
        }
        if (event.b() instanceof List) {
            if (this.streamList == null) {
                this.streamList = new ArrayList();
            }
            int i10 = 0;
            if (event.a() == 1) {
                this.adType = 1;
                List list = (List) event.b();
                if (list != null && list.size() > 0) {
                    while (i10 < list.size()) {
                        TTNativeExpressAd tTNativeExpressAd = (TTNativeExpressAd) list.get(i10);
                        SimulatorExitListBean simulatorExitListBean = new SimulatorExitListBean(4, tTNativeExpressAd.getExpressAdView());
                        simulatorExitListBean.setObj(tTNativeExpressAd);
                        this.streamList.add(simulatorExitListBean);
                        if (i10 == 0) {
                            tTNativeExpressAd.render();
                        }
                        i10++;
                    }
                }
                bindTTAdStreamListener(this.streamList);
                return;
            }
            if (event.a() == 2) {
                this.adType = 2;
                List list2 = (List) event.b();
                if (list2 != null && list2.size() > 0) {
                    while (i10 < list2.size()) {
                        NativeExpressADView nativeExpressADView = (NativeExpressADView) list2.get(i10);
                        SimulatorExitListBean simulatorExitListBean2 = new SimulatorExitListBean(4, nativeExpressADView);
                        simulatorExitListBean2.setObj(nativeExpressADView);
                        this.streamList.add(simulatorExitListBean2);
                        if (i10 == 0) {
                            nativeExpressADView.render();
                        }
                        i10++;
                    }
                }
                bindGDTAdStreamListener(this.streamList);
                return;
            }
            if (event.a() == 10) {
                this.adType = 10;
                List list3 = (List) event.b();
                if (list3 == null || list3.size() <= 0) {
                    return;
                }
                WMNativeAdData wMNativeAdData = (WMNativeAdData) list3.get(0);
                this.nativeAdData = wMNativeAdData;
                bindListener(wMNativeAdData, "");
                if (wMNativeAdData.isExpressAd()) {
                    wMNativeAdData.setInteractionListener(new k(wMNativeAdData));
                    wMNativeAdData.render();
                    return;
                }
                WMNativeAdContainer wMNativeAdContainer = new WMNativeAdContainer(this);
                wMNativeAdData.connectAdToView(this, wMNativeAdContainer, new com.join.mgps.ad.union.channel.tbid.a());
                FrameLayout frameLayout = this.reward_ad;
                if (frameLayout != null) {
                    frameLayout.removeAllViews();
                    this.reward_ad.addView(wMNativeAdContainer);
                }
            }
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(Integer.MIN_VALUE);
        getWindow().setStatusBarColor(-16777216);
        getWindow().setNavigationBarColor(-16777216);
        org.greenrobot.eventbus.c.f().v(this);
        getOnBackPressedDispatcher().addCallback(this, new e(true));
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
        try {
            List<SimulatorExitListBean> list = this.streamList;
            if (list != null) {
                for (SimulatorExitListBean simulatorExitListBean : list) {
                    if (simulatorExitListBean.getObj() instanceof TTNativeExpressAd) {
                        ((TTNativeExpressAd) simulatorExitListBean.getObj()).destroy();
                    } else if (simulatorExitListBean.getObj() instanceof NativeExpressADView) {
                        ((NativeExpressADView) simulatorExitListBean.getObj()).destroy();
                    }
                }
                this.streamList.clear();
                this.streamList = null;
            }
            onAdDestroy();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        calcLevel();
        if (this.data == null || this.refreshData) {
            load();
            this.refreshData = false;
        }
        if (this.isBside) {
            getAchievementData();
        }
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.ShowShare.main"})
    void receiveScreenShot(@Receiver.Extra("imagePath") String path) {
        com.join.mgps.Util.h1.e("receiveScreenShot", "path=" + path);
        if (TextUtils.isEmpty(path)) {
            return;
        }
        com.join.android.app.common.utils.l.h(this.game_cover, "file://" + path);
        com.join.android.app.common.utils.l.h(this.game_bg, "file://" + path);
    }

    @Click
    void resume() {
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.a(3));
        sendEmuExitBroadcast(0);
        com.join.mgps.va.overmind.i.q().g();
        finish();
    }

    @Click
    void save() {
        IntentUtil.getInstance().goMyAccountLoginActivity(this);
    }

    public void senCommonEvent(String eventName, String gameId) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint");
        intent.putExtra(CommonService_.AnonymousClass33.f72723b, eventName);
        intent.putExtra("gameId", gameId);
        sendBroadcast(intent);
    }

    void sendEmuExitBroadcast(int exit) {
        Intent intent = new Intent();
        intent.setAction("com.emu.ad.result");
        intent.putExtra("adAction", 100);
        intent.putExtra("exit", exit);
        if (Build.VERSION.SDK_INT >= 26) {
            intent.addFlags(16777216);
        }
        sendBroadcast(intent);
        com.join.mgps.va.overmind.i.t0(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setData(SimulatorExitPlayResponseData data) {
        this.data = data;
        if (data == null) {
            return;
        }
        calcLevel();
        if (data.getAdInfo() == null || data.getAdInfo().getMain() == null || data.getAdInfo().getMain().getAd_switch() != 1) {
            this.adIcon.setVisibility(8);
            this.adTitle.setVisibility(8);
            return;
        }
        this.adIcon.setVisibility(0);
        this.adTitle.setVisibility(0);
        if (data.getAdInfo().getMain() != null) {
            com.join.android.app.common.utils.l.h(this.adIcon, data.getAdInfo().getMain().getPic_remote());
            this.adTitle.setText(data.getAdInfo().getMain().getTitle());
        }
        if (data.getAdInfo().getSub() == null || data.getAdInfo().getSub().size() <= 0) {
            return;
        }
        final AppBeanMain appBeanMain = data.getAdInfo().getSub().get(0);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.activity.p9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57841b.lambda$setData$0(appBeanMain, view);
            }
        };
        this.adIcon.setOnClickListener(onClickListener);
        this.adTitle.setOnClickListener(onClickListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setLevel() {
        int i10;
        String str;
        int i11 = this.level;
        if (i11 == 5) {
            str = "传说";
            i10 = R.drawable.game_level_5;
        } else if (i11 == 4) {
            i10 = R.drawable.game_level_4;
            str = "宗师";
        } else if (i11 == 3) {
            i10 = R.drawable.game_level_3;
            str = "精英";
        } else if (i11 == 2) {
            i10 = R.drawable.game_level_2;
            str = "资深";
        } else {
            i10 = R.drawable.game_level_1;
            str = "见习";
        }
        if (this.isBside && this.isHasAchievement) {
            this.levelName.setText(GameMainActivity4.TITLE_ACHIEVEMENT);
            this.levelIcon.setImageResource(R.drawable.ic_title_achievement);
            this.info.setVisibility(8);
            return;
        }
        this.progressBar.setMax(100);
        this.progressBar.invalidate();
        if (this.max == 0) {
            this.max = this.progress;
        }
        int i12 = this.max;
        if (i12 != 0) {
            this.progressBar.setProgress((this.progress * 100) / i12);
            this.progressTv.setText(this.progress + net.lingala.zip4j.util.e.F0 + this.max);
        }
        this.levelName.setText(str);
        this.levelIcon.setImageResource(i10);
        this.info.setVisibility(0);
    }

    void sharePlatform(int target) {
        String str = "这关我花了" + com.join.android.app.common.utils.i.e(this.time) + "，快帮我看看怎么过关！";
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
        if (downloadTaskG != null && !TextUtils.isEmpty(downloadTaskG.getShowName())) {
            str = str + " #" + downloadTaskG.getShowName().trim();
        }
        String str2 = com.join.mgps.rpc.h.f72353k + "/user/share/game_info_v1/" + this.gameId + "?t=" + System.currentTimeMillis();
        String str3 = this.snapshotPath;
        ShareBean shareBean = new ShareBean();
        shareBean.setTitle("没人能过这关，我说的");
        shareBean.setText(str);
        shareBean.setQqUrl(str2);
        shareBean.setWechatFriendUrl(str2);
        shareBean.setWechatShareUrl(str2);
        shareBean.setqZoneShareUrl(str2);
        shareBean.setImagePath(str3);
        com.join.mgps.Util.w.p(this, target, shareBean);
    }

    @Click
    void share_qq() {
        sharePlatform(2);
        closeSharePop();
    }

    @Click
    void share_qzone() {
        sharePlatform(3);
        closeSharePop();
    }

    @Click
    void share_wx() {
        sharePlatform(0);
        closeSharePop();
    }

    @Click
    void share_wx_comments() {
        sharePlatform(1);
        closeSharePop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showAchievement(SimulatorAchievementBean data) {
        boolean z10 = data.getTarget() > 0;
        this.isHasAchievement = z10;
        if (z10) {
            setLevel();
        }
        if (AccountUtil_.getInstance_(this).isTourist()) {
            showTouristAchievement(data);
            return;
        }
        this.progressTv.setText(data.getDone() + net.lingala.zip4j.util.e.F0 + data.getTarget());
        this.progressBar.setMax(data.getTarget());
        this.progressBar.setProgress(data.getDone());
        if (data.getTarget() <= data.getDone()) {
            this.tvTips.setText("已解锁所有成就");
            return;
        }
        this.tvTips.setText("还有" + (data.getTarget() - data.getDone()) + "个成就等你解锁");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showTouristAchievement(SimulatorAchievementBean data) {
        Gson gson = new Gson();
        String string = getSharedPreferences("Papa_Stat_SharedPreferences", 4).getString("achievement_done", "");
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(string)) {
            Iterator<JsonElement> it2 = JsonParser.parseString(string).getAsJsonArray().iterator();
            while (it2.hasNext()) {
                arrayList.add((AchievementBean.AchievementInfo) gson.fromJson(it2.next(), AchievementBean.AchievementInfo.class));
            }
        }
        this.progressTv.setText(arrayList.size() + net.lingala.zip4j.util.e.F0 + data.getTarget());
        this.progressBar.setMax(data.getTarget());
        this.progressBar.setProgress(arrayList.size());
        this.tvTips.setText("还有" + (data.getTarget() - arrayList.size()) + "个成就等你解锁");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toast(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateReward(ResponseModel<SimulatorExitPanel> result) {
        if (result == null) {
            changeRewardType(1);
            loadRewardAd();
            return;
        }
        SimulatorExitPanel data = result.getData();
        this.exitPanel = data;
        if (data == null) {
            changeRewardType(1);
            loadRewardAd();
            return;
        }
        if (!Boolean.TRUE.equals(data.getShowDailyReward()) || data.getDailyReward() == null) {
            changeRewardType(1);
            loadRewardAd();
            return;
        }
        changeRewardType(0);
        this.reward_title.setText(data.getDailyReward().getTitle());
        List<Item> items = data.getDailyReward().getItems();
        this.reward1.setVisibility(8);
        this.reward2.setVisibility(8);
        if (items != null) {
            for (int i10 = 0; i10 < items.size(); i10++) {
                Item item = items.get(i10);
                if (item.getItemId() != null && item.getItemId().equals("daily_sign")) {
                    this.reward1.setVisibility(0);
                    this.r1_name.setText(item.getLabel());
                    this.r1_desc.setText(item.getDesc());
                    this.btn_receive_r1.setOnClickListener(new g(item));
                    if (item.getStatus() == 1) {
                        this.btn_receive_r1.setBackgroundResource(R.drawable.btn_se_received);
                        this.btn_receive_r1.setText("已领取");
                    } else {
                        this.btn_receive_r1.setBackgroundResource(R.drawable.btn_se_receive);
                        this.btn_receive_r1.setText("领取");
                    }
                } else if (item.getItemId() != null && item.getItemId().equals("net_gift")) {
                    this.reward2.setVisibility(0);
                    this.r2_name.setText(item.getLabel());
                    this.r2_desc.setText(item.getDesc());
                    this.btn_receive_r2.setOnClickListener(new h(item));
                    if (item.getStatus() == 1) {
                        this.btn_receive_r2.setBackgroundResource(R.drawable.btn_se_received);
                        this.btn_receive_r2.setText("去使用");
                    } else {
                        this.btn_receive_r2.setBackgroundResource(R.drawable.btn_se_receive);
                        this.btn_receive_r2.setText("领取");
                    }
                }
            }
        }
        ExtBean extBean = new ExtBean();
        extBean.setChatId(EventP.ChatId.exitGamePage.name());
        extBean.buildScene();
        com.papa.sim.statistic.t.l(this).R1(Event.commonExp, extBean.toExt());
    }
}
