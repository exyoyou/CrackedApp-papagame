package com.join.mgps.activity;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.CloudShareViewModle;
import com.join.kotlin.ui.cloudarchive.ModGameCloudArchiveFragment;
import com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment;
import com.join.kotlin.ui.cloudarchive.ModgameModTabFragment;
import com.join.kotlin.ui.cloudarchive.ModgameModTabFragment_;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathDataV2;
import com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
import com.join.kotlin.ui.cloudarchive.dialog.DownloadArchiveDialog;
import com.join.kotlin.ui.cloudarchive.dialog.ModPromptCallback;
import com.join.kotlin.ui.cloudarchive.dialog.ModPromptDialog;
import com.join.kotlin.ui.cloudarchive.dialog.NoticeArchiveDialog;
import com.join.kotlin.ui.introduction.ModIntroductionFragment;
import com.join.kotlin.ui.introduction.ModIntroductionFragment_;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import com.join.mgps.ad.RewardAdParams;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.customview.MyTouchFrameLayout;
import com.join.mgps.dto.ArchievePathMultiArgs;
import com.join.mgps.dto.ArchievePathMultiBean;
import com.join.mgps.dto.CloudGameConfigBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetialShowImageBean;
import com.join.mgps.dto.DetialShowImageSingBean;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GeneralCfgBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.dto.ModGameRecommendAdBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.PdAdCfgBean;
import com.join.mgps.dto.PlayCfgBean;
import com.join.mgps.dto.RequestModGameArgs;
import com.join.mgps.dto.RequestModGameRecommendAdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.SingleGameAdCfgBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.hmcloud.HMCloudGameManager;
import com.join.mgps.mod.bean.ModMeta;
import com.join.mgps.mod.utils.PluginConfig;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.wrapper.UserPrefs;
import com.sdk.base.module.manager.SDKManager;
import com.sigmob.sdk.base.mta.PointType;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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
import org.androidannotations.annotations.Fullscreen;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.WindowFeature;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@WindowFeature({1})
@EActivity(R.layout.activity_mod_game_index)
@Fullscreen
public class ModGameIndexActivity extends BaseAppCompatActivity implements View.OnSystemUiVisibilityChangeListener {
    public static final int STORAGE_PERMISSION_REQ_CODE = 7;
    private static com.github.snowdream.android.app.downloader.b factory;
    static com.github.snowdream.android.app.downloader.b.InterfaceC0591b listener;
    private static Map<String, com.github.snowdream.android.app.downloader.c> tasks = new ConcurrentHashMap(0);
    private ModGameArchivePathDataV2 archivePath;

    @ViewById
    ImageView btnRecommendToggleExpand;

    @ViewById
    ImageView btnRecommendToggleShrink;

    @ViewById
    ConstraintLayout cl_cloud;

    @ViewById
    ConstraintLayout cl_mod;
    Dialog dialog;
    Dialog dialogloding;
    private com.join.mgps.dialog.n1 domainDialog;
    com.join.mgps.dialog.h1 downloadDialog;

    @ViewById
    View expandMask;
    ExtBean extBean;

    @ViewById
    MyTouchFrameLayout flRecommendExpand;

    @ViewById
    MyTouchFrameLayout flRecommendShrink;

    @Extra
    String from;

    @Extra
    String gameId;
    private boolean hasDragged;
    private boolean isExpand;
    private boolean isShowExpand;

    @ViewById(R.id.iv_back)
    ImageView iv_back;

    @ViewById
    ImageView iv_cloud;

    @ViewById
    ImageView iv_cloud_1;

    @ViewById
    ImageView iv_mod;

    @ViewById
    ImageView iv_mod_1;

    @ViewById
    ImageView iv_mod_dot;

    @ViewById
    ImageView iv_mod_font;

    @ViewById(R.id.iv_mod_play)
    ImageView iv_mod_play;

    @ViewById
    ImageView iv_stand_font;
    private long lastExposureTime;

    @ViewById
    LinearLayout llContainer;

    @ViewById(R.id.ll_mod_start)
    LinearLayout ll_mod_start;

    @ViewById(R.id.ll_stand_start)
    LinearLayout ll_stand_start;

    @ViewById
    LinearLayout ll_vip;

    @ViewById
    View loding_faile;

    @ViewById
    View loding_layout;
    private Activity mActivity;
    private String memberUrl;
    private DownloadTask modDownloadTask;
    ModGameDetailBean modGameDetailBean;
    private com.join.mgps.adapter.o3 modGameRecomendShrinkAdapter;
    private com.join.mgps.adapter.p3 modGameRecommendExpandAdapter;
    GamedetialModleFourBean modInfoBean;
    ModIntroductionFragment modIntroductionFragment;
    ModgameCloudListFragment modShopFragment;
    ModgameModTabFragment modTabFragment;

    @Extra
    ExtBean parentExtBean;

    @Pref
    PrefDef_ prefDef_;

    @ViewById
    View rightLayout;

    @ViewById
    RecyclerView rvModGameRecommendExpand;

    @ViewById
    RecyclerView rvModGameRecommendShrink;
    private int scrolledDistance;

    @ViewById(R.id.sdv_image)
    SimpleDraweeView sdv_image;
    private DownloadTask standDownloadTask;

    @Extra
    String standGameId;
    GamedetialModleFourBean standInfoBean;

    @ViewById
    TabLayout tabLayout;

    @ViewById
    TextView tvRecommendAdCount;

    @ViewById(R.id.tv_game_name)
    TextView tv_game_name;

    @ViewById
    TextView tv_mod_install_status;

    @ViewById
    TextView tv_mod_status;

    @ViewById(R.id.tv_mod_type)
    TextView tv_mod_type;

    @ViewById(R.id.tv_new_version)
    TextView tv_new_version;

    @ViewById(R.id.tv_open_vip)
    SimpleDraweeView tv_open_vip;

    @ViewById(R.id.tv_stand_new_version)
    TextView tv_stand_new_version;

    @ViewById
    TextView tv_stand_status;

    @ViewById(R.id.tv_stand_type)
    TextView tv_stand_type;

    @ViewById
    TextView tv_text_5;
    private int uid;

    @ViewById
    ViewPager viewPager;
    private CloudShareViewModle viewmodle;
    ExtBean pageExtBean = new ExtBean().setChatId(EventP.ChatId.gameStartPage.name());
    private int dialogType = 0;
    private boolean isShowModMainGame = false;
    private ArrayList<CollectionBeanSub> recommendAds = new ArrayList<>();
    private int pageVersion = 0;
    private boolean isPause = false;
    private boolean needShowFinish = false;
    boolean isModUpdate = false;
    private Runnable autoShrinkRunnable = new k();
    private Runnable exposureRunnable = new r();
    private int lastRefreshPosition = 0;
    private long clickTime = 0;
    private boolean hasShowPromptDialog = false;
    List<z> tabDatas = new ArrayList();
    boolean hasVersion = false;

    class a implements Animator.AnimatorListener {
        a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ModGameIndexActivity.this.flRecommendExpand.setVisibility(8);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    class b implements Animator.AnimatorListener {
        b() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    class c extends LinearSmoothScroller {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f54735b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Context context, final int val$type) {
            super(context);
            this.f54735b = val$type;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public int calculateDyToMakeVisible(View view, int snapPreference) {
            return (int) (super.calculateDyToMakeVisible(view, snapPreference) + (this.f54735b == 1 ? ModGameIndexActivity.this.getResources().getDimension(R.dimen.wdp140) : ModGameIndexActivity.this.getResources().getDimension(R.dimen.wdp85)));
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return super.calculateSpeedPerPixel(displayMetrics) / 10.0f;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected int getVerticalSnapPreference() {
            return -1;
        }
    }

    class d implements ModPromptCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ModPromptDialog f54737a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54738b;

        d(final ModPromptDialog val$dialog, final DownloadTask val$downloadTask) {
            this.f54737a = val$dialog;
            this.f54738b = val$downloadTask;
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ModPromptCallback
        public void callback1() {
            this.f54737a.dismiss();
            ModGameIndexActivity.this.onlyOpenModGameAfterCheckAbi(this.f54738b);
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ModPromptCallback
        public void callback2() {
            ModGameIndexActivity.this.startStandGame();
            this.f54737a.dismiss();
        }
    }

    class e implements ModPromptCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ModPromptDialog f54740a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54741b;

        e(final ModPromptDialog val$dialog, final DownloadTask val$downloadTask) {
            this.f54740a = val$dialog;
            this.f54741b = val$downloadTask;
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ModPromptCallback
        public void callback1() {
            ModGameIndexActivity.this.startVmGameV2(this.f54741b);
            this.f54740a.dismiss();
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ModPromptCallback
        public void callback2() {
            ModGameIndexActivity.this.startStandGame();
            this.f54740a.dismiss();
        }
    }

    class f implements com.join.mgps.dialog.n1.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f54743a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54744b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f54745c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ DomainInfoBean f54746d;

        f(final int val$type, final DownloadTask val$downloadTask, final int val$position, final DomainInfoBean val$pdInfo) {
            this.f54743a = val$type;
            this.f54744b = val$downloadTask;
            this.f54745c = val$position;
            this.f54746d = val$pdInfo;
        }

        @Override // com.join.mgps.dialog.n1.a
        public void a() {
            ModGameIndexActivity.this.domainDialog.dismiss();
            int i10 = this.f54743a;
            if (i10 == 1) {
                ModGameIndexActivity.this.showDialog(this.f54744b, this.f54745c);
            } else if (i10 == 2) {
                ModGameIndexActivity.this.checkShowCopyDialog(this.f54744b);
            }
        }

        @Override // com.join.mgps.dialog.n1.a
        public void b() {
            UtilsMy.D4(ModGameIndexActivity.this.mActivity, this.f54746d.getInfo(), "single_game_start");
            com.papa.sim.statistic.t.l(ModGameIndexActivity.this.mActivity).R1(Event.pdSingleStartClick, new Ext().setGameId(ModGameIndexActivity.this.gameId).setIsJoin(this.f54746d.getIs_join()).setTestAbNumber(this.f54746d.getAb_test_number()));
        }
    }

    class g implements ClickDelDialogListener {
        g() {
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
        public void onClickCancleButn() {
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
        public void onClickOkButn() {
        }
    }

    class h implements ClickDelDialogListener {
        h() {
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
        public void onClickCancleButn() {
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
        public void onClickOkButn() {
        }
    }

    class i implements ClickDelDialogListener {
        i() {
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
        public void onClickCancleButn() {
        }

        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
        public void onClickOkButn() {
        }
    }

    class j implements GameRoomActivity.x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f54751a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f54752b;

        j(final Context val$context, final DownloadTask val$task) {
            this.f54751a = val$context;
            this.f54752b = val$task;
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
            com.join.android.app.common.utils.g.t0(this.f54751a);
            APKUtils.f0(this.f54751a, this.f54752b.getPackageName());
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            com.join.android.app.common.utils.g.t0(this.f54751a);
            APKUtils.f0(this.f54751a, this.f54752b.getPackageName());
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ModGameIndexActivity.this.recommendToggle();
        }
    }

    class l implements TabLayout.d {
        l() {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(TabLayout.g tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabSelected(TabLayout.g tab) {
            if (tab == null || tab.g() == null) {
                return;
            }
            tab.g().findViewById(R.id.main).setBackgroundResource(ModGameIndexActivity.this.tabDatas.get(tab.k()).f54776b);
            ImageView imageView = (ImageView) tab.g().findViewById(R.id.icon);
            TextView textView = (TextView) tab.g().findViewById(R.id.name);
            imageView.setImageResource(ModGameIndexActivity.this.tabDatas.get(tab.k()).f54778d);
            textView.setTextColor(Color.parseColor(ModGameIndexActivity.this.tabDatas.get(tab.k()).f54779e));
            if (ModGameIndexActivity.this.tabDatas.get(tab.k()).f54780f.equals("MOD")) {
                com.papa.sim.statistic.t.l(ModGameIndexActivity.this).R1(Event.changeCloudItTab, new Ext().setFrom("1").setGameId(ModGameIndexActivity.this.gameId));
                return;
            }
            if (ModGameIndexActivity.this.tabDatas.get(tab.k()).f54780f.equals("我的存档")) {
                com.papa.sim.statistic.t.l(ModGameIndexActivity.this).R1(Event.changeCloudItTab, new Ext().setFrom("2"));
                return;
            }
            if (!ModGameIndexActivity.this.tabDatas.get(tab.k()).f54780f.equals(GameMainActivity4.TITLE_INTRODUCTION)) {
                com.papa.sim.statistic.t.l(ModGameIndexActivity.this).R1(Event.changeCloudItTab, new Ext().setFrom("0").setGameId(ModGameIndexActivity.this.gameId));
                return;
            }
            tab.g().findViewById(R.id.tvRedPoint).setVisibility(8);
            tab.g().findViewById(R.id.icon_gif).setVisibility(8);
            tab.g().findViewById(R.id.icon).setVisibility(0);
            com.papa.sim.statistic.t.l(ModGameIndexActivity.this).s1(Event.singleStartGamePageList, Event.ClickIntroTab, "", new Ext().setFrom("1"), new Data().setGameId(ModGameIndexActivity.this.gameId));
            com.papa.sim.statistic.t.l(ModGameIndexActivity.this).R1(Event.changeCloudItTab, new Ext().setFrom("2").setGameId(ModGameIndexActivity.this.gameId));
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(TabLayout.g tab) {
            if (tab == null || tab.g() == null) {
                return;
            }
            tab.g().findViewById(R.id.main).setBackgroundResource(R.drawable.alph);
            ImageView imageView = (ImageView) tab.g().findViewById(R.id.icon);
            TextView textView = (TextView) tab.g().findViewById(R.id.name);
            imageView.setImageResource(ModGameIndexActivity.this.tabDatas.get(tab.k()).f54775a);
            textView.setTextColor(Color.parseColor(ModGameIndexActivity.this.tabDatas.get(tab.k()).f54777c));
            if (ModGameIndexActivity.this.tabDatas.get(tab.k()).f54780f.equals(GameMainActivity4.TITLE_INTRODUCTION)) {
                tab.g().findViewById(R.id.icon).setVisibility(8);
                tab.g().findViewById(R.id.icon_gif).setVisibility(0);
            }
        }
    }

    class m extends com.join.mgps.dialog.h1 {
        m(Context context) {
            super(context);
        }

        @Override // com.join.mgps.dialog.h1, android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialog) {
            if (!ModGameIndexActivity.this.isShowModMainGame) {
                if (ModGameIndexActivity.this.dialogType == 2 && ModGameIndexActivity.this.modDownloadTask != null && ModGameIndexActivity.this.modDownloadTask.getStatus() != 2 && ModGameIndexActivity.this.modDownloadTask.getStatus() != 9 && ModGameIndexActivity.this.modDownloadTask.getStatus() != 42) {
                    ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
                    modGameIndexActivity.startDownload(modGameIndexActivity.modDownloadTask, ModGameIndexActivity.this.modInfoBean);
                }
                ModGameIndexActivity modGameIndexActivity2 = ModGameIndexActivity.this;
                modGameIndexActivity2.showInstallButn(modGameIndexActivity2.modDownloadTask);
                return;
            }
            if (ModGameIndexActivity.this.dialogType == 2 && ModGameIndexActivity.this.standDownloadTask != null && ModGameIndexActivity.this.standDownloadTask.getStatus() != 2 && ModGameIndexActivity.this.standDownloadTask.getStatus() != 9 && ModGameIndexActivity.this.standDownloadTask.getStatus() != 42) {
                ModGameIndexActivity modGameIndexActivity3 = ModGameIndexActivity.this;
                if (modGameIndexActivity3.standInfoBean != null) {
                    modGameIndexActivity3.startDownload(modGameIndexActivity3.standDownloadTask, ModGameIndexActivity.this.standInfoBean);
                }
            }
            ModGameIndexActivity modGameIndexActivity4 = ModGameIndexActivity.this;
            modGameIndexActivity4.showInstallButn(modGameIndexActivity4.standDownloadTask);
        }
    }

    class n implements DialogInterface.OnDismissListener {
        n() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            if (ModGameIndexActivity.this.isShowModMainGame) {
                if (ModGameIndexActivity.this.standDownloadTask == null || ModGameIndexActivity.this.standDownloadTask.getStatus() != 2) {
                    ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
                    modGameIndexActivity.showInstallButn(modGameIndexActivity.standDownloadTask);
                    return;
                } else {
                    ModGameIndexActivity modGameIndexActivity2 = ModGameIndexActivity.this;
                    modGameIndexActivity2.showProgress(modGameIndexActivity2.standDownloadTask);
                    return;
                }
            }
            if (ModGameIndexActivity.this.modDownloadTask == null || ModGameIndexActivity.this.modDownloadTask.getStatus() != 2) {
                ModGameIndexActivity modGameIndexActivity3 = ModGameIndexActivity.this;
                modGameIndexActivity3.showInstallButn(modGameIndexActivity3.modDownloadTask);
            } else {
                ModGameIndexActivity modGameIndexActivity4 = ModGameIndexActivity.this;
                modGameIndexActivity4.showProgress(modGameIndexActivity4.modDownloadTask);
            }
        }
    }

    class o implements com.join.mgps.dialog.h1.a {

        class a implements GameRoomActivity.x {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.join.mgps.dialog.h1 f54758a;

            a(final com.join.mgps.dialog.h1 val$dialog) {
                this.f54758a = val$dialog;
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onFail(int type) {
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onSuccess(int type, int duration) {
                ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
                modGameIndexActivity.startDownload(modGameIndexActivity.modDownloadTask, ModGameIndexActivity.this.modInfoBean);
            }

            @Override // com.join.mgps.activity.arena.GameRoomActivity.x
            public void onSuccess(int type, int duration, ButtonBean buttonBean) {
                com.join.mgps.dialog.h1 h1Var = this.f54758a;
                if (h1Var == null || !h1Var.isShowing()) {
                    return;
                }
                this.f54758a.dismiss();
            }
        }

        o() {
        }

        @Override // com.join.mgps.dialog.h1.a
        public void a(com.join.mgps.dialog.h1 dialog) {
            ModGameIndexActivity.this.dialogType = 2;
            ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
            modGameIndexActivity.downloadDialog.C(modGameIndexActivity.dialogType, ModGameIndexActivity.this.isShowModMainGame, ModGameIndexActivity.this.hasVersion);
            if (ModGameIndexActivity.this.isShowModMainGame) {
                if (ModGameIndexActivity.this.standDownloadTask.getStatus() == 9 || ModGameIndexActivity.this.standDownloadTask.getStatus() == 42) {
                    ModGameIndexActivity modGameIndexActivity2 = ModGameIndexActivity.this;
                    modGameIndexActivity2.startUpdate(modGameIndexActivity2.standDownloadTask, ModGameIndexActivity.this.standInfoBean);
                    return;
                } else {
                    ModGameIndexActivity modGameIndexActivity3 = ModGameIndexActivity.this;
                    modGameIndexActivity3.startDownload(modGameIndexActivity3.standDownloadTask, ModGameIndexActivity.this.standInfoBean);
                    return;
                }
            }
            if (ModGameIndexActivity.this.modDownloadTask.getStatus() == 9 || ModGameIndexActivity.this.modDownloadTask.getStatus() == 42) {
                ModGameIndexActivity modGameIndexActivity4 = ModGameIndexActivity.this;
                modGameIndexActivity4.startUpdate(modGameIndexActivity4.modDownloadTask, ModGameIndexActivity.this.modInfoBean);
            } else {
                try {
                    String strD = new PrefDef_(ModGameIndexActivity.this).androidIdNullsKey().d();
                    if (com.join.mgps.Util.t2.i(strD)) {
                        List list = (List) JsonMapper.getInstance().fromJson(strD, List.class);
                        if (com.join.mgps.Util.t2.i(MApplication.K) && list.contains(MApplication.K) && IntentUtil.getInstance().goLogin(ModGameIndexActivity.this)) {
                            return;
                        }
                    }
                } catch (Exception unused) {
                }
                if (new PrefDef_(ModGameIndexActivity.this).download_game_switch().d().booleanValue()) {
                    ModGameIndexActivity modGameIndexActivity5 = ModGameIndexActivity.this;
                    UtilsMy.A0(modGameIndexActivity5, 2, modGameIndexActivity5.modDownloadTask.getCrc_link_type_val(), "VIRTUAL_SINGLE", new a(dialog));
                } else {
                    ModGameIndexActivity modGameIndexActivity6 = ModGameIndexActivity.this;
                    modGameIndexActivity6.startDownload(modGameIndexActivity6.modDownloadTask, ModGameIndexActivity.this.modInfoBean);
                }
            }
            if (ModGameIndexActivity.this.modDownloadTask == null || ModGameIndexActivity.this.modDownloadTask.getStatus() != 0) {
                return;
            }
            com.papa.sim.statistic.t.l(ModGameIndexActivity.this).R1(Event.modDownloadTip_install, new Ext().setGameId(ModGameIndexActivity.this.gameId).setPosition(dialog.o() + ""));
        }

        @Override // com.join.mgps.dialog.h1.a
        public void b(com.join.mgps.dialog.h1 dialog) {
            if (dialog != null && dialog.isShowing()) {
                dialog.dismiss();
            }
            if (ModGameIndexActivity.this.isShowModMainGame) {
                if (ModGameIndexActivity.this.standDownloadTask == null || ModGameIndexActivity.this.standDownloadTask.getStatus() != 42) {
                    return;
                }
                ModGameIndexActivity.this.standDownloadTask.setStatus(5);
                ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
                if (modGameIndexActivity.standInfoBean != null) {
                    modGameIndexActivity.startDownload(modGameIndexActivity.standDownloadTask, ModGameIndexActivity.this.standInfoBean);
                    return;
                }
                return;
            }
            if (ModGameIndexActivity.this.modDownloadTask != null && ModGameIndexActivity.this.modDownloadTask.getStatus() == 42) {
                ModGameIndexActivity.this.modDownloadTask.setStatus(5);
                ModGameIndexActivity modGameIndexActivity2 = ModGameIndexActivity.this;
                modGameIndexActivity2.startDownload(modGameIndexActivity2.modDownloadTask, ModGameIndexActivity.this.modInfoBean);
            }
            if (ModGameIndexActivity.this.modDownloadTask == null || ModGameIndexActivity.this.modDownloadTask.getStatus() != 0) {
                return;
            }
            com.papa.sim.statistic.t.l(ModGameIndexActivity.this).R1(Event.modDownloadTip_exit, new Ext().setGameId(ModGameIndexActivity.this.gameId).setPosition(dialog.o() + ""));
        }
    }

    class p implements com.join.mgps.Util.x1.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f54760a;

        p(final boolean val$needRetry) {
            this.f54760a = val$needRetry;
        }

        @Override // com.join.mgps.Util.x1.b
        public void a(com.join.mgps.Util.x1.c result) {
            if (result.a() != 1) {
                if (this.f54760a) {
                    ModGameIndexActivity.this.updatePay(false);
                }
            } else {
                ModGameIndexActivity.this.finish();
                com.join.mgps.Util.x1 x1VarC = com.join.mgps.Util.x1.c();
                ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
                x1VarC.e(modGameIndexActivity, modGameIndexActivity.extBean.getFrom_id(), result.b());
                com.join.mgps.Util.a3.b(ModGameIndexActivity.this).d("授权成功");
            }
        }
    }

    class q extends e6.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f54762a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UserPrefs f54763b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f54764c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f54765d;

        q(final int val$type, final UserPrefs val$userPrefs, final int val$u, final int val$adc) {
            this.f54762a = val$type;
            this.f54763b = val$userPrefs;
            this.f54764c = val$u;
            this.f54765d = val$adc;
        }

        @Override // e6.c, e6.b
        public void onAdClose() {
            if (this.f54762a == 1) {
                ModGameIndexActivity.this.onlyOpenModGame();
            } else {
                ModGameIndexActivity.this.onlyOpenStandGame();
            }
        }

        @Override // e6.c, e6.b
        public void onAdShow() {
            this.f54763b.setAdGamesConfig(this.f54764c + "", this.f54765d);
        }

        @Override // e6.c, e6.b
        public void onDirectLaunch() {
            if (this.f54762a == 1) {
                ModGameIndexActivity.this.onlyOpenModGame();
            } else {
                ModGameIndexActivity.this.onlyOpenStandGame();
            }
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iFindLastCompletelyVisibleItemPosition;
            int iFindLastVisibleItemPosition;
            int iFindLastCompletelyVisibleItemPosition2;
            int iFindLastVisibleItemPosition2;
            View viewFindViewByPosition;
            View viewFindViewByPosition2;
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) ModGameIndexActivity.this.rvModGameRecommendExpand.getLayoutManager();
            LinearLayoutManager linearLayoutManager2 = (LinearLayoutManager) ModGameIndexActivity.this.rvModGameRecommendShrink.getLayoutManager();
            if (linearLayoutManager != null) {
                iFindLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
                iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
            } else {
                iFindLastCompletelyVisibleItemPosition = 0;
                iFindLastVisibleItemPosition = 0;
            }
            if (linearLayoutManager2 != null) {
                iFindLastCompletelyVisibleItemPosition2 = linearLayoutManager2.findLastCompletelyVisibleItemPosition();
                iFindLastVisibleItemPosition2 = linearLayoutManager2.findLastVisibleItemPosition();
            } else {
                iFindLastCompletelyVisibleItemPosition2 = 0;
                iFindLastVisibleItemPosition2 = 0;
            }
            if (!ModGameIndexActivity.this.isExpand) {
                iFindLastCompletelyVisibleItemPosition = iFindLastCompletelyVisibleItemPosition2;
            }
            int iMin = Math.min(iFindLastCompletelyVisibleItemPosition, ModGameIndexActivity.this.recommendAds.size() - 1);
            if (!ModGameIndexActivity.this.isExpand) {
                iFindLastVisibleItemPosition = iFindLastVisibleItemPosition2;
            }
            if (Math.min(iFindLastVisibleItemPosition, ModGameIndexActivity.this.recommendAds.size() - 1) == ModGameIndexActivity.this.recommendAds.size() - 1) {
                if (ModGameIndexActivity.this.isExpand) {
                    if (linearLayoutManager != null && (viewFindViewByPosition2 = linearLayoutManager.findViewByPosition(ModGameIndexActivity.this.recommendAds.size() - 1)) != null) {
                        Rect rect = new Rect();
                        viewFindViewByPosition2.getLocalVisibleRect(rect);
                        if ((rect.height() * 100.0f) / viewFindViewByPosition2.getMeasuredHeight() > 60.0f) {
                            iMin = ModGameIndexActivity.this.recommendAds.size() - 1;
                        }
                    }
                } else if (linearLayoutManager2 != null && (viewFindViewByPosition = linearLayoutManager2.findViewByPosition(ModGameIndexActivity.this.recommendAds.size() - 1)) != null) {
                    Rect rect2 = new Rect();
                    viewFindViewByPosition.getLocalVisibleRect(rect2);
                    if ((rect2.height() * 100.0f) / viewFindViewByPosition.getMeasuredHeight() > 60.0f) {
                        iMin = ModGameIndexActivity.this.recommendAds.size() - 1;
                    }
                }
            }
            for (int i10 = 0; i10 <= iMin; i10++) {
                CollectionBeanSub collectionBeanSub = (CollectionBeanSub) ModGameIndexActivity.this.recommendAds.get(i10);
                if (!collectionBeanSub.getExposure()) {
                    ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
                    modGameIndexActivity.sendExposurePoint(collectionBeanSub, i10, modGameIndexActivity.isExpand);
                    collectionBeanSub.setExposure(true);
                    ModGameIndexActivity.this.recommendAds.set(i10, collectionBeanSub);
                }
            }
        }
    }

    class s extends RecyclerView.OnScrollListener {
        s() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            ModGameIndexActivity.this.exposure();
            if (newState == 1) {
                ModGameIndexActivity.this.refreshRecomAdsSelected(-1);
                ModGameIndexActivity.this.hasDragged = true;
            }
            if (newState == 0 && ModGameIndexActivity.this.scrolledDistance != 0 && ModGameIndexActivity.this.hasDragged) {
                com.papa.sim.statistic.t.l(ModGameIndexActivity.this.mActivity).S1(Event.listClickBigPicSlideUPDown, ModGameIndexActivity.this.uid, ModGameIndexActivity.this.getPointGameId(), -1, ModGameIndexActivity.this.pageVersion);
                ModGameIndexActivity.this.scrolledDistance = 0;
                ModGameIndexActivity.this.hasDragged = false;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            if (System.currentTimeMillis() - ModGameIndexActivity.this.lastExposureTime < 200) {
                return;
            }
            ModGameIndexActivity.this.exposure();
            ModGameIndexActivity.this.lastExposureTime = System.currentTimeMillis();
            ModGameIndexActivity.access$712(ModGameIndexActivity.this, dy);
        }
    }

    class t extends RecyclerView.OnScrollListener {
        t() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            ModGameIndexActivity.this.exposure();
            if (newState == 1) {
                ModGameIndexActivity.this.hasDragged = true;
                return;
            }
            if (newState == 0 && ModGameIndexActivity.this.scrolledDistance != 0 && ModGameIndexActivity.this.hasDragged) {
                com.papa.sim.statistic.t.l(ModGameIndexActivity.this.mActivity).S1(Event.listClickIconSlideUPDown, ModGameIndexActivity.this.uid, ModGameIndexActivity.this.getPointGameId(), -1, ModGameIndexActivity.this.pageVersion);
                ModGameIndexActivity.this.scrolledDistance = 0;
                ModGameIndexActivity.this.hasDragged = false;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            if (System.currentTimeMillis() - ModGameIndexActivity.this.lastExposureTime < 200) {
                return;
            }
            ModGameIndexActivity.this.exposure();
            ModGameIndexActivity.this.lastExposureTime = System.currentTimeMillis();
            ModGameIndexActivity.access$712(ModGameIndexActivity.this, dy);
        }
    }

    class u implements GestureDetector.OnGestureListener {
        u() {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent1, float v10, float v11) {
            return ModGameIndexActivity.this.handleGesture(motionEvent, motionEvent1);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent1, float v10, float v11) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }
    }

    class v implements com.github.snowdream.android.app.downloader.b.InterfaceC0591b {
        v() {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onError(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onFinish(String url) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onFinish onStart - ");
            sb2.append(url);
            com.github.snowdream.android.app.downloader.c cVar = (com.github.snowdream.android.app.downloader.c) ModGameIndexActivity.tasks.get(url);
            if (cVar != null && com.join.mgps.Util.t2.i(cVar.d())) {
                com.join.android.app.common.utils.g.t0(ModGameIndexActivity.this).z(ModGameIndexActivity.this, cVar.g());
            }
            ModGameIndexActivity.tasks.remove(url);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onProgress(String url, int progress, String speed) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onStart(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onStop(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onWait(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void updateSize(String url, long actualSize) {
        }
    }

    class w extends m6.e {
        w() {
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void a(Activity activity) {
            super.a(activity);
            if (activity != null) {
                activity.finish();
            }
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void b(Activity activity) {
            super.b(activity);
            if (activity != null) {
                activity.finish();
            }
        }
    }

    class x implements GameRoomActivity.x {
        x() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
            modGameIndexActivity.showDialog(modGameIndexActivity.modDownloadTask);
        }
    }

    class y implements GameRoomActivity.x {
        y() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
            ModGameIndexActivity modGameIndexActivity = ModGameIndexActivity.this;
            modGameIndexActivity.showDialog(modGameIndexActivity.standDownloadTask);
        }
    }

    class z {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f54775a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f54776b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f54778d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f54780f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f54777c = "#C1D0DD";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f54779e = "#FFFFFF";

        z() {
        }
    }

    static /* synthetic */ int access$712(ModGameIndexActivity modGameIndexActivity, int i10) {
        int i11 = modGameIndexActivity.scrolledDistance + i10;
        modGameIndexActivity.scrolledDistance = i11;
        return i11;
    }

    private void checkModUpdate() {
        this.isModUpdate = false;
        if (this.modInfoBean != null) {
            DownloadTask downloadTaskG = com.join.mgps.Util.t2.i(this.gameId) ? q5.f.M().G(this.gameId) : null;
            if (downloadTaskG == null || this.modDownloadTask == null) {
                return;
            }
            try {
                this.modDownloadTask = downloadTaskG;
                if (!downloadTaskG.getFileType().equals(Dtype.MOD.name()) || this.modDownloadTask.getStatus() != 5) {
                    this.modDownloadTask.setStatus(downloadTaskG.getStatus());
                    return;
                }
                if (Boolean.valueOf(com.join.mgps.va.overmind.i.q().K(this.modDownloadTask.getPackageName())).booleanValue()) {
                    DownloadTask downloadTaskG2 = q5.f.M().G(this.modDownloadTask.getCrc_link_type_val());
                    if (downloadTaskG2 != null && ((ModInfoBean) JsonMapper.getInstance().fromJson(downloadTaskG2.getMod_info(), ModInfoBean.class)).getVer() < this.modInfoBean.getMod_info().getVer() && this.modDownloadTask.getStatus() == 5) {
                        this.modDownloadTask.setStatus(9);
                        this.isModUpdate = true;
                    }
                    d7.a aVarU = com.join.mgps.va.overmind.i.q().u(this.modDownloadTask.getPackageName());
                    if (aVarU != null && com.join.mgps.Util.t2.i(this.modInfoBean.getVer()) && aVarU.f90718k < Integer.parseInt(this.modInfoBean.getVer()) && this.modDownloadTask.getStatus() == 5) {
                        if (this.modInfoBean.getGame_upgrade_state() == 1) {
                            this.modDownloadTask.setStatus(9);
                        } else {
                            this.modDownloadTask.setStatus(42);
                        }
                    }
                } else {
                    this.modDownloadTask.setStatus(11);
                }
                if (this.modDownloadTask.getStatus() != 9 && this.modDownloadTask.getStatus() != 42) {
                    this.tv_new_version.setVisibility(8);
                    return;
                }
                if (com.join.mgps.va.overmind.c.b(com.join.mgps.va.overmind.c.d(com.join.mgps.va.overmind.k.f73277a.A(this.modDownloadTask.getPackageName())))) {
                    this.tv_new_version.setVisibility(0);
                } else {
                    this.tv_new_version.setVisibility(8);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkShowCopyDialog(DownloadTask task) {
        if (task.getStatus() != 5 || task.isOpen() || this.standDownloadTask == null || !com.join.android.app.common.utils.g.t0(this).e(this, this.standDownloadTask.getPackageName()) || this.modGameDetailBean.getCloud_archive_local_path() == null) {
            return;
        }
        UtilsMy.Q4(this, task.getCrc_link_type_val());
        if (!this.modGameDetailBean.getCloud_archive_local_path().getMainArchiveLocalPath().startsWith("/Android/data")) {
            if (this.modGameDetailBean.getCloud_archive_local_path().getMainArchiveLocalPath().startsWith("/data/data")) {
                showDialogError(task);
            }
        } else {
            if (Build.VERSION.SDK_INT > 29) {
                showDialogError(task);
                return;
            }
            if (this.dialog == null) {
                this.dialog = com.join.mgps.Util.h0.h0(this).y(this, "存档拷贝中");
            }
            this.dialog.show();
            copyArchive(task);
        }
    }

    private void checkStandUpdate() {
        GamedetialModleFourBean gamedetialModleFourBean;
        if (this.standInfoBean != null) {
            DownloadTask downloadTaskG = this.standGameId != null ? q5.f.M().G(this.standGameId) : null;
            if (downloadTaskG == null && (gamedetialModleFourBean = this.standInfoBean) != null) {
                DownloadTask downloadtaskDown = gamedetialModleFourBean.getDownloadtaskDown();
                this.standDownloadTask = downloadtaskDown;
                Dtype dtype = Dtype.android;
                downloadtaskDown.setRomType(dtype.name());
                this.standDownloadTask.setFileType(dtype.name());
            }
            if (downloadTaskG == null || this.standDownloadTask == null) {
                return;
            }
            try {
                this.standDownloadTask = downloadTaskG;
                if (!downloadTaskG.getFileType().equals(Dtype.android.name()) || this.standDownloadTask.getStatus() != 5) {
                    this.standDownloadTask.setStatus(downloadTaskG.getStatus());
                } else if (Boolean.valueOf(com.join.android.app.common.utils.g.t0(this).e(this, this.standDownloadTask.getPackageName())).booleanValue()) {
                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this).n(this, this.standDownloadTask.getPackageName());
                    if (com.join.mgps.Util.t2.i(this.standInfoBean.getVer()) && aVarN.d() < Integer.parseInt(this.standInfoBean.getVer()) && this.standDownloadTask.getStatus() == 5) {
                        if (this.standInfoBean.getGame_upgrade_state() == 1) {
                            this.standDownloadTask.setStatus(9);
                        } else {
                            this.standDownloadTask.setStatus(42);
                        }
                    }
                } else {
                    this.standDownloadTask.setStatus(11);
                }
                if (this.standDownloadTask.getStatus() != 9 && this.standDownloadTask.getStatus() != 42) {
                    this.tv_stand_new_version.setVisibility(8);
                    return;
                }
                this.tv_stand_new_version.setVisibility(0);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exposure() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(this.exposureRunnable);
        }
    }

    private void initRecommendList() {
        this.rvModGameRecommendShrink.setLayoutManager(new LinearLayoutManager(this));
        com.join.mgps.adapter.o3 o3Var = new com.join.mgps.adapter.o3(this.recommendAds);
        this.modGameRecomendShrinkAdapter = o3Var;
        this.rvModGameRecommendShrink.setAdapter(o3Var);
        this.modGameRecomendShrinkAdapter.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.mgps.activity.q7
            @Override // com.join.mgps.base.BaseQuickAdapter.j
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f57911a.lambda$initRecommendList$1(baseQuickAdapter, view, i10);
            }
        });
        this.rvModGameRecommendExpand.setLayoutManager(new LinearLayoutManager(this));
        com.join.mgps.adapter.p3 p3Var = new com.join.mgps.adapter.p3(this.recommendAds);
        this.modGameRecommendExpandAdapter = p3Var;
        this.rvModGameRecommendExpand.setAdapter(p3Var);
        this.rvModGameRecommendExpand.setItemAnimator(null);
        this.modGameRecommendExpandAdapter.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.mgps.activity.r7
            @Override // com.join.mgps.base.BaseQuickAdapter.j
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f57958a.lambda$initRecommendList$2(baseQuickAdapter, view, i10);
            }
        });
        this.modGameRecommendExpandAdapter.setOnItemChildClickListener(new BaseQuickAdapter.h() { // from class: com.join.mgps.activity.s7
            @Override // com.join.mgps.base.BaseQuickAdapter.h
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f58097a.lambda$initRecommendList$3(baseQuickAdapter, view, i10);
            }
        });
        this.rvModGameRecommendExpand.addOnScrollListener(new s());
        this.rvModGameRecommendShrink.addOnScrollListener(new t());
        GestureDetector gestureDetector = new GestureDetector(this, new u());
        this.flRecommendExpand.setDetector(gestureDetector);
        this.flRecommendShrink.setDetector(gestureDetector);
    }

    private boolean isModMainGame(DownloadTask task) {
        ModInfoBean modInfoBean = com.join.mgps.Util.t2.i(task.getMod_info()) ? (ModInfoBean) JsonMapper.getInstance().fromJson(task.getMod_info(), ModInfoBean.class) : null;
        return modInfoBean == null || task.getCrc_link_type_val().equals(modInfoBean.getMain_game_id());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterViews$0(CloudShareViewModle.CloudShareEvent cloudShareEvent) {
        DownloadTask downloadTask;
        if (cloudShareEvent.getShowdownloadModDialog() == 0 || (downloadTask = this.modDownloadTask) == null) {
            return;
        }
        showDialog(downloadTask);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initRecommendList$1(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        setRecommendRvsPositionEqual(1, i10);
        recommendToggle();
        com.papa.sim.statistic.t.l(this).S1(Event.listClickIconStatus, this.uid, getPointGameId(), 2, this.pageVersion);
        com.papa.sim.statistic.t.l(this.mActivity).B1(Event.gameClickIconModelClick, this.uid, this.recommendAds.get(i10).getGame_id(), getPointGameId(), i10 + 1, this.pageVersion);
        refreshRecomAdsSelected(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initRecommendList$2(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        CollectionBeanSub collectionBeanSub = this.recommendAds.get(i10);
        if (collectionBeanSub != null) {
            com.papa.sim.statistic.t.l(this.mActivity).B1(Event.gameClickBigPicGoDetail, this.uid, collectionBeanSub.getGame_id(), getPointGameId(), i10 + 1, this.pageVersion);
            IntentDateBean intentDataBean = collectionBeanSub.getIntentDataBean();
            ExtBean extBean = intentDataBean.getExtBean();
            extBean.setFrom("148");
            intentDataBean.setExtBean(extBean);
            collectionBeanSub.getIntentDataBean().setExtBean(this.extBean);
            IntentUtil.getInstance().intentActivity(this, intentDataBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initRecommendList$3(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        CollectionBeanSub collectionBeanSub = this.recommendAds.get(i10);
        DownloadTask downloadTaskG = collectionBeanSub.getMod_info() != null ? q5.f.M().G(collectionBeanSub.getModGameId()) : q5.f.M().G(collectionBeanSub.getGameId());
        if (downloadTaskG == null) {
            UtilsMy.b1(this.mActivity, collectionBeanSub);
            com.papa.sim.statistic.t.l(this.mActivity).B1(Event.gameClickBigModelGet, this.uid, collectionBeanSub.getGame_id(), getPointGameId(), i10 + 1, this.pageVersion);
            return;
        }
        downloadTaskG.set_from(101);
        downloadTaskG.set_from_type(148);
        int status = downloadTaskG.getStatus();
        if (status != 0) {
            if (status == 11) {
                UtilsMy.w4(downloadTaskG, this.mActivity);
                return;
            }
            if (status == 13) {
                com.php25.PDownload.d.l(this.mActivity, downloadTaskG);
                return;
            }
            if (status == 2) {
                com.php25.PDownload.d.i(downloadTaskG);
                com.join.android.app.common.servcie.q.b(this.mActivity, downloadTaskG, Event.downloadStop);
                return;
            }
            if (status != 3) {
                if (status != 5) {
                    if (status != 6) {
                        if (status != 7) {
                            if (status != 42) {
                                if (status != 43) {
                                    return;
                                }
                            }
                        }
                    }
                }
                UtilsMy.k4(this.mActivity, downloadTaskG);
                return;
            }
            com.php25.PDownload.d.c(downloadTaskG, this.mActivity);
            return;
        }
        UtilsMy.b1(this.mActivity, collectionBeanSub);
        com.papa.sim.statistic.t.l(this.mActivity).B1(Event.gameClickBigModelGet, this.uid, collectionBeanSub.getGame_id(), getPointGameId(), i10 + 1, this.pageVersion);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onlyOpenModGameAfterCheckAbi$4(DownloadTask downloadTask) {
        if (this.hasShowPromptDialog || ((downloadTask.getModInfoBean() == null || !downloadTask.getModInfoBean().isIncompatible()) && (downloadTask.getSingleGameModInfoBean() == null || !downloadTask.getSingleGameModInfoBean().isIncompatible()))) {
            startVmGameV2(downloadTask);
            return null;
        }
        showAndroidVersionIncompatiblePrompt(downloadTask);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTabUi$5(Integer num) {
        this.isShowModMainGame = false;
        DownloadTask downloadTask = this.modDownloadTask;
        if (downloadTask == null || downloadTask.getStatus() != 48) {
            showDialog(this.modDownloadTask, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$startDownload$6(DownloadTask downloadTask, PrefDef_ prefDef_) {
        if (com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName())) {
            startGameADCheck(this, 1, prefDef_.mod_enhance_ad_cfg().d());
            return null;
        }
        UtilsMy.w4(downloadTask, this);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onlyOpenModGame() {
        DownloadTask downloadTaskG;
        if (!com.join.mgps.Util.t2.i(this.gameId) || (downloadTaskG = q5.f.M().G(this.gameId)) == null) {
            return;
        }
        if (APKUtils.f34739a.z(downloadTaskG.getCpu_type())) {
            onlyOpenModGameAfterCheckAbi(downloadTaskG);
        } else {
            showCpuAbiIncompatiblePrompt(downloadTaskG);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onlyOpenModGameAfterCheckAbi(final DownloadTask task) {
        try {
            com.join.mgps.va.overmind.i.h0(task.getPackageName(), task.getResource_path());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (com.join.mgps.va.overmind.i.q().R(task.getPackageName())) {
            if (APKUtils.c(this, task, this.parentExtBean)) {
                return;
            }
            this.prefDef_.launchGameIdCheckVaExtInstall().g(task.getCrc_link_type_val());
            if (APKUtils.h(this, new Function0() { // from class: com.join.mgps.activity.u7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return this.f58159b.lambda$onlyOpenModGameAfterCheckAbi$4(task);
                }
            })) {
                return;
            }
        }
        if (this.hasShowPromptDialog || ((task.getModInfoBean() == null || !task.getModInfoBean().isIncompatible()) && (task.getSingleGameModInfoBean() == null || !task.getSingleGameModInfoBean().isIncompatible()))) {
            startVmGameV2(task);
        } else {
            showAndroidVersionIncompatiblePrompt(task);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onlyOpenStandGame() {
        DownloadTask downloadTaskG;
        int i10;
        if (com.join.mgps.Util.t2.i(this.standGameId) && (downloadTaskG = q5.f.M().G(this.standGameId)) != null) {
            if (com.join.android.app.common.utils.g.t0(this).e(this, downloadTaskG.getPackageName())) {
                Iterator<TipBean> it2 = downloadTaskG.getTipBeans().iterator();
                boolean z10 = false;
                while (it2.hasNext()) {
                    if ("23".equals(it2.next().getId())) {
                        z10 = true;
                    }
                }
                boolean zBooleanValue = new PrefDef_(this).launch_game_switch().d().booleanValue();
                if (z10 && zBooleanValue) {
                    UtilsMy.A0(this, 1, downloadTaskG.getCrc_link_type_val(), "ANDROID_SINGLE", new j(this, downloadTaskG));
                } else {
                    com.join.android.app.common.utils.g.t0(this);
                    APKUtils.f0(this, downloadTaskG.getPackageName());
                }
                if (APKUtils.K(downloadTaskG)) {
                    i10 = 1;
                } else {
                    i10 = APKUtils.P(downloadTaskG) ? 2 : 0;
                }
                com.papa.sim.statistic.t.l(this).j1(downloadTaskG.getCrc_link_type_val(), AccountUtil_.getInstance_(this).getUid(), i10, downloadTaskG.get_from(), downloadTaskG.get_from_type(), downloadTaskG.getExt(), this.pageExtBean.copy().setGameId(downloadTaskG.getCrc_link_type_val()).setResourceId(downloadTaskG.getCrc_link_type_val()).setTypeCode(EventP.TypeCode.game.name()).buildScene().toExt());
                UtilsMy.Q4(this, downloadTaskG.getCrc_link_type_val());
                return;
            }
            if (downloadTaskG.getStatus() == 11) {
                UtilsMy.w4(downloadTaskG, this);
                return;
            }
        }
        com.join.mgps.Util.a3.b(this).d("请连接网络后重试!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recommendToggle() {
        this.hasDragged = false;
        this.scrolledDistance = 0;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.clickTime < 500) {
            return;
        }
        this.clickTime = jCurrentTimeMillis;
        refreshRecomAdsSelected(-1);
        if (this.flRecommendExpand.getVisibility() == 0) {
            this.expandMask.setVisibility(8);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.flRecommendExpand, "translationX", 0.0f, getResources().getDimension(R.dimen.wdp318));
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.flRecommendExpand, "alpha", 1.0f, 0.5f);
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.flRecommendShrink, "alpha", 0.0f, 1.0f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(objectAnimatorOfFloat);
            animatorSet.play(objectAnimatorOfFloat2);
            animatorSet.play(objectAnimatorOfFloat3);
            animatorSet.setDuration(200L);
            animatorSet.addListener(new a());
            animatorSet.start();
            this.isExpand = false;
            setRecommendRvsPositionEqual(2, -1);
        } else {
            this.flRecommendExpand.setVisibility(0);
            this.expandMask.setVisibility(0);
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.flRecommendExpand, "translationX", getResources().getDimension(R.dimen.wdp318), 0.0f);
            ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.flRecommendExpand, "alpha", 0.8f, 1.0f);
            ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.flRecommendShrink, "alpha", 0.5f, 1.0f);
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.play(objectAnimatorOfFloat4);
            animatorSet2.play(objectAnimatorOfFloat5);
            animatorSet2.play(objectAnimatorOfFloat6);
            animatorSet2.setDuration(200L);
            animatorSet2.addListener(new b());
            animatorSet2.start();
            this.isExpand = true;
        }
        exposure();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshRecomAdsSelected(int position) {
        if (this.lastRefreshPosition >= 0 || position >= 0) {
            this.lastRefreshPosition = position;
            ArrayList<CollectionBeanSub> arrayList = this.recommendAds;
            if (arrayList == null || arrayList.size() <= position) {
                return;
            }
            int i10 = 0;
            while (i10 < this.recommendAds.size()) {
                this.recommendAds.get(i10).setSelected(i10 == position);
                i10++;
            }
            com.join.mgps.adapter.p3 p3Var = this.modGameRecommendExpandAdapter;
            if (p3Var != null) {
                p3Var.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendExposurePoint(CollectionBeanSub sub, int position, boolean isExpand) {
        com.papa.sim.statistic.t.l(this).B1(isExpand ? Event.gameClickBigPicGoWYDetail : Event.gameClickIconModelWYClick, this.uid, sub.getGame_id(), getPointGameId(), position + 1, this.pageVersion);
    }

    private void setRecommendRvsPositionEqual(int type, int position) {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.rvModGameRecommendExpand.getLayoutManager();
        LinearLayoutManager linearLayoutManager2 = (LinearLayoutManager) this.rvModGameRecommendShrink.getLayoutManager();
        if (linearLayoutManager == null || linearLayoutManager2 == null) {
            return;
        }
        int iFindFirstVisibleItemPosition = type == 1 ? linearLayoutManager2.findFirstVisibleItemPosition() : linearLayoutManager.findFirstVisibleItemPosition();
        c cVar = new c(this, type);
        if (position < 0) {
            position = iFindFirstVisibleItemPosition;
        }
        cVar.setTargetPosition(position);
        if (type == 1) {
            linearLayoutManager.startSmoothScroll(cVar);
        } else {
            linearLayoutManager2.startSmoothScroll(cVar);
        }
    }

    private boolean shouldShowDomainDialog() {
        PdAdCfgBean pdAdCfgBeanConvertStr2Bean = PdAdCfgBean.convertStr2Bean(this.prefDef_.pd_ad_config().d());
        if (!(pdAdCfgBeanConvertStr2Bean != null && pdAdCfgBeanConvertStr2Bean.canShowSingleStartUp())) {
            return false;
        }
        if (pdAdCfgBeanConvertStr2Bean != null) {
            pdAdCfgBeanConvertStr2Bean.updateSingleShowTimes();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDialog(DownloadTask downloadTask) {
        showDialog(downloadTask, 1);
    }

    private void showDialogError(DownloadTask task, String desc) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        NoticeArchiveDialog noticeArchiveDialog = new NoticeArchiveDialog();
        noticeArchiveDialog.setClickDelDialogListener(new h());
        noticeArchiveDialog.setDialogData(new DialogData("", desc, "我知道了", "", false));
        noticeArchiveDialog.show(getSupportFragmentManager(), "");
    }

    private void showDomainDialog(DownloadTask downloadTask, int type, int position) {
        com.join.mgps.dialog.n1 n1Var = this.domainDialog;
        if (n1Var == null || !n1Var.isShowing()) {
            if (!shouldShowDomainDialog()) {
                if (type == 1) {
                    showDialog(downloadTask, position);
                    return;
                } else {
                    if (type == 2) {
                        checkShowCopyDialog(downloadTask);
                        return;
                    }
                    return;
                }
            }
            DomainInfoBean pd_info = this.modGameDetailBean.getPd_info();
            if (this.modGameDetailBean == null || pd_info == null) {
                return;
            }
            com.join.mgps.dialog.n1 n1Var2 = new com.join.mgps.dialog.n1(this, pd_info);
            this.domainDialog = n1Var2;
            n1Var2.t(new f(type, downloadTask, position, pd_info));
            this.domainDialog.show();
            com.papa.sim.statistic.t.l(this.mActivity).R1(Event.pdSingleStartDetails, new Ext().setGameId(this.gameId).setIsJoin(pd_info.getIs_join()).setTestAbNumber(pd_info.getAb_test_number()));
        }
    }

    private void showFinishDialog() {
        NoticeArchiveDialog noticeArchiveDialog = new NoticeArchiveDialog();
        noticeArchiveDialog.setClickDelDialogListener(new g());
        noticeArchiveDialog.setDialogData(new DialogData("", "已成功同步存档至增强模式", "我知道了", "", false));
        noticeArchiveDialog.show(getSupportFragmentManager(), "");
    }

    /* JADX WARN: Code duplicated, block: B:110:0x04ba  */
    /* JADX WARN: Code duplicated, block: B:112:0x04c0  */
    /* JADX WARN: Code duplicated, block: B:113:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:116:? A[RETURN, SYNTHETIC] */
    private void showTabUi(ModGameDetailBean modgameBean) {
        int i10;
        com.join.mgps.Util.y.c archiveSection;
        if (modgameBean.getCloud_archive_local_path() != null) {
            modgameBean.getCloud_archive_local_path().setModPackageName(modgameBean.getMod_game_info().getPackageName());
            modgameBean.getCloud_archive_local_path().setMainGamePackageName(modgameBean.getMain_game_info().getPackageName());
            this.viewmodle.setModGameArchivePathData(modgameBean.getCloud_archive_local_path());
            if (com.join.mgps.va.overmind.i.q().R(modgameBean.getMod_game_info().getPackageName())) {
                this.viewmodle.setInstallInExtPlug(true);
            }
            this.viewmodle.loadLocalArchiveDatas(this);
        }
        if (com.join.mgps.va.overmind.i.q().S() && (archiveSection = PluginConfig.getArchiveSection(com.join.mgps.va.overmind.k.f73277a.o(modgameBean.getMod_game_info().getPackageName()))) != null) {
            String strC = archiveSection.c("archiveId");
            if (com.join.mgps.Util.t2.i(strC)) {
                this.viewmodle.getRunIngArchiveId().setValue(Long.valueOf(Long.parseLong(strC)));
            }
        }
        this.tabLayout.t();
        this.tabLayout.L();
        this.viewmodle.getShowDownlloadDialog().observe(this, new Observer() { // from class: com.join.mgps.activity.v7
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f58173a.lambda$showTabUi$5((Integer) obj);
            }
        });
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        if (modgameBean.getMod_game_info() != null && modgameBean.getMod_game_info().getBbs_strategy_switch() == 1 && this.modIntroductionFragment == null) {
            this.modIntroductionFragment = new ModIntroductionFragment_();
            Bundle bundle2 = new Bundle();
            bundle2.putString("gameId", this.gameId);
            bundle2.putString("draftUrl", modgameBean.getMod_game_info().getBbs_strategy_contribute_url());
            this.modIntroductionFragment.setArguments(bundle2);
            arrayList.add(new com.join.mgps.adapter.h0.a(GameMainActivity4.TITLE_INTRODUCTION, this.modIntroductionFragment));
        }
        if (modgameBean.getCloud_archive_local_path() != null) {
            this.modShopFragment = new ModgameCloudListFragment();
            bundle.putString("gameId", this.gameId);
            bundle.putInt("type", 1);
            bundle.putSerializable("datas", modgameBean);
            this.modShopFragment.setArguments(bundle);
            arrayList.add(new com.join.mgps.adapter.h0.a("存档社区", this.modShopFragment));
            Bundle bundle3 = new Bundle();
            com.join.mgps.va.overmind.i.q().h(modgameBean.getMod_game_info().getPackageName(), 0);
            bundle3.putString("gameId", this.gameId);
            bundle3.putInt("type", 1);
            bundle3.putSerializable("datas", modgameBean);
            arrayList.add(new com.join.mgps.adapter.h0.a("我的存档", Fragment.instantiate(this, ModGameCloudArchiveFragment.class.getName(), bundle3)));
        }
        Bundle bundle4 = new Bundle();
        bundle4.putString("gameId", this.gameId);
        bundle4.putInt("type", 2);
        if (com.join.mgps.Util.t2.i(this.gameId)) {
            this.modDownloadTask = q5.f.M().G(this.gameId);
        }
        if (this.modDownloadTask == null) {
            this.modDownloadTask = modgameBean.getMod_game_info().getDownloadtaskDown();
        }
        if (modgameBean.getGold_finger() != null && modgameBean.getGold_finger().size() > 0) {
            this.modTabFragment = new ModgameModTabFragment_();
            bundle4.putSerializable("datas", modgameBean);
            this.modTabFragment.setArguments(bundle4);
            arrayList.add(new com.join.mgps.adapter.h0.a("MOD", this.modTabFragment));
        }
        this.viewPager.setAdapter(new com.join.mgps.adapter.h0(getSupportFragmentManager(), arrayList));
        this.tabLayout.setupWithViewPager(this.viewPager);
        boolean z10 = modgameBean.getMod_game_info() != null && modgameBean.getMod_game_info().getBbs_strategy_switch() == 1;
        if (z10) {
            z zVar = new z();
            zVar.f54775a = R.drawable.ic_introduction_selected;
            zVar.f54778d = R.drawable.ic_introduction_selected;
            zVar.f54780f = GameMainActivity4.TITLE_INTRODUCTION;
            zVar.f54776b = R.drawable.tab_selected;
            this.tabDatas.add(zVar);
            TabLayout.g gVarD = this.tabLayout.D(0);
            if (gVarD != null) {
                gVarD.u(R.layout.mod_tab_layout);
                ImageView imageView = (ImageView) gVarD.g().findViewById(R.id.icon);
                gVarD.g().setBackgroundResource(R.drawable.tab_selected);
                imageView.setImageResource(R.drawable.ic_introduction_selected);
                imageView.setVisibility(8);
                TextView textView = (TextView) gVarD.g().findViewById(R.id.name);
                textView.setText(GameMainActivity4.TITLE_INTRODUCTION);
                textView.setTextColor(Color.parseColor("#FFFFFF"));
                TextView textView2 = (TextView) gVarD.g().findViewById(R.id.tvRedPoint);
                textView2.setVisibility(0);
                textView2.setText("新");
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) gVarD.g().findViewById(R.id.icon_gif);
                simpleDraweeView.setVisibility(0);
                com.join.android.app.common.utils.l.n(simpleDraweeView, Uri.parse("res:///2131233132"));
            }
        }
        if (modgameBean.getCloud_archive_local_path() == null) {
            if (z10) {
                z zVar2 = new z();
                zVar2.f54775a = R.drawable.ic_introduction_selected;
                zVar2.f54778d = R.drawable.ic_introduction_selected;
                zVar2.f54780f = GameMainActivity4.TITLE_INTRODUCTION;
                zVar2.f54776b = R.drawable.tab_selected;
                this.tabDatas.add(zVar2);
                TabLayout.g gVarD2 = this.tabLayout.D(0);
                if (gVarD2 != null) {
                    gVarD2.u(R.layout.mod_tab_layout);
                    ImageView imageView2 = (ImageView) gVarD2.g().findViewById(R.id.icon);
                    imageView2.setVisibility(8);
                    gVarD2.g().setBackgroundResource(R.drawable.tab_selected);
                    imageView2.setImageResource(R.drawable.ic_introduction_selected);
                    TextView textView3 = (TextView) gVarD2.g().findViewById(R.id.name);
                    textView3.setTextColor(Color.parseColor("#C1D0DD"));
                    textView3.setText(GameMainActivity4.TITLE_INTRODUCTION);
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) gVarD2.g().findViewById(R.id.icon_gif);
                    simpleDraweeView2.setVisibility(0);
                    com.join.android.app.common.utils.l.n(simpleDraweeView2, Uri.parse("res:///2131233132"));
                }
            }
            if ((this.modDownloadTask == null || modgameBean.getGold_finger() == null || modgameBean.getGold_finger().size() <= 0) ? false : true) {
                z zVar3 = new z();
                zVar3.f54775a = R.drawable.mod_mod_normal;
                zVar3.f54778d = R.drawable.mod_mod_selected;
                zVar3.f54780f = "MOD";
                zVar3.f54776b = R.drawable.tab_selected;
                this.tabDatas.add(zVar3);
                TabLayout.g gVarD3 = z10 ? this.tabLayout.D(1) : this.tabLayout.D(0);
                if (gVarD3 != null) {
                    gVarD3.u(R.layout.mod_tab_layout);
                    if (!z10) {
                        gVarD3.g().setBackgroundResource(R.drawable.tab_selected);
                    }
                    ImageView imageView3 = (ImageView) gVarD3.g().findViewById(R.id.icon);
                    imageView3.setVisibility(0);
                    imageView3.setImageResource(R.drawable.mod_mod_normal);
                    TextView textView4 = (TextView) gVarD3.g().findViewById(R.id.name);
                    textView4.setTextColor(Color.parseColor(this.tabDatas.get(gVarD3.k()).f54777c));
                    textView4.setText("MOD");
                    if (z10) {
                        textView4.setTextColor(Color.parseColor("#C1D0DD"));
                    } else {
                        textView4.setTextColor(Color.parseColor("#FFFFFF"));
                    }
                }
            }
            this.tabLayout.h(new l());
            if (this.modShopFragment != null) {
                ViewPager viewPager = this.viewPager;
                if (this.modIntroductionFragment == null) {
                    i10 = 0;
                } else {
                    i10 = 1;
                }
                viewPager.setCurrentItem(i10);
            }
        }
        z zVar4 = new z();
        zVar4.f54775a = R.drawable.mod_archive_normal;
        zVar4.f54778d = R.drawable.mod_archive_selcted;
        zVar4.f54776b = R.drawable.tab_selected2;
        zVar4.f54780f = "存档社区";
        this.tabDatas.add(zVar4);
        TabLayout.g gVarD4 = z10 ? this.tabLayout.D(1) : this.tabLayout.D(0);
        if (gVarD4 != null) {
            gVarD4.u(R.layout.mod_tab_layout);
            ImageView imageView4 = (ImageView) gVarD4.g().findViewById(R.id.icon);
            imageView4.setVisibility(0);
            if (!z10) {
                gVarD4.g().setBackgroundResource(R.drawable.tab_selected);
            }
            imageView4.setImageResource(R.drawable.mod_archive_normal);
            TextView textView5 = (TextView) gVarD4.g().findViewById(R.id.name);
            if (z10) {
                textView5.setTextColor(Color.parseColor("#C1D0DD"));
            } else {
                textView5.setTextColor(Color.parseColor("#FFFFFF"));
            }
            textView5.setText("存档社区");
            z zVar5 = new z();
            zVar5.f54775a = R.drawable.upload_icon;
            zVar5.f54778d = R.drawable.upload_pressed_icon;
            zVar5.f54776b = R.drawable.tab_selected2;
            zVar5.f54780f = "我的存档";
            this.tabDatas.add(zVar5);
        }
        TabLayout.g gVarD5 = z10 ? this.tabLayout.D(2) : this.tabLayout.D(1);
        if (gVarD5 != null) {
            gVarD5.u(R.layout.mod_tab_layout);
            ImageView imageView5 = (ImageView) gVarD5.g().findViewById(R.id.icon);
            imageView5.setVisibility(0);
            imageView5.setImageResource(R.drawable.upload_icon);
            TextView textView6 = (TextView) gVarD5.g().findViewById(R.id.name);
            textView6.setTextColor(Color.parseColor("#C1D0DD"));
            textView6.setText("我的存档");
        }
        if ((this.modDownloadTask == null || modgameBean.getGold_finger() == null || modgameBean.getGold_finger().size() <= 0) ? false : true) {
            z zVar6 = new z();
            zVar6.f54775a = R.drawable.mod_mod_normal;
            zVar6.f54778d = R.drawable.mod_mod_selected;
            zVar6.f54780f = "MOD";
            zVar6.f54776b = R.drawable.tab_selected2;
            this.tabDatas.add(zVar6);
            TabLayout.g gVarD6 = z10 ? this.tabLayout.D(3) : this.tabLayout.D(2);
            if (gVarD6 != null) {
                gVarD6.u(R.layout.mod_tab_layout);
                ImageView imageView6 = (ImageView) gVarD6.g().findViewById(R.id.icon);
                imageView6.setVisibility(0);
                imageView6.setImageResource(R.drawable.mod_mod_normal);
                TextView textView7 = (TextView) gVarD6.g().findViewById(R.id.name);
                textView7.setTextColor(Color.parseColor("#C1D0DD"));
                textView7.setText("MOD");
            }
        }
        this.tabLayout.h(new l());
        if (this.modShopFragment != null) {
            ViewPager viewPager2 = this.viewPager;
            if (this.modIntroductionFragment == null) {
                i10 = 0;
            } else {
                i10 = 1;
            }
            viewPager2.setCurrentItem(i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0093 A[PHI: r12
      0x0093: PHI (r12v7 long) = (r12v0 long), (r12v1 long), (r12v3 long) binds: [B:15:0x005e, B:25:0x0090, B:21:0x0080] A[DONT_GENERATE, DONT_INLINE]] */
    private void startGameADCheck(Context context, int type, String adConfig) {
        int i10;
        if (!com.join.mgps.Util.t2.i(adConfig)) {
            if (type == 1) {
                onlyOpenModGame();
                return;
            } else {
                onlyOpenStandGame();
                return;
            }
        }
        SingleGameAdCfgBean singleGameAdCfgBean = (SingleGameAdCfgBean) JsonMapper.getInstance().fromJson(adConfig, SingleGameAdCfgBean.class);
        if (singleGameAdCfgBean == null || singleGameAdCfgBean.getSwitch_state() != 1) {
            if (type == 1) {
                onlyOpenModGame();
                return;
            } else {
                onlyOpenStandGame();
                return;
            }
        }
        if (singleGameAdCfgBean.getSwitch_state() != 1) {
            if (type == 1) {
                onlyOpenModGame();
                return;
            } else {
                onlyOpenStandGame();
                return;
            }
        }
        UserPrefs userPrefs = new UserPrefs(context);
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        int iB = 0;
        int uid = accountData != null ? accountData.getUid() : 0;
        String adGamesConfig = userPrefs.getAdGamesConfig(uid + "");
        long j10 = 0;
        if (com.join.mgps.Util.t2.i(adGamesConfig)) {
            try {
                JSONObject jSONObject = new JSONObject(adGamesConfig);
                j10 = jSONObject.has("lastTime") ? Long.parseLong(jSONObject.get("lastTime").toString()) : System.currentTimeMillis();
                if (jSONObject.has("adCount")) {
                    i10 = Integer.parseInt(jSONObject.get("adCount").toString());
                } else {
                    i10 = 0;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            i10 = 0;
        }
        if (!com.join.mgps.Util.e0.z(j10)) {
            i10 = 0;
        }
        if (!(i10 < singleGameAdCfgBean.getDaily_times() && (accountData == null || (!com.join.mgps.Util.b.piv(accountData) && accountData.getSVIPLevel() <= 0)))) {
            if (type == 1) {
                onlyOpenModGame();
            } else {
                onlyOpenStandGame();
            }
            userPrefs.setAdGamesConfig(uid + "", i10);
            return;
        }
        if (singleGameAdCfgBean.getPlay_cfg() != null && singleGameAdCfgBean.getPlay_cfg().size() > 0) {
            ArrayList arrayList = new ArrayList();
            Iterator<PlayCfgBean> it2 = singleGameAdCfgBean.getPlay_cfg().iterator();
            while (it2.hasNext()) {
                arrayList.add(Double.valueOf(it2.next().getProbability()));
            }
            iB = com.join.mgps.ad.p.b(arrayList);
        }
        PlayCfgBean playCfgBean = singleGameAdCfgBean.getPlay_cfg().get(iB);
        String ad_id = playCfgBean.getAd_id();
        String sdk_key = playCfgBean.getSdk_key();
        int sdk_type = playCfgBean.getSdk_type();
        int reward_time = playCfgBean.getReward_time();
        String str = this.gameId;
        RewardAdParams rewardAdParams = new RewardAdParams(sdk_key, ad_id, sdk_type, reward_time, singleGameAdCfgBean, str, str);
        Intent intent = new Intent();
        intent.putExtra(RewardAdDialogActivity.KEY_REWARD_PARAMS, rewardAdParams);
        IntentUtil.getInstance().startActivityWithCallback(context, RewardAdDialogActivity.class, intent, new q(type, userPrefs, uid, i10 + 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean startVmGameV2(DownloadTask task) {
        int i10;
        this.hasShowPromptDialog = false;
        ArchiveData archiveData = this.viewmodle.getArchiveData();
        if (archiveData.getUid() != AccountUtil_.getInstance_(this).getAccountData().getUid() && archiveData.getUid() != 0) {
            com.join.mgps.Util.a3.b(this).d("当前正在使用 " + archiveData.getNickname() + " 的存档");
        }
        if (!com.join.mgps.va.overmind.i.q().K(task.getPackageName())) {
            return false;
        }
        ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(task.getMod_info(), ModInfoBean.class);
        ModMeta modMeta = new ModMeta();
        modMeta.setPackageName(task.getPackageName());
        modMeta.setModPath(task.getResource_path());
        ModGameDetailBean modGameDetailBean = this.modGameDetailBean;
        if (modGameDetailBean != null) {
            modMeta.setGoldFingerSwitch(modGameDetailBean.getGold_finger() == null ? "0" : "1");
            modMeta.setArchiveCloudSwitch(this.modGameDetailBean.getCloud_archive_local_path() == null ? "0" : "1");
            modMeta.setIntroductionSwitch(this.modGameDetailBean.getMod_game_info() != null ? String.valueOf(this.modGameDetailBean.getMod_game_info().getBbs_strategy_switch()) : "0");
        } else {
            modMeta.setGoldFingerSwitch("0");
            modMeta.setArchiveCloudSwitch("0");
            modMeta.setIntroductionSwitch("0");
        }
        String jsonString = "";
        if (modInfoBean != null) {
            modMeta.setModVersion(modInfoBean.getVer() + "");
            modMeta.setModCode(modInfoBean.getVer());
        }
        modMeta.setTypeId(UtilsMy.g2(task));
        modMeta.setGameId(task.getCrc_link_type_val());
        modMeta.setModType(0);
        modMeta.setAndroidId(com.join.android.app.common.utils.q.n(MApplication.f3182z).e(MApplication.f3182z));
        modMeta.setPlatform("wufun");
        modMeta.setPackage_type("wufun");
        modMeta.setTypeId(UtilsMy.g2(task));
        ModGameDetailBean modGameDetailBean2 = this.modGameDetailBean;
        if (modGameDetailBean2 != null && modGameDetailBean2.getMod_game_info() != null) {
            jsonString = JsonMapper.toJsonString(this.modGameDetailBean.getMod_game_info().getMod_info());
        }
        com.join.mgps.va.overmind.i.q().b0(this, modMeta, 0, jsonString);
        if (APKUtils.K(task)) {
            i10 = 1;
        } else {
            i10 = APKUtils.P(task) ? 2 : 0;
        }
        com.papa.sim.statistic.t.l(this).j1(task.getCrc_link_type_val(), AccountUtil_.getInstance_(this).getUid(), i10, task.get_from(), task.get_from_type(), task.getExt(), this.pageExtBean.copy().setGameId(task.getCrc_link_type_val()).setResourceId(task.getCrc_link_type_val()).setTypeCode(EventP.TypeCode.game.name()).buildScene().toExt());
        UtilsMy.Q4(this, task.getCrc_link_type_val());
        return true;
    }

    private void updateRecommendDatas(com.join.mgps.event.r downloadTaskEvent) {
        for (int i10 = 0; i10 < this.recommendAds.size(); i10++) {
            CollectionBeanSub collectionBeanSub = this.recommendAds.get(i10);
            if ((collectionBeanSub.getMod_info() != null ? q5.f.M().G(collectionBeanSub.getModGameId()) : q5.f.M().G(collectionBeanSub.getGameId())) != null) {
                this.modGameRecommendExpandAdapter.notifyItemChanged(i10);
            }
        }
    }

    @Click({R.id.bgExpand})
    void BgExpand() {
    }

    @Click({R.id.expandMask})
    void ExpandMask() {
        recommendToggle();
        com.papa.sim.statistic.t.l(this).S1(Event.listClickBigPicStaus, this.uid, getPointGameId(), 2, this.pageVersion);
    }

    @Click({R.id.btnRecommendToggleExpand})
    void RecommendToggleExpand() {
        setRecommendRvsPositionEqual(1, -1);
        recommendToggle();
        com.papa.sim.statistic.t.l(this).S1(Event.listClickIconStatus, this.uid, getPointGameId(), 1, this.pageVersion);
    }

    @Click({R.id.btnRecommendToggleShrink})
    void RecommendToggleShrink() {
        recommendToggle();
        com.papa.sim.statistic.t.l(this).S1(Event.listClickBigPicStaus, this.uid, getPointGameId(), 1, this.pageVersion);
    }

    void addFrom(DownloadTask downloadTask) {
        ExtBean extBean = this.extBean;
        if (extBean == null || TextUtils.isEmpty(extBean.getFrom()) || downloadTask == null || !"112".equals(this.extBean.getFrom())) {
            return;
        }
        ExtBean extBean2 = new ExtBean();
        extBean2.setFrom(PointType.ANTI_SPAM);
        extBean2.setPosition("112");
        extBean2.setLocation(this.extBean.getLocation());
        downloadTask.setExt(JsonMapper.toJsonString(extBean2));
    }

    @AfterViews
    void afterViews() throws Throwable {
        CloudGameConfigBean cloudGameConfigBean;
        this.mActivity = this;
        this.gameId = com.join.mgps.Util.t2.l(this.gameId, "cld_", "");
        CloudShareViewModle cloudShareViewModle = (CloudShareViewModle) new ViewModelProvider(getViewModelStore(), getDefaultViewModelProviderFactory(), getDefaultViewModelCreationExtras()).get(CloudShareViewModle.class);
        this.viewmodle = cloudShareViewModle;
        cloudShareViewModle.getEvent().observe(this, new Observer() { // from class: com.join.mgps.activity.t7
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f58113a.lambda$afterViews$0((CloudShareViewModle.CloudShareEvent) obj);
            }
        });
        this.pageExtBean.setParent(this.parentExtBean);
        this.viewmodle.setParentExtBean(this.pageExtBean);
        initRecommendList();
        getDetialData();
        getRecommendAd();
        String strD = this.prefDef_.cloudGameConfig().d();
        if (com.join.mgps.Util.t2.i(strD) && (cloudGameConfigBean = (CloudGameConfigBean) JsonMapper.getInstance().fromJson(strD, CloudGameConfigBean.class)) != null) {
            if (cloudGameConfigBean.getFree_time() > 0) {
                this.tv_text_5.setVisibility(0);
                this.tv_text_5.setText("每日免费畅玩" + (cloudGameConfigBean.getFree_time() / 60) + "分钟");
            } else {
                this.tv_text_5.setVisibility(8);
            }
        }
        updateVipStateUI();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkBackUpArchieve() throws Throwable {
        if (this.modDownloadTask == null || this.archivePath == null) {
            return;
        }
        File file = new File(getExternalFilesDir("backup") + File.separator + this.modDownloadTask.getCrc_link_type_val());
        if (!file.exists() || !file.isDirectory() || file.listFiles() == null || file.listFiles().length <= 0) {
            return;
        }
        String mainLocalPath = this.archivePath.getMainLocalPath();
        String strK0 = com.join.mgps.va.overmind.k.f73277a.k0();
        if (mainLocalPath.startsWith("/data/data")) {
            mainLocalPath = mainLocalPath.replace("/data/data", "/data/user/0");
            strK0 = strK0.replace("/sdcard", "");
        }
        int iLastIndexOf = mainLocalPath.lastIndexOf(net.lingala.zip4j.util.e.F0);
        String strSubstring = mainLocalPath.substring(iLastIndexOf);
        String strSubstring2 = mainLocalPath.substring(0, iLastIndexOf);
        com.join.mgps.Util.o0.g(file.getAbsolutePath() + strSubstring, strK0 + strSubstring2);
        com.join.mgps.Util.o0.l(file.getAbsolutePath(), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void copyArchive(DownloadTask downloadTask) {
        GamedetialModleFourBean gamedetialModleFourBean = this.standInfoBean;
        if (gamedetialModleFourBean == null || this.modInfoBean == null || !TextUtils.equals(gamedetialModleFourBean.getVer(), this.modInfoBean.getVer())) {
            Dialog dialog = this.dialog;
            if (dialog != null && dialog.isShowing()) {
                this.dialog.dismiss();
            }
            showDialogError(downloadTask);
            return;
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 23 && ContextCompat.checkSelfPermission(this, "android.permission-group.STORAGE") != 0) {
            if (i10 < 30) {
                ActivityCompat.requestPermissions(this, new String[]{com.kuaishou.weapon.p0.g.f74786j, com.kuaishou.weapon.p0.g.f74785i}, 7);
                return;
            }
            return;
        }
        if (com.join.mgps.va.overmind.i.q().S()) {
            String strK0 = com.join.mgps.va.overmind.k.f73277a.k0();
            String mainArchiveLocalPath = this.modGameDetailBean.getCloud_archive_local_path().getMainArchiveLocalPath();
            String str = strK0 + mainArchiveLocalPath;
            String str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + mainArchiveLocalPath.replace(this.modGameDetailBean.getMod_game_info().getPackageName(), this.modGameDetailBean.getMain_game_info().getPackageName());
            File file = new File(str2);
            if (!file.exists() || file.listFiles() == null || file.listFiles().length <= 0) {
                copyFinish(false, downloadTask);
                return;
            }
            try {
                com.join.mgps.Util.o3.c(str2, str);
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            copyFinish(true, downloadTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void copyData(DownloadTask task) {
        try {
            try {
                if (task.getFileType().equals(Dtype.MOD.name())) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(com.join.mgps.Util.z.f50179r);
                    String str = File.separator;
                    sb2.append(str);
                    sb2.append(task.getPackageName());
                    File file = new File(sb2.toString());
                    if (file.exists()) {
                        File file2 = new File(com.join.mgps.va.overmind.i.q().s(true) + str + "data" + str + task.getPackageName());
                        if (!file2.exists()) {
                            file2.mkdirs();
                        }
                        com.join.mgps.Util.o0.g(file.getPath(), file2.getPath());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            disimissDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void copyFinish(boolean hasArchive, DownloadTask downloadTask) {
        Dialog dialog = this.dialog;
        if (dialog != null && dialog.isShowing()) {
            this.dialog.dismiss();
        }
        if (hasArchive) {
            if (this.isPause) {
                this.needShowFinish = true;
            } else {
                this.needShowFinish = false;
                showFinishDialog();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void disimissDialog() {
        Dialog dialog = this.dialogloding;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.dialogloding.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDetialData() throws Throwable {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showLodingFailed();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            if (accountData == null) {
                accountData = UserInfo.getDefaultInstance();
            }
            RequestModel<RequestModGameArgs> requestModel = new RequestModel<>();
            RequestModGameArgs requestModGameArgs = new RequestModGameArgs();
            requestModGameArgs.setUid(accountData.getUid());
            requestModGameArgs.setUserToken(accountData.getToken());
            requestModGameArgs.setGameId(this.gameId);
            if (com.join.mgps.Util.t2.i(this.gameId)) {
                this.modDownloadTask = q5.f.M().G(this.gameId);
            }
            if (this.modDownloadTask != null) {
                requestModGameArgs.setGameVersion(this.modDownloadTask.getVer() + "_" + this.modDownloadTask.getVer_name());
                requestModGameArgs.setIs32Mod(!com.join.mgps.va.overmind.c.b(com.join.mgps.va.overmind.c.d(com.join.mgps.va.overmind.k.f73277a.A(this.modDownloadTask.getPackageName()))));
            }
            requestModel.setArgs(requestModGameArgs);
            requestModel.setDefault(this);
            ResponseModel<ModGameDetailBean> responseModelK0 = com.join.mgps.rpc.impl.i.P0().k0(requestModel);
            if (responseModelK0 == null || responseModelK0.getCode() != 200) {
                showLodingFailed();
            } else {
                updateUi(responseModelK0.getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getModGameArchievePath(List<String> modGameIds) throws Throwable {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
                if (accountData == null) {
                    accountData = UserInfo.getDefaultInstance();
                }
                RequestModel requestModel = new RequestModel();
                ArchievePathMultiArgs archievePathMultiArgs = new ArchievePathMultiArgs();
                archievePathMultiArgs.setUid(String.valueOf(accountData.getUid()));
                archievePathMultiArgs.setDownloadedGameIdList(modGameIds);
                requestModel.setArgs(archievePathMultiArgs);
                requestModel.setDefault(this);
                ResponseModel<ArchievePathMultiBean> responseModelK = com.join.mgps.rpc.impl.i.P0().k(requestModel.makeSign());
                if (responseModelK == null || responseModelK.getCode() != 200 || responseModelK.getData() == null || responseModelK.getData().getCloud_archive_path_list() == null || responseModelK.getData().getCloud_archive_path_list().size() <= 0) {
                    return;
                }
                this.archivePath = responseModelK.getData().getCloud_archive_path_list().get(0);
                PluginConfig.setArchivePath(com.join.mgps.va.overmind.k.f73277a.o(this.modGameDetailBean.getMod_game_info().getPackageName()), this.archivePath.getMainLocalPath(), "", "");
                checkBackUpArchieve();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public String getPointGameId() {
        GamedetialModleFourBean gamedetialModleFourBean = this.modInfoBean;
        if (gamedetialModleFourBean != null) {
            return gamedetialModleFourBean.getGame_id();
        }
        GamedetialModleFourBean gamedetialModleFourBean2 = this.standInfoBean;
        return gamedetialModleFourBean2 != null ? gamedetialModleFourBean2.getGame_id() : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getRecommendAd() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            hideRecommendAd();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            if (accountData == null) {
                accountData = UserInfo.newBuilder().build();
            }
            RequestModel requestModel = new RequestModel();
            RequestModGameRecommendAdArgs requestModGameRecommendAdArgs = new RequestModGameRecommendAdArgs();
            requestModGameRecommendAdArgs.setUid(accountData.getUid());
            requestModGameRecommendAdArgs.setGameId(Long.parseLong(this.gameId));
            requestModGameRecommendAdArgs.setDownloadedGameIdList(q5.f.M().B());
            requestModel.setArgs(requestModGameRecommendAdArgs);
            requestModel.setDefault(this);
            ResponseModel<ModGameRecommendAdBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().k1(requestModel.makeSign()).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 200 || responseModelBody.getData() == null) {
                hideRecommendAd();
                return;
            }
            List<CollectionBeanSub> rec_game_list = responseModelBody.getData().getRec_game_list();
            for (CollectionBeanSub collectionBeanSub : rec_game_list) {
                collectionBeanSub.setFromRecomDown(true);
                collectionBeanSub.set_from(101);
                collectionBeanSub.set_from_type(148);
            }
            this.recommendAds = (ArrayList) rec_game_list;
            this.isShowExpand = responseModelBody.getData().isPopup();
            if ("A".equalsIgnoreCase(responseModelBody.getData().getPanel())) {
                this.pageVersion = 1;
            } else if (SDKManager.ALGO_B_AES_SHA256_RSA.equalsIgnoreCase(responseModelBody.getData().getPanel())) {
                this.pageVersion = 2;
            }
            this.pageVersion++;
            showRecommendAd();
            refreshRvData();
        } catch (Exception e10) {
            e10.printStackTrace();
            hideRecommendAd();
        }
    }

    public boolean handleGesture(MotionEvent motionEvent, MotionEvent motionEvent1) {
        float x10 = motionEvent == null ? 0.0f : motionEvent.getX();
        float x11 = motionEvent1 == null ? 0.0f : motionEvent1.getX();
        float y10 = motionEvent == null ? 0.0f : motionEvent.getY();
        float y11 = motionEvent1 == null ? 0.0f : motionEvent1.getY();
        float f10 = x10 - x11;
        float fAbs = Math.abs(f10);
        float fAbs2 = Math.abs(y10 - y11);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onFling: ");
        sb2.append(x10);
        sb2.append("  ");
        sb2.append(x11);
        if (Math.abs(fAbs2 == 0.0f ? 100.0f : fAbs / fAbs2) <= 1.0f) {
            return false;
        }
        if (x11 - x10 > 150.0f) {
            if (!this.isExpand) {
                return true;
            }
            recommendToggle();
            com.papa.sim.statistic.t.l(this.mActivity).S1(Event.listClickBigPicStaus, this.uid, getPointGameId(), 1, this.pageVersion);
            return true;
        }
        if (f10 <= 150.0f || this.isExpand) {
            return true;
        }
        recommendToggle();
        com.papa.sim.statistic.t.l(this.mActivity).S1(Event.listClickIconStatus, this.uid, getPointGameId(), 1, this.pageVersion);
        return true;
    }

    void hideNavigationBar() {
        setSystemUiVisibility();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideRecommendAd() {
        this.flRecommendExpand.setVisibility(8);
        this.flRecommendShrink.setVisibility(8);
        this.llContainer.setPadding(0, 0, 0, 0);
    }

    public void initPreDownloadFactory() {
        factory = com.github.snowdream.android.app.downloader.b.e();
        v vVar = new v();
        listener = vVar;
        factory.m(vVar);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onAccountChangeEvent(com.join.mgps.event.b event) {
        if (event.b() == 2) {
            updateVipStateUI();
        }
    }

    @Click({R.id.iv_back})
    void onBack() {
        finish();
    }

    @Click({R.id.cl_cloud})
    void onCloudGameClick() {
        ModGameDetailBean modGameDetailBean = this.modGameDetailBean;
        if (modGameDetailBean != null) {
            String game_id = modGameDetailBean.getMain_game_info().getGame_id();
            if (this.modInfoBean != null) {
                game_id = this.modGameDetailBean.getMod_game_info().getGame_id();
            }
            if (q5.f.M().L(game_id) == null) {
                DownloadTask downloadtaskDown = this.modGameDetailBean.getMod_game_info().getDownloadtaskDown();
                downloadtaskDown.setCrc_link_type_val("cld_" + game_id);
                downloadtaskDown.setRef_crc_sign_id(game_id);
                Dtype dtype = Dtype.CLOUD;
                downloadtaskDown.setFileType(dtype.name());
                downloadtaskDown.setRomType(dtype.name());
                downloadtaskDown.setStatus(5);
                q5.f.M().m(downloadtaskDown);
                org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(downloadtaskDown, 5));
            }
            ExtBean extBean = new ExtBean();
            extBean.setTypeCode(EventP.TypeCode.cloudGame.name()).setGameId(game_id).setChatId(EventP.ChatId.gameStartPage.name()).setResourceId(game_id).setParent(this.parentExtBean);
            HMCloudGameManager.f fVar = new HMCloudGameManager.f(game_id);
            int bbs_strategy_switch = this.modInfoBean.getBbs_strategy_switch();
            int i10 = 1;
            if ((this.viewmodle.getGoldFingerBean() == null || this.viewmodle.getGoldFingerBean().isEmpty()) && ((this.modInfoBean.getMod_info() == null || this.modInfoBean.getMod_info().getIs_golden_finger() != 1) && (this.modGameDetailBean.getMod_game_info() == null || this.modGameDetailBean.getMod_game_info().getMod_info() == null || this.modGameDetailBean.getMod_game_info().getMod_info().getIs_golden_finger() != 1))) {
                i10 = 0;
            }
            fVar.f71681c = i10;
            fVar.f71682d = bbs_strategy_switch;
            fVar.f71686h = this.viewmodle.getModGameArchivePathData();
            com.join.mgps.Util.w0.h().q(this, fVar, extBean);
            com.papa.sim.statistic.t.l(this).R1(Event.gameStart, extBean.buildScene().toExt());
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(this);
        com.join.mgps.Util.j0.a().d(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
    }

    /* JADX WARN: Code duplicated, block: B:66:0x0133  */
    /* JADX WARN: Code duplicated, block: B:75:0x0151  */
    /* JADX WARN: Code duplicated, block: B:76:0x0162  */
    /* JADX WARN: Code duplicated, block: B:78:0x0168  */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) throws Throwable {
        com.join.mgps.dialog.h1 h1Var;
        DownloadTask downloadTask;
        Dialog dialog;
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        updateRecommendDatas(downloadTaskEvent);
        if (downloadTaskEvent.c() == 8) {
            DownloadTask downloadTask2 = this.modDownloadTask;
            if (downloadTask2 != null && downloadTask2.getStatus() == 2) {
                UtilsMy.U4(this.modDownloadTask);
                com.join.mgps.dialog.h1 h1Var2 = this.downloadDialog;
                if (h1Var2 != null) {
                    h1Var2.C(2, this.isShowModMainGame, this.hasVersion);
                    this.downloadDialog.D(this.modDownloadTask);
                }
                this.tv_mod_status.setText(this.modDownloadTask.getProgress() + "%");
            }
            DownloadTask downloadTask3 = this.standDownloadTask;
            if (downloadTask3 == null || downloadTask3.getStatus() != 2) {
                return;
            }
            UtilsMy.U4(this.standDownloadTask);
            com.join.mgps.dialog.h1 h1Var3 = this.downloadDialog;
            if (h1Var3 != null) {
                h1Var3.C(2, this.isShowModMainGame, this.hasVersion);
                this.downloadDialog.D(this.standDownloadTask);
            }
            this.tv_stand_status.setText(this.standDownloadTask.getProgress() + "%");
            return;
        }
        if (downloadTaskA != null && this.modDownloadTask != null && downloadTaskA.getCrc_link_type_val().equals(this.modDownloadTask.getCrc_link_type_val())) {
            this.modDownloadTask = downloadTaskA;
            UtilsMy.U4(downloadTaskA);
            int iC = downloadTaskEvent.c();
            if (iC == 0) {
                updateInstallStatus();
            } else if (iC == 2) {
                updateButn(this.modDownloadTask, this.modInfoBean);
            } else {
                if (iC == 8) {
                    DownloadTask downloadTask4 = this.modDownloadTask;
                    if (downloadTask4 == null || downloadTask4.getPath() == null || this.modDownloadTask == null || !downloadTaskA.getCrc_link_type_val().equals(this.modDownloadTask.getCrc_link_type_val())) {
                        return;
                    }
                    UtilsMy.U4(this.modDownloadTask);
                    com.join.mgps.dialog.h1 h1Var4 = this.downloadDialog;
                    if (h1Var4 != null) {
                        h1Var4.C(2, this.isShowModMainGame, this.hasVersion);
                        this.downloadDialog.D(this.modDownloadTask);
                    }
                    this.tv_mod_status.setText(this.modDownloadTask.getProgress() + "%");
                    return;
                }
                if (iC == 48) {
                    h1Var = this.downloadDialog;
                    if (h1Var != null && h1Var.isShowing()) {
                        this.downloadDialog.dismiss();
                    }
                    checkModUpdate();
                    if (downloadTaskEvent.c() == 5) {
                        checkShowCopyDialog(this.modDownloadTask);
                    }
                    showInstallButn(this.modDownloadTask);
                    if (APKUtils.K(downloadTaskA) && (downloadTask = this.standDownloadTask) != null && downloadTask.getStatus() == 5) {
                        dialog = this.dialogloding;
                        if (dialog == null) {
                            this.dialogloding = com.join.mgps.Util.h0.h0(this).x(this).a("拷贝中。。。");
                        } else if (dialog.isShowing()) {
                            this.dialogloding.dismiss();
                        }
                        this.dialogloding.show();
                        copyData(downloadTaskA);
                    }
                    updateInstallStatus();
                } else {
                    if (iC == 5) {
                        getDetialData();
                    } else if (iC != 6) {
                        switch (iC) {
                            case 10:
                                com.join.mgps.dialog.h1 h1Var5 = this.downloadDialog;
                                if (h1Var5 != null) {
                                    h1Var5.C(3, this.isShowModMainGame, this.hasVersion);
                                    this.downloadDialog.D(this.modDownloadTask);
                                }
                                break;
                            case 12:
                                com.join.mgps.dialog.h1 h1Var6 = this.downloadDialog;
                                if (h1Var6 != null && h1Var6.isShowing()) {
                                    this.downloadDialog.dismiss();
                                }
                                showInstallButn(this.modDownloadTask);
                                break;
                            case 13:
                                com.join.mgps.dialog.h1 h1Var7 = this.downloadDialog;
                                if (h1Var7 != null && h1Var7.isShowing()) {
                                    this.downloadDialog.dismiss();
                                }
                                com.join.mgps.Util.a3.b(this).d("解压失败");
                                showInstallButn(this.modDownloadTask);
                                break;
                        }
                    } else {
                        com.join.mgps.dialog.h1 h1Var8 = this.downloadDialog;
                        if (h1Var8 != null && h1Var8.isShowing()) {
                            this.downloadDialog.dismiss();
                        }
                    }
                    h1Var = this.downloadDialog;
                    if (h1Var != null) {
                        this.downloadDialog.dismiss();
                    }
                    checkModUpdate();
                    if (downloadTaskEvent.c() == 5) {
                        checkShowCopyDialog(this.modDownloadTask);
                    }
                    showInstallButn(this.modDownloadTask);
                    if (APKUtils.K(downloadTaskA)) {
                        dialog = this.dialogloding;
                        if (dialog == null) {
                            this.dialogloding = com.join.mgps.Util.h0.h0(this).x(this).a("拷贝中。。。");
                        } else if (dialog.isShowing()) {
                            this.dialogloding.dismiss();
                        }
                        this.dialogloding.show();
                        copyData(downloadTaskA);
                    }
                    updateInstallStatus();
                }
            }
        }
        if (downloadTaskA == null || this.standDownloadTask == null || !downloadTaskA.getCrc_link_type_val().equals(this.standDownloadTask.getCrc_link_type_val())) {
            return;
        }
        this.standDownloadTask = downloadTaskA;
        UtilsMy.U4(downloadTaskA);
        int iC2 = downloadTaskEvent.c();
        if (iC2 == 2) {
            updateButn(this.standDownloadTask, this.standInfoBean);
            return;
        }
        if (iC2 != 5) {
            if (iC2 == 8) {
                DownloadTask downloadTask5 = this.standDownloadTask;
                if (downloadTask5 == null || downloadTask5.getPath() == null || this.standDownloadTask == null || !downloadTaskA.getCrc_link_type_val().equals(this.standDownloadTask.getCrc_link_type_val())) {
                    return;
                }
                UtilsMy.U4(this.standDownloadTask);
                com.join.mgps.dialog.h1 h1Var9 = this.downloadDialog;
                if (h1Var9 != null) {
                    h1Var9.C(2, this.isShowModMainGame, this.hasVersion);
                    this.downloadDialog.D(this.standDownloadTask);
                }
                this.tv_stand_status.setText(this.modDownloadTask.getProgress() + "%");
                return;
            }
            switch (iC2) {
                case 10:
                    com.join.mgps.dialog.h1 h1Var10 = this.downloadDialog;
                    if (h1Var10 != null) {
                        h1Var10.C(3, this.isShowModMainGame, this.hasVersion);
                        this.downloadDialog.D(this.standDownloadTask);
                    }
                    break;
                case 12:
                    com.join.mgps.dialog.h1 h1Var11 = this.downloadDialog;
                    if (h1Var11 != null && h1Var11.isShowing()) {
                        this.downloadDialog.dismiss();
                    }
                    showInstallButn(this.standDownloadTask);
                    break;
                case 13:
                    com.join.mgps.dialog.h1 h1Var12 = this.downloadDialog;
                    if (h1Var12 != null && h1Var12.isShowing()) {
                        this.downloadDialog.dismiss();
                    }
                    com.join.mgps.Util.a3.b(this).d("解压失败");
                    showInstallButn(this.standDownloadTask);
                    break;
            }
            return;
        }
        com.join.mgps.dialog.h1 h1Var13 = this.downloadDialog;
        if (h1Var13 != null && h1Var13.isShowing()) {
            this.downloadDialog.dismiss();
        }
        checkStandUpdate();
        showInstallButn(this.standDownloadTask);
        updateInstallStatus();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onLocalArchiveUpdate(DownloadArchiveDialog.UpdateLocalArchiveEvent event) {
        this.viewmodle.loadLocalArchiveDatas(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) throws Throwable {
        super.onNewIntent(intent);
        this.gameId = intent.getStringExtra("gameId");
        this.standGameId = intent.getStringExtra("standGameId");
        this.from = intent.getStringExtra("from");
        getDetialData();
        getRecommendAd();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.isPause = true;
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode != 7) {
            return;
        }
        for (int i10 : grantResults) {
            if (i10 != 0) {
                showDialogError(this.modDownloadTask, "由于安卓系统目录限制,无法同步存档至增强模式");
                return;
            }
        }
        DownloadTask downloadTask = this.modDownloadTask;
        if (downloadTask != null) {
            copyArchive(downloadTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.isPause = false;
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            this.uid = accountData.getUid();
        }
        try {
            checkModUpdate();
            checkStandUpdate();
            updateInstallStatus();
            hideNavigationBar();
            UtilsMy.N4(this.mActivity);
            ModGameDetailBean modGameDetailBean = this.modGameDetailBean;
            if (modGameDetailBean != null && modGameDetailBean.getCloud_archive_local_path() != null) {
                updateLoacalArchiveData();
            }
            com.join.mgps.dialog.h1 h1Var = this.downloadDialog;
            if (h1Var != null && h1Var.isShowing()) {
                if (this.isShowModMainGame && this.standDownloadTask != null && q5.f.M().G(this.standDownloadTask.getCrc_link_type_val()) == null) {
                    this.downloadDialog.dismiss();
                }
                if (!this.isShowModMainGame && this.modDownloadTask != null && q5.f.M().G(this.modDownloadTask.getCrc_link_type_val()) == null) {
                    this.downloadDialog.dismiss();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.needShowFinish) {
            this.needShowFinish = false;
            showFinishDialog();
        }
    }

    @Subscribe
    public void onStartGame(com.join.mgps.event.z event) {
        startStandGame();
    }

    @Override // android.view.View.OnSystemUiVisibilityChangeListener
    public void onSystemUiVisibilityChange(int visibility) {
        if (visibility == 0) {
            hideNavigationBar();
        }
    }

    @Click({R.id.tv_open_vip})
    void openVip() {
        com.papa.sim.statistic.t.l(this).R1(Event.clickLeftCloudAd, new Ext().setGameId(this.gameId));
        ModGameDetailBean modGameDetailBean = this.modGameDetailBean;
        if (modGameDetailBean == null || modGameDetailBean.getAd_info() == null) {
            if (com.join.mgps.Util.t2.i(this.memberUrl)) {
                com.papa.sim.statistic.t.l(this).R1(Event.onclickVipMod, new Ext().setGameId(this.gameId));
                if (this.memberUrl.contains("?")) {
                    IntentUtil.getInstance().goShareWebActivity(this, this.memberUrl + "&gameid=" + this.gameId);
                    return;
                }
                IntentUtil.getInstance().goShareWebActivity(this, this.memberUrl + "?gameid=" + this.gameId);
                return;
            }
            return;
        }
        if (this.modGameDetailBean.getAd_info().getSub() == null || this.modGameDetailBean.getAd_info().getSub().size() <= 0) {
            return;
        }
        IntentDateBean intentDataBean = this.modGameDetailBean.getAd_info().getSub().get(0).getIntentDataBean();
        if (intentDataBean.getLink_type() == 4) {
            if (intentDataBean.getLink_type_val().contains("?")) {
                intentDataBean.setLink_type_val(intentDataBean.getLink_type_val() + "&gameid=" + this.gameId);
            } else {
                intentDataBean.setLink_type_val(intentDataBean.getLink_type_val() + "?gameid=" + this.gameId);
            }
        }
        IntentUtil.getInstance().intentActivity(this, intentDataBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void refreshRvData() {
        ArrayList<CollectionBeanSub> arrayList = this.recommendAds;
        if (arrayList != null) {
            this.tvRecommendAdCount.setText(String.valueOf(arrayList.size()));
            this.modGameRecomendShrinkAdapter.setNewData(this.recommendAds);
            this.modGameRecommendExpandAdapter.setNewData(this.recommendAds);
        }
    }

    @Click
    void relodingimag() throws Throwable {
        showLoding();
        getDetialData();
        getRecommendAd();
    }

    public void setDetialButn(TextView mgListviewItemInstall, int status, String size, int payGameAmount, String gameId, boolean isModMainGame) {
        try {
            mgListviewItemInstall.setEnabled(true);
            boolean z10 = UtilsMy.w0(payGameAmount, gameId) > 0;
            if (status == 3 && !z10) {
                if (isModMainGame) {
                    mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.mod_download_stand));
                    return;
                } else {
                    mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.mod_download_mod));
                    return;
                }
            }
            if (status == 2 && !z10) {
                mgListviewItemInstall.setText("即将开放");
                mgListviewItemInstall.setEnabled(false);
            } else {
                if (status == 6 && !z10) {
                    mgListviewItemInstall.setText("预约");
                    return;
                }
                if (isModMainGame) {
                    mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.mod_download_stand));
                } else {
                    mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.mod_download_mod));
                }
                if (payGameAmount > 0) {
                    mgListviewItemInstall.setText(mgListviewItemInstall.getResources().getString(R.string.pay_game_amount, com.join.mgps.Util.t2.n(payGameAmount)));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    void setSystemUiVisibility() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    void showAndroidVersionIncompatiblePrompt(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        ModPromptDialog modPromptDialog = new ModPromptDialog();
        Bundle bundle = new Bundle();
        bundle.putString("gameName", downloadTask.getShowName());
        modPromptDialog.setArguments(bundle);
        modPromptDialog.setListener(new e(modPromptDialog, downloadTask));
        modPromptDialog.show(getSupportFragmentManager());
    }

    void showCpuAbiIncompatiblePrompt(DownloadTask downloadTask) {
        if (this.isPause || downloadTask == null) {
            return;
        }
        ModPromptDialog modPromptDialog = new ModPromptDialog();
        Bundle bundle = new Bundle();
        int iO = APKUtils.f34739a.o();
        String strValueOf = String.valueOf(iO);
        if (iO == 96) {
            strValueOf = "32、64";
        }
        bundle.putString("gameName", downloadTask.getShowName());
        bundle.putString("desc", "此设备最低兼容ARM " + strValueOf + "位游戏，继续启动游戏可能会出现闪退、黑屏、卡顿、延迟等问题。");
        modPromptDialog.setArguments(bundle);
        modPromptDialog.setListener(new d(modPromptDialog, downloadTask));
        modPromptDialog.show(getSupportFragmentManager());
        this.hasShowPromptDialog = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallButn(DownloadTask task) {
        int status;
        if (task != null) {
            try {
                status = task.getStatus();
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        } else {
            status = 0;
        }
        if (isModMainGame(task)) {
            if (task.getStatus() == 13) {
                this.tv_stand_status.setText(getResources().getText(R.string.mod_unzio_mod));
            }
            if (status != 9 && status != 42) {
                if (status == 11) {
                    this.tv_stand_new_version.setVisibility(8);
                    this.iv_stand_font.setVisibility(8);
                    this.tv_stand_status.setVisibility(0);
                    this.tv_stand_status.setText("待安装");
                    return;
                }
                if (status == 48) {
                    this.tv_stand_new_version.setVisibility(8);
                    this.iv_stand_font.setVisibility(8);
                    this.tv_stand_status.setVisibility(0);
                    this.tv_stand_status.setText("安装中");
                    return;
                }
                if (status == 12) {
                    this.tv_stand_new_version.setVisibility(8);
                    this.iv_stand_font.setVisibility(8);
                    this.tv_stand_status.setVisibility(0);
                    this.tv_stand_status.setText("解压中");
                    return;
                }
                if (status != 13) {
                    this.tv_stand_new_version.setVisibility(8);
                    this.iv_stand_font.setVisibility(0);
                    this.tv_stand_status.setVisibility(8);
                    return;
                } else {
                    this.tv_stand_new_version.setVisibility(8);
                    this.iv_stand_font.setVisibility(8);
                    this.tv_stand_status.setVisibility(0);
                    this.tv_stand_status.setText("重新解压");
                    return;
                }
            }
            this.tv_stand_new_version.setVisibility(0);
            this.iv_stand_font.setVisibility(8);
            this.tv_stand_status.setVisibility(8);
            return;
        }
        this.tv_mod_type.setText(getResources().getText(R.string.mod_download_mod));
        this.tv_mod_install_status.setVisibility(8);
        ImageView imageView = this.iv_mod_dot;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        if (status != 9 && status != 42) {
            if (status == 11) {
                this.tv_new_version.setVisibility(8);
                this.iv_mod_font.setVisibility(8);
                this.tv_mod_status.setVisibility(0);
                this.tv_mod_status.setText("待安装");
                this.cl_mod.setBackgroundResource(R.drawable.bg_mod_start);
                return;
            }
            if (status == 48) {
                this.tv_new_version.setVisibility(8);
                this.iv_mod_font.setVisibility(8);
                this.tv_mod_status.setVisibility(0);
                this.tv_mod_status.setText("安装中");
                this.cl_mod.setBackgroundResource(R.drawable.bg_mod_start_n);
                return;
            }
            if (status == 12) {
                this.tv_new_version.setVisibility(8);
                this.iv_mod_font.setVisibility(8);
                this.tv_mod_status.setVisibility(0);
                this.tv_mod_status.setText("解压中");
                this.cl_mod.setBackgroundResource(R.drawable.bg_mod_start);
                return;
            }
            if (status == 13) {
                this.tv_new_version.setVisibility(8);
                this.iv_mod_font.setVisibility(8);
                this.tv_mod_status.setVisibility(0);
                this.tv_mod_status.setText("重新解压");
                this.cl_mod.setBackgroundResource(R.drawable.bg_mod_start);
                return;
            }
            this.tv_new_version.setVisibility(8);
            this.iv_mod_font.setVisibility(0);
            this.tv_mod_status.setVisibility(8);
            if (task == null || task.getStatus() != 5) {
                ImageView imageView2 = this.iv_mod_dot;
                if (imageView2 != null) {
                    imageView2.setVisibility(0);
                }
                this.tv_mod_install_status.setVisibility(0);
            } else {
                ImageView imageView3 = this.iv_mod_dot;
                if (imageView3 != null) {
                    imageView3.setVisibility(8);
                }
                this.tv_mod_install_status.setVisibility(8);
            }
            this.cl_mod.setBackgroundResource(R.drawable.bg_mod_start);
            return;
        }
        this.iv_mod_font.setVisibility(8);
        this.tv_mod_status.setVisibility(8);
        this.cl_mod.setBackgroundResource(R.drawable.bg_mod_start);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.loding_layout.setVisibility(0);
            this.loding_faile.setVisibility(8);
            this.rightLayout.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(0);
            this.rightLayout.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showProgress(DownloadTask task) {
        try {
            if (isModMainGame(task)) {
                this.tv_stand_new_version.setVisibility(8);
                this.iv_stand_font.setVisibility(8);
                this.tv_stand_status.setVisibility(0);
                this.tv_stand_status.setText(task.getProgress() + "%");
            } else {
                this.tv_new_version.setVisibility(8);
                this.iv_mod_font.setVisibility(8);
                this.tv_mod_status.setVisibility(0);
                this.tv_mod_install_status.setVisibility(8);
                this.iv_mod_dot.setVisibility(8);
                this.tv_mod_status.setText(task.getProgress() + "%");
                this.tv_mod_type.setText(getResources().getText(R.string.mod_downloading));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showRecommendAd() {
        this.flRecommendExpand.setVisibility(this.isShowExpand ? 0 : 8);
        this.expandMask.setVisibility(this.isShowExpand ? 0 : 8);
        this.flRecommendShrink.setVisibility(0);
        this.llContainer.setPadding(0, 0, (int) getResources().getDimension(R.dimen.wdp202), 0);
        if (this.isShowExpand) {
            this.isExpand = true;
            com.papa.sim.statistic.t.l(this).S1(Event.listShowBigPicUPPage, this.uid, getPointGameId(), -1, this.pageVersion);
        } else {
            this.isExpand = false;
            com.papa.sim.statistic.t.l(this).S1(Event.listShowIconHotList, this.uid, getPointGameId(), -1, this.pageVersion);
        }
        exposure();
    }

    void startDownload(final DownloadTask task, GamedetialModleFourBean bean) {
        int status;
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d("请检查网络！");
            return;
        }
        if (task != null) {
            status = task.getStatus();
            task.set_from(131);
        } else {
            status = 0;
        }
        if (task != null && UtilsMy.x0(bean.getPay_tag_info(), bean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (task != null && (status == 2 || status == 10)) {
            com.php25.PDownload.d.i(task);
        } else if (status == 13) {
            com.php25.PDownload.d.l(this, task);
        } else if (status == 27 || status == 3) {
            com.php25.PDownload.d.c(task, this);
        } else if (status == 5) {
            com.join.mgps.dialog.h1 h1Var = this.downloadDialog;
            if (h1Var != null && h1Var.isShowing()) {
                this.downloadDialog.dismiss();
            }
            final PrefDef_ prefDef_ = new PrefDef_(this);
            if (!isModMainGame(task)) {
                try {
                    com.join.mgps.va.overmind.i.h0(task.getPackageName(), task.getResource_path());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                if (com.join.mgps.va.overmind.i.q().R(task.getPackageName())) {
                    if (APKUtils.c(this, task, this.parentExtBean)) {
                        return;
                    }
                    this.prefDef_.launchGameIdCheckVaExtInstall().g(task.getCrc_link_type_val());
                    if (APKUtils.h(this, new Function0() { // from class: com.join.mgps.activity.p7
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return this.f57837b.lambda$startDownload$6(task, prefDef_);
                        }
                    })) {
                        return;
                    }
                }
                if (com.join.mgps.va.overmind.i.q().K(task.getPackageName())) {
                    startGameADCheck(this, 1, prefDef_.mod_enhance_ad_cfg().d());
                } else {
                    UtilsMy.w4(task, this);
                }
            } else if (com.join.android.app.common.utils.g.t0(this).e(this, task.getPackageName())) {
                startGameADCheck(this, 2, prefDef_.mod_normal_ad_cfg().d());
            } else {
                UtilsMy.w4(task, this);
            }
        } else if (11 == status) {
            com.join.mgps.dialog.h1 h1Var2 = this.downloadDialog;
            if (h1Var2 != null && h1Var2.isShowing()) {
                this.downloadDialog.dismiss();
            }
            UtilsMy.w4(task, this);
        } else if (43 == status || 7 == status || status == 0) {
            if (bean != null) {
                addFrom(task);
                if (bean.getGame_detailed() != null && com.join.mgps.Util.t2.i(bean.getGame_detailed().getTpl_two_qq())) {
                    com.join.mgps.Util.h0.h0(this).d0(this, bean.getGame_detailed().getTpl_two_qq_key(), bean.getGame_detailed().getAd_pic_qq(), bean.getGame_detailed().getTpl_two_qq());
                }
                if (UtilsMy.z0(bean.getPay_tag_info(), bean.getCrc_sign_id()) > 0) {
                    ExtBean extBean = this.extBean;
                    if (extBean != null && "checkgame".equals(extBean.getFrom())) {
                        UtilsMy.A4(this, bean.getCrc_sign_id(), this.extBean.getFrom_id());
                    } else if (!UtilsMy.o1(this, task)) {
                        if (bean.getDown_status() == 5) {
                            UtilsMy.l1(this, task);
                        } else {
                            UtilsMy.z4(this, bean.getCrc_sign_id());
                        }
                    }
                } else {
                    UtilsMy.D1(task, bean);
                    if (!UtilsMy.o1(this, task)) {
                        if (bean.getDown_status() != 5) {
                            com.php25.PDownload.d.c(task, this);
                        } else if (APKUtils.K(task) && task.getTask_down_type() == 3) {
                            com.php25.PDownload.d.c(task, this);
                        } else {
                            UtilsMy.l1(this, task);
                        }
                    }
                }
            }
        } else if (48 == status) {
            com.join.mgps.Util.a3.b(this).d("安装中，请稍后...");
        } else if (bean != null) {
            addFrom(task);
            if (bean.getGame_detailed() != null && com.join.mgps.Util.t2.i(bean.getGame_detailed().getTpl_two_qq())) {
                com.join.mgps.Util.h0.h0(this).d0(this, bean.getGame_detailed().getTpl_two_qq_key(), bean.getGame_detailed().getAd_pic_qq(), bean.getGame_detailed().getTpl_two_qq());
            }
            if (UtilsMy.z0(bean.getPay_tag_info(), bean.getCrc_sign_id()) > 0) {
                ExtBean extBean2 = this.extBean;
                if (extBean2 != null && "checkgame".equals(extBean2.getFrom())) {
                    UtilsMy.A4(this, bean.getCrc_sign_id(), this.extBean.getFrom_id());
                } else if (!UtilsMy.o1(this, task)) {
                    if (bean.getDown_status() == 5) {
                        UtilsMy.l1(this, task);
                    } else {
                        UtilsMy.z4(this, bean.getCrc_sign_id());
                    }
                }
            } else {
                UtilsMy.D1(task, bean);
                if (!UtilsMy.o1(this, task)) {
                    if (bean.getDown_status() != 5) {
                        com.php25.PDownload.d.c(task, this);
                    } else if (APKUtils.K(task) && task.getTask_down_type() == 3) {
                        com.php25.PDownload.d.c(task, this);
                    } else {
                        UtilsMy.l1(this, task);
                    }
                }
            }
        }
        updateButn(task, bean);
    }

    @Click({R.id.ll_mod_start})
    void startModGame() {
        DownloadTask downloadTaskG;
        String strA;
        if (!com.join.android.app.common.utils.m.j(this)) {
            onlyOpenModGame();
            return;
        }
        GamedetialModleFourBean gamedetialModleFourBean = this.modInfoBean;
        if (gamedetialModleFourBean == null || gamedetialModleFourBean.getMod_info() == null) {
            onlyOpenModGame();
            return;
        }
        if (com.join.mgps.Util.t2.i(this.gameId) && (downloadTaskG = q5.f.M().G(this.gameId)) != null) {
            if (downloadTaskG.isMod() || APKUtils.P(downloadTaskG)) {
                strA = com.join.mgps.va.overmind.k.f73277a.A(downloadTaskG.getPackageName());
            } else {
                try {
                    strA = getPackageManager().getApplicationInfo(downloadTaskG.getPackageName(), 0).sourceDir;
                } catch (PackageManager.NameNotFoundException unused) {
                    return;
                }
            }
            if (APKUtils.m() == 32 && !com.join.mgps.va.overmind.c.a(com.join.mgps.va.overmind.c.d(strA))) {
                WarningDialogActivity.WarningDialogParam warningDialogParam = new WarningDialogActivity.WarningDialogParam();
                warningDialogParam.setGameId(downloadTaskG.getCrc_link_type_val());
                warningDialogParam.setTitle("请注意");
                warningDialogParam.setContent("此游戏仅支持64位手机，您的设备无法正常运行此游戏");
                warningDialogParam.setEvent(1);
                warningDialogParam.setConfirm("我知道了");
                Intent intent = new Intent();
                intent.putExtra(WarningDialogActivity.KEY_PARAM, warningDialogParam);
                IntentUtil.getInstance().startActivityWithCallback(this, WarningDialogActivity.class, intent, new w());
                return;
            }
        }
        this.isShowModMainGame = false;
        DownloadTask downloadTask = this.modDownloadTask;
        if (downloadTask != null && downloadTask.getStatus() == 48) {
            com.join.mgps.Util.a3.b(this).d("安装中，请稍后...");
            return;
        }
        if (this.modDownloadTask != null && com.join.mgps.va.overmind.i.q().K(this.modDownloadTask.getPackageName()) && this.modDownloadTask.getStatus() != 0 && this.modDownloadTask.getStatus() != 9 && this.modDownloadTask.getStatus() != 42 && this.modDownloadTask.getStatus() != 2 && this.modDownloadTask.getStatus() != 3) {
            startDownload(this.modDownloadTask, this.modInfoBean);
            return;
        }
        DownloadTask downloadTask2 = this.modDownloadTask;
        if (downloadTask2 != null && downloadTask2.getStatus() == 9 && this.modDownloadTask.getStatus() != 2 && this.modDownloadTask.getStatus() != 3) {
            startUpdate(this.modDownloadTask, this.modInfoBean);
            showDialog(this.modDownloadTask);
            return;
        }
        if (this.modDownloadTask.getStatus() == 12) {
            com.join.mgps.Util.a3.b(this).d("解压中，请稍后...");
            return;
        }
        try {
            String strD = new PrefDef_(this).androidIdNullsKey().d();
            if (com.join.mgps.Util.t2.i(strD)) {
                List list = (List) JsonMapper.getInstance().fromJson(strD, List.class);
                if (com.join.mgps.Util.t2.i(MApplication.K) && list.contains(MApplication.K) && IntentUtil.getInstance().goLogin(this)) {
                    return;
                }
            }
        } catch (Exception unused2) {
        }
        UtilsMy.A0(this, 2, this.modDownloadTask.getCrc_link_type_val(), "VIRTUAL_SINGLE", new x());
    }

    @Click({R.id.ll_stand_start})
    void startStandGame() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            onlyOpenStandGame();
            return;
        }
        DownloadTask downloadTask = this.standDownloadTask;
        if (downloadTask == null || this.standInfoBean == null) {
            onlyOpenStandGame();
            return;
        }
        this.isShowModMainGame = true;
        if (downloadTask != null && com.join.android.app.common.utils.g.t0(this).e(this, this.standDownloadTask.getPackageName()) && this.standDownloadTask.getStatus() != 0 && this.standDownloadTask.getStatus() != 9 && this.standDownloadTask.getStatus() != 42 && this.standDownloadTask.getStatus() != 2 && this.standDownloadTask.getStatus() != 3) {
            startDownload(this.standDownloadTask, this.standInfoBean);
            return;
        }
        if (this.standDownloadTask.getStatus() == 9 && this.modDownloadTask.getStatus() != 2 && this.modDownloadTask.getStatus() != 3) {
            startUpdate(this.standDownloadTask, this.standInfoBean);
            showDialog(this.standDownloadTask);
            return;
        }
        if (this.standDownloadTask.getStatus() == 12) {
            com.join.mgps.Util.a3.b(this).d("解压中,请稍后!");
            return;
        }
        try {
            String strD = new PrefDef_(this).androidIdNullsKey().d();
            if (com.join.mgps.Util.t2.i(strD)) {
                List list = (List) JsonMapper.getInstance().fromJson(strD, List.class);
                if (com.join.mgps.Util.t2.i(MApplication.K) && list.contains(MApplication.K) && IntentUtil.getInstance().goLogin(this)) {
                    return;
                }
            }
        } catch (Exception unused) {
        }
        if (new PrefDef_(this).download_game_switch().d().booleanValue()) {
            UtilsMy.A0(this, 2, this.standDownloadTask.getCrc_link_type_val(), "VIRTUAL_SINGLE", new y());
        } else {
            showDialog(this.standDownloadTask);
        }
    }

    @Receiver(actions = {p5.a.f96224u0})
    void startStdGame(@Receiver.Extra String from) {
        if (TextUtils.isEmpty(from) || !from.equals("modStdDialog")) {
            return;
        }
        startStandGame();
    }

    void startUpdate(DownloadTask task, GamedetialModleFourBean bean) {
        boolean z10;
        boolean z11;
        ModInfoBean modInfoBean;
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                com.join.mgps.Util.a3.b(this).d("无网络连接");
                return;
            }
            if (bean.getGame_detailed() != null && com.join.mgps.Util.t2.i(bean.getGame_detailed().getTpl_two_qq())) {
                com.join.mgps.Util.h0.h0(this).d0(this, bean.getGame_detailed().getTpl_two_qq_key(), bean.getGame_detailed().getAd_pic_qq(), bean.getGame_detailed().getTpl_two_qq());
            }
            int downloadType = task.getDownloadType();
            if (downloadType != 0 && downloadType != 1) {
                if (downloadType != 2) {
                    return;
                }
                UtilsMy.R4(task);
                return;
            }
            if (task.getCrc_link_type_val() != null && !task.getCrc_link_type_val().equals("")) {
                addFrom(task);
                if (isModMainGame(task)) {
                    z10 = false;
                    z11 = false;
                } else {
                    if (com.join.mgps.va.overmind.i.q().K(task.getPackageName())) {
                        DownloadTask downloadTaskG = q5.f.M().G(task.getCrc_link_type_val());
                        z10 = downloadTaskG != null && ((modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTaskG.getMod_info(), ModInfoBean.class)) == null || (this.modInfoBean.getMod_info() != null && modInfoBean.getVer() < this.modInfoBean.getMod_info().getVer()));
                        d7.a aVarU = com.join.mgps.va.overmind.i.q().u(task.getPackageName());
                        if (aVarU != null && com.join.mgps.Util.t2.i(bean.getVer()) && aVarU.f90718k < Integer.parseInt(bean.getVer()) && (!z10 || bean.getGame_upgrade_state() == 1)) {
                            z11 = true;
                        }
                        this.tv_new_version.setVisibility(8);
                    } else {
                        z10 = false;
                    }
                    z11 = false;
                    this.tv_new_version.setVisibility(8);
                }
                com.php25.PDownload.d.b(task);
                task.setVer(bean.getVer());
                task.setVer_name(bean.getVer_name());
                task.setUrl(bean.getDown_url_remote());
                task.setCfg_ver(bean.getCfg_ver());
                task.setCfg_ver_name(bean.getCfg_ver_name());
                task.setCfg_down_url(bean.getCfg_down_url());
                task.setPay_game_amount(bean.getPay_tag_info() != null ? bean.getPay_tag_info().getPay_game_amount() : 0);
                task.setMod_info(JsonMapper.toJsonString(bean.getMod_info()));
                task.setPath("");
                task.setGameZipPath("");
                if (z11 && z10) {
                    task.setTask_down_type(0);
                } else if (z10) {
                    task.setTask_down_type(1);
                } else if (z11) {
                    task.setTask_down_type(2);
                } else {
                    task.setTask_down_type(0);
                }
                q5.f.M().m(task);
                UtilsMy.N0(task);
                if (isModMainGame(task)) {
                    this.tv_stand_new_version.setVisibility(8);
                }
                if (UtilsMy.z0(bean.getPay_tag_info(), bean.getCrc_sign_id()) <= 0) {
                    UtilsMy.D1(task, bean);
                    if (UtilsMy.o1(this, task)) {
                        return;
                    }
                    if (bean.getDown_status() == 5 && (task.getTask_down_type() == 0 || task.getTask_down_type() == 2)) {
                        UtilsMy.l1(this, task);
                        return;
                    } else {
                        com.php25.PDownload.d.c(task, this);
                        return;
                    }
                }
                ExtBean extBean = this.extBean;
                if (extBean != null && "checkgame".equals(extBean.getFrom())) {
                    UtilsMy.A4(this, bean.getCrc_sign_id(), this.extBean.getFrom_id());
                } else {
                    if (UtilsMy.o1(this, task)) {
                        return;
                    }
                    if (bean.getDown_status() == 5) {
                        UtilsMy.l1(this, task);
                    } else {
                        UtilsMy.z4(this, bean.getCrc_sign_id());
                    }
                }
            }
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateButn(DownloadTask task, GamedetialModleFourBean bean) {
        if (bean == null || task == null) {
            return;
        }
        boolean zIsModMainGame = isModMainGame(task);
        if (bean.getPlugin_num() != null) {
            if (bean.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                showInstallButn(task);
                return;
            }
        }
        int status = task.getStatus();
        if (UtilsMy.x0(bean.getPay_tag_info(), bean.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status == 9 || status == 42) {
            showInstallButn(task);
            return;
        }
        if (status == 12) {
            showInstallButn(task);
            return;
        }
        if (status == 13) {
            showInstallButn(task);
            return;
        }
        if (status == 11) {
            showInstallButn(task);
            return;
        }
        if (status == 5) {
            showInstallButn(task);
            updatePay(true);
            return;
        }
        if (status == 2) {
            UtilsMy.U4(task);
            com.join.mgps.dialog.h1 h1Var = this.downloadDialog;
            if (h1Var == null || !h1Var.isShowing()) {
                showProgress(task);
                return;
            } else {
                this.downloadDialog.C(2, this.isShowModMainGame, this.hasVersion);
                this.downloadDialog.D(task);
                return;
            }
        }
        if (status == 3 || status == 6 || status == 27) {
            showInstallButn(task);
            UtilsMy.U4(task);
            com.join.mgps.dialog.h1 h1Var2 = this.downloadDialog;
            if (h1Var2 != null) {
                h1Var2.C(2, this.isShowModMainGame, this.hasVersion);
                this.downloadDialog.D(task);
                return;
            }
            return;
        }
        if (status == 10) {
            showInstallButn(task);
            com.join.mgps.dialog.h1 h1Var3 = this.downloadDialog;
            if (h1Var3 != null) {
                h1Var3.C(2, this.isShowModMainGame, this.hasVersion);
                this.downloadDialog.D(task);
                return;
            }
            return;
        }
        if (status == 1) {
            return;
        }
        if (status == 43) {
            showInstallButn(task);
            if (UtilsMy.x0(bean.getPay_tag_info(), bean.getCrc_sign_id()) > 0) {
                if (zIsModMainGame) {
                    this.tv_stand_type.setText(getResources().getString(R.string.pay_game_amount, bean.getPay_tag_info().getPayGameAmount()));
                } else {
                    this.tv_mod_type.setText(getResources().getString(R.string.pay_game_amount, bean.getPay_tag_info().getPayGameAmount()));
                }
            }
            if (bean.getBespeak_switch() != 1 || bean.getDown_status() != 2) {
                int iX0 = UtilsMy.x0(bean.getPay_tag_info(), bean.getCrc_sign_id());
                if (zIsModMainGame) {
                    setDetialButn(this.tv_stand_type, bean.getDown_status(), bean.getSize(), iX0, bean.getCrc_sign_id(), zIsModMainGame);
                    return;
                } else {
                    setDetialButn(this.tv_mod_type, bean.getDown_status(), bean.getSize(), iX0, bean.getCrc_sign_id(), zIsModMainGame);
                    return;
                }
            }
            if (bean.getGame_book() == 1) {
                if (zIsModMainGame) {
                    this.tv_stand_type.setText("已预约");
                } else {
                    this.tv_mod_type.setText("已预约");
                }
                setDetialButn(this.tv_stand_type, bean.getDown_status(), bean.getSize(), UtilsMy.x0(bean.getPay_tag_info(), bean.getCrc_sign_id()), bean.getCrc_sign_id(), zIsModMainGame);
                return;
            }
            if (zIsModMainGame) {
                this.tv_stand_type.setText("预约");
                return;
            } else {
                this.tv_mod_type.setText("预约");
                return;
            }
        }
        if (status == 48) {
            showInstallButn(task);
            this.tv_new_version.setVisibility(8);
            return;
        }
        if (status == 9) {
            return;
        }
        showInstallButn(task);
        if (UtilsMy.x0(bean.getPay_tag_info(), bean.getCrc_sign_id()) > 0) {
            if (zIsModMainGame) {
                this.tv_stand_type.setText(getResources().getString(R.string.pay_game_amount, bean.getPay_tag_info().getPayGameAmount()));
            } else {
                this.tv_mod_type.setText(getResources().getString(R.string.pay_game_amount, bean.getPay_tag_info().getPayGameAmount()));
            }
        } else if (zIsModMainGame) {
            this.tv_stand_type.setText(getResources().getString(R.string.download_status_download));
        } else {
            this.tv_mod_type.setText(getResources().getString(R.string.download_status_download));
        }
        if (bean.getBespeak_switch() != 1 || (bean.getDown_status() != 2 && bean.getDown_status() != 6)) {
            int iX1 = UtilsMy.x0(bean.getPay_tag_info(), bean.getCrc_sign_id());
            if (zIsModMainGame) {
                setDetialButn(this.tv_stand_type, bean.getDown_status(), bean.getSize(), iX1, bean.getCrc_sign_id(), zIsModMainGame);
                return;
            } else {
                setDetialButn(this.tv_mod_type, bean.getDown_status(), bean.getSize(), iX1, bean.getCrc_sign_id(), zIsModMainGame);
                return;
            }
        }
        if (bean.getGame_book() != 1) {
            if (zIsModMainGame) {
                this.tv_stand_type.setText("预约");
                return;
            } else {
                this.tv_mod_type.setText("预约");
                return;
            }
        }
        if (zIsModMainGame) {
            this.tv_stand_type.setText("已预约");
        } else {
            this.tv_mod_type.setText("已预约");
        }
        int iX2 = UtilsMy.x0(bean.getPay_tag_info(), bean.getCrc_sign_id());
        if (zIsModMainGame) {
            setDetialButn(this.tv_stand_type, 2, bean.getSize(), iX2, bean.getCrc_sign_id(), zIsModMainGame);
        } else {
            setDetialButn(this.tv_mod_type, 2, bean.getSize(), iX2, bean.getCrc_sign_id(), zIsModMainGame);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    @UiThread
    public void updateInstallStatus() {
        boolean zK;
        DownloadTask downloadTask = this.modDownloadTask;
        if (downloadTask == null) {
            DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
            if (downloadTaskG != null) {
                zK = com.join.mgps.va.overmind.i.q().K(downloadTaskG.getPackageName());
            } else {
                zK = false;
            }
        } else if (downloadTask.getStatus() == 5 || this.modDownloadTask.getStatus() == 9 || this.modDownloadTask.getStatus() == 42) {
            zK = true;
        } else {
            zK = false;
        }
        if (!zK) {
            TextView textView = this.tv_mod_install_status;
            if (textView != null) {
                textView.setText("未安装");
                this.tv_mod_install_status.setTextColor(Color.parseColor("#FF9DC7FF"));
                this.tv_mod_install_status.setVisibility(0);
            }
            ImageView imageView = this.iv_mod_dot;
            if (imageView != null) {
                imageView.setVisibility(0);
                return;
            }
            return;
        }
        TextView textView2 = this.tv_mod_status;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        TextView textView3 = this.tv_mod_install_status;
        if (textView3 != null) {
            textView3.setText("已安装");
            this.tv_mod_install_status.setTextColor(Color.parseColor("#FFDDEBFF"));
            this.tv_mod_install_status.setVisibility(8);
        }
        ImageView imageView2 = this.iv_mod_dot;
        if (imageView2 != null) {
            imageView2.setVisibility(8);
        }
    }

    void updateLoacalArchiveData() {
        this.viewmodle.loadLocalArchiveDatas(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void updatePay(final boolean needRetry) {
        ExtBean extBean = this.extBean;
        if (extBean == null || !"checkgame".equals(extBean.getFrom())) {
            return;
        }
        com.join.mgps.Util.x1.c().b(this, this.extBean.getFrom_id(), new p(needRetry));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi(ModGameDetailBean modgameBean) throws Throwable {
        DownloadTask downloadTask;
        int status;
        ModInfoBean modInfoBean;
        GamedetialModleFourBean gamedetialModleFourBean;
        DetialShowImageBean detialShowImageBean;
        DetialShowImageSingBean remote;
        DetialShowImageBean detialShowImageBean2;
        DetialShowImageSingBean remote2;
        this.modGameDetailBean = modgameBean;
        if (modgameBean != null) {
            try {
                this.loding_layout.setVisibility(8);
                this.loding_faile.setVisibility(8);
                this.rightLayout.setVisibility(0);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (this.modGameDetailBean.getGold_finger() != null) {
                this.viewmodle.setGoldFingerBean(this.modGameDetailBean.getGold_finger());
            }
            showTabUi(modgameBean);
            String str = modgameBean.getCloud_archive_local_path() != null ? "1" : "";
            this.standInfoBean = modgameBean.getMain_game_info();
            this.modInfoBean = modgameBean.getMod_game_info();
            com.papa.sim.statistic.t.l(this).a1(Event.indexGameStart, AccountUtil_.getInstance_(this).getUid(), this.modInfoBean.getGame_id(), this.from, 1, str);
            if (modgameBean.getAd_info() != null && modgameBean.getAd_info().getMain() != null) {
                com.join.android.app.common.utils.l.h(this.tv_open_vip, modgameBean.getAd_info().getMain().getPic_remote());
            }
            GamedetialModleFourBean gamedetialModleFourBean2 = this.standInfoBean;
            if (gamedetialModleFourBean2 != null) {
                if (gamedetialModleFourBean2.getGame_screen_shot() != null && this.standInfoBean.getGame_screen_shot().size() > 0) {
                    ScreenshotGamedetialBean screenshotGamedetialBean = this.standInfoBean.getGame_screen_shot().get(0);
                    if (screenshotGamedetialBean != null) {
                        String pic = screenshotGamedetialBean.getPic();
                        if (!com.join.mgps.Util.t2.h(pic)) {
                            com.join.android.app.common.utils.l.h(this.sdv_image, pic);
                        }
                    }
                } else if (this.standInfoBean.getPic_info() != null && this.standInfoBean.getPic_info().size() > 0 && (detialShowImageBean2 = this.standInfoBean.getPic_info().get(0)) != null && (remote2 = detialShowImageBean2.getRemote()) != null) {
                    String path = remote2.getPath();
                    if (!com.join.mgps.Util.t2.h(path)) {
                        com.join.android.app.common.utils.l.h(this.sdv_image, path);
                    }
                }
            }
            if (this.standInfoBean == null && (gamedetialModleFourBean = this.modInfoBean) != null) {
                if (gamedetialModleFourBean.getGame_screen_shot() != null && this.modInfoBean.getGame_screen_shot().size() > 0) {
                    ScreenshotGamedetialBean screenshotGamedetialBean2 = this.modInfoBean.getGame_screen_shot().get(0);
                    if (screenshotGamedetialBean2 != null) {
                        String pic2 = screenshotGamedetialBean2.getPic();
                        if (!com.join.mgps.Util.t2.h(pic2)) {
                            com.join.android.app.common.utils.l.h(this.sdv_image, pic2);
                        }
                    }
                } else if (this.modInfoBean.getPic_info() != null && this.modInfoBean.getPic_info().size() > 0 && (detialShowImageBean = this.modInfoBean.getPic_info().get(0)) != null && (remote = detialShowImageBean.getRemote()) != null) {
                    String path2 = remote.getPath();
                    if (!com.join.mgps.Util.t2.h(path2)) {
                        com.join.android.app.common.utils.l.h(this.sdv_image, path2);
                    }
                }
            }
            GamedetialModleFourBean gamedetialModleFourBean3 = this.standInfoBean;
            if (gamedetialModleFourBean3 != null) {
                this.tv_game_name.setText(gamedetialModleFourBean3.getGame_name());
            } else {
                GamedetialModleFourBean gamedetialModleFourBean4 = this.modInfoBean;
                if (gamedetialModleFourBean4 != null) {
                    this.tv_game_name.setText(gamedetialModleFourBean4.getGame_name());
                }
            }
            GeneralCfgBean general_cfg = this.modGameDetailBean.getGeneral_cfg();
            if (general_cfg != null) {
                this.memberUrl = general_cfg.getMemberUrl();
                if (general_cfg.getStrongMode() != null) {
                    this.tv_mod_type.setText(general_cfg.getStrongMode().getTitle());
                }
                if (general_cfg.getNormalMode() != null) {
                    this.tv_stand_type.setText(general_cfg.getNormalMode().getTitle());
                }
            }
            if (com.join.mgps.Util.t2.i(this.gameId)) {
                this.modDownloadTask = q5.f.M().G(this.gameId);
            }
            if (this.modDownloadTask != null) {
                if ("46".equals(this.modInfoBean.getPlugin_num())) {
                    DownloadTask downloadTask2 = this.modDownloadTask;
                    Dtype dtype = Dtype.MOD;
                    downloadTask2.setFileType(dtype.name());
                    this.modDownloadTask.setRomType(dtype.name());
                    for (TipBean tipBean : this.modDownloadTask.getTipBeans()) {
                        if (tipBean.getId().equals(ConstantIntEnum.DATA.value() + "")) {
                            this.modDownloadTask.setRomType(Dtype.androiddata.name());
                        } else {
                            if (tipBean.getId().equals(ConstantIntEnum.OBB.value() + "")) {
                                this.modDownloadTask.setRomType(Dtype.androidobb.name());
                            }
                        }
                        if (tipBean.getId().equals(ConstantIntEnum.OBBDATA.value() + "")) {
                            this.modDownloadTask.setRomType(Dtype.androidobbdata.name());
                            break;
                        }
                    }
                }
            } else {
                this.modDownloadTask = this.modInfoBean.getDownloadtaskDown();
                ModGameDetailBean modGameDetailBean = this.modGameDetailBean;
                boolean z10 = true;
                if (modGameDetailBean != null && modGameDetailBean.getPd_info() != null) {
                    showDomainDialog(this.modDownloadTask, 1, 1);
                } else if (!this.modDownloadTask.isCloudGame()) {
                    showDialog(this.modDownloadTask);
                }
                if (com.join.mgps.Util.t2.i(this.modDownloadTask.getMod_info()) && (modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(this.modDownloadTask.getMod_info(), ModInfoBean.class)) != null && this.modDownloadTask.getCrc_link_type_val().equals(modInfoBean.getMod_game_id())) {
                    this.modDownloadTask.setResource_url_remote(modInfoBean.getDown_url());
                    DownloadTask downloadTask3 = this.modDownloadTask;
                    Dtype dtype2 = Dtype.MOD;
                    downloadTask3.setFileType(dtype2.name());
                    this.modDownloadTask.setRomType(dtype2.name());
                    for (TipBean tipBean2 : this.modDownloadTask.getTipBeans()) {
                        if (tipBean2.getId().equals(ConstantIntEnum.DATA.value() + "")) {
                            this.modDownloadTask.setRomType(Dtype.androiddata.name());
                        } else {
                            if (tipBean2.getId().equals(ConstantIntEnum.OBB.value() + "")) {
                                this.modDownloadTask.setRomType(Dtype.androidobb.name());
                            }
                        }
                        if (tipBean2.getId().equals(ConstantIntEnum.OBBDATA.value() + "")) {
                            this.modDownloadTask.setRomType(Dtype.androidobbdata.name());
                            break;
                        }
                    }
                    if (com.join.android.app.common.utils.g.t0(this).e(this, this.modDownloadTask.getPackageName()) && this.modDownloadTask.getTask_down_type() == 0 && !com.join.mgps.va.overmind.i.q().K(this.modDownloadTask.getPackageName())) {
                        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this).n(this, this.modDownloadTask.getPackageName());
                        if (com.join.mgps.Util.t2.i(modInfoBean.getCompatible_version()) && com.join.mgps.Util.t2.i(modInfoBean.getCompatible_version())) {
                            for (String str2 : modInfoBean.getCompatible_version().split(",")) {
                                if (str2.equals(aVarN.e() + "_" + aVarN.d())) {
                                    this.hasVersion = true;
                                    break;
                                }
                            }
                        }
                        boolean z11 = false;
                        for (TipBean tipBean3 : this.modDownloadTask.getTipBeans()) {
                            if (!tipBean3.getId().equals(ConstantIntEnum.DATA.value() + "")) {
                                if (!tipBean3.getId().equals(ConstantIntEnum.OBB.value() + "")) {
                                    if (tipBean3.getId().equals(ConstantIntEnum.OBBDATA.value() + "")) {
                                    }
                                }
                            }
                            z11 = true;
                        }
                        boolean z12 = this.hasVersion;
                        if ((z12 && Build.VERSION.SDK_INT < 30) || (z12 && !z11)) {
                            this.modDownloadTask.setTask_down_type(3);
                        }
                    }
                }
                this.modDownloadTask.setDownloadType(0);
                this.modDownloadTask.setScreenshot_pic(this.modInfoBean.getScreenshot_pic());
                String strD = this.prefDef_.hasShowModInstallGames().d();
                if ((com.join.mgps.Util.t2.h(strD) || !strD.contains(this.modDownloadTask.getCrc_link_type_val())) && !this.modDownloadTask.isCloudGame()) {
                    ModGameDetailBean modGameDetailBean2 = this.modGameDetailBean;
                    if (modGameDetailBean2 == null || modGameDetailBean2.getPd_info() == null) {
                        showDialog(this.modDownloadTask, 0);
                    } else {
                        showDomainDialog(this.modDownloadTask, 1, 0);
                    }
                    this.prefDef_.hasShowModInstallGames().g(strD + "," + this.modDownloadTask.getCrc_link_type_val());
                }
                DownloadTask downloadTask4 = this.modDownloadTask;
                if (downloadTask4 != null && (((status = downloadTask4.getStatus()) == 0 || status == 5 || status == 11 || status == 27 || status == 6) && this.modDownloadTask.isCloudGame())) {
                    z10 = false;
                }
                if (z10) {
                    showDialog(this.modDownloadTask);
                }
            }
            checkModUpdate();
            updateButn(this.modDownloadTask, this.modInfoBean);
            GamedetialModleFourBean gamedetialModleFourBean5 = this.standInfoBean;
            if (gamedetialModleFourBean5 != null) {
                this.standGameId = gamedetialModleFourBean5.getGame_id();
            }
            if (com.join.mgps.Util.t2.i(this.standGameId)) {
                this.standDownloadTask = q5.f.M().G(this.standGameId);
            }
            DownloadTask downloadTask5 = this.standDownloadTask;
            if (downloadTask5 == null) {
                GamedetialModleFourBean gamedetialModleFourBean6 = this.standInfoBean;
                if (gamedetialModleFourBean6 != null) {
                    DownloadTask downloadtaskDown = gamedetialModleFourBean6.getDownloadtaskDown();
                    this.standDownloadTask = downloadtaskDown;
                    Dtype dtype3 = Dtype.android;
                    downloadtaskDown.setFileType(dtype3.name());
                    this.standDownloadTask.setRomType(dtype3.name());
                }
            } else {
                downloadTask5.setDownloadType(0);
                this.standDownloadTask.setScreenshot_pic(this.standInfoBean.getScreenshot_pic());
            }
            checkStandUpdate();
            GamedetialModleFourBean gamedetialModleFourBean7 = this.standInfoBean;
            if (gamedetialModleFourBean7 != null && (downloadTask = this.standDownloadTask) != null) {
                updateButn(downloadTask, gamedetialModleFourBean7);
            }
            startStdGame(this.from);
            ModGameDetailBean modGameDetailBean3 = this.modGameDetailBean;
            if (modGameDetailBean3 == null || modGameDetailBean3.getPd_info() == null) {
                checkShowCopyDialog(this.modDownloadTask);
            } else {
                showDomainDialog(this.modDownloadTask, 2, 0);
            }
            getModGameArchievePath(new ArrayList<String>() { // from class: com.join.mgps.activity.ModGameIndexActivity.21
                {
                    add(ModGameIndexActivity.this.modDownloadTask.getCrc_link_type_val());
                }
            });
            this.iv_mod.setEnabled(this.modGameDetailBean.isMod_model());
            this.iv_mod_1.setEnabled(this.modGameDetailBean.isCloud_mod_model());
            this.iv_cloud.setEnabled(this.modGameDetailBean.isCloud_archive_model());
            this.iv_cloud_1.setEnabled(this.modGameDetailBean.isCloud_archive_model());
        }
        updateInstallStatus();
    }

    void updateVipStateUI() {
        if (this.ll_vip != null) {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            if (com.join.mgps.Util.b.piv(accountData) && accountData.getVipExpTime() == 3716553600L) {
                this.ll_vip.setVisibility(8);
            } else {
                this.ll_vip.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x002a  */
    public void showDialog(DownloadTask downloadTask, int position) {
        if (downloadTask != null) {
            int status = downloadTask.getStatus();
            if (status == 0 || status == 27) {
                this.dialogType = 0;
            } else if (status == 42) {
                this.dialogType = 1;
            } else if (status == 5 || status == 6) {
                this.dialogType = 0;
            } else if (status == 10) {
                this.dialogType = 3;
            } else if (status != 11) {
                this.dialogType = 2;
            } else {
                this.dialogType = 0;
            }
            com.join.mgps.dialog.h1 h1Var = this.downloadDialog;
            if (h1Var != null && h1Var.isShowing()) {
                this.downloadDialog.dismiss();
            }
            m mVar = new m(this);
            this.downloadDialog = mVar;
            mVar.p(this.modGameDetailBean.getCloud_archive_local_path());
            this.downloadDialog.r(downloadTask.getCrc_link_type_val());
            this.downloadDialog.setOnDismissListener(new n());
            this.downloadDialog.u(new o());
            this.downloadDialog.v(position);
            if (this.downloadDialog.isShowing() || isFinishing()) {
                return;
            }
            this.downloadDialog.show();
            this.downloadDialog.C(this.dialogType, this.isShowModMainGame, this.hasVersion);
        }
    }

    private void showDialogError(DownloadTask task) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        NoticeArchiveDialog noticeArchiveDialog = new NoticeArchiveDialog();
        noticeArchiveDialog.setClickDelDialogListener(new i());
        noticeArchiveDialog.setDialogData(new DialogData("", "由于安卓11以上系统限制，无法同步存档至增强模式，请使用标准模式游玩已保存的游戏存档", "我知道了", "", false));
        noticeArchiveDialog.show(getSupportFragmentManager(), "");
    }
}
