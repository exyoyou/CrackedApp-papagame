package com.join.mgps.activity;

import XI.XI.K0.XI;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaResponse;
import com.MApplication;
import com.airbnb.lottie.LottieAnimationView;
import com.byazt.hv.TTDownloadField;
import com.byazt.quv.AbsServerManager;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.efs.sdk.base.core.util.PackageUtil;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.common.servcie.DownloadBaseActivity;
import com.join.android.app.common.servcie.DownloadService_;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.FindGameMainFragment;
import com.join.kotlin.ui.findgame.data.IntentClassfyEvent;
import com.join.kotlin.ui.userrecom.UserRecomRequestArgs;
import com.join.kotlin.ui.userrecom.UserRecomendActivity;
import com.join.kotlin.utils.DlTaskManager;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity;
import com.join.mgps.activity.arena.NewArenaDownloadActivity_;
import com.join.mgps.activity.login.LoginCfgsBean;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.activity.login.UsercenterFragmentNew;
import com.join.mgps.activity.login.UsercenterFragmentNew_;
import com.join.mgps.activity.message.MessageMainActivity_;
import com.join.mgps.activity.recomend.RecommendActivity_;
import com.join.mgps.customview.CircleDownloadProgressBar;
import com.join.mgps.customview.LightningView;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.customview.input.InputNumView;
import com.join.mgps.customview.smartpopupwindow.SmartPopupWindow;
import com.join.mgps.db.tables.EMUApkArenaTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.db.tables.VideoWatchLogTable;
import com.join.mgps.dto.APKVersionMainBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.ApkVersionbean;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.ArcadeGameAdCfgBean;
import com.join.mgps.dto.BaseBean;
import com.join.mgps.dto.BattaleSwitchBean;
import com.join.mgps.dto.BootPageData;
import com.join.mgps.dto.BootPageItem;
import com.join.mgps.dto.BootPageRequestArgs;
import com.join.mgps.dto.CfgInfoRequestArgs;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommentSendMessageResultBean;
import com.join.mgps.dto.CommonAdBean;
import com.join.mgps.dto.CommonCfgBean;
import com.join.mgps.dto.ConfigData;
import com.join.mgps.dto.DeviceInfoBean;
import com.join.mgps.dto.DownloadSpeedupCfgBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.Filepath;
import com.join.mgps.dto.FirstIntentData;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.FriendAccountInfo;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendInviteBean;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.HomeCloudActiveBean;
import com.join.mgps.dto.HomeViewSwich;
import com.join.mgps.dto.JPushIntentData;
import com.join.mgps.dto.LoginMethodResultData;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.dto.PdAdCfgBean;
import com.join.mgps.dto.PlayCfgBean;
import com.join.mgps.dto.PopupAdBean;
import com.join.mgps.dto.PspGameAdCfgBean;
import com.join.mgps.dto.PublicVideoCfgBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RecomeWifiDatabean;
import com.join.mgps.dto.RegisterRequestBean;
import com.join.mgps.dto.RequestCommonAdArgs;
import com.join.mgps.dto.RequestEndGameListArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestUidtagidTagdes;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.RewardBean;
import com.join.mgps.dto.SNKGameInfoBean;
import com.join.mgps.dto.SearchDataBean;
import com.join.mgps.dto.SimulatorAdCfgBean;
import com.join.mgps.dto.SingleGameAdBean;
import com.join.mgps.dto.SingleGameRunAdTextCfgBean;
import com.join.mgps.dto.ThAdSwitchDataBean;
import com.join.mgps.dto.TipsInfoBean;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.dto.UninstallOnlineGameArgs;
import com.join.mgps.dto.UninstallOnlineGameBean;
import com.join.mgps.dto.VersionDto;
import com.join.mgps.dto.VideoAdCfgBean;
import com.join.mgps.dto.VideoAdCfgRequestArgs;
import com.join.mgps.dto.VideoAdWatchLogRequest;
import com.join.mgps.dto.WebDiskCfg;
import com.join.mgps.enums.ApiName;
import com.join.mgps.enums.Dtype;
import com.join.mgps.mod.utils.PluginConfig;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.BootReceiver_;
import com.join.mgps.receiver.ScreenActionReceiver;
import com.join.mgps.service.CommonService;
import com.join.mgps.service.CommonService_;
import com.join.mgps.service.UpdateService_;
import com.netease.nis.quicklogin.listener.QuickLoginPreMobileListener;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.ExtFrom;
import com.papa91.VideoStrategyPop;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.ext.ToastManager;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.wrapper.UserPrefs;
import com.uc.crashsdk.export.LogType;
import com.umeng.analytics.MobclickAgent;
import com.umeng.umcrash.UMCrash;
import com.windmill.sdk.WMConstants;
import com.wufan.friend.chat.protocol.FriendChangeStateNotification;
import com.wufan.user.service.protobuf.MessageCheckTokenRequest;
import com.wufan.user.service.protobuf.MessageCheckTokenResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.MessageUserInfoRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.UserInfo;
import com.wufan.user.service.protobuf.enumeration.SceneType;
import com.xinzhu.overmind.Overmind;
import io.reactivex.functions.Consumer;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.util.LinkedMultiValueMap;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.mg_mainlayout)
public class MGMainActivity extends DownloadBaseActivity implements com.join.mgps.pref.f {
    public static final int H_UPDATE_USER_INFO = 1;
    public static final String KEY_EXTRAS = "extras";
    public static final String KEY_MEDIACMD = "key_mediacmd";
    public static final String KEY_MEDIACMDPARAMS = "key_mediacmd_params";
    public static final String KEY_MESSAGE = "message";
    public static final String KEY_TITLE = "title";
    private static final String[] MAIN_TAB_LOTTIE = {"lottie/home/tab_1.json", "lottie/home/tab_2.json", "lottie/home/tab_3.json", "lottie/home/tab_4.json", "lottie/home/tab_5.json"};
    public static final String MESSAGE_RECEIVED_ACTION = "com.example.jpushdemo.MESSAGE_RECEIVED_ACTION";
    private static int MainAppInfoColorMain = -4802890;
    private static int MainYelloColor = -756480;
    public static boolean isCreated;
    public static boolean isForeground;
    private long LastOpHomePageButtonTime;
    private UserInfo accountBean;
    TextView accountId;
    private com.join.mgps.dialog.c adVipMainDialog;
    private Animation animation;
    private ObjectAnimator animation2;
    private com.join.mgps.dialog.e appUpdateDialog;
    SimpleDraweeView avatar;
    SimpleDraweeView avatar1;

    @ViewById
    TextView bigCenterRound;
    public TextView biground;

    @ViewById
    LinearLayout bottom;
    View button;

    @ViewById
    CircleDownloadProgressBar cdp_down_progress;
    FindGameMainFragment choiceFragment;
    View close;
    SimpleDraweeView coinFloatad;
    private Context context;
    private Activity curActivty;

    @ViewById
    TextView dialogBack;
    Dialog dialogU;

    @ViewById
    ImageView discoverHuojian;

    @ViewById
    ImageView discoverMessage;

    @ViewById
    LinearLayout discoverNormal;
    public LinearLayout downloadLayout;
    public ImageView downloadLine;
    public List<DownloadTask> downloadTasks;

    @ViewById
    SimpleDraweeView downlodingGameIcon;

    @ViewById
    TextView endGameBadge;
    com.join.mgps.fragment.t0 fightFragment;

    @ViewById
    RelativeLayout fightSelect;

    @ViewById
    TextView fightText;
    FirstIntentData firstIntentData;
    com.join.mgps.Util.p0 flipCardAnimation;
    private FragmentManager fragmentManager;
    com.join.mgps.rpc.j friendClient;
    TextView gameName;
    com.join.mgps.ad.h gdtAdVideo;
    com.join.mgps.ad.h gdtDownLoadSpeedAd;
    com.join.mgps.ad.h gdtGoldAdVideo;
    com.join.mgps.ad.h gdtPspAd;

    @ViewById
    SimpleDraweeView gifIcon;
    com.join.mgps.ad.l groDownLoadSpeedAd;
    com.join.mgps.ad.l groMAdVideo;
    com.join.mgps.ad.l groPspAd;
    private boolean hasNet;
    public ImageView hasNewFinishedGameImage;
    private boolean hasShowAd;

    @ViewById
    LinearLayout home_tab_default_layout;

    @ViewById
    ImageView home_tab_huojian_image;

    @ViewById
    ImageView home_tab_monkey_image;

    @ViewById
    RelativeLayout home_tab_monkey_layout;
    ImageView imageLoading;

    @ViewById
    ImageView imageView36;

    @Extra
    IntentDateBean intentDateBean;

    @Extra
    IntentDateBean intentDateBean22;
    SmartPopupWindow invitePop;
    private boolean isDestroyed;
    private boolean isFirst;
    private boolean isMessageReceiverRegisted;
    private boolean isPapaMainFragmentHasNewData;

    @Extra
    JPushIntentData jPushIntentData;
    private long lastPreloginSuccessTime;
    private long lastPreloginTime;
    ActivityResultLauncher<String[]> launcher;

    @ViewById
    RelativeLayout layout_others;
    private List<String> listZip;
    private com.join.android.app.common.dialog.f localGameOneDialog;
    private com.join.android.app.common.dialog.j localGameThreeDialog;
    private com.join.android.app.common.dialog.l localGameTwoDialog;

    @ViewById
    LottieAnimationView lottie_mg_category;

    @ViewById
    LottieAnimationView lottie_mg_chart;

    @ViewById
    LottieAnimationView lottie_mg_emulator;

    @ViewById
    LottieAnimationView lottie_mg_fight;

    @ViewById
    LottieAnimationView lottie_mg_recom;
    private AdReceived mAdReceived;
    private DownloadTask mAdVipEvent;
    Dialog mDialog;
    private String mLastChartOverlaySig;
    private MessageReceiver mMessageReceiver;
    MyGamePapaFragmentV2_ mPapaActivity;
    com.join.mgps.rpc.e mRpcClient;
    private q.rorbin.badgeview.a messagebadge;
    r8 mgPapaMainFragment;

    @ViewById
    LinearLayout mg_category_tabselect;

    @ViewById
    TextView mg_category_text;

    @ViewById
    ImageView mg_chart_image;

    @ViewById
    RelativeLayout mg_chart_tabselect;

    @ViewById
    TextView mg_chart_text;

    @ViewById
    RelativeLayout mg_emulator_tabselect;

    @ViewById
    TextView mg_emulator_text;

    @ViewById
    RelativeLayout mg_recom_tabselect;

    @ViewById
    TextView mg_recom_text;

    @ViewById
    TextView miniGameBadge;
    TextView name;
    TextView name1;

    @StringRes(resName = "connect_server_excption")
    String netConnectException;

    @StringRes(resName = "net_excption")
    String netExcption;

    @ViewById
    LinearLayout notice_layout;

    @ViewById
    TextView notice_text;

    @ViewById
    LightningView numberInTab;
    TextView papa_user_round;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.ad.s reAdVideo;
    com.join.mgps.ad.s reDownLoadSpeedAd;
    com.join.mgps.ad.s rePspAd;
    private DownloadCompleteReceiver receiver;
    private RecomDatabean recomDatabean;
    com.join.mgps.rpc.e recommendClient;

    @ViewById
    TextView red_point;

    @ViewById
    RelativeLayout rl_home_tab_game;

    @ViewById
    RelativeLayout root;
    com.join.mgps.rpc.b rpcAccountClient;
    com.join.mgps.rpc.c rpcAccountClientV2;
    com.join.mgps.rpc.e rpcClient;
    com.join.mgps.rpc.g rpcConsoleGameClient;
    com.join.mgps.rpc.i rpcForumClient;
    com.join.mgps.rpc.k rpcGameClient;
    TextView scroll_text;
    public ScrollTextViewLayout scroll_text_layout;
    private String shortcutGameId;

    @ViewById
    ImageView splash;
    com.join.mgps.ad.a0 ttAdVideo;
    com.join.mgps.ad.a0 ttDownLoadSpeedAd;
    com.join.mgps.ad.a0 ttGoldAdVideo;
    com.join.mgps.ad.a0 ttPspAd;

    @ViewById
    TextView unreadMessageBadge;
    private List<CommonAdBean> updateFeatureList;
    UsercenterFragmentNew userCenterFragment;
    SimpleDraweeView user_icon;
    private VideoStrategyPop videoStrategyPop;
    private String TAG = MGMainActivity.class.getSimpleName();
    ScreenActionReceiver screenActionReceiver = null;
    private Bitmap mBitmap = null;
    private int num = 0;
    private int messageNum = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f54287n = 0;
    private int tableNum = 0;
    private int positionNum = 3;
    private int classiFy = 0;
    private int classifyPrimaryIndex = 1;
    private int isOpenExit = 1;
    private long startTime = 0;
    private boolean isNotThisGame = false;
    private Map<String, DownloadTask> downloadTasksMap = new ConcurrentHashMap();
    private boolean timeIsFinish = false;
    private Handler handler = new j();
    private String mainPos = "MainPos";
    private DownloadSpeedupCfgBean downloadSpeedupCfgBean = null;
    private PspGameAdCfgBean pspGameAdCfgBean = null;
    AlertDialog.Builder dialog = null;
    boolean isInitOm = false;
    boolean hasLaunchQuark = false;
    private boolean isfirst35 = false;
    boolean hasWritePermission = false;
    private boolean showInstallNoticeOrappDialog = false;
    private boolean hasRunFinishforFinishDialog = false;
    boolean hasBackupIng = false;
    private int backupNumber = 0;
    private int reloadNumber = 5;
    boolean showUpdate = false;
    private long exitTime = 0;
    private boolean activityHasDes = false;
    private boolean isFirstCommendVersion = false;
    boolean isUpdateUserInfo = false;
    boolean touristLogin = false;
    boolean checkSign = false;
    boolean isSign = false;
    private boolean showInstallLayout = true;
    private boolean hasResouse = false;
    private boolean checkHasSo = false;
    private boolean hasNewDownload = false;
    private String downloadUrl = "";
    private String downLoadFileName = "";
    private boolean showMonkey = true;
    long lastcheckDownService = 0;
    private List<String> listTempZip = new ArrayList();
    long timelastSnk = 0;
    private List<String> snkGameList = new ArrayList();
    private boolean isFirstCheck = true;
    private String allJsonStr = "";
    DownloadTask downloadTaskx = null;
    boolean showText = false;
    boolean needStopAnim = false;
    boolean hasRom = false;
    boolean hasPlug = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    Runnable f54288r = new Runnable() { // from class: com.join.mgps.activity.p6
        @Override // java.lang.Runnable
        public final void run() {
            this.f57836b.lambda$new$12();
        }
    };
    int defaultTab = -1;
    int currTabNumber = -1;
    String currTabTagId = "";
    String currGameId = "";
    private int preloginQueenCount = 0;
    Handler mHandler = new Handler(new k0());
    u0 preloginRunnable = new l0();
    Runnable rePreloginRunnable = new m0();
    private boolean hasGetAvailableLoginMethods = false;
    private boolean hasJumpToOneKeyLogin = false;
    private boolean isLoginedWhenEnter = false;
    private boolean isShowingSplash = false;

    class AdReceived extends BroadcastReceiver {
        AdReceived() {
        }

        /* JADX WARN: Code duplicated, block: B:115:0x02f4  */
        /* JADX WARN: Code duplicated, block: B:148:0x03c5  */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i10;
            int i11;
            PlayCfgBean playCfgBean;
            int i12;
            PlayCfgBean playCfgBean2;
            int i13;
            ArcadeGameAdCfgBean arcadeGameAdCfgBean;
            ArrayList<PlayCfgBean> second_fixed_list;
            int intExtra = intent.getIntExtra("action", 0);
            if (intExtra == 0) {
                if (!com.join.android.app.common.utils.m.j(MGMainActivity.this)) {
                    Toast.makeText(context, "请联网后重试！", 0).show();
                    Intent intent2 = new Intent();
                    intent2.setAction("com.emu.ad.result");
                    intent2.putExtra("adAction", 8);
                    MGMainActivity.this.sendBroadcast(intent2);
                    return;
                }
                boolean zBooleanValue = MGMainActivity.this.prefDef.isShowVideo().d().booleanValue();
                int intExtra2 = intent.getIntExtra("howTimes", 0);
                int intExtra3 = intent.getIntExtra("adCount", 0);
                int intExtra4 = intent.getIntExtra("adSdkType", 1);
                String stringExtra = intent.getStringExtra("gameId");
                if (!zBooleanValue && MApplication.f3172f1 != null) {
                    MGMainActivity.this.prefDef.isShowVideo().g(Boolean.TRUE);
                    Intent intent3 = new Intent();
                    intent3.setAction("com.emu.ad.result");
                    intent3.putExtra("adAction", 98);
                    intent3.putExtra("V_switch", MApplication.f3172f1.getV_switch());
                    intent3.putExtra("url", MApplication.f3172f1.getUrl());
                    intent3.putExtra("time", MApplication.f3172f1.getTimes());
                    intent3.putExtra("howTimes", intExtra2);
                    intent3.putExtra("adCount", intExtra3);
                    intent3.putExtra("adSdkType", intExtra4);
                    intent3.putExtra("gameId", stringExtra);
                    MGMainActivity.this.sendBroadcast(intent3);
                    return;
                }
                String strD = MGMainActivity.this.prefDef.arcadeGameAdCfg().d();
                if (com.join.mgps.Util.t2.i(strD) && (arcadeGameAdCfgBean = (ArcadeGameAdCfgBean) JsonMapper.getInstance().fromJson(strD, ArcadeGameAdCfgBean.class)) != null) {
                    if (intExtra3 != 0 || (second_fixed_list = arcadeGameAdCfgBean.getPlay_cfg().getFirst_random_list()) == null) {
                        second_fixed_list = arcadeGameAdCfgBean.getPlay_cfg().getSecond_fixed_list();
                    }
                    PlayCfgBean adConfig = MGMainActivity.this.getAdConfig(second_fixed_list, intExtra4);
                    if (adConfig != null) {
                        if (adConfig.getSdk_type() == 1) {
                            MGMainActivity mGMainActivity = MGMainActivity.this;
                            com.join.mgps.ad.a0 a0Var = mGMainActivity.ttAdVideo;
                            if (a0Var == null) {
                                mGMainActivity.initTTAd(adConfig.getSdk_key(), adConfig.getAd_id(), true);
                            } else {
                                a0Var.r(mGMainActivity, stringExtra, intExtra2, intExtra3);
                            }
                        } else if (adConfig.getSdk_type() == 2) {
                            MGMainActivity mGMainActivity2 = MGMainActivity.this;
                            com.join.mgps.ad.h hVar = mGMainActivity2.gdtAdVideo;
                            if (hVar == null) {
                                mGMainActivity2.initGDTAd(adConfig.getSdk_key(), adConfig.getAd_id(), stringExtra, intExtra2, intExtra3, true);
                            } else {
                                hVar.r(mGMainActivity2, stringExtra, intExtra2, intExtra3);
                            }
                        } else if (adConfig.getSdk_type() != 4) {
                            if (adConfig.getSdk_type() == 7) {
                                MGMainActivity mGMainActivity3 = MGMainActivity.this;
                                com.join.mgps.ad.l lVar = mGMainActivity3.groMAdVideo;
                                if (lVar == null) {
                                    mGMainActivity3.initGroMTTAd(adConfig.getSdk_key(), adConfig.getAd_id(), stringExtra, intExtra2, intExtra3, true);
                                } else {
                                    lVar.r(mGMainActivity3, stringExtra, intExtra2, intExtra3);
                                }
                            } else if (adConfig.getSdk_type() == 9) {
                                MGMainActivity mGMainActivity4 = MGMainActivity.this;
                                com.join.mgps.ad.s sVar = mGMainActivity4.reAdVideo;
                                if (sVar == null) {
                                    mGMainActivity4.initREAd(adConfig.getSdk_key(), adConfig.getAd_id(), stringExtra, intExtra2, intExtra3, true);
                                } else {
                                    sVar.r(mGMainActivity4, stringExtra, intExtra2, intExtra3);
                                }
                            }
                        }
                    }
                }
                com.papa.sim.statistic.t.l(MGMainActivity.this).R1(Event.onAdvert31, new Ext());
                return;
            }
            if (intExtra == 1) {
                IntentUtil.getInstance().goVip(context);
                return;
            }
            if (intExtra != 2) {
                if (intExtra == 3) {
                    String stringExtra2 = intent.getStringExtra("url");
                    if (intent.getIntExtra("from", 0) == 1) {
                        com.papa.sim.statistic.t.l(MGMainActivity.this).R1(Event.onMemberAdvert31, new Ext());
                    }
                    MGMainActivity.this.raseVipToMgsim(9, "", stringExtra2);
                    return;
                }
                if (intExtra == 4) {
                    IntentUtil.getInstance().goShareWebActivity(context, intent.getStringExtra("url"));
                    return;
                }
                if (intExtra == 6) {
                    MGMainActivity.this.showDownloadVideoAd(intent.getStringExtra("gameId"));
                    return;
                }
                if (intExtra == 7) {
                    MGMainActivity.this.showPspVideoAd();
                    return;
                }
                if (intExtra == 1001) {
                    PlayCfgBean playCfgBean3 = (PlayCfgBean) intent.getSerializableExtra("playCfg");
                    if (playCfgBean3 != null) {
                        MApplication.f3182z.I(MGMainActivity.this, playCfgBean3);
                        return;
                    }
                    return;
                }
                if (intExtra == 1002) {
                    MApplication.f3182z.Q(MGMainActivity.this, intent.getStringExtra("gameId"));
                    return;
                }
                if (intExtra != 1005) {
                    if (intExtra == 1009) {
                        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.a(1));
                        return;
                    } else if (intExtra == 1101) {
                        MApplication.f3182z.J(MGMainActivity.this, (PlayCfgBean) intent.getSerializableExtra("playCfg"));
                        return;
                    } else {
                        if (intExtra == 1102) {
                            MApplication.f3182z.R(MGMainActivity.this, intent.getStringExtra("gameId"));
                            return;
                        }
                        return;
                    }
                }
                PlayCfgBean playCfgBean4 = (PlayCfgBean) intent.getSerializableExtra("playCfg");
                String stringExtra3 = intent.getStringExtra("gameId");
                int intExtra5 = intent.getIntExtra("howTimes", 0);
                int intExtra6 = intent.getIntExtra("adCount", 0);
                int intExtra7 = intent.getIntExtra(NoticeTopAnimActivityDialog_.STATE_EXTRA, 0);
                boolean booleanExtra = intent.getBooleanExtra("close", true);
                if (playCfgBean4 != null) {
                    HashMap map = new HashMap();
                    map.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, Integer.valueOf(intExtra7));
                    map.put("close", Boolean.valueOf(booleanExtra));
                    if (playCfgBean4.getSdk_type() == 1) {
                        MGMainActivity mGMainActivity5 = MGMainActivity.this;
                        if (mGMainActivity5.ttGoldAdVideo == null) {
                            mGMainActivity5.initGoldTTAd(playCfgBean4.getSdk_key(), playCfgBean4.getAd_id(), stringExtra3, intExtra5, intExtra6, map, true);
                            return;
                        } else {
                            mGMainActivity5.showGoldFingerVideo(playCfgBean4, stringExtra3, intExtra5, intExtra6, intExtra7, booleanExtra);
                            return;
                        }
                    }
                    if (playCfgBean4.getSdk_type() == 2) {
                        MGMainActivity mGMainActivity6 = MGMainActivity.this;
                        if (mGMainActivity6.gdtGoldAdVideo == null) {
                            mGMainActivity6.initGoldGDTAd(playCfgBean4.getSdk_key(), playCfgBean4.getAd_id(), stringExtra3, intExtra5, intExtra6, map, true);
                            return;
                        } else {
                            mGMainActivity6.showGoldFingerVideo(playCfgBean4, stringExtra3, intExtra5, intExtra6, intExtra7, booleanExtra);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            intent.getIntExtra("plugNum", 0);
            String stringExtra4 = intent.getStringExtra("gameId");
            String strD2 = MGMainActivity.this.prefDef.arcadeGameAdCfg().d();
            if (com.join.mgps.Util.t2.i(strD2)) {
                ArcadeGameAdCfgBean arcadeGameAdCfgBean2 = (ArcadeGameAdCfgBean) JsonMapper.getInstance().fromJson(strD2, ArcadeGameAdCfgBean.class);
                if (arcadeGameAdCfgBean2 == null || arcadeGameAdCfgBean2.getSwitch_state() != 1) {
                    Intent intent4 = new Intent();
                    intent4.setAction("com.emu.ad.result");
                    intent4.putExtra("adAction", 7);
                    MGMainActivity.this.sendBroadcast(intent4);
                    return;
                }
                UserPrefs userPrefs = new UserPrefs(context);
                String fbaAdGamesConfig = userPrefs.getFbaAdGamesConfig(stringExtra4, MGMainActivity.this.accountBean.getUid() + "");
                long j10 = 0;
                if (com.join.mgps.Util.t2.i(fbaAdGamesConfig)) {
                    try {
                        JSONObject jSONObject = new JSONObject(fbaAdGamesConfig);
                        j10 = jSONObject.has("lastTime") ? Long.parseLong(jSONObject.get("lastTime").toString()) : System.currentTimeMillis();
                        i10 = jSONObject.has("howTimes") ? Integer.parseInt(jSONObject.get("howTimes").toString()) : 0;
                        try {
                            i11 = jSONObject.has("adCount") ? Integer.parseInt(jSONObject.get("adCount").toString()) : 0;
                        } catch (Exception e10) {
                            e = e10;
                            e.printStackTrace();
                        }
                    } catch (Exception e11) {
                        e = e11;
                        i10 = 0;
                    }
                } else {
                    i11 = 0;
                    i10 = 0;
                }
                if (!com.join.mgps.Util.e0.z(j10)) {
                    i11 = 0;
                    i10 = 0;
                }
                boolean z10 = arcadeGameAdCfgBean2.getSwitch_state() == 1 && i11 < arcadeGameAdCfgBean2.getDaily_times() && i10 >= arcadeGameAdCfgBean2.getHow_times() - 1 && !com.join.mgps.Util.b.piv(MGMainActivity.this.accountBean) && arcadeGameAdCfgBean2.getHow_times() > 0;
                String unused = MGMainActivity.this.TAG;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onReceive: ");
                sb2.append(z10);
                sb2.append("howTimes");
                sb2.append(i10);
                if (!z10) {
                    Intent intent5 = new Intent();
                    intent5.setAction("com.emu.ad.result");
                    intent5.putExtra("adAction", 7);
                    MGMainActivity.this.sendBroadcast(intent5);
                    String unused2 = MGMainActivity.this.TAG;
                    userPrefs.setFbaAdGamesConfig(stringExtra4, MGMainActivity.this.accountBean.getUid() + "", i10 + 1, i11);
                    return;
                }
                String ad_id = "3051121204680401";
                if (i11 == 0) {
                    ArrayList<PlayCfgBean> first_random_list = arcadeGameAdCfgBean2.getPlay_cfg().getFirst_random_list();
                    if (first_random_list == null || first_random_list.size() <= 0) {
                        playCfgBean2 = null;
                    } else {
                        ArrayList arrayList = new ArrayList();
                        Iterator<PlayCfgBean> it2 = first_random_list.iterator();
                        while (it2.hasNext()) {
                            arrayList.add(Double.valueOf(it2.next().getProbability()));
                        }
                        int iB = com.join.mgps.ad.p.b(arrayList);
                        if (iB < first_random_list.size()) {
                            playCfgBean2 = first_random_list.get(iB);
                        } else {
                            playCfgBean2 = null;
                        }
                    }
                    if (playCfgBean2 != null) {
                        ad_id = playCfgBean2.getAd_id();
                        if (playCfgBean2.getSdk_type() == 1) {
                            MGMainActivity.this.initTTAd(playCfgBean2.getSdk_key(), ad_id, false);
                        } else if (playCfgBean2.getSdk_type() == 2) {
                            MGMainActivity.this.initGDTAd(playCfgBean2.getSdk_key(), ad_id, stringExtra4, i10, i11, false);
                            i13 = 2;
                        } else if (playCfgBean2.getSdk_type() != 3 && playCfgBean2.getSdk_type() != 4) {
                            if (playCfgBean2.getSdk_type() == 7) {
                                MGMainActivity.this.initGroMTTAd(playCfgBean2.getSdk_key(), ad_id, stringExtra4, i10, i11, false);
                                i13 = 7;
                            } else if (playCfgBean2.getSdk_type() == 9) {
                                MGMainActivity.this.initREAd(playCfgBean2.getSdk_key(), ad_id, stringExtra4, i10, i11, false);
                                i13 = 9;
                            }
                        }
                        i13 = 1;
                    } else {
                        i13 = 1;
                    }
                    i12 = i13;
                } else {
                    ArrayList<PlayCfgBean> second_fixed_list2 = arcadeGameAdCfgBean2.getPlay_cfg().getSecond_fixed_list();
                    if (second_fixed_list2 == null || second_fixed_list2.size() <= 0) {
                        playCfgBean = null;
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator<PlayCfgBean> it3 = second_fixed_list2.iterator();
                        while (it3.hasNext()) {
                            arrayList2.add(Double.valueOf(it3.next().getProbability()));
                        }
                        int iB2 = com.join.mgps.ad.p.b(arrayList2);
                        if (iB2 < second_fixed_list2.size()) {
                            playCfgBean = second_fixed_list2.get(iB2);
                        } else {
                            playCfgBean = null;
                        }
                    }
                    if (playCfgBean != null) {
                        ad_id = playCfgBean.getAd_id();
                        int sdk_type = playCfgBean.getSdk_type();
                        if (sdk_type == 1) {
                            MGMainActivity.this.initTTAd(playCfgBean.getSdk_key(), ad_id, false);
                        } else if (sdk_type == 2) {
                            MGMainActivity.this.initGDTAd(playCfgBean.getSdk_key(), ad_id, stringExtra4, i10, i11, false);
                            i12 = 2;
                        } else if (sdk_type == 4) {
                            i12 = 4;
                        } else if (sdk_type == 7) {
                            MGMainActivity.this.initGroMTTAd(playCfgBean.getSdk_key(), ad_id, stringExtra4, i10, i11, false);
                            i12 = 7;
                        } else if (sdk_type == 9) {
                            MGMainActivity.this.initREAd(playCfgBean.getSdk_key(), ad_id, stringExtra4, i10, i11, false);
                            i12 = 9;
                        }
                        i12 = 1;
                    } else {
                        i12 = 1;
                    }
                }
                Intent intent6 = new Intent();
                intent6.setAction("com.emu.ad.result");
                intent6.putExtra("adAction", 99);
                intent6.putExtra("content", arcadeGameAdCfgBean2.getTip_text());
                intent6.putExtra("dialogUrl", "");
                intent6.putExtra("pic", "");
                intent6.putExtra(MediationConstant.EXTRA_ADID, ad_id);
                intent6.putExtra("btn_l", arcadeGameAdCfgBean2.getL_btn_text());
                intent6.putExtra("btn_r", arcadeGameAdCfgBean2.getR_btn_text());
                intent6.putExtra("btn_url", arcadeGameAdCfgBean2.getL_btn_url());
                intent6.putExtra("times", arcadeGameAdCfgBean2.getDaily_times() - i11);
                intent6.putExtra("adCount", i11);
                intent6.putExtra("howTimes", i10);
                intent6.putExtra("adSdkType", i12);
                MGMainActivity.this.sendBroadcast(intent6);
                com.papa.sim.statistic.t.l(MGMainActivity.this).R1(Event.showAdvert31, new Ext());
            }
        }
    }

    private class DownloadCompleteReceiver extends BroadcastReceiver {
        private DownloadCompleteReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !BootReceiver_.f72259f.equals(intent.getAction())) {
                return;
            }
            try {
                long longExtra = intent.getLongExtra("extra_download_id", -1L);
                DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
                String mimeTypeForDownloadedFile = downloadManager.getMimeTypeForDownloadedFile(longExtra);
                String strX = com.join.mgps.Util.o0.x(context, downloadManager.getUriForDownloadedFile(longExtra));
                String strSubstring = strX.substring(strX.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                File file = new File(strX);
                if (file.exists() && strSubstring.startsWith("temp_")) {
                    strSubstring.replace("temp_", "");
                    File file2 = new File(strX.replace("temp_", ""));
                    if (file2.exists()) {
                        file2.delete();
                    }
                    file.renameTo(new File(strX.replace("temp_", "")));
                }
                if ((mimeTypeForDownloadedFile.equals("application/zip") || strX.endsWith(com.sigmob.sdk.archives.d.f78712e)) && com.join.mgps.pref.h.n(context).f()) {
                    org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.a0(1));
                }
            } catch (Exception unused) {
            }
        }

        /* synthetic */ DownloadCompleteReceiver(MGMainActivity mGMainActivity, j jVar) {
            this();
        }
    }

    public enum MediaCmd {
        CMD_PLAY,
        CMD_PLAY_BACKGROUND,
        CMD_PAUSE,
        CMD_STOP,
        CMD_FULLSCREEN,
        CMD_TRANSLATE_Y
    }

    public class MessageReceiver extends BroadcastReceiver {
        public MessageReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (MGMainActivity.MESSAGE_RECEIVED_ACTION.equals(intent.getAction())) {
                String stringExtra = intent.getStringExtra("message");
                String stringExtra2 = intent.getStringExtra("extras");
                StringBuilder sb2 = new StringBuilder();
                sb2.append("message : ");
                sb2.append(stringExtra);
                sb2.append("\n");
                if (com.join.mgps.Util.c1.e(stringExtra2)) {
                    return;
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append("extras : ");
                sb3.append(stringExtra2);
                sb3.append("\n");
            }
        }
    }

    class a implements Callback<ResponseModel<ConfigData>> {
        a() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<ConfigData>> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<ConfigData>> call, Response<ResponseModel<ConfigData>> response) {
            ConfigData data;
            if (response == null || response.body() == null || (data = response.body().getData()) == null) {
                return;
            }
            String client_ip = data.getClient_ip();
            try {
                MGMainActivity.this.prefDef.launch_game_switch().g(Boolean.valueOf(data.isLaunch_game_switch()));
                MGMainActivity.this.prefDef.download_game_switch().g(Boolean.valueOf(data.isDownload_game_switch()));
                MGMainActivity.this.prefDef.non_online_user_switch().g(Boolean.valueOf(data.isNon_online_user_switch()));
                MGMainActivity.this.prefDef.androidIdNullsKey().g(JsonMapper.getInstance().toJson(data.getReal_name_black_list()));
                MGMainActivity.this.prefDef.wx_open_appid().g(data.getWx_open_appid());
                MGMainActivity.this.prefDef.isHomepagePlayVideo().g(Boolean.valueOf(data.isHome_page_video_switch()));
                MGMainActivity.this.prefDef.net_game_count_down().g(Integer.valueOf(data.getNet_game_count_down()));
                MGMainActivity.this.prefDef.show_unknown_source().g(Boolean.valueOf(data.isUnknown_source_state()));
                MGMainActivity.this.prefDef.homeTopTypeEntrance().g(JsonMapper.toJsonString(data.getTop_type_entrance()));
                MGMainActivity.this.prefDef.sch_feed_back_switch().g(Boolean.valueOf(data.isSch_feed_back_switch()));
                MGMainActivity.this.prefDef.sdkInit().g(Boolean.valueOf(data.isSdk_init()));
                MGMainActivity.this.prefDef.sdkInitReady().g(Boolean.TRUE);
                MGMainActivity.this.applyQuarkAssocLaunchAfterSdkInit(data.isSdk_init());
                if (data.isSdk_init()) {
                    XI.f27XI = true;
                }
                if (data.getFirst_screen_ad_interaction() != null) {
                    com.papa.sim.statistic.pref.b.k(MGMainActivity.this).y(JsonMapper.toJsonString(data.getFirst_screen_ad_interaction()));
                }
                String strD = com.join.mgps.Util.a.d(client_ip, "UTF-8");
                if (!strD.equals(MApplication.D)) {
                    MApplication.D = strD;
                }
                MGMainActivity.this.prefDef.w_channel_info_switch().g(Boolean.valueOf(data.isW_channel_info_switch()));
                PdAdCfgBean pd_ad_cfg = data.getPd_ad_cfg();
                if (pd_ad_cfg != null) {
                    String strD2 = MGMainActivity.this.prefDef.pd_ad_config().d();
                    if (com.join.mgps.Util.t2.i(strD2)) {
                        try {
                            PdAdCfgBean pdAdCfgBean = (PdAdCfgBean) JsonMapper.getInstance().fromJson(strD2, PdAdCfgBean.class);
                            if (pdAdCfgBean == null || !com.join.mgps.Util.e0.z(pdAdCfgBean.getLastUpdateConfigTime())) {
                                pd_ad_cfg.setLastUpdateConfigTime(System.currentTimeMillis());
                                MGMainActivity.this.prefDef.pd_ad_config().g(JsonMapper.toJsonString(pd_ad_cfg));
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            pd_ad_cfg.setLastUpdateConfigTime(System.currentTimeMillis());
                            MGMainActivity.this.prefDef.pd_ad_config().g(JsonMapper.toJsonString(pd_ad_cfg));
                        }
                    } else {
                        pd_ad_cfg.setLastUpdateConfigTime(System.currentTimeMillis());
                        MGMainActivity.this.prefDef.pd_ad_config().g(JsonMapper.toJsonString(pd_ad_cfg));
                    }
                } else {
                    MGMainActivity.this.prefDef.pd_ad_config().g("");
                }
                if (data.getFound_game_tab() != null) {
                    MGMainActivity.this.prefDef.found_game_tab().g(JsonMapper.toJsonString(data.getFound_game_tab()));
                    TipsInfoBean tips_info = data.getFound_game_tab().getTips_info();
                    if (tips_info != null) {
                        MGMainActivity.this.updateFindGameRetHot(tips_info);
                    }
                }
                if (data.getWeb_disk_cfg() != null) {
                    MGMainActivity.this.prefDef.ab_side().g(Integer.valueOf(data.getWeb_disk_cfg().getAb_side()));
                    MGMainActivity.this.prefDef.isBsideInt().g(Integer.valueOf(data.isB_side() ? 2 : 1));
                    MGMainActivity.this.prefDef.web_disk_cfg().g(JsonMapper.getInstance().toJson(data.getWeb_disk_cfg()));
                    MGMainActivity.this.prefDef.quark_display_mode().g(Integer.valueOf(data.getWeb_disk_cfg().getKk_ico_display()));
                }
                if (data.getWeb_disk_position() != null) {
                    MGMainActivity.this.prefDef.web_disk_position().g(JsonMapper.toJsonString(data.getWeb_disk_position()));
                }
                if (data.getExclude_simulator_type() != null) {
                    MGMainActivity.this.prefDef.exclude_simulator_type().g(JsonMapper.toJsonString(data.getExclude_simulator_type()));
                }
                MGMainActivity.this.prefDef.cloudGameConfig().g(JsonMapper.toJsonString(data.getCloud_gaming()));
                MGMainActivity.this.addShortCuts();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    class a0 extends com.join.mgps.ad.h {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ boolean f54294r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a0(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f54294r = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose() {
            super.onWfADClose();
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.h hVar = mGMainActivity.gdtPspAd;
            com.join.mgps.ad.d.h(mGMainActivity, 18);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            MGMainActivity.this.sendVideoAdWatchLog(2, 2);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f54294r);
        }
    }

    class b implements Callback<ResultMainBean<LoginCfgsBean>> {
        b() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<LoginCfgsBean>> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<LoginCfgsBean>> call, Response<ResultMainBean<LoginCfgsBean>> response) {
            LoginCfgsBean data;
            if (response != null) {
                try {
                    if (response.body() != null) {
                        ResultMainBean<LoginCfgsBean> resultMainBeanBody = response.body();
                        if (resultMainBeanBody.getCode() != 600 || resultMainBeanBody.getMessages() == null || (data = resultMainBeanBody.getMessages().getData()) == null) {
                            return;
                        }
                        MApplication.V = data;
                        com.join.mgps.pref.h.n(MGMainActivity.this.context).M(data);
                        if (MGMainActivity.this.prefDef.startGameShowLoginNumber().d().intValue() == -1) {
                            MGMainActivity.this.prefDef.startGameShowLoginNumber().g(Integer.valueOf(data.getHow_times_open()));
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    class b0 extends com.join.mgps.ad.s {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ boolean f54297t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b0(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f54297t = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId) {
            super.onWfADClose(gameId);
            if (!TextUtils.isEmpty(gameId)) {
                DownloadTask downloadTaskG = q5.f.M().G(gameId);
                if (downloadTaskG != null && downloadTaskG.getStatus() == 11) {
                    UtilsMy.w4(downloadTaskG, MGMainActivity.this);
                }
                MGMainActivity mGMainActivity = MGMainActivity.this;
                com.join.mgps.ad.s sVar = mGMainActivity.reDownLoadSpeedAd;
                com.join.mgps.ad.d.j(mGMainActivity, 21, gameId);
            }
            MGMainActivity.this.delayChangeAdshow();
            MGMainActivity mGMainActivity2 = MGMainActivity.this;
            mGMainActivity2.delayLoadRewardAd(mGMainActivity2.reDownLoadSpeedAd);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            MGMainActivity.this.sendVideoAdWatchLog(3, 9);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f54297t);
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionBeanSub f54299b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f54300c;

        c(final CollectionBeanSub val$datas, final com.join.mgps.customview.t val$sharedGameDialog) {
            this.f54299b = val$datas;
            this.f54300c = val$sharedGameDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (!this.f54299b.getGame_id().isEmpty() && !this.f54299b.getGame_info_tpl_type().isEmpty()) {
                IntentUtil.getInstance().intentActivity(MGMainActivity.this, this.f54299b.getIntentDataBean());
            }
            this.f54300c.dismiss();
        }
    }

    class c0 extends com.join.mgps.ad.s {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ boolean f54302t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c0(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f54302t = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose() {
            super.onWfADClose();
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.s sVar = mGMainActivity.rePspAd;
            com.join.mgps.ad.d.h(mGMainActivity, 18);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            MGMainActivity.this.sendVideoAdWatchLog(2, 9);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f54302t);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGMainActivity.this.downloadLayout();
        }
    }

    class d0 extends com.join.mgps.ad.l {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ boolean f54305u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d0(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f54305u = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId) {
            super.onWfADClose(gameId);
            if (!TextUtils.isEmpty(gameId)) {
                DownloadTask downloadTaskG = q5.f.M().G(gameId);
                if (downloadTaskG != null && downloadTaskG.getStatus() == 11) {
                    UtilsMy.w4(downloadTaskG, MGMainActivity.this);
                }
                MGMainActivity mGMainActivity = MGMainActivity.this;
                com.join.mgps.ad.l lVar = mGMainActivity.groDownLoadSpeedAd;
                com.join.mgps.ad.d.j(mGMainActivity, 21, gameId);
            }
            MGMainActivity.this.delayChangeAdshow();
            MGMainActivity mGMainActivity2 = MGMainActivity.this;
            mGMainActivity2.delayLoadRewardAd(mGMainActivity2.groDownLoadSpeedAd);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            MGMainActivity.this.sendVideoAdWatchLog(3, 7);
            k(Event.Stopad_GromoreSdk_VideoShow.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f54305u);
        }

        @Override // com.join.mgps.ad.l
        public void x() {
            super.x();
            k(Event.Stopad_GromoreSdk_Videoloading.name(), this.f58364f);
        }
    }

    class e implements Consumer<com.tbruyelle.rxpermissions2.b> {

        class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                Intent intent = new Intent();
                intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, MGMainActivity.this.getPackageName(), null));
                MGMainActivity.this.startActivity(intent);
            }
        }

        e() {
        }

        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            if (permission.f83019b) {
                MGMainActivity mGMainActivity = MGMainActivity.this;
                if (mGMainActivity.hasWritePermission) {
                    return;
                }
                mGMainActivity.hasWritePermission = ContextCompat.checkSelfPermission(mGMainActivity.context, com.kuaishou.weapon.p0.g.f74786j) == 0;
                MGMainActivity mGMainActivity2 = MGMainActivity.this;
                boolean z10 = mGMainActivity2.hasWritePermission;
                if (z10) {
                    mGMainActivity2.startBackups(z10);
                    return;
                }
                return;
            }
            if (permission.f83020c) {
                return;
            }
            MGMainActivity mGMainActivity3 = MGMainActivity.this;
            Dialog dialog = mGMainActivity3.dialogU;
            if (dialog == null) {
                mGMainActivity3.dialog = new AlertDialog.Builder(mGMainActivity3.context, R.style.AlertDialogCustom);
            } else if (dialog.isShowing()) {
                return;
            }
            if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74783g)) {
                return;
            }
            MGMainActivity.this.dialog.setTitle("提示");
            if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74786j) || permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74785i)) {
                MGMainActivity.this.dialog.setMessage("需要打开读写存储权限，请去设置中开启权限");
            } else {
                MGMainActivity.this.dialog.setMessage("请去设置中开启权限");
            }
            MGMainActivity.this.dialog.setPositiveButton("去打开", new a());
            MGMainActivity mGMainActivity4 = MGMainActivity.this;
            mGMainActivity4.dialogU = mGMainActivity4.dialog.show();
        }
    }

    class e0 extends com.join.mgps.ad.l {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ boolean f54309u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e0(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f54309u = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose() {
            super.onWfADClose();
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.l lVar = mGMainActivity.groPspAd;
            com.join.mgps.ad.d.h(mGMainActivity, 18);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            MGMainActivity.this.sendVideoAdWatchLog(2, 7);
            k(Event.Stopad_GromoreSdk_VideoShow.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f54309u);
        }

        @Override // com.join.mgps.ad.l
        public void x() {
            super.x();
            k(Event.Stopad_GromoreSdk_Videoloading.name(), this.f58364f);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity.this.getSNKGameInfo(-1);
            MGMainActivity.this.resetSelfSupportPrmopt();
        }
    }

    class f0 implements com.join.mgps.dialog.p2.g {
        f0() {
        }

        @Override // com.join.mgps.dialog.p2.g
        public void a() {
            if (ContextCompat.checkSelfPermission(MGMainActivity.this.context, com.kuaishou.weapon.p0.g.f74779c) == 0) {
                com.papa.sim.statistic.pref.b.k(MGMainActivity.this.context).F(true);
            }
            com.join.mgps.Util.z.e(MGMainActivity.this.context);
            MGMainActivity.this.prefDef.lastApplyReadPhonePermission().g(Long.valueOf(System.currentTimeMillis()));
            MGMainActivity.this.prefDef.lastApplyReadPhonePermissionOnRecom().g(Long.valueOf(System.currentTimeMillis()));
            MGMainActivity.this.prefDef.firstShowUserPermiss().g(Boolean.FALSE);
            com.papa.sim.statistic.pref.b.k(MGMainActivity.this.context).L(false);
            MGMainActivity.this.dialogBack.setVisibility(8);
            MGMainActivity.this.initOM();
            MApplication.f3182z.B();
            MGMainActivity.this.getRootUrl();
            MGMainActivity.this.preLogin(true);
            MGMainActivity.this.afterViewsInitData(true);
            MGMainActivity.this.resume();
            h8.a aVarA = com.constant.a.a();
            if (aVarA != null) {
                aVarA.a();
            }
        }
    }

    class g extends m6.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f54313a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingAdCfgResponse.AdCfgInfo f54314b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ExtBean f54315c;

        g(final int val$step, final MessageCloudGamingAdCfgResponse.AdCfgInfo val$adCfgInfo, final ExtBean val$extBean) {
            this.f54313a = val$step;
            this.f54314b = val$adCfgInfo;
            this.f54315c = val$extBean;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(int i10, MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
            MGMainActivity.this.openWebPage(i10 + 1, adCfgInfo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(int i10, MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
            MGMainActivity.this.openWebPage(i10 + 1, adCfgInfo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(String str, ExtBean extBean) {
            Bundle bundle = new Bundle();
            if (com.join.mgps.Util.t2.i(str)) {
                bundle.putString("_sign_data", str);
            }
            bundle.putSerializable("prentExtBean", extBean.copy());
            FragmentPageActivity_.intent(MGMainActivity.this).b(1).c("云玩").a(bundle).start();
        }

        @Override // m6.d, com.join.kotlin.base.dialog.callback.IDialogActivityCallback
        public void onActivityDismiss(@NonNull Activity activity) {
            super.onActivityDismiss(activity);
            int i10 = this.f54313a;
            if (i10 == 2 || i10 == 3) {
                MGMainActivity.this.checkSign(false);
            }
        }

        @Override // m6.d, com.join.mgps.callbacks.r
        public void onEvent(Activity activity, int event, final String jsonParams) {
            super.onEvent(activity, event, jsonParams);
            if (event == 1) {
                Handler handler = MGMainActivity.this.handler;
                final int i10 = this.f54313a;
                final MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo = this.f54314b;
                handler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.c7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f56893b.h(i10, adCfgInfo);
                    }
                }, 200L);
                return;
            }
            if (event == 2) {
                activity.finish();
                Handler handler2 = MGMainActivity.this.handler;
                final int i11 = this.f54313a;
                final MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo2 = this.f54314b;
                handler2.postDelayed(new Runnable() { // from class: com.join.mgps.activity.d7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f57080b.i(i11, adCfgInfo2);
                    }
                }, 200L);
                Handler handler3 = MGMainActivity.this.handler;
                final ExtBean extBean = this.f54315c;
                handler3.postDelayed(new Runnable() { // from class: com.join.mgps.activity.e7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f57138b.j(jsonParams, extBean);
                    }
                }, 400L);
            }
        }
    }

    class g0 implements Animation.AnimationListener {
        g0() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            ((com.join.mgps.Util.p0) animation).a();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecomDatabean f54318b;

        h(final RecomDatabean val$finalCoinDataBean) {
            this.f54318b = val$finalCoinDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MGMainActivity.this.coinFloatad.setVisibility(8);
            MGMainActivity.this.prefDef.clickFloatViewTime().g(Long.valueOf(System.currentTimeMillis()));
            if (com.join.mgps.Util.t2.i(this.f54318b.getMain().getPic_remote())) {
                IntentUtil.getInstance().intentActivity(MGMainActivity.this.context, this.f54318b.getSub().get(0).getIntentDataBean());
            }
        }
    }

    class h0 implements InputNumView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.input.a f54320a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaRequest f54321b;

        h0(final com.join.mgps.customview.input.a val$mInputGameRoomPwdDialog, final ArenaRequest val$request) {
            this.f54320a = val$mInputGameRoomPwdDialog;
            this.f54321b = val$request;
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            this.f54320a.c();
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String num) {
            this.f54320a.c();
            if (this.f54321b == null) {
                return;
            }
            FriendBean friendBean = new FriendBean();
            friendBean.setGameId(this.f54321b.gameId + "");
            friendBean.setRoomId(this.f54321b.roomId);
            friendBean.setElite(this.f54321b.isElite);
            friendBean.setRoomPwd(num);
            com.wufan.friend.chat.c.u().p(friendBean);
        }
    }

    class i implements View.OnClickListener {

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MGMainActivity.this.localGameOneDialog != null) {
                    try {
                        MGMainActivity.this.localGameOneDialog.dismiss();
                    } catch (Exception unused) {
                    }
                    MGMainActivity.this.localGameOneDialog = null;
                }
                if (MGMainActivity.this.localGameTwoDialog.a()) {
                    return;
                }
                try {
                    MGMainActivity.this.localGameTwoDialog.dismiss();
                } catch (Exception unused2) {
                }
            }
        }

        i() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(DialogInterface dialogInterface, int i10) {
            com.join.mgps.Util.a2.g(MGMainActivity.this.curActivty);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) throws Throwable {
            if (MGMainActivity.this.localGameTwoDialog != null) {
                try {
                    MGMainActivity.this.localGameTwoDialog.dismiss();
                } catch (Exception unused) {
                }
                MGMainActivity.this.localGameTwoDialog = null;
            }
            if (MGMainActivity.this.localGameThreeDialog != null) {
                try {
                    MGMainActivity.this.localGameThreeDialog.dismissAllowingStateLoss();
                } catch (Exception unused2) {
                }
                MGMainActivity.this.localGameThreeDialog = null;
            }
            if (ContextCompat.checkSelfPermission(MGMainActivity.this.context, com.kuaishou.weapon.p0.g.f74785i) != 0) {
                UtilsMy.e3(MGMainActivity.this.context, com.kuaishou.weapon.p0.g.f74785i);
                return;
            }
            if (!com.join.mgps.Util.a2.d()) {
                if (MGMainActivity.this.curActivty != null) {
                    new AlertDialog.Builder(MGMainActivity.this.curActivty).setTitle("需要文件管理权限").setMessage("扫描下载目录中的游戏压缩包，需要开启系统的「所有文件访问权限」（部分机型为「允许管理所有文件」）。仅「存储」权限通常无法列出文件。").setPositiveButton("去设置", new DialogInterface.OnClickListener() { // from class: com.join.mgps.activity.f7
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i10) {
                            this.f57215b.b(dialogInterface, i10);
                        }
                    }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                    return;
                }
                return;
            }
            MGMainActivity.this.localGameTwoDialog = new com.join.android.app.common.dialog.l(MGMainActivity.this.curActivty);
            MGMainActivity.this.localGameTwoDialog.show();
            MGMainActivity.this.localGameTwoDialog.e(new a());
            MGMainActivity.this.changeText();
            MGMainActivity.this.localGameTwoDialog.d("识别中...");
            MGMainActivity.this.localGameTwoDialog.b();
            MGMainActivity.this.checkSNKGame();
            try {
                MGMainActivity.this.localGameOneDialog.dismiss();
            } catch (Exception unused3) {
            }
        }
    }

    class i0 implements Callback<ResponseModel> {
        i0() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel> call, Response<ResponseModel> response) {
            if (response == null || response.body() == null) {
                MGMainActivity.this.toast("添加失败");
                return;
            }
            ResponseModel responseModelBody = response.body();
            if (responseModelBody.getError() == 0) {
                MGMainActivity.this.addSuccess(Boolean.TRUE);
            } else {
                MGMainActivity.this.toast(responseModelBody.getMsg());
            }
        }
    }

    class j extends Handler {
        j() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i10 = msg.what;
            if (i10 == 1) {
                MGMainActivity.this.timeIsFinish = true;
                return;
            }
            if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                MGMainActivity.this.startShowRecommendwifi((RecomeWifiDatabean) msg.obj);
                return;
            }
            RecomeWifiDatabean recomeWifiDatabean = (RecomeWifiDatabean) msg.obj;
            if (MGMainActivity.this.timeIsFinish) {
                MGMainActivity.this.startShowRecommendwifi(recomeWifiDatabean);
                return;
            }
            long jCurrentTimeMillis = BaseCloudFileManager.ACK_TIMEOUT - (System.currentTimeMillis() - MGMainActivity.this.startTime);
            if (jCurrentTimeMillis <= 0 || jCurrentTimeMillis >= BaseCloudFileManager.ACK_TIMEOUT) {
                MGMainActivity.this.startShowRecommendwifi(recomeWifiDatabean);
                return;
            }
            Message message = new Message();
            message.what = 3;
            message.obj = msg.obj;
            sendMessageDelayed(message, jCurrentTimeMillis);
        }
    }

    class j0 extends AsyncTask<Integer, Void, FriendAccountInfo> {
        j0() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FriendAccountInfo doInBackground(Integer... integers) {
            int iIntValue = integers[0].intValue();
            try {
                UserInfo accountData = AccountUtil_.getInstance_(MGMainActivity.this).getAccountData();
                FriendReqBean friendReqBean = new FriendReqBean();
                friendReqBean.setUid(accountData.getUid());
                friendReqBean.setToken(accountData.getToken());
                friendReqBean.setRuid(iIntValue);
                ResponseModel<FriendAccountInfo> responseModelD = com.join.mgps.rpc.impl.h.p().d(accountData.getUid() + "", accountData.getToken() + "", iIntValue + "");
                if (responseModelD == null) {
                    return null;
                }
                if (responseModelD.getError() == 0) {
                    return responseModelD.getData();
                }
                MGMainActivity.this.toast(responseModelD.getMsg());
                return null;
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(FriendAccountInfo friendAccountInfo) {
            super.onPostExecute(friendAccountInfo);
            if (friendAccountInfo == null) {
                return;
            }
            try {
                com.join.android.app.common.utils.l.y(MGMainActivity.this.avatar1, friendAccountInfo.getAvatar());
                MGMainActivity.this.name1.setText(friendAccountInfo.getNickName());
                MGMainActivity.this.accountId.setText(friendAccountInfo.getAccount() + "");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class k extends com.join.mgps.ad.a0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ boolean f54328u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f54328u = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
            new UserPrefs(MGMainActivity.this.context).setFbaAdGamesConfig(gameId, MGMainActivity.this.accountBean.getUid() + "", howTimes + 1, times + 1);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.a0 a0Var = mGMainActivity.ttAdVideo;
            com.join.mgps.ad.d.h(mGMainActivity, 9);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            MGMainActivity.this.sendVideoAdWatchLog(1, 1);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f54328u);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.a0 a0Var = mGMainActivity.ttAdVideo;
            com.join.mgps.ad.d.h(mGMainActivity, 9);
        }
    }

    class k0 implements Handler.Callback {
        k0() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            if (message.what != 1) {
                return false;
            }
            MGMainActivity.this.getUserInfo();
            return false;
        }
    }

    class l extends com.join.mgps.ad.h {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ boolean f54331r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f54331r = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
            new UserPrefs(MGMainActivity.this.context).setFbaAdGamesConfig(gameId, MGMainActivity.this.accountBean.getUid() + "", howTimes + 1, times + 1);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.h hVar = mGMainActivity.gdtAdVideo;
            com.join.mgps.ad.d.h(mGMainActivity, 9);
            super.onWfADLoad(showAd);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            MGMainActivity.this.sendVideoAdWatchLog(1, 2);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f54331r);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.h hVar = mGMainActivity.gdtAdVideo;
            com.join.mgps.ad.d.h(mGMainActivity, 9);
        }
    }

    class l0 implements u0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f54333b;

        class a extends QuickLoginPreMobileListener {
            a() {
            }

            @Override // com.netease.nis.quicklogin.listener.QuickLoginListener
            public void onGetMobileNumberError(String s10, String s11) {
                MApplication.f3178r1 = false;
                if (MGMainActivity.this.preloginQueenCount > 0) {
                    MGMainActivity mGMainActivity = MGMainActivity.this;
                    if (mGMainActivity.mHandler == null) {
                        mGMainActivity.mHandler = new Handler();
                    }
                    MGMainActivity mGMainActivity2 = MGMainActivity.this;
                    mGMainActivity2.mHandler.post(mGMainActivity2.preloginRunnable);
                }
            }

            @Override // com.netease.nis.quicklogin.listener.QuickLoginListener
            public void onGetMobileNumberSuccess(String s10, String s11) {
                MGMainActivity.this.lastPreloginSuccessTime = System.currentTimeMillis();
                MApplication.f3178r1 = true;
                if (l0.this.f54333b) {
                    MGMainActivity.this.goToOnekeyLogin();
                }
            }
        }

        l0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity.access$2410(MGMainActivity.this);
            if (com.join.android.app.common.utils.m.j(MGMainActivity.this.context) && System.currentTimeMillis() - MGMainActivity.this.lastPreloginTime >= 1500) {
                if ((System.currentTimeMillis() - MGMainActivity.this.lastPreloginSuccessTime >= 60000 || !MApplication.f3178r1) && !MGMainActivity.this.prefDef.firstShowUserPermiss().d().booleanValue()) {
                    MGMainActivity.this.lastPreloginTime = System.currentTimeMillis();
                    MApplication.s().prefetchMobileNumber(new a());
                    MGMainActivity mGMainActivity = MGMainActivity.this;
                    if (mGMainActivity.mHandler == null) {
                        mGMainActivity.mHandler = new Handler();
                    }
                    MGMainActivity mGMainActivity2 = MGMainActivity.this;
                    mGMainActivity2.mHandler.removeCallbacks(mGMainActivity2.rePreloginRunnable);
                    MGMainActivity mGMainActivity3 = MGMainActivity.this;
                    mGMainActivity3.mHandler.postDelayed(mGMainActivity3.rePreloginRunnable, 540000L);
                }
            }
        }

        @Override // com.join.mgps.activity.MGMainActivity.u0
        public u0 u(boolean goToLogin) {
            this.f54333b = goToLogin;
            return this;
        }
    }

    class m extends com.join.mgps.ad.l {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ boolean f54336u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f54336u = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
            new UserPrefs(MGMainActivity.this.context).setFbaAdGamesConfig(gameId, MGMainActivity.this.accountBean.getUid() + "", howTimes + 1, times + 1);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.l lVar = mGMainActivity.groMAdVideo;
            com.join.mgps.ad.d.h(mGMainActivity, 9);
            super.onWfADLoad(showAd);
            k(Event.Stopad_GromoreSdk_Videoloading.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            MGMainActivity.this.sendVideoAdWatchLog(1, 2);
            k(Event.Stopad_GromoreSdk_VideoShow.name(), this.f58364f);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f54336u);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.l lVar = mGMainActivity.groMAdVideo;
            com.join.mgps.ad.d.h(mGMainActivity, 9);
        }
    }

    class m0 implements Runnable {
        m0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MApplication.f3178r1 = false;
            MGMainActivity mGMainActivity = MGMainActivity.this;
            if (mGMainActivity.isTourist(mGMainActivity.context)) {
                MGMainActivity mGMainActivity2 = MGMainActivity.this;
                if (mGMainActivity2.mHandler == null) {
                    mGMainActivity2.mHandler = new Handler();
                }
                MGMainActivity mGMainActivity3 = MGMainActivity.this;
                mGMainActivity3.mHandler.post(mGMainActivity3.preloginRunnable);
            }
        }
    }

    class n extends com.join.mgps.ad.s {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ boolean f54339t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f54339t = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times) {
            super.onWfADClose(gameId, howTimes, times);
            new UserPrefs(MGMainActivity.this.context).setFbaAdGamesConfig(gameId, MGMainActivity.this.accountBean.getUid() + "", howTimes + 1, times + 1);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.s sVar = mGMainActivity.reAdVideo;
            com.join.mgps.ad.d.h(mGMainActivity, 9);
            super.onWfADLoad(showAd);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            MGMainActivity.this.sendVideoAdWatchLog(1, 2);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f54339t);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.s sVar = mGMainActivity.reAdVideo;
            com.join.mgps.ad.d.h(mGMainActivity, 9);
        }
    }

    class n0 implements Callback<AccountResultMainBean<LoginMethodResultData>> {
        n0() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<AccountResultMainBean<LoginMethodResultData>> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<AccountResultMainBean<LoginMethodResultData>> call, Response<AccountResultMainBean<LoginMethodResultData>> response) {
            AccountResultMainBean<LoginMethodResultData> accountResultMainBeanBody = response.body();
            if (accountResultMainBeanBody == null || accountResultMainBeanBody.getError() != 0 || accountResultMainBeanBody.getData() == null) {
                return;
            }
            MGMainActivity.this.prefDef.availableLoginMethod().g(JsonMapper.toJsonString(accountResultMainBeanBody.getData().getLoginMethods()));
            MGMainActivity.this.hasGetAvailableLoginMethods = true;
            MGMainActivity.this.goToOnekeyLogin();
        }
    }

    class o extends com.join.mgps.ad.a0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ boolean f54342u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f54342u = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times, Map<String, Object> extras) {
            super.onWfADClose(gameId, howTimes, times, extras);
            new UserPrefs(MGMainActivity.this.context).setGoldFingerAdGamesConfig(gameId, MGMainActivity.this.accountBean.getUid() + "", howTimes + 1, times + 1);
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.a0 a0Var = mGMainActivity.ttGoldAdVideo;
            com.join.mgps.ad.d.i(mGMainActivity.context, 1007, extras);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f54342u);
        }
    }

    class o0 implements Runnable {
        o0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity.this.queryDownTask();
        }
    }

    class p extends com.join.mgps.ad.h {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ boolean f54345r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f54345r = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId, int howTimes, int times, Map<String, Object> extras) {
            super.onWfADClose(gameId, howTimes, times, extras);
            new UserPrefs(MGMainActivity.this.context).setGoldFingerAdGamesConfig(gameId, MGMainActivity.this.accountBean.getUid() + "", howTimes + 1, times + 1);
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.h hVar = mGMainActivity.gdtGoldAdVideo;
            com.join.mgps.ad.d.i(mGMainActivity.context, 1007, extras);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f54345r);
        }
    }

    class p0 implements Runnable {
        p0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (MGMainActivity.this.jPushIntentData.getType().equals("1")) {
                    if (MGMainActivity.this.jPushIntentData.getJumpInfo() == null || MGMainActivity.this.jPushIntentData.getJumpInfo().getSub() == null || MGMainActivity.this.jPushIntentData.getJumpInfo().getSub().size() <= 0) {
                        MessageMainActivity_.intent(MGMainActivity.this.context).d(true).a(0).start();
                    } else {
                        MessageMainActivity_.intent(MGMainActivity.this.context).d(true).a(0).b(MGMainActivity.this.jPushIntentData.getJumpInfo().getSub().get(0).getIntentDataBean()).start();
                    }
                } else if (MGMainActivity.this.jPushIntentData.getType().equals("2")) {
                    if (MGMainActivity.this.jPushIntentData.getSubType().equals("1")) {
                        MessageMainActivity_.intent(MGMainActivity.this.context).d(true).a(1).c(true).start();
                    } else if (MGMainActivity.this.jPushIntentData.getSubType().equals("2")) {
                        MessageMainActivity_.intent(MGMainActivity.this.context).d(true).a(1).c(false).start();
                    }
                } else if (MGMainActivity.this.jPushIntentData.getType().equals("3")) {
                    if (MGMainActivity.this.jPushIntentData.getSubType().equals("1")) {
                        MessageMainActivity_.intent(MGMainActivity.this.context).d(true).a(2).c(true).start();
                    } else if (MGMainActivity.this.jPushIntentData.getSubType().equals("2")) {
                        MessageMainActivity_.intent(MGMainActivity.this.context).d(true).a(2).c(false).start();
                    }
                }
                MGMainActivity.this.hideRedPoint();
            } catch (Exception e10) {
                e10.getMessage();
            }
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGMainActivity.this.adVipMainDialog == null || com.join.mgps.Util.t2.h(MGMainActivity.this.adVipMainDialog.e())) {
                return;
            }
            Intent intent = new Intent("com.tools.AdBroadcast");
            intent.putExtra("action", 3);
            intent.putExtra("url", MGMainActivity.this.adVipMainDialog.e());
            MGMainActivity.this.sendBroadcast(intent);
        }
    }

    class q0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54349b;

        q0(final String val$gameId) {
            this.f54349b = val$gameId;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            MGMainActivity.this.shortcutGameId = "";
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadTask downloadTaskG = q5.f.M().G(this.f54349b);
            if (downloadTaskG != null) {
                UtilsMy.p4(MGMainActivity.this.context, downloadTaskG, "");
                new Handler().postDelayed(new Runnable() { // from class: com.join.mgps.activity.g7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f57250b.b();
                    }
                }, 1500L);
                return;
            }
            MGMainActivity.this.isNotThisGame = true;
            MGMainActivity.this.positionNum = 2;
            MGMainActivity mGMainActivity = MGMainActivity.this;
            mGMainActivity.setTabSelect(mGMainActivity.positionNum);
            MGMainActivity.this.showToast("游戏不存在，请重新下载。");
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MGMainActivity.this.adVipMainDialog == null || com.join.mgps.Util.t2.h(MGMainActivity.this.adVipMainDialog.f())) {
                return;
            }
            Intent intent = new Intent("com.tools.AdBroadcast");
            intent.putExtra("action", 4);
            intent.putExtra("url", MGMainActivity.this.adVipMainDialog.f());
            MGMainActivity.this.sendBroadcast(intent);
        }
    }

    class r0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MApplication f54352b;

        r0(final MApplication val$instance) {
            this.f54352b = val$instance;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f54352b.p().sdkInit().d().booleanValue()) {
                    return;
                }
                if (com.join.android.app.common.utils.g.t0(MGMainActivity.this.context).e(MGMainActivity.this.context, com.join.mgps.Util.d2.f49544b)) {
                    Intent intent = new Intent();
                    intent.setPackage(com.join.mgps.Util.d2.f49544b);
                    intent.setComponent(new ComponentName(com.join.mgps.Util.d2.f49544b, "com.ucpro.feature.alive.base.powermsg.PowerMsgReceiverService"));
                    this.f54352b.startService(intent);
                    MApplication.f3182z.p().quark_launch_service_times().g(1);
                } else if (com.join.mgps.va.overmind.i.q().S()) {
                    boolean zF = com.join.android.app.common.utils.g.t0(MGMainActivity.this.context).f(MGMainActivity.this.context, com.join.mgps.Util.d2.f49544b, APKUtils.DEVICE_TYPE.VM);
                    MApplication.f3182z.p().quark_launch_service_times().g(1);
                    if (zF) {
                        Intent intent2 = new Intent();
                        intent2.setClassName(com.join.mgps.Util.d2.f49544b, "com.ucpro.feature.alive.base.powermsg.PowerMsgReceiverService");
                        Intent intentStartService = Overmind.getMindActivityManager().startService(intent2, null, 0, 0);
                        if (intentStartService != null) {
                            MGMainActivity.this.startService(intentStartService);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (com.join.android.app.common.utils.m.j(MGMainActivity.this.context)) {
                MGMainActivity.this.adVipMainDialog.dismiss();
                MGMainActivity.this.adVipMainDialog = null;
            } else {
                MGMainActivity.this.allJsonStr = "";
                MGMainActivity.this.showToast("请联网后重试！");
            }
        }
    }

    class s0 implements GameRoomActivity.x {
        s0() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onFail(int type) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration) {
        }

        @Override // com.join.mgps.activity.arena.GameRoomActivity.x
        public void onSuccess(int type, int duration, ButtonBean buttonBean) {
        }
    }

    class t implements VideoStrategyPop.VideoPopListener {
        t() {
        }

        @Override // com.papa91.VideoStrategyPop.VideoPopListener
        public void onClose() {
            MGMainActivity.this.toStartGame();
        }
    }

    class t0 implements Callback<ResponseModel<List<CollectionBeanSub>>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f54357b;

        t0(final long val$range) {
            this.f54357b = val$range;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<List<CollectionBeanSub>>> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<List<CollectionBeanSub>>> call, Response<ResponseModel<List<CollectionBeanSub>>> response) {
            List<CollectionBeanSub> data;
            if (response == null || response.code() != 200 || (data = response.body().getData()) == null || data.size() <= 0 || MGMainActivity.this.isForcedLogin(2)) {
                return;
            }
            Intent intent = new Intent(MGMainActivity.this.context, (Class<?>) UserRecomendActivity.class);
            intent.putExtra("listDatas", (Serializable) data);
            intent.putExtra("range", this.f54357b);
            MGMainActivity.this.startActivity(intent);
        }
    }

    class u implements ActivityResultCallback<Map<String, Boolean>> {
        u() {
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onActivityResult(Map<String, Boolean> result) {
            if (result == null || !result.get(com.kuaishou.weapon.p0.g.f74786j).booleanValue()) {
                return;
            }
            String strH = com.join.mgps.pref.h.n(MGMainActivity.this.context).H();
            if (TextUtils.isEmpty(strH)) {
                return;
            }
            com.join.mgps.Util.o1.f49829a.e(MGMainActivity.this.context, "papakey", strH, "");
        }
    }

    public interface u0 extends Runnable {
        u0 u(boolean goToLogin);
    }

    class v implements PopupWindow.OnDismissListener {
        v() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            MGMainActivity.this.videoStrategyPop.dismiss();
        }
    }

    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGMainActivity.this.shortcutGameId = "";
        }
    }

    class x extends com.join.mgps.ad.a0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ boolean f54362u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        x(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f54362u = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId) {
            super.onWfADClose(gameId);
            if (!TextUtils.isEmpty(gameId)) {
                DownloadTask downloadTaskG = q5.f.M().G(gameId);
                if (downloadTaskG != null && downloadTaskG.getStatus() == 11) {
                    UtilsMy.w4(downloadTaskG, MGMainActivity.this);
                }
                MGMainActivity mGMainActivity = MGMainActivity.this;
                com.join.mgps.ad.a0 a0Var = mGMainActivity.ttDownLoadSpeedAd;
                com.join.mgps.ad.d.j(mGMainActivity, 21, gameId);
            }
            MGMainActivity.this.delayChangeAdshow();
            MGMainActivity mGMainActivity2 = MGMainActivity.this;
            mGMainActivity2.delayLoadRewardAd(mGMainActivity2.ttDownLoadSpeedAd);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            MGMainActivity.this.sendVideoAdWatchLog(3, 1);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f54362u);
        }
    }

    class y extends com.join.mgps.ad.a0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ boolean f54364u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f54364u = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose() {
            super.onWfADClose();
            MGMainActivity mGMainActivity = MGMainActivity.this;
            com.join.mgps.ad.a0 a0Var = mGMainActivity.ttPspAd;
            com.join.mgps.ad.d.h(mGMainActivity, 18);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            MGMainActivity.this.sendVideoAdWatchLog(2, 1);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f54364u);
        }
    }

    class z extends com.join.mgps.ad.h {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ boolean f54366r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        z(Context ctx, String appId, String posId, final boolean val$needShow) {
            super(ctx, appId, posId);
            this.f54366r = val$needShow;
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose(String gameId) {
            super.onWfADClose(gameId);
            if (!TextUtils.isEmpty(gameId)) {
                DownloadTask downloadTaskG = q5.f.M().G(gameId);
                if (downloadTaskG != null && downloadTaskG.getStatus() == 11) {
                    UtilsMy.w4(downloadTaskG, MGMainActivity.this);
                }
                MGMainActivity mGMainActivity = MGMainActivity.this;
                com.join.mgps.ad.h hVar = mGMainActivity.gdtDownLoadSpeedAd;
                com.join.mgps.ad.d.j(mGMainActivity, 21, gameId);
            }
            MGMainActivity.this.delayChangeAdshow();
            MGMainActivity mGMainActivity2 = MGMainActivity.this;
            mGMainActivity2.delayLoadRewardAd(mGMainActivity2.gdtDownLoadSpeedAd);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADShow() {
            super.onWfADShow();
            MGMainActivity.this.sendVideoAdWatchLog(3, 2);
        }

        @Override // com.join.mgps.ad.d, com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfInitSuccess() {
            super.onWfInitSuccess();
            d(this.f54366r);
        }
    }

    static /* synthetic */ int access$2410(MGMainActivity mGMainActivity) {
        int i10 = mGMainActivity.preloginQueenCount;
        mGMainActivity.preloginQueenCount = i10 - 1;
        return i10;
    }

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void applyLottieTabState(LottieAnimationView lottie, boolean play) {
        if (lottie == null) {
            return;
        }
        lottie.m();
        lottie.setRepeatCount(0);
        if (!play) {
            lottie.setProgress(0.0f);
        } else {
            lottie.setProgress(0.0f);
            lottie.E();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeText() throws Throwable {
        if (!com.join.mgps.Util.a2.d()) {
            com.join.android.app.common.dialog.l lVar = this.localGameTwoDialog;
            if (lVar != null) {
                lVar.d("需开启「所有文件访问权限」后重试\n系统设置 → 应用 → 本应用 → 权限/文件访问");
                this.localGameTwoDialog.b();
                return;
            }
            return;
        }
        List<String> listO = com.join.mgps.Util.o0.o(this.context, Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath());
        this.listZip = listO;
        if (listO == null || listO.size() == 0) {
            com.join.android.app.common.dialog.l lVar2 = this.localGameTwoDialog;
            if (lVar2 != null) {
                lVar2.d("未找到游戏");
            }
            this.localGameTwoDialog.b();
            return;
        }
        this.localGameTwoDialog.d("共找到" + this.listZip.size() + "个zip文件");
        this.localGameTwoDialog.c();
    }

    private void checkAndShowUninstallDialog(List<DownloadTask> downloadTasksNotInstall) {
        boolean z10;
        long jLongValue = this.prefDef.installApplastNoticeTime().d().longValue();
        Iterator<DownloadTask> it2 = downloadTasksNotInstall.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z10 = false;
                break;
            }
            DownloadTask next = it2.next();
            if (next.getFinishTime() > jLongValue || jLongValue == 0 || next.getStatus() == 11) {
                z10 = true;
                break;
            }
        }
        if (this.activityHasDes || !z10 || downloadTasksNotInstall.size() <= 0) {
            return;
        }
        Collections.sort(downloadTasksNotInstall, new Comparator() { // from class: com.join.mgps.activity.b7
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MGMainActivity.lambda$checkAndShowUninstallDialog$3((DownloadTask) obj, (DownloadTask) obj2);
            }
        });
        if (com.join.mgps.Util.e0.z(this.prefDef.lastShowNotInstallTime().d().longValue())) {
            return;
        }
        showInstallAppDialogActivity(0, downloadTasksNotInstall);
        this.prefDef.lastShowNotInstallTime().g(Long.valueOf(System.currentTimeMillis()));
        this.showInstallNoticeOrappDialog = true;
    }

    private void checkPlatformVersion() {
        SharedPreferences sharedPreferences = getSharedPreferences("VersionXML", 0);
        try {
            VersionDto versionDto = (VersionDto) com.papa.sim.statistic.JsonMapper.getInstance().fromJson(sharedPreferences.getString("VersionDto", ""), VersionDto.class);
            boolean z10 = sharedPreferences.getBoolean("Mandatory", false);
            if (versionDto != null) {
                if (Integer.parseInt(com.join.android.app.common.utils.q.n(this).B()[0]) < versionDto.getVersionNo()) {
                    showVersionDownLoadHint(versionDto, z10);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void clearSelection() {
        this.home_tab_monkey_layout.setVisibility(8);
        this.home_tab_default_layout.setVisibility(0);
        int color = ContextCompat.getColor(this, R.color.home_gray);
        this.mg_recom_text.setTextColor(color);
        this.mg_category_text.setTextColor(color);
        this.mg_chart_text.setTextColor(color);
        this.mg_emulator_text.setTextColor(color);
        this.fightText.setTextColor(color);
        LottieAnimationView lottieAnimationView = this.lottie_mg_recom;
        if (lottieAnimationView != null) {
            lottieAnimationView.setVisibility(0);
        }
        LottieAnimationView lottieAnimationView2 = this.lottie_mg_category;
        if (lottieAnimationView2 != null) {
            lottieAnimationView2.setVisibility(0);
        }
        LottieAnimationView lottieAnimationView3 = this.lottie_mg_fight;
        if (lottieAnimationView3 != null) {
            lottieAnimationView3.setVisibility(0);
        }
        LottieAnimationView lottieAnimationView4 = this.lottie_mg_emulator;
        if (lottieAnimationView4 != null) {
            lottieAnimationView4.setVisibility(0);
            applyLottieTabState(this.lottie_mg_emulator, false);
        }
        LottieAnimationView lottieAnimationView5 = this.lottie_mg_chart;
        if (lottieAnimationView5 != null) {
            applyLottieTabState(lottieAnimationView5, false);
        }
        TextView textView = this.unreadMessageBadge;
        if (textView != null) {
            textView.setVisibility(8);
        }
        this.mg_emulator_text.setText("首页");
        ObjectAnimator objectAnimator = this.animation2;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            LottieAnimationView lottieAnimationView6 = this.lottie_mg_emulator;
            if (lottieAnimationView6 != null) {
                lottieAnimationView6.animate().rotation(0.0f).setDuration(50L).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void downloadLayout() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
        this.scroll_text_layout.p();
        this.imageLoading.setVisibility(8);
        this.prefDef.isNewFinishedGame().g(Boolean.FALSE);
        this.hasNewFinishedGameImage.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PlayCfgBean getAdConfig(List<PlayCfgBean> configs, int adtype) {
        if (configs != null) {
            for (PlayCfgBean playCfgBean : configs) {
                if (playCfgBean.getSdk_type() == adtype) {
                    return playCfgBean;
                }
            }
        }
        return null;
    }

    private void getArenaPluginInfo() throws Throwable {
        ResultMainBean<List<ApkVersionbean>> resultMainBean;
        ResultMainBean<List<ApkVersionbean>> resultMainBean2;
        EMUApkArenaTable eMUApkArenaTable;
        if (!com.join.android.app.common.utils.m.j(this)) {
            return;
        }
        try {
            ResultMainBean<List<ApkVersionbean>> resultMainBeanF1 = this.recommendClient.F1(RequestBeanUtil.getInstance(this).getApkVersion(2, 2, 0));
            if (resultMainBeanF1 != null) {
                try {
                    try {
                        if (resultMainBeanF1.getFlag() == 1) {
                            for (ApkVersionbean apkVersionbean : resultMainBeanF1.getMessages().getData()) {
                                DownloadTask downloadTaskG = q5.f.M().G(apkVersionbean.getTag_id());
                                HashMap map = new HashMap();
                                map.put("tag_id", apkVersionbean.getTag_id());
                                List<EMUApkArenaTable> listH = t6.o.o().h(map);
                                if (listH == null || listH.size() <= 0) {
                                    EMUApkArenaTable eMUApkArenaTable2 = new EMUApkArenaTable();
                                    eMUApkArenaTable2.setApk_name(apkVersionbean.getApk_name());
                                    eMUApkArenaTable2.setDown_url(apkVersionbean.getDown_url());
                                    eMUApkArenaTable2.setLaunch_name(apkVersionbean.getLaunch_name());
                                    eMUApkArenaTable2.setLogo(apkVersionbean.getLogo());
                                    eMUApkArenaTable2.setPackage_name(apkVersionbean.getPackage_name());
                                    eMUApkArenaTable2.setRelease_date(apkVersionbean.getRelease_date());
                                    eMUApkArenaTable2.setSize(apkVersionbean.getSize());
                                    eMUApkArenaTable2.setTag_id(apkVersionbean.getTag_id());
                                    eMUApkArenaTable2.setTeam_info(apkVersionbean.getTeam_info());
                                    eMUApkArenaTable2.setVer(apkVersionbean.getVer());
                                    eMUApkArenaTable2.setVer_compatible(apkVersionbean.getVer_compatible());
                                    eMUApkArenaTable2.setVer_info(apkVersionbean.getVer_info());
                                    eMUApkArenaTable2.setDown_type(apkVersionbean.getDown_type());
                                    eMUApkArenaTable2.setRemark(JsonMapper.toJsonString(apkVersionbean.getPlugin_md5()));
                                    if (downloadTaskG != null && downloadTaskG.getFileType() != null && downloadTaskG.getFileType().equals(Dtype.chajian.name()) && downloadTaskG.getDown_type() == 2 && eMUApkArenaTable2.getDown_type() == 2 && TextUtils.isEmpty(eMUApkArenaTable2.getApkPath())) {
                                        eMUApkArenaTable2.setApkPath(com.join.android.app.common.utils.o.h(downloadTaskG.getPlugin_num(), new File(downloadTaskG.getGameZipPath())));
                                    }
                                    t6.o.o().k(eMUApkArenaTable2);
                                    com.join.android.app.common.utils.o.E(eMUApkArenaTable2);
                                } else {
                                    if (listH.size() > 1) {
                                        for (int i10 = 0; i10 < listH.size(); i10++) {
                                            t6.o.o().delete(listH.get(i10));
                                        }
                                    }
                                    try {
                                        eMUApkArenaTable = listH.get(0);
                                        try {
                                            eMUApkArenaTable.setApk_name(apkVersionbean.getApk_name());
                                            eMUApkArenaTable.setDown_url(apkVersionbean.getDown_url());
                                            eMUApkArenaTable.setLaunch_name(apkVersionbean.getLaunch_name());
                                            eMUApkArenaTable.setLogo(apkVersionbean.getLogo());
                                            eMUApkArenaTable.setPackage_name(apkVersionbean.getPackage_name());
                                            eMUApkArenaTable.setRelease_date(apkVersionbean.getRelease_date());
                                            eMUApkArenaTable.setSize(apkVersionbean.getSize());
                                            eMUApkArenaTable.setTag_id(apkVersionbean.getTag_id());
                                            eMUApkArenaTable.setTeam_info(apkVersionbean.getTeam_info());
                                            eMUApkArenaTable.setVer(apkVersionbean.getVer());
                                            eMUApkArenaTable.setVer_compatible(apkVersionbean.getVer_compatible());
                                            eMUApkArenaTable.setVer_info(apkVersionbean.getVer_info());
                                            eMUApkArenaTable.setDown_type(apkVersionbean.getDown_type());
                                            eMUApkArenaTable.setRemark(JsonMapper.toJsonString(apkVersionbean.getPlugin_md5()));
                                            if (downloadTaskG != null && downloadTaskG.getFileType() != null && downloadTaskG.getFileType().equals(Dtype.chajian.name()) && downloadTaskG.getDown_type() == 2 && eMUApkArenaTable.getDown_type() == 2 && TextUtils.isEmpty(eMUApkArenaTable.getApkPath())) {
                                                eMUApkArenaTable.setApkPath(com.join.android.app.common.utils.o.h(downloadTaskG.getPlugin_num(), new File(downloadTaskG.getGameZipPath())));
                                            }
                                        } catch (Exception e10) {
                                            e = e10;
                                            e.printStackTrace();
                                        }
                                    } catch (Exception e11) {
                                        e = e11;
                                        eMUApkArenaTable = null;
                                    }
                                    t6.o.o().update(eMUApkArenaTable);
                                    com.join.android.app.common.utils.o.E(eMUApkArenaTable);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        resultMainBean = resultMainBeanF1;
                        if (resultMainBean == null && this.reloadNumber > 0) {
                            com.join.mgps.Util.g1.d("getEMUVersionForArena", "failed  " + this.recomDatabean);
                            this.reloadNumber = this.reloadNumber - 1;
                            try {
                                Thread.sleep(5000L);
                                getArenaPluginInfo();
                            } catch (InterruptedException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception unused2) {
                    resultMainBean2 = resultMainBeanF1;
                    if (resultMainBean2 != null || this.reloadNumber <= 0) {
                        return;
                    }
                    com.join.mgps.Util.g1.d("getEMUVersionForArena", "failed  " + this.recomDatabean);
                    this.reloadNumber = this.reloadNumber - 1;
                }
            }
            if (resultMainBeanF1 != null || this.reloadNumber <= 0) {
                return;
            }
            com.join.mgps.Util.g1.d("getEMUVersionForArena", "failed  " + this.recomDatabean);
            this.reloadNumber = this.reloadNumber - 1;
            try {
                Thread.sleep(5000L);
                getArenaPluginInfo();
            } catch (InterruptedException unused3) {
            }
        } catch (Exception unused4) {
            resultMainBean2 = null;
        } catch (Throwable th2) {
            th = th2;
            resultMainBean = null;
        }
    }

    private void handleShortCutGameIntent(String gameId) {
        MApplication.f3182z.O(true);
        com.papa.sim.statistic.t.l(this.context).p("startByDeskIcon", gameId, AccountUtil_.getInstance_(this.context).getUid());
        new Handler().postDelayed(new q0(gameId), 1500L);
    }

    private void hideFragments(FragmentTransaction transaction) {
        r8 r8Var = this.mgPapaMainFragment;
        if (r8Var != null) {
            transaction.hide(r8Var);
        }
        com.join.mgps.fragment.t0 t0Var = this.fightFragment;
        if (t0Var != null) {
            transaction.hide(t0Var);
        }
        MyGamePapaFragmentV2_ myGamePapaFragmentV2_ = this.mPapaActivity;
        if (myGamePapaFragmentV2_ != null) {
            transaction.hide(myGamePapaFragmentV2_);
        }
        FindGameMainFragment findGameMainFragment = this.choiceFragment;
        if (findGameMainFragment != null) {
            transaction.hide(findGameMainFragment);
        }
        UsercenterFragmentNew usercenterFragmentNew = this.userCenterFragment;
        if (usercenterFragmentNew != null) {
            transaction.hide(usercenterFragmentNew);
        }
    }

    private void initAdBroadcast() {
        if (this.mAdReceived == null) {
            this.mAdReceived = new AdReceived();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.tools.AdBroadcast");
            registerReceiver(this.mAdReceived, intentFilter);
        }
    }

    private void initDefaultPluginInfo() {
        ArrayList<ApkVersionbean> arrayList = (ArrayList) JsonMapper.getInstance().fromJson(getResources().getString(R.string.defalut_app_ver), JsonMapper.getInstance().createCollectionType(ArrayList.class, ApkVersionbean.class));
        com.join.mgps.Util.g1.d("getEMUVersion", "start");
        HashMap map = new HashMap();
        map.put("tag_id", "31");
        List<EMUApkTable> listH = t6.p.o().h(map);
        List<EMUApkArenaTable> listH2 = t6.o.o().h(map);
        if ((listH == null || listH.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean : arrayList) {
                if (apkVersionbean.getTag_id().equals("31")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean));
                }
            }
        }
        if ((listH2 == null || listH2.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean2 : arrayList) {
                if (apkVersionbean2.getTag_id().equals("31")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean2));
                }
            }
        }
        HashMap map2 = new HashMap();
        map2.put("tag_id", "35");
        List<EMUApkTable> listH3 = t6.p.o().h(map2);
        List<EMUApkArenaTable> listH4 = t6.o.o().h(map2);
        if ((listH3 == null || listH3.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean3 : arrayList) {
                if (apkVersionbean3.getTag_id().equals("35")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean3));
                }
            }
        }
        if ((listH4 == null || listH4.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean4 : arrayList) {
                if (apkVersionbean4.getTag_id().equals("35")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean4));
                }
            }
        }
        HashMap map3 = new HashMap();
        map3.put("tag_id", "43");
        List<EMUApkTable> listH5 = t6.p.o().h(map3);
        List<EMUApkArenaTable> listH6 = t6.o.o().h(map3);
        if ((listH5 == null || listH5.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean5 : arrayList) {
                if (apkVersionbean5.getTag_id().equals("43")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean5));
                }
            }
        }
        if ((listH6 == null || listH6.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean6 : arrayList) {
                if (apkVersionbean6.getTag_id().equals("43")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean6));
                }
            }
        }
        HashMap map4 = new HashMap();
        map4.put("tag_id", "33");
        List<EMUApkTable> listH7 = t6.p.o().h(map4);
        List<EMUApkArenaTable> listH8 = t6.o.o().h(map4);
        if ((listH7 == null || listH7.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean7 : arrayList) {
                if (apkVersionbean7.getTag_id().equals("33")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean7));
                }
            }
        }
        if ((listH8 == null || listH8.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean8 : arrayList) {
                if (apkVersionbean8.getTag_id().equals("33")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean8));
                }
            }
        }
        HashMap map5 = new HashMap();
        map5.put("tag_id", "34");
        List<EMUApkTable> listH9 = t6.p.o().h(map5);
        List<EMUApkArenaTable> listH10 = t6.o.o().h(map5);
        if ((listH9 == null || listH9.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean9 : arrayList) {
                if (apkVersionbean9.getTag_id().equals("34")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean9));
                }
            }
        }
        if ((listH10 == null || listH10.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean10 : arrayList) {
                if (apkVersionbean10.getTag_id().equals("34")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean10));
                }
            }
        }
        HashMap map6 = new HashMap();
        map6.put("tag_id", "51");
        List<EMUApkTable> listH11 = t6.p.o().h(map6);
        List<EMUApkArenaTable> listH12 = t6.o.o().h(map6);
        if ((listH11 == null || listH11.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean11 : arrayList) {
                if (apkVersionbean11.getTag_id().equals("51")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean11));
                }
            }
        }
        if ((listH12 == null || listH12.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean12 : arrayList) {
                if (apkVersionbean12.getTag_id().equals("51")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean12));
                }
            }
        }
        HashMap map7 = new HashMap();
        map7.put("tag_id", "53");
        List<EMUApkTable> listH13 = t6.p.o().h(map7);
        List<EMUApkArenaTable> listH14 = t6.o.o().h(map7);
        if ((listH13 == null || listH13.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean13 : arrayList) {
                if (apkVersionbean13.getTag_id().equals("53")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean13));
                }
            }
        }
        if ((listH14 == null || listH14.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean14 : arrayList) {
                if (apkVersionbean14.getTag_id().equals("53")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean14));
                }
            }
        }
        HashMap map8 = new HashMap();
        map8.put("tag_id", "54");
        List<EMUApkTable> listH15 = t6.p.o().h(map8);
        List<EMUApkArenaTable> listH16 = t6.o.o().h(map8);
        if ((listH15 == null || listH15.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean15 : arrayList) {
                if (apkVersionbean15.getTag_id().equals("54")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean15));
                }
            }
        }
        if ((listH16 == null || listH16.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean16 : arrayList) {
                if (apkVersionbean16.getTag_id().equals("54")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean16));
                }
            }
        }
        HashMap map9 = new HashMap();
        map9.put("tag_id", "32");
        List<EMUApkTable> listH17 = t6.p.o().h(map9);
        List<EMUApkArenaTable> listH18 = t6.o.o().h(map9);
        if ((listH17 == null || listH17.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean17 : arrayList) {
                if (apkVersionbean17.getTag_id().equals("32")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean17));
                }
            }
        }
        if ((listH18 == null || listH18.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean18 : arrayList) {
                if (apkVersionbean18.getTag_id().equals("32")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean18));
                }
            }
        }
        HashMap map10 = new HashMap();
        map10.put("tag_id", "56");
        List<EMUApkTable> listH19 = t6.p.o().h(map10);
        List<EMUApkArenaTable> listH20 = t6.o.o().h(map10);
        if ((listH19 == null || listH19.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean19 : arrayList) {
                if (apkVersionbean19.getTag_id().equals("56")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean19));
                }
            }
        }
        if ((listH20 == null || listH20.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean20 : arrayList) {
                if (apkVersionbean20.getTag_id().equals("56")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean20));
                }
            }
        }
        HashMap map11 = new HashMap();
        map11.put("tag_id", "57");
        List<EMUApkTable> listH21 = t6.p.o().h(map11);
        List<EMUApkArenaTable> listH22 = t6.o.o().h(map11);
        if ((listH21 == null || listH21.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean21 : arrayList) {
                if (apkVersionbean21.getTag_id().equals("57")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean21));
                }
            }
        }
        if ((listH22 == null || listH22.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean22 : arrayList) {
                if (apkVersionbean22.getTag_id().equals("57")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean22));
                }
            }
        }
        HashMap map12 = new HashMap();
        map12.put("tag_id", "58");
        List<EMUApkTable> listH23 = t6.p.o().h(map12);
        List<EMUApkTable> listH24 = t6.p.o().h(map12);
        if ((listH23 == null || listH23.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean23 : arrayList) {
                if (apkVersionbean23.getTag_id().equals("58")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean23));
                }
            }
        }
        if ((listH24 == null || listH24.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean24 : arrayList) {
                if (apkVersionbean24.getTag_id().equals("58")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean24));
                }
            }
        }
        HashMap map13 = new HashMap();
        map13.put("tag_id", "60");
        List<EMUApkTable> listH25 = t6.p.o().h(map13);
        List<EMUApkTable> listH26 = t6.p.o().h(map13);
        if ((listH25 == null || listH25.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean25 : arrayList) {
                if (apkVersionbean25.getTag_id().equals("60")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean25));
                }
            }
        }
        if ((listH26 == null || listH26.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean26 : arrayList) {
                if (apkVersionbean26.getTag_id().equals("60")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean26));
                }
            }
        }
        HashMap map14 = new HashMap();
        map14.put("tag_id", "165");
        List<EMUApkTable> listH27 = t6.p.o().h(map14);
        List<EMUApkTable> listH28 = t6.p.o().h(map14);
        if ((listH27 == null || listH27.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean27 : arrayList) {
                if (apkVersionbean27.getTag_id().equals("165")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean27));
                }
            }
        }
        if ((listH28 == null || listH28.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean28 : arrayList) {
                if (apkVersionbean28.getTag_id().equals("165")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean28));
                }
            }
        }
        HashMap map15 = new HashMap();
        map15.put("tag_id", "166");
        List<EMUApkTable> listH29 = t6.p.o().h(map15);
        List<EMUApkTable> listH30 = t6.p.o().h(map15);
        if ((listH29 == null || listH29.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean29 : arrayList) {
                if (apkVersionbean29.getTag_id().equals("166")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean29));
                }
            }
        }
        if ((listH30 == null || listH30.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean30 : arrayList) {
                if (apkVersionbean30.getTag_id().equals("166")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean30));
                }
            }
        }
        HashMap map16 = new HashMap();
        map16.put("tag_id", "10000");
        List<EMUApkTable> listH31 = t6.p.o().h(map16);
        List<EMUApkTable> listH32 = t6.p.o().h(map16);
        if ((listH31 == null || listH31.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean31 : arrayList) {
                if (apkVersionbean31.getTag_id().equals("10000")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean31));
                }
            }
        }
        if ((listH32 == null || listH32.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean32 : arrayList) {
                if (apkVersionbean32.getTag_id().equals("10000")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean32));
                }
            }
        }
        HashMap map17 = new HashMap();
        map17.put("tag_id", "167");
        List<EMUApkTable> listH33 = t6.p.o().h(map17);
        List<EMUApkTable> listH34 = t6.p.o().h(map17);
        if ((listH33 == null || listH33.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean33 : arrayList) {
                if (apkVersionbean33.getTag_id().equals("167")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean33));
                }
            }
        }
        if ((listH34 == null || listH34.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean34 : arrayList) {
                if (apkVersionbean34.getTag_id().equals("167")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean34));
                }
            }
        }
        HashMap map18 = new HashMap();
        map18.put("tag_id", "168");
        List<EMUApkTable> listH35 = t6.p.o().h(map18);
        List<EMUApkTable> listH36 = t6.p.o().h(map18);
        if ((listH35 == null || listH35.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean35 : arrayList) {
                if (apkVersionbean35.getTag_id().equals("168")) {
                    t6.p.o().k(new EMUApkTable(apkVersionbean35));
                }
            }
        }
        if ((listH36 == null || listH36.size() == 0) && arrayList != null) {
            for (ApkVersionbean apkVersionbean36 : arrayList) {
                if (apkVersionbean36.getTag_id().equals("168")) {
                    t6.o.o().k(new EMUApkArenaTable(apkVersionbean36));
                }
            }
        }
    }

    private void initGDTDownLoadSpeedAd(String gameId, boolean needShow) {
        String str;
        String ad_id;
        PlayCfgBean adConfig;
        DownloadSpeedupCfgBean downloadSpeedupCfgBean = (DownloadSpeedupCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.downloadSpeedupCfg().d(), DownloadSpeedupCfgBean.class);
        this.downloadSpeedupCfgBean = downloadSpeedupCfgBean;
        if (downloadSpeedupCfgBean == null || (adConfig = getAdConfig(downloadSpeedupCfgBean.getPlay_cfg(), 2)) == null) {
            str = "";
            ad_id = str;
        } else {
            String sdk_key = adConfig.getSdk_key();
            ad_id = adConfig.getAd_id();
            str = sdk_key;
        }
        if (this.gdtDownLoadSpeedAd == null && com.join.mgps.Util.t2.i(str)) {
            z zVar = new z(this, str, ad_id, needShow);
            this.gdtDownLoadSpeedAd = zVar;
            zVar.m(gameId);
            this.gdtDownLoadSpeedAd.a();
        }
    }

    private void initGDTPspAd(boolean needShow) {
        String str;
        String ad_id;
        PlayCfgBean adConfig;
        try {
            PspGameAdCfgBean pspGameAdCfgBean = (PspGameAdCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.pspGameAdCfg().d(), PspGameAdCfgBean.class);
            this.pspGameAdCfgBean = pspGameAdCfgBean;
            if (pspGameAdCfgBean == null || (adConfig = getAdConfig(pspGameAdCfgBean.getPlay_cfg(), 2)) == null) {
                str = "";
                ad_id = str;
            } else {
                String sdk_key = adConfig.getSdk_key();
                ad_id = adConfig.getAd_id();
                str = sdk_key;
            }
            if (this.gdtPspAd == null && com.join.mgps.Util.t2.i(str)) {
                a0 a0Var = new a0(this, str, ad_id, needShow);
                this.gdtPspAd = a0Var;
                a0Var.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void initGrMDownLoadSpeedAd(String gameId, boolean needShow) {
        String str;
        String ad_id;
        PlayCfgBean adConfig;
        DownloadSpeedupCfgBean downloadSpeedupCfgBean = (DownloadSpeedupCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.downloadSpeedupCfg().d(), DownloadSpeedupCfgBean.class);
        this.downloadSpeedupCfgBean = downloadSpeedupCfgBean;
        if (downloadSpeedupCfgBean == null || (adConfig = getAdConfig(downloadSpeedupCfgBean.getPlay_cfg(), 7)) == null) {
            str = "";
            ad_id = str;
        } else {
            String sdk_key = adConfig.getSdk_key();
            ad_id = adConfig.getAd_id();
            str = sdk_key;
        }
        if (this.groDownLoadSpeedAd == null && com.join.mgps.Util.t2.i(str)) {
            d0 d0Var = new d0(this, str, ad_id, needShow);
            this.groDownLoadSpeedAd = d0Var;
            d0Var.m(gameId);
            this.groDownLoadSpeedAd.a();
        }
    }

    private void initGrMPspAd(boolean needShow) {
        String str;
        String ad_id;
        PlayCfgBean adConfig;
        try {
            PspGameAdCfgBean pspGameAdCfgBean = (PspGameAdCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.pspGameAdCfg().d(), PspGameAdCfgBean.class);
            this.pspGameAdCfgBean = pspGameAdCfgBean;
            if (pspGameAdCfgBean == null || (adConfig = getAdConfig(pspGameAdCfgBean.getPlay_cfg(), 7)) == null) {
                str = "";
                ad_id = str;
            } else {
                String sdk_key = adConfig.getSdk_key();
                ad_id = adConfig.getAd_id();
                str = sdk_key;
            }
            if (this.groPspAd == null && com.join.mgps.Util.t2.i(str)) {
                e0 e0Var = new e0(this, str, ad_id, needShow);
                this.groPspAd = e0Var;
                e0Var.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void initREDownLoadSpeedAd(String gameId, boolean needShow) {
        String str;
        String ad_id;
        PlayCfgBean adConfig;
        DownloadSpeedupCfgBean downloadSpeedupCfgBean = (DownloadSpeedupCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.downloadSpeedupCfg().d(), DownloadSpeedupCfgBean.class);
        this.downloadSpeedupCfgBean = downloadSpeedupCfgBean;
        if (downloadSpeedupCfgBean == null || (adConfig = getAdConfig(downloadSpeedupCfgBean.getPlay_cfg(), 9)) == null) {
            str = "";
            ad_id = str;
        } else {
            String sdk_key = adConfig.getSdk_key();
            ad_id = adConfig.getAd_id();
            str = sdk_key;
        }
        if (this.reDownLoadSpeedAd == null && com.join.mgps.Util.t2.i(str)) {
            b0 b0Var = new b0(this, str, ad_id, needShow);
            this.reDownLoadSpeedAd = b0Var;
            b0Var.m(gameId);
            this.reDownLoadSpeedAd.a();
        }
    }

    private void initREPspAd(boolean needShow) {
        String str;
        String ad_id;
        PlayCfgBean adConfig;
        try {
            PspGameAdCfgBean pspGameAdCfgBean = (PspGameAdCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.pspGameAdCfg().d(), PspGameAdCfgBean.class);
            this.pspGameAdCfgBean = pspGameAdCfgBean;
            if (pspGameAdCfgBean == null || (adConfig = getAdConfig(pspGameAdCfgBean.getPlay_cfg(), 9)) == null) {
                str = "";
                ad_id = str;
            } else {
                String sdk_key = adConfig.getSdk_key();
                ad_id = adConfig.getAd_id();
                str = sdk_key;
            }
            if (this.rePspAd == null && com.join.mgps.Util.t2.i(str)) {
                c0 c0Var = new c0(this, str, ad_id, needShow);
                this.rePspAd = c0Var;
                c0Var.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void initTTDownLoadSpeedAd(String gameId, boolean needShow) {
        String str;
        String ad_id;
        PlayCfgBean adConfig;
        DownloadSpeedupCfgBean downloadSpeedupCfgBean = (DownloadSpeedupCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.downloadSpeedupCfg().d(), DownloadSpeedupCfgBean.class);
        this.downloadSpeedupCfgBean = downloadSpeedupCfgBean;
        if (downloadSpeedupCfgBean == null || (adConfig = getAdConfig(downloadSpeedupCfgBean.getPlay_cfg(), 1)) == null) {
            str = "";
            ad_id = str;
        } else {
            String sdk_key = adConfig.getSdk_key();
            ad_id = adConfig.getAd_id();
            str = sdk_key;
        }
        if (this.ttDownLoadSpeedAd == null && com.join.mgps.Util.t2.i(str)) {
            x xVar = new x(this, str, ad_id, needShow);
            this.ttDownLoadSpeedAd = xVar;
            xVar.m(gameId);
            this.ttDownLoadSpeedAd.a();
        }
    }

    private void initTTPspAd(boolean needShow) {
        String str;
        String ad_id;
        PlayCfgBean adConfig;
        try {
            PspGameAdCfgBean pspGameAdCfgBean = (PspGameAdCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.pspGameAdCfg().d(), PspGameAdCfgBean.class);
            this.pspGameAdCfgBean = pspGameAdCfgBean;
            if (pspGameAdCfgBean == null || (adConfig = getAdConfig(pspGameAdCfgBean.getPlay_cfg(), 1)) == null) {
                str = "";
                ad_id = str;
            } else {
                String sdk_key = adConfig.getSdk_key();
                ad_id = adConfig.getAd_id();
                str = sdk_key;
            }
            if (this.ttPspAd == null && com.join.mgps.Util.t2.i(str)) {
                y yVar = new y(this, str, ad_id, needShow);
                this.ttPspAd = yVar;
                yVar.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isForcedLogin(int from) {
        return false;
    }

    private boolean isLogined(Context context) {
        UserInfo userInfoAccountBean = accountBean(context);
        return userInfoAccountBean != null && com.join.mgps.Util.t2.i(userInfoAccountBean.getToken());
    }

    private boolean isModMainGame(DownloadTask task) {
        ModInfoBean modInfoBean = com.join.mgps.Util.t2.i(task.getMod_info()) ? (ModInfoBean) JsonMapper.getInstance().fromJson(task.getMod_info(), ModInfoBean.class) : null;
        return modInfoBean != null && task.getCrc_link_type_val().equals(modInfoBean.getMain_game_id());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isTourist(Context ctx) {
        return AccountUtil_.getInstance_(ctx).isTourist();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterViewsInitData$0() {
        setTabSelect(this.positionNum);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterViewsInitData$1() {
        this.receiver = new DownloadCompleteReceiver(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(BootReceiver_.f72259f);
        registerReceiver(this.receiver, intentFilter);
        initAdBroadcast();
        com.join.mgps.Util.p3.a(this.context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$checkAndShowUninstallDialog$3(DownloadTask downloadTask, DownloadTask downloadTask2) {
        if (downloadTask.getFinishTime() > downloadTask2.getFinishTime()) {
            return -1;
        }
        return downloadTask.getFinishTime() < downloadTask2.getFinishTime() ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$checkInstallApp$2(DownloadTask downloadTask, DownloadTask downloadTask2) {
        if (downloadTask.getFinishTime() > downloadTask2.getFinishTime()) {
            return -1;
        }
        return downloadTask.getFinishTime() < downloadTask2.getFinishTime() ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleVideoAdWatchLogRecord$9(VideoWatchLogTable videoWatchLogTable) {
        videoAdWatchLog(videoWatchLogTable, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$invite$13(View view) {
        com.wufan.friend.chat.c.u().O();
        this.invitePop.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$invite$14(FriendInviteBean friendInviteBean, View view) {
        reject(friendInviteBean.getFromAccountId());
        com.wufan.friend.chat.c.u().P();
        this.invitePop.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12() {
        SmartPopupWindow smartPopupWindow = this.invitePop;
        if (smartPopupWindow != null && smartPopupWindow.isShowing()) {
            com.wufan.friend.chat.c.u().P();
            this.invitePop.dismiss();
        }
        com.wufan.friend.chat.c.u().P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onFriendEvent$10() {
        com.wufan.friend.chat.c.u().C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$onFriendInviteEvent$11(boolean z10, FriendInviteBean friendInviteBean) {
        if (z10) {
            ((FriendInviteActivity_.e) FriendInviteActivity_.intent(this).a(friendInviteBean).flags(C.ENCODING_PCM_A_LAW)).start();
            return;
        }
        if (!com.join.android.app.common.utils.q.n(this).d(this)) {
            if (com.join.android.app.common.utils.q.n(this).c(this)) {
                ((FriendInviteActivity_.e) FriendInviteActivity_.intent(this).a(friendInviteBean).flags(C.ENCODING_PCM_A_LAW)).start();
                return;
            } else {
                com.wufan.friend.chat.c.u().Q();
                return;
            }
        }
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.showInvitePlay");
        intent.putExtra("userId", friendInviteBean.getFromAccountId() + "");
        intent.putExtra("userName", friendInviteBean.getFromNickname());
        intent.putExtra("userAvatar", friendInviteBean.getAvatar());
        intent.putExtra(CommonService_.AnonymousClass32.f72720g, friendInviteBean.getLobbyRoomId());
        intent.putExtra("gameId", friendInviteBean.getGameId());
        intent.putExtra("gameName", friendInviteBean.getGameName());
        intent.putExtra(UMCrash.SP_KEY_TIMESTAMP, friendInviteBean.getTimestamp());
        sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refreshTabIcon$6() {
        LottieAnimationView lottieAnimationView = this.lottie_mg_emulator;
        if (lottieAnimationView == null) {
            return;
        }
        float width = lottieAnimationView.getWidth();
        float height = this.lottie_mg_emulator.getHeight();
        if (width > 0.0f && height > 0.0f) {
            this.lottie_mg_emulator.setPivotX(width / 2.0f);
            this.lottie_mg_emulator.setPivotY(height / 2.0f);
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.lottie_mg_emulator, "rotation", 0.0f, 720.0f);
        this.animation2 = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        this.animation2.setDuration(2500L);
        this.animation2.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sanLocalGameIv$8(DialogInterface dialogInterface, int i10) {
        com.join.mgps.Util.a2.g(this.curActivty);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAddFriend$16(View view) {
        this.mDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAddFriend$17(int i10, View view) {
        if (!IntentUtil.getInstance().isLogined(view.getContext()) || IntentUtil.getInstance().isTourist(view.getContext())) {
            IntentUtil.getInstance().goMyAccountLoginActivity(view.getContext());
            return;
        }
        add(i10);
        Ext ext = new Ext();
        ext.setFrom("3");
        com.papa.sim.statistic.t.l(view.getContext()).R1(Event.addFriends, ext);
        this.mDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showVersionDownLoadHint$4(DialogInterface dialogInterface) {
        this.showUpdate = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showupdateDialog$5(DialogInterface dialogInterface) {
        this.showUpdate = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toast$15(String str) {
        com.join.mgps.Util.a3.b(this).d(str);
    }

    private void loadIpAddress() {
        com.papa.sim.statistic.pref.b.k(this.context).i();
        RequestModel<CfgInfoRequestArgs> requestModel = new RequestModel<>();
        requestModel.setDefault(this.context);
        CfgInfoRequestArgs cfgInfoRequestArgs = new CfgInfoRequestArgs();
        DeviceInfoBean deviceInfoBean = new DeviceInfoBean();
        try {
            deviceInfoBean.setAndroid_ver(Integer.valueOf(Build.VERSION.SDK_INT));
            deviceInfoBean.setMobile_phone_model(Build.BRAND);
            deviceInfoBean.setOs_sys(Build.VERSION.INCREMENTAL);
            if (com.join.mgps.Util.e2.B()) {
                deviceInfoBean.setUi_ver(notchtools.geek.com.notchtools.helper.c.c().a("ro.miui.ui.version.name"));
            } else if (com.join.mgps.Util.e2.n()) {
                deviceInfoBean.setUi_ver(notchtools.geek.com.notchtools.helper.c.c().a("ro.build.version.emui"));
            } else if (com.join.mgps.Util.e2.A()) {
                deviceInfoBean.setUi_ver(notchtools.geek.com.notchtools.helper.c.c().a("ro.vivo.system.product.version"));
            } else if (com.join.mgps.Util.e2.v()) {
                deviceInfoBean.setUi_ver(notchtools.geek.com.notchtools.helper.c.c().a("ro.build.version.opporom"));
            } else if (com.join.mgps.Util.e2.r()) {
                deviceInfoBean.setUi_ver(notchtools.geek.com.notchtools.helper.c.c().a("ro.flyme.version.id"));
            } else if (com.join.mgps.Util.e2.u()) {
                deviceInfoBean.setUi_ver(notchtools.geek.com.notchtools.helper.c.c().a("ro.build.version.oplusrom"));
            }
            cfgInfoRequestArgs.setUnknown_source_cfg(com.join.mgps.Util.a.e(JsonMapper.toJsonString(deviceInfoBean)));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        cfgInfoRequestArgs.setUid(AccountUtil_.getInstance_(this.context).getAccountData().getUid());
        cfgInfoRequestArgs.setClient_time(this.prefDef.lastLaunchAppTime().d());
        requestModel.setArgs(cfgInfoRequestArgs);
        com.join.mgps.rpc.impl.i.P0().N0().M0(requestModel).enqueue(new a());
    }

    private int mainTabIndexForPosition(int position) {
        if (position == 3) {
            return 0;
        }
        if (position == 7) {
            return 1;
        }
        int i10 = 2;
        if (position != 2 && position != 5) {
            i10 = 4;
            if (position == 4) {
                return 3;
            }
            if (position != 1 && position != 6) {
                return -1;
            }
        }
        return i10;
    }

    private void onMygameSelected() {
        try {
            new com.tbruyelle.rxpermissions2.c(this).r(com.kuaishou.weapon.p0.g.f74786j).subscribe(new e());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openWebPage(int step, MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        Intent intent = new Intent();
        IntentDateBean intentDateBean = new IntentDateBean();
        boolean z10 = com.join.mgps.Util.e0.z(this.prefDef.homeCloudActiveTime().d().longValue());
        String str = "";
        if (step == 1 && com.join.mgps.Util.t2.h("")) {
            if (adCfgInfo.getIsSigned()) {
                String str2 = com.join.mgps.rpc.h.U;
                intentDateBean.setLink_type(4);
                UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
                if (!str2.contains("isVip")) {
                    if (str2.contains("?") && str2.contains(SimpleComparison.EQUAL_TO_OPERATION)) {
                        str2 = str2 + "&isVip=" + com.join.mgps.Util.b.pivc(accountData) + "&currentDay=" + adCfgInfo.getSignDay();
                    } else {
                        str2 = str2 + "?isVip=" + com.join.mgps.Util.b.pivc(accountData) + "&currentDay=" + adCfgInfo.getSignDay();
                    }
                }
                str = str2;
            } else {
                openWebPage(step + 1, adCfgInfo);
            }
        }
        if (step == 2 && com.join.mgps.Util.t2.h(str)) {
            if (!adCfgInfo.getIsShowNewGift() || z10) {
                openWebPage(step + 1, adCfgInfo);
            } else {
                str = com.join.mgps.rpc.h.V;
            }
        }
        if (step == 3 && com.join.mgps.Util.t2.h(str) && adCfgInfo.getIsFirstPurchaseMember() && !z10) {
            str = com.join.mgps.rpc.h.W;
            this.prefDef.homeCloudActiveTime().g(Long.valueOf(System.currentTimeMillis()));
        }
        if (com.join.mgps.Util.t2.i(str)) {
            intentDateBean.setLink_type_val(str);
            intent.putExtra("intentdate", intentDateBean);
            ExtBean secondModule = new ExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.choiceness.name());
            intent.putExtra("parentExtBean", secondModule.copy().setChatId(EventP.ChatId.cloudGameNewUserSignPop.name()).buildScene());
            IntentUtil.getInstance().startActivityWithCallback(this, FullShareWebActivity_.class, intent, new g(step, adCfgInfo, secondModule));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryDownTask() {
        try {
            Cursor cursorQuery = ((DownloadManager) getSystemService("download")).query(new DownloadManager.Query());
            if (cursorQuery == null) {
                return;
            }
            while (cursorQuery.moveToNext()) {
                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("local_uri"));
                if (cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("status")) == 8 && !com.join.mgps.Util.t2.h(string)) {
                    String strSubstring = string.substring(string.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                    String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
                    File file = new File(path, strSubstring);
                    if (file.exists() && strSubstring.startsWith("temp_")) {
                        File file2 = new File(path, strSubstring.replace("temp_", ""));
                        if (file2.exists()) {
                            file2.delete();
                        }
                        file.renameTo(file2);
                    }
                }
            }
            cursorQuery.close();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resume() {
        if (!new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
            if (this.hasNewFinishedGameImage == null) {
                return;
            }
            if (this.prefDef.isNewFinishedGame().d().booleanValue()) {
                this.hasNewFinishedGameImage.setVisibility(0);
            } else {
                this.hasNewFinishedGameImage.setVisibility(8);
            }
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            this.accountBean = accountData;
            if (accountData.getVipExpTime() * 1000 > System.currentTimeMillis()) {
                if (this.mAdVipEvent != null) {
                    toStartGame();
                }
                com.join.mgps.dialog.c cVar = this.adVipMainDialog;
                if (cVar != null && cVar.isShowing()) {
                    this.adVipMainDialog.dismiss();
                    this.adVipMainDialog = null;
                }
            }
            new Handler().postDelayed(new f(), 1000L);
            touristLogin();
            isForeground = true;
            onresumData();
            showDownNotice();
            MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.P;
            if (dataBean != null) {
                int community_praise_surplus_number = dataBean.getCommunity_praise_surplus_number() + MApplication.P.getCommunity_surplus_number() + MApplication.P.getNotice_surplus_number() + MApplication.P.getPraise_surplus_number() + MApplication.P.getReplay_surplus_number();
                MApplication.T = community_praise_surplus_number;
                if (community_praise_surplus_number == 0) {
                    hideRedPoint();
                }
            }
            com.wufan.friend.chat.c.u().f(this);
            this.handler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.w6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f58195b.lambda$resume$7();
                }
            }, 500L);
            if (!this.hasWritePermission) {
                boolean z10 = ContextCompat.checkSelfPermission(this.context, com.kuaishou.weapon.p0.g.f74786j) == 0;
                this.hasWritePermission = z10;
                if (z10) {
                    startBackups(z10);
                }
            }
        }
        startPlayVideo();
    }

    private void showAdVipMainDialog(String gameId) {
        com.join.mgps.dialog.c cVar = new com.join.mgps.dialog.c(MApplication.f3182z.getActivity(), gameId);
        this.adVipMainDialog = cVar;
        cVar.show();
        this.adVipMainDialog.h(new q());
        this.adVipMainDialog.i(new r());
        this.adVipMainDialog.j(new s());
    }

    private void showVideoPopWin() {
        PublicVideoCfgBean publicVideoCfgBean = MApplication.f3172f1;
        if (publicVideoCfgBean != null) {
            VideoStrategyPop videoStrategyPop = this.videoStrategyPop;
            if (videoStrategyPop == null || !videoStrategyPop.isShowing()) {
                this.prefDef.isShowVideo().g(Boolean.TRUE);
                VideoStrategyPop videoStrategyPop2 = new VideoStrategyPop(this, publicVideoCfgBean.getTimes(), publicVideoCfgBean.getUrl(), new t());
                this.videoStrategyPop = videoStrategyPop2;
                videoStrategyPop2.showAtLocation(videoStrategyPop2.getContentView(), 17, 0, 0);
                this.videoStrategyPop.setOnDismissListener(new v());
            }
        }
    }

    private void startAnimation(com.join.mgps.Util.p0 animation, View view, com.join.mgps.Util.x0 interpolator) {
        if (animation != null) {
            animation.a();
            view.startAnimation(animation);
            return;
        }
        int width = view.getWidth() / 2;
        int height = view.getHeight() / 2;
        if (width == 0 || height == 0) {
            width = getResources().getDimensionPixelOffset(R.dimen.wdp35);
            height = width;
        }
        com.join.mgps.Util.p0 p0Var = new com.join.mgps.Util.p0(0.0f, 180.0f, width, height);
        p0Var.setInterpolator(interpolator);
        p0Var.setDuration(2000L);
        p0Var.setFillAfter(false);
        p0Var.setRepeatCount(-1);
        p0Var.setAnimationListener(new g0());
        view.startAnimation(p0Var);
        this.flipCardAnimation = p0Var;
    }

    private void stopAlphBreathAnim() {
        com.join.mgps.Util.p0 p0Var = this.flipCardAnimation;
        if (p0Var != null) {
            p0Var.cancel();
        }
    }

    private void testStorageRW() {
        if (Build.VERSION.SDK_INT <= 28 || !this.prefDef.needShowPermissdialog().d().booleanValue()) {
            return;
        }
        try {
            String strG = com.join.mgps.pref.h.n(this).g();
            if (com.join.mgps.Util.t2.i(strG)) {
                File file = new File(strG);
                if (!file.exists()) {
                    if (file.mkdirs()) {
                        this.prefDef.needShowPermissdialog().g(Boolean.FALSE);
                    }
                } else {
                    File file2 = new File(strG, "test_canwhite.txt");
                    if (file2.exists() ? file2.delete() : file2.createNewFile()) {
                        this.prefDef.needShowPermissdialog().g(Boolean.FALSE);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toStartGame() {
        if (!com.join.mgps.Util.t2.h(this.allJsonStr)) {
            this.prefDef.singleGameShowDialog().g(this.allJsonStr);
            this.allJsonStr = "";
        }
        UtilsMy.l4(this.context, this.mAdVipEvent, 0);
        this.mAdVipEvent = null;
        new Handler().postDelayed(new w(), 1500L);
    }

    @Receiver(actions = {p5.a.B})
    void accountChange(Intent intent) {
        getRedPointData();
        preLogin(false);
    }

    void add(int ruid) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            FriendReqBean friendReqBean = new FriendReqBean();
            friendReqBean.setUid(accountData.getUid());
            friendReqBean.setToken(accountData.getToken());
            friendReqBean.setRuid(ruid);
            friendReqBean.setRequestInfo("嘿，交个朋友，少年~(*^▽^*)");
            com.join.mgps.rpc.impl.h.p().o().i(friendReqBean).enqueue(new i0());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void addShortCuts() {
        if (this.prefDef.hide_app_switch().d().intValue() == 0) {
            com.join.mgps.Util.j2.a(this);
        } else {
            com.join.mgps.Util.j2.f(this);
        }
    }

    void addSuccess(Boolean f10) {
        if (f10.booleanValue()) {
            toast("已发送加好友申请");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.action_login_success"})
    public void afterLogin() {
        com.wufan.friend.chat.c.u().g();
        if (!com.wufan.friend.chat.c.u().F()) {
            com.wufan.friend.chat.c.u().L(this.accountBean.getUid(), this.accountBean.getToken());
        }
        autoSendAdd();
    }

    @AfterViews
    void afterViews() {
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        boolean z10 = false;
        window.setStatusBarColor(0);
        this.mRpcClient = com.join.mgps.rpc.impl.d.O1();
        this.friendClient = com.join.mgps.rpc.impl.h.p();
        this.context = this;
        String strD = this.prefDef.md5FileTag().d();
        if (com.join.mgps.Util.t2.i(strD)) {
            com.join.mgps.Util.z.f50181t = strD;
        }
        boolean zBooleanValue = this.prefDef.firstShowUserPermiss().d().booleanValue();
        if (this.prefDef.isFirst35().d().booleanValue() && zBooleanValue) {
            this.dialogBack.setVisibility(0);
            new com.join.mgps.dialog.p2(this, 1, com.join.mgps.rpc.h.f72349j + com.constant.b.f24649a, new f0()).show();
        } else {
            if (zBooleanValue) {
                MApplication.f3182z.B();
                afterViewsInitData(true);
                resume();
            }
            com.papa.sim.statistic.pref.b.k(this.context).F(true);
            this.prefDef.firstShowUserPermiss().g(Boolean.FALSE);
            com.papa.sim.statistic.pref.b.k(this.context).L(false);
            getRootUrl();
            preLogin(true);
            afterViewsInitData(false);
            h8.a aVarA = com.constant.a.a();
            if (aVarA != null) {
                aVarA.a();
            }
        }
        if (isLogined(this.context) && !isTourist(this.context)) {
            z10 = true;
        }
        this.isLoginedWhenEnter = z10;
        initMainTabLotties();
    }

    void afterViewsInitData(boolean needDelayhide) {
        boolean z10;
        boolean z11;
        boolean z12;
        PlayCfgBean playCfgBean;
        SimulatorAdCfgBean simulatorAdCfgBean;
        int ad_num;
        long j10;
        int i10;
        int iB;
        boolean z13;
        IntentDateBean intentDateBean;
        com.constant.a.g();
        boolean z14 = false;
        if (getIntent() == null || !TextUtils.equals("uninstall", getIntent().getStringExtra("dynamicShortcutType"))) {
            z10 = false;
        } else {
            UninstallWufunActivity_.intent(this).start();
            setIntent(new Intent());
            z10 = true;
        }
        DlTaskManager.INSTANCE.init();
        if (this.rpcAccountClientV2 == null) {
            this.rpcAccountClientV2 = com.join.mgps.rpc.impl.b.C();
        }
        getArchivingCfg();
        try {
            if (getIntent() != null && (intentDateBean = (IntentDateBean) getIntent().getSerializableExtra("intentActivityBean")) != null) {
                IntentUtil.getInstance().intentActivity(this, intentDateBean);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        initOM();
        new Thread(new o0()).start();
        if (com.join.mgps.pref.h.n(this.context).I() == 0) {
            com.join.mgps.pref.h.n(this.context).x0(System.currentTimeMillis());
        }
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        this.hasWritePermission = ContextCompat.checkSelfPermission(this.context, com.kuaishou.weapon.p0.g.f74786j) == 0;
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        this.downloadTasks = new ArrayList();
        this.recommendClient = com.join.mgps.rpc.impl.d.O1();
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        if (com.join.mgps.Util.p1.b(this) < 26 || Build.VERSION.SDK_INT < 26) {
            DownloadService_.Y(getApplicationContext()).a();
        }
        checkClipBoard2();
        saveUUID();
        touristLogin();
        if (this.prefDef.isFirstCustomApk().d().booleanValue()) {
            FirstIntentData firstIntentDataA = com.join.mgps.Util.p1.a(this);
            this.firstIntentData = firstIntentDataA;
            if (firstIntentDataA != null && firstIntentDataA.isCustomApk() && this.firstIntentData.isAPKSplashImage()) {
                z13 = true;
            } else {
                FirstIntentData firstIntentData = this.firstIntentData;
                if (firstIntentData != null && firstIntentData.isCustomApk() && this.prefDef.isFirstCustomApk().d().booleanValue() && this.firstIntentData.isIntent()) {
                    this.prefDef.isFirstCustomApk().g(Boolean.FALSE);
                    IntentDateBean intentDateBean2 = this.firstIntentData.getIntentDateBean();
                    if (intentDateBean2.getLink_type() != 1 || this.firstIntentData.isGoDetail()) {
                        if (this.firstIntentData.isAutoDownload()) {
                            intentDateBean2.setObject(Boolean.TRUE);
                        }
                        intentDateBean2.setExtBean(new ExtBean().set_from_type(134));
                        IntentUtil.getInstance().intentActivity(this, intentDateBean2);
                    } else {
                        this.prefDef.showIndex().g("1");
                    }
                }
                z13 = false;
            }
            this.prefDef.isFirstCustomApk().g(Boolean.FALSE);
            z11 = z13;
        } else {
            z11 = false;
        }
        if (this.prefDef.isFirstCommendVersion().d().booleanValue() && q5.f.M().d().size() == 0 && !z11 && this.prefDef.isFirst35().d().booleanValue()) {
            this.isFirstCommendVersion = true;
            RecommendActivity_.intent(this.context).startForResult(34343);
        } else {
            String strD = this.prefDef.thAdSwitchCfg().d();
            ThAdSwitchDataBean thAdSwitchDataBean = com.join.mgps.Util.t2.i(strD) ? (ThAdSwitchDataBean) JsonMapper.getInstance().fromJson(strD, ThAdSwitchDataBean.class) : null;
            String strD2 = this.prefDef.ssp_cfg().d();
            if (com.join.mgps.Util.t2.i(strD2)) {
                simulatorAdCfgBean = (SimulatorAdCfgBean) JsonMapper.getInstance().fromJson(strD2, SimulatorAdCfgBean.class);
                String sspAdConfig = new UserPrefs(this.context).getSspAdConfig();
                if (simulatorAdCfgBean == null || simulatorAdCfgBean.getPlay_cfg() == null) {
                    playCfgBean = null;
                    ad_num = 0;
                } else {
                    ad_num = simulatorAdCfgBean.getAd_num();
                    List<PlayCfgBean> play_cfg = simulatorAdCfgBean.getPlay_cfg();
                    if (play_cfg == null || play_cfg.size() <= 0) {
                        iB = 0;
                    } else {
                        ArrayList arrayList = new ArrayList();
                        Iterator<PlayCfgBean> it2 = play_cfg.iterator();
                        while (it2.hasNext()) {
                            arrayList.add(Double.valueOf(it2.next().getProbability()));
                        }
                        iB = com.join.mgps.ad.p.b(arrayList);
                    }
                    playCfgBean = play_cfg.get(iB);
                }
                if (com.join.mgps.Util.t2.i(sspAdConfig)) {
                    try {
                        JSONObject jSONObject = new JSONObject(sspAdConfig);
                        long j11 = jSONObject.has("lastTime") ? Long.parseLong(jSONObject.get("lastTime").toString()) : System.currentTimeMillis();
                        try {
                            i10 = jSONObject.has("adCount") ? Integer.parseInt(jSONObject.get("adCount").toString()) : 0;
                            j10 = j11;
                        } catch (Exception e11) {
                            e = e11;
                            j10 = j11;
                            e.printStackTrace();
                            i10 = 0;
                        }
                    } catch (Exception e12) {
                        e = e12;
                        j10 = 0;
                    }
                } else {
                    i10 = 0;
                    j10 = 0;
                }
                if (!com.join.mgps.Util.e0.z(j10)) {
                    i10 = 0;
                }
                z12 = playCfgBean != null && i10 < ad_num;
            } else {
                z12 = false;
                playCfgBean = null;
                simulatorAdCfgBean = null;
            }
            org.androidannotations.api.sharedpreferences.d dVarIsFirstCommendVersion = this.prefDef.isFirstCommendVersion();
            Boolean bool = Boolean.FALSE;
            dVarIsFirstCommendVersion.g(bool);
            if (thAdSwitchDataBean == null || thAdSwitchDataBean.getFx_ad_switch() != 1) {
                if (simulatorAdCfgBean != null && simulatorAdCfgBean.getSwitch_state() == 1 && z12) {
                    if (!this.prefDef.isFirstCommendVersion().d().booleanValue()) {
                        if (this.prefDef.isFirst35().d().booleanValue()) {
                            this.isfirst35 = true;
                            this.prefDef.isFirst35().g(bool);
                        } else {
                            z14 = true;
                        }
                        if (z14 && com.join.mgps.Util.t2.h(this.shortcutGameId) && !z10) {
                            this.isShowingSplash = true;
                            SplashActivity_.k0(this).a(playCfgBean).startForResult(10000);
                        }
                        z11 = z14;
                    }
                } else if (this.prefDef.isShowSplash().d().booleanValue() && !this.prefDef.isFirstCommendVersion().d().booleanValue()) {
                    if (this.prefDef.isFirst35().d().booleanValue()) {
                        this.isfirst35 = true;
                        this.prefDef.isFirst35().g(bool);
                        z11 = false;
                    } else {
                        z11 = true;
                    }
                    if (z11 && com.join.mgps.Util.t2.h(this.shortcutGameId) && !z10) {
                        this.showInstallLayout = false;
                        this.isShowingSplash = true;
                        SplashActivity_.k0(this).startForResult(10000);
                    }
                }
            } else if (!this.prefDef.isFirstCommendVersion().d().booleanValue()) {
                if (this.prefDef.isFirst35().d().booleanValue()) {
                    this.isfirst35 = true;
                    this.prefDef.isFirst35().g(bool);
                } else {
                    z14 = true;
                }
                if (z14 && com.join.mgps.Util.t2.h(this.shortcutGameId) && !z10) {
                    this.isShowingSplash = true;
                    SplashActivity_.k0(this).b(thAdSwitchDataBean).startForResult(10000);
                }
                z11 = z14;
            }
        }
        if (z11) {
            hideSplash();
        } else if (!needDelayhide || !this.isFirstCommendVersion) {
            this.splash.setVisibility(8);
        }
        this.prefDef.firstNewSplash().g(Boolean.FALSE);
        init();
        initViewS();
        try {
            Class.forName("android.os.AsyncTask");
        } catch (ClassNotFoundException e13) {
            e13.printStackTrace();
        }
        this.fragmentManager = getSupportFragmentManager();
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            this.positionNum = 3;
        } else {
            this.positionNum = extras.getInt(this.mainPos);
            String string = extras.getString("currTabTagId", "");
            this.currTabTagId = string;
            if (com.join.mgps.Util.t2.i(string)) {
                this.currTabNumber = extras.getInt("currTabNumber", -1);
            }
            this.currGameId = extras.getString("currGameId");
            if (this.positionNum == 0) {
                this.positionNum = 3;
            }
            this.classiFy = extras.getInt("classiFy");
            this.classifyPrimaryIndex = extras.getInt("classifyPrimaryIndex");
        }
        if (this.positionNum == 0) {
            if (this.prefDef.showIndex().d().equals("1")) {
                this.positionNum = 7;
            } else {
                this.positionNum = 3;
            }
        }
        this.isFirst = true;
        if (!com.join.mgps.Util.t2.h(this.shortcutGameId) && this.isNotThisGame) {
            this.positionNum = 2;
        }
        if (this.isShowingSplash) {
            this.handler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.y6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f58244b.lambda$afterViewsInitData$0();
                }
            }, 500L);
        } else {
            setTabSelect(this.positionNum);
        }
        registerMessageReceiver();
        getData(z11);
        getLogincfgs();
        UtilsMy.h3(this);
        getRedPointData();
        initJPushJoinDevice();
        if (this.jPushIntentData != null) {
            new Handler().postDelayed(new p0(), 500L);
        }
        new Handler().postDelayed(new Runnable() { // from class: com.join.mgps.activity.z6
            @Override // java.lang.Runnable
            public final void run() {
                this.f58280b.lambda$afterViewsInitData$1();
            }
        }, 1000L);
        if (this.splash.getVisibility() == 8) {
            testStorageRW();
        }
        updateStartGameTable(null);
        if (com.join.mgps.Util.t2.h(this.shortcutGameId)) {
            return;
        }
        handleShortCutGameIntent(this.shortcutGameId);
    }

    void applyAllMainTabLotties() {
        int iMainTabIndexForPosition = mainTabIndexForPosition(this.positionNum);
        boolean z10 = this.isPapaMainFragmentHasNewData && this.positionNum == 3;
        LottieAnimationView lottieAnimationView = this.lottie_mg_emulator;
        if (lottieAnimationView != null) {
            lottieAnimationView.setVisibility(0);
        }
        applyLottieTabState(this.lottie_mg_emulator, iMainTabIndexForPosition == 0 && !z10);
        LottieAnimationView lottieAnimationView2 = this.lottie_mg_recom;
        if (lottieAnimationView2 != null) {
            lottieAnimationView2.setVisibility(0);
        }
        applyLottieTabState(this.lottie_mg_recom, iMainTabIndexForPosition == 1);
        LottieAnimationView lottieAnimationView3 = this.lottie_mg_fight;
        if (lottieAnimationView3 != null) {
            lottieAnimationView3.setVisibility(0);
        }
        applyLottieTabState(this.lottie_mg_fight, iMainTabIndexForPosition == 3);
        LottieAnimationView lottieAnimationView4 = this.lottie_mg_category;
        if (lottieAnimationView4 != null) {
            lottieAnimationView4.setVisibility(0);
        }
        applyLottieTabState(this.lottie_mg_category, iMainTabIndexForPosition == 4);
        applyChartTabLottieOverlay("applyAllMainTabLotties");
    }

    void applyChartTabLottieOverlay(String caller) {
        CircleDownloadProgressBar circleDownloadProgressBar;
        SimpleDraweeView simpleDraweeView;
        LottieAnimationView lottieAnimationView = this.lottie_mg_chart;
        if (lottieAnimationView == null) {
            return;
        }
        boolean z10 = false;
        lottieAnimationView.setVisibility(0);
        int i10 = this.positionNum;
        boolean z11 = i10 == 2 || i10 == 5;
        SimpleDraweeView simpleDraweeView2 = this.gifIcon;
        boolean z12 = (simpleDraweeView2 != null && simpleDraweeView2.getVisibility() == 0) || ((circleDownloadProgressBar = this.cdp_down_progress) != null && circleDownloadProgressBar.getVisibility() == 0) || ((simpleDraweeView = this.downlodingGameIcon) != null && simpleDraweeView.getVisibility() == 0);
        LightningView lightningView = this.numberInTab;
        if (lightningView != null && lightningView.getVisibility() == 0) {
            z12 = true;
        }
        if (z11 && !z12) {
            z10 = true;
        }
        String str = z11 + net.lingala.zip4j.util.e.F0 + z12 + net.lingala.zip4j.util.e.F0 + z10;
        if ("updateStartGameTable_finally".equals(caller) && str.equals(this.mLastChartOverlaySig)) {
            return;
        }
        this.mLastChartOverlaySig = str;
        applyLottieTabState(this.lottie_mg_chart, z10);
    }

    void applyQuarkAssocLaunchAfterSdkInit(boolean sdkInitBlocked) {
        if (sdkInitBlocked) {
            ScreenActionReceiver screenActionReceiver = this.screenActionReceiver;
            if (screenActionReceiver != null) {
                screenActionReceiver.c(this);
                return;
            }
            return;
        }
        if (this.screenActionReceiver == null) {
            this.screenActionReceiver = new ScreenActionReceiver();
        }
        this.screenActionReceiver.b(this);
        handleLaunchQuark(MApplication.f3182z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void autoSendAdd() {
        Dialog dialog;
        try {
            if (this.button == null || (dialog = this.mDialog) == null || !dialog.isShowing()) {
                return;
            }
            this.button.performClick();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    String backSplitData(String s10) {
        try {
            String[] strArrSplit = s10.split("_");
            return strArrSplit[0].equals(com.join.android.app.common.utils.q.n(this.context).e(this.context)) ? strArrSplit[1] : WMConstants.TIMER_STAGE_NONE;
        } catch (Exception e10) {
            e10.printStackTrace();
            return WMConstants.TIMER_STAGE_NONE;
        }
    }

    @Receiver(actions = {p5.a.f96231y})
    void backUpGameFinish(Intent intent) {
        checkDownloadNumber();
    }

    @Override // com.join.mgps.pref.f
    public void callHomePageNewData(Bundle arg) {
        this.isPapaMainFragmentHasNewData = arg.getBoolean("homeHasNewData");
        if (this.positionNum == 3) {
            refreshTabIcon();
        }
    }

    @Override // com.join.mgps.pref.f
    public void callbackClassify(Bundle arg) {
        setTabSelect(1);
    }

    @Override // com.join.mgps.pref.f
    public void callbackClassifyTipsVisible(Bundle arg) {
    }

    @Override // com.join.mgps.pref.f
    public void callbackDownloadCenterVisible(Bundle arg) {
        this.downloadLayout.setVisibility(8);
        this.biground.setVisibility(8);
    }

    @Override // com.join.mgps.pref.f
    public void callbackForumWelcome(Bundle arg) {
        setTabSelect(3);
    }

    @Override // com.join.mgps.pref.f
    public void callbackFunChart(Bundle arg) {
        setTabSelect(2);
    }

    @Override // com.join.mgps.pref.f
    public void callbackHome(Bundle arg) {
        setTabSelect(7);
    }

    @Override // com.join.mgps.pref.f
    public void callbackPlayVideo(Bundle arg) {
    }

    @Override // com.join.mgps.pref.f
    public void callbackUnReadMessage(Bundle arg) {
        if (arg == null) {
            return;
        }
        this.messageNum = arg.getInt(com.join.mgps.Util.o2.K1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkClipBoard2() {
        try {
            ClipboardManager clipboardManager = (ClipboardManager) getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD);
            if (clipboardManager.hasPrimaryClip()) {
                ClipData.Item itemAt = clipboardManager.getPrimaryClip().getItemAt(0);
                if (itemAt.getText() != null) {
                    String string = itemAt.getText().toString();
                    if (string.length() > 5 && string.charAt(0) == 'w' && string.charAt(1) == 'u' && string.charAt(2) == 'f' && string.charAt(3) == 'a' && string.charAt(4) == 'n') {
                        getDetailData(string.substring(5));
                        clipboardManager.setText("");
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: checkClipboard, reason: merged with bridge method [inline-methods] */
    public void lambda$resume$7() {
        int iL;
        try {
            ClipboardManager clipboardManager = (ClipboardManager) getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD);
            if (clipboardManager.hasPrimaryClip()) {
                ClipData.Item itemAt = clipboardManager.getPrimaryClip().getItemAt(0);
                if (itemAt.getText() == null || (iL = com.wufan.friend.chat.c.u().l(itemAt.getText().toString())) == 0) {
                    return;
                }
                showAddFriend(iL);
                clipboardManager.setText("");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkDownloadNumber() {
        this.num = q5.f.M().V();
        this.f54287n = q5.f.M().Z(this);
        updateLine(q5.f.M().d0());
        int i10 = this.num;
        if (i10 != 0) {
            updateDownloadingPoint(i10);
        } else if (this.f54287n != 0) {
            updateNoOpenPoint();
        } else {
            updateHidePoint();
        }
    }

    protected boolean checkGameIsInstall(String gameId) {
        this.hasRom = false;
        this.hasPlug = false;
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG == null || downloadTaskG.getStatus() != 5) {
            this.hasRom = false;
        } else {
            this.hasRom = true;
            EMUApkTable eMUApkTableN = t6.o.o().n(downloadTaskG.getPlugin_num());
            if (eMUApkTableN == null) {
                this.hasPlug = true;
            } else if (!com.join.android.app.common.utils.o.t(this, eMUApkTableN, false, new String[0]) || UtilsMy.D0(this, eMUApkTableN)) {
                this.hasPlug = false;
            } else {
                this.hasPlug = true;
            }
        }
        return this.hasPlug && this.hasRom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkInstallApp() {
        int i10;
        BootPageData bootPageData;
        try {
            List<DownloadTask> listV = q5.f.M().v();
            if (listV != null && listV.size() > 0) {
                List<APKUtils.a> listP = com.join.android.app.common.utils.g.t0(this).p(this);
                boolean z10 = false;
                for (DownloadTask downloadTask : listV) {
                    for (APKUtils.a aVar : listP) {
                        if (downloadTask.getShowName().equals(aVar.a()) || aVar.a().contains(downloadTask.getShowName()) || downloadTask.getPackageName().equals(aVar.c()) || aVar.c().contains(downloadTask.getPackageName().replace(".papa", ""))) {
                            z10 = true;
                            break;
                        }
                    }
                    if (z10) {
                        break;
                    }
                }
                if (z10) {
                    String strD = this.prefDef.insatllAppFirstData().d();
                    if (strD != null && (bootPageData = (BootPageData) JsonMapper.getInstance().fromJson(strD, BootPageData.class)) != null && bootPageData.getGame_setup_boot() != null) {
                        if (!this.activityHasDes) {
                            PapaPlugGuideActivity_.intent(this.context).a(1).startForResult(10003);
                        }
                        this.showInstallNoticeOrappDialog = true;
                    }
                } else {
                    checkAndShowUninstallDialog(listV);
                }
            }
            if (!this.showInstallNoticeOrappDialog) {
                List<DownloadTask> listX = q5.f.M().X();
                Collections.sort(listX, new Comparator() { // from class: com.join.mgps.activity.a7
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return MGMainActivity.lambda$checkInstallApp$2((DownloadTask) obj, (DownloadTask) obj2);
                    }
                });
                if (listX != null && listX.size() > 0 && !com.join.mgps.Util.e0.z(this.prefDef.lastShowNotOpenTime().d().longValue())) {
                    if (!this.activityHasDes) {
                        showInstallAppDialogActivity(1, listX);
                        this.prefDef.lastShowNotOpenTime().g(Long.valueOf(System.currentTimeMillis()));
                    }
                    this.showInstallNoticeOrappDialog = true;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        com.join.mgps.Util.g1.d("backupData", "提示弹窗111");
        if (this.showInstallNoticeOrappDialog || (i10 = this.backupNumber) <= 0) {
            this.hasRunFinishforFinishDialog = true;
        } else {
            showBackupFinishDialog(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Background(delay = 1500)
    public void checkQuark() {
        long j10;
        if (this.prefDef.isQuarkEnable().d().booleanValue()) {
            long j11 = 0;
            boolean z10 = false;
            try {
                PackageInfo packageInfo = getApplicationContext().getPackageManager().getPackageInfo(getPackageName(), 0);
                long j12 = packageInfo.firstInstallTime;
                j10 = packageInfo.lastUpdateTime;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                j10 = 0;
            }
            try {
                j11 = getApplicationContext().getPackageManager().getPackageInfo(com.join.mgps.Util.d2.f49544b, 0).firstInstallTime;
                z10 = true;
            } catch (PackageManager.NameNotFoundException unused) {
            }
            if (z10 && j10 > j11) {
                this.prefDef.isQuarkEnable().g(Boolean.FALSE);
                return;
            }
            scanQuarkTask();
            if (com.join.android.app.common.utils.g.t0(this).N(this) || !this.prefDef.isQuarkSilentDownload().d().booleanValue()) {
                return;
            }
            ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this).extra("action", "downloadQuark")).extra("silent", this.prefDef.isQuarkSilentDownload().d())).extra("isOm", com.join.mgps.va.overmind.i.q().S())).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void checkRealName() {
        if (com.join.mgps.Util.e0.z(this.prefDef.lastRealNameCheckTime().d().longValue())) {
            return;
        }
        this.prefDef.lastRealNameCheckTime().g(Long.valueOf(System.currentTimeMillis()));
        UtilsMy.A0(this.context, 5, "", "ANDROID_SINGLE", new s0());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkSNKGame() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            this.localGameTwoDialog.d("网络链接失败，未检测出游戏！");
            this.localGameTwoDialog.b();
            return;
        }
        List<String> list = this.snkGameList;
        if (list == null || list.size() == 0) {
            this.localGameTwoDialog.d("未检测出游戏！");
            this.localGameTwoDialog.b();
            return;
        }
        try {
            this.listTempZip.clear();
            String str = "";
            for (int i10 = 0; i10 < this.listZip.size(); i10++) {
                String strD = com.join.mgps.Util.i1.d(this.listZip.get(i10) + "wufan2019");
                for (int i11 = 0; i11 < this.snkGameList.size(); i11++) {
                    if (strD.equals(this.snkGameList.get(i11))) {
                        this.listTempZip.add(this.listZip.get(i10));
                        if (!str.equals("")) {
                            str = str + "," + strD;
                            break;
                        }
                        str = strD;
                        break;
                    }
                }
            }
            if (str.equals("")) {
                showCheckData(null);
                return;
            }
            ResultMainBean<List<CollectionBeanSub>> resultMainBeanL0 = this.mRpcClient.l0(RequestBeanUtil.getInstance(this.context).getSNKGameCheckRequestBean(str));
            if (resultMainBeanL0 != null) {
                showCheckData(resultMainBeanL0.getMessages().getData());
            }
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("e:");
            sb2.append(e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void checkShowOldUserRecom(boolean intentSplash) {
        if (!intentSplash && !this.prefDef.firstShowUserPermiss().d().booleanValue()) {
            long jLongValue = this.prefDef.userLastStartAPP().d().longValue();
            long jA = com.join.mgps.Util.e0.a(jLongValue, System.currentTimeMillis());
            this.prefDef.userLastStartAPP().g(Long.valueOf(System.currentTimeMillis()));
            if (jLongValue != 0 && !com.join.mgps.Util.e0.z(jLongValue)) {
                startIntentOldUserRecom(jA);
                return;
            }
        }
        if (this.hasShowAd) {
            return;
        }
        showAdM();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1200)
    public void checkSign(boolean showSign) {
        if (this.checkSign) {
            return;
        }
        this.checkSign = true;
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.accountBean = accountData;
        if (accountData == null || TextUtils.isEmpty(accountData.getToken()) || !com.join.android.app.common.utils.m.j(this)) {
            return;
        }
        try {
            try {
                MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters.b bVarNewBuilder = MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters.newBuilder();
                bVarNewBuilder.setUid(this.accountBean.getUid());
                bVarNewBuilder.setToken(this.accountBean.getToken());
                bVarNewBuilder.setSceneType(SceneType.APP_HOME_PAGE);
                bVarNewBuilder.setAppVersion(g8.b.a(this));
                HashMap map = new HashMap();
                map.put("uid", bVarNewBuilder.getUid() + "");
                map.put(com.czhj.sdk.common.Constants.TOKEN, bVarNewBuilder.getToken());
                map.put("sceneType", bVarNewBuilder.getSceneType().name());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
                MessageCloudGamingAdCfgResponse.MessageCloudGamingAdCfgResponseResult messageCloudGamingAdCfgResponseResultN = this.rpcAccountClientV2.n(bVarNewBuilder.build());
                if (messageCloudGamingAdCfgResponseResultN == null || messageCloudGamingAdCfgResponseResultN.getError() != 200) {
                    sendHideCloudActive();
                } else {
                    showCloudSign(messageCloudGamingAdCfgResponseResultN.getData(), showSign);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                sendHideCloudActive();
            }
        } finally {
            this.checkSign = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkToken() {
        try {
            if (this.rpcAccountClientV2 == null) {
                this.rpcAccountClientV2 = com.join.mgps.rpc.impl.b.C();
            }
            UserInfo accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
            if (accountData == null || accountData.getAccountType() == 2) {
                return;
            }
            MessageCheckTokenRequest.MessageCheckTokenRequestParameters.b bVarNewBuilder = MessageCheckTokenRequest.MessageCheckTokenRequestParameters.newBuilder();
            bVarNewBuilder.setUid(this.accountBean.getUid());
            bVarNewBuilder.setToken(this.accountBean.getToken());
            bVarNewBuilder.setAppVersion(g8.b.a(this));
            HashMap map = new HashMap();
            map.put("uid", bVarNewBuilder.getUid() + "");
            map.put(com.czhj.sdk.common.Constants.TOKEN, bVarNewBuilder.getToken());
            map.put("appVersion", bVarNewBuilder.getAppVersion());
            bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
            MessageCheckTokenResponse.MessageCheckTokenResponseResult messageCheckTokenResponseResultE = this.rpcAccountClientV2.e(bVarNewBuilder.build());
            if (messageCheckTokenResponseResultE == null || messageCheckTokenResponseResultE.getError() != 701) {
                return;
            }
            showMessage(getString(R.string.pay_token_fail));
            AccountUtil_.getInstance_(getApplicationContext()).accountLoginOut(this);
            touristLogin();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void clearOldCache(PopupAdBean adBean) {
        if (adBean == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (adBean.getBig_pic() != null && adBean.getBig_pic().size() > 0) {
            int size = adBean.getBig_pic().size();
            for (int i10 = 0; i10 < size; i10++) {
                RecomDatabean recomDatabean = adBean.getBig_pic().get(i10);
                if (recomDatabean.getMain() != null && com.join.mgps.Util.t2.i(recomDatabean.getMain().getPic_remote())) {
                    String pic_remote = recomDatabean.getMain().getPic_remote();
                    if (com.join.mgps.Util.t2.i(pic_remote)) {
                        arrayList.add(com.join.mgps.Util.z.b(this.context) + com.join.mgps.Util.o0.t(pic_remote));
                    }
                }
            }
        }
        File fileB = com.join.mgps.Util.z.b(this.context);
        if (fileB != null && fileB.exists() && fileB.isDirectory()) {
            for (File file : fileB.listFiles()) {
                if (file.isFile()) {
                    if (!arrayList.contains(file + "")) {
                        UtilsMy.delete(file);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 2000)
    public void delayChangeAdshow() {
        this.prefDef.lastShowTOUTIAOAd().g("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 300)
    public void delayLoadRewardAd(com.join.mgps.ad.d video) {
        if (video != null) {
            video.d(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = BaseCloudFileManager.ACK_TIMEOUT)
    public void delaydown(DownloadTask downloadTask) {
        downloadTask.setPath("");
        downloadTask.setId(0);
        com.php25.PDownload.d.c(downloadTask, this.context);
    }

    @Receiver(actions = {p5.a.f96206l0})
    void downloadPermissGet(Intent intent) {
        startBackups(true);
    }

    @Receiver(actions = {p5.a.f96204k0})
    void downloaddelay(Intent intent) {
        delaydown((DownloadTask) JsonMapper.getInstance().fromJson(intent.getStringExtra("downloadTastJson"), DownloadTask.class));
    }

    @Receiver(actions = {p5.a.f96192e0})
    void emuOnResume(@Receiver.Extra String packageName) {
        if (TextUtils.isEmpty(packageName) || !packageName.equals(getPackageName()) || isRunService(this, CommonService_.class.getName())) {
            return;
        }
        updateHistory();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    @Click
    void fightSelect() {
        setTabSelect(4);
        showDownNotice();
    }

    public void full(boolean isFull) {
        if (isFull) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.flags |= 1024;
            getWindow().setAttributes(attributes);
            getWindow().addFlags(512);
            return;
        }
        WindowManager.LayoutParams attributes2 = getWindow().getAttributes();
        attributes2.flags &= -1025;
        getWindow().setAttributes(attributes2);
        getWindow().clearFlags(512);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 500)
    public void getArchivingCfg() {
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.accountBean = accountData;
        if (accountData == null || TextUtils.isEmpty(accountData.getToken()) || !com.join.android.app.common.utils.m.j(this)) {
            return;
        }
        try {
            MessageCloudGamingArchivingCfgRequest.MessageCloudGamingArchivingCfgRequestParameters.b bVarNewBuilder = MessageCloudGamingArchivingCfgRequest.MessageCloudGamingArchivingCfgRequestParameters.newBuilder();
            bVarNewBuilder.setUid(this.accountBean.getUid());
            bVarNewBuilder.setToken(this.accountBean.getToken());
            bVarNewBuilder.setAppVersion(g8.b.a(this));
            HashMap map = new HashMap();
            map.put("uid", bVarNewBuilder.getUid() + "");
            map.put(com.czhj.sdk.common.Constants.TOKEN, bVarNewBuilder.getToken());
            map.put("appVersion", bVarNewBuilder.getAppVersion());
            bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
            MessageCloudGamingArchivingCfgResponse.MessageCloudGamingArchivingCfgResponseResult messageCloudGamingArchivingCfgResponseResultG = this.rpcAccountClientV2.g(bVarNewBuilder.build());
            if (messageCloudGamingArchivingCfgResponseResultG == null || messageCloudGamingArchivingCfgResponseResultG.getError() != 200) {
                return;
            }
            DlTaskManager.INSTANCE.clearCloudArchiveTime();
            for (MessageCloudGamingArchivingCfgResponse.CfgInfo cfgInfo : messageCloudGamingArchivingCfgResponseResultG.getDataList()) {
                DlTaskManager.INSTANCE.updateCloudArchiveTime(cfgInfo.getGameId() + "", cfgInfo.getArchiveTime());
            }
            DlTaskManager.INSTANCE.onUpdateCloudArchiveTime();
            com.join.mgps.Util.j0.a().c(new com.join.mgps.event.g(ApiName.ArchivingCfg));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getAvailableLoginMethods() {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
            com.join.mgps.rpc.impl.j.b().a().c(PackageUtil.getAppVersionCode(this.context) + "_" + PackageUtil.getAppVersionName(this.context), accountData == null ? null : accountData.getAccount()).enqueue(new n0());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1500)
    public void getBootPageData() {
        List<BootPageData> data;
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                ResultMainBean<List<BootPageData>> resultMainBeanF0 = this.rpcClient.F0(RequestBeanUtil.getInstance(this).getBootPageData(new BootPageRequestArgs(Build.MODEL, Build.VERSION.RELEASE, Build.BRAND)));
                if (resultMainBeanF0 == null || resultMainBeanF0.getFlag() != 1 || (data = resultMainBeanF0.getMessages().getData()) == null || data.size() <= 0) {
                    return;
                }
                preLoadBootImage(data.get(0));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public int getClassifyPrimaryIndex() {
        return this.classifyPrimaryIndex;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1000)
    public void getData(boolean intentSplash) {
        setJPushJump();
        getdownloadTask();
        getEMUVersion();
        loadIpAddress();
        getAvailableLoginMethods();
        getEndGameConfig();
        setDefutDownloadPath();
        if (System.currentTimeMillis() - this.prefDef.isFirstRunApkBackupLong().e(0L).longValue() > 86400000 || this.isfirst35) {
            boolean z10 = ContextCompat.checkSelfPermission(this.context, com.kuaishou.weapon.p0.g.f74786j) == 0;
            this.hasWritePermission = z10;
            startBackups(z10);
            getHaveGameList();
        }
        if (com.join.mgps.Util.t2.h(this.prefDef.insatllAppFirstData().d())) {
            getBootPageData();
        }
        checkToken();
        if (intentSplash || this.prefDef.isFirstCommendVersion().d().booleanValue() || !com.join.mgps.Util.t2.h(this.shortcutGameId) || this.prefDef.firstShowUserPermiss().d().booleanValue()) {
            return;
        }
        checkRealName();
        if (com.join.mgps.Util.d2.v()) {
            getUpdateFeature();
        } else {
            getHomePopupAd();
        }
        checkSign(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDetailData(String gameId) {
        if (com.join.android.app.common.utils.m.j(this)) {
            if (this.rpcClient == null) {
                this.rpcClient = com.join.mgps.rpc.impl.d.O1();
            }
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
                ResultMainBean<CollectionBeanSub> resultMainBeanA0 = this.rpcClient.a0(RequestBeanUtil.getInstance(this).getAppDetialBean(gameId, accountData != null ? accountData.getUid() : 0, null));
                if (resultMainBeanA0 == null || resultMainBeanA0.getFlag() == 0) {
                    return;
                }
                showSharedGameDialog(resultMainBeanA0.getMessages().getData());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getEMUVersion() {
        Throwable th;
        boolean z10;
        long j10;
        int uid;
        ApkVersionbean apkVersionbean;
        Exception exc;
        EMUApkTable eMUApkTable;
        HomeViewSwich homeViewSwich;
        if (this.prefDef.plugHasUpdate().d().booleanValue() || CommonService.W) {
            return;
        }
        int i10 = 1;
        CommonService.W = true;
        try {
            initDefaultPluginInfo();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        int i11 = 0;
        if (com.join.android.app.common.utils.m.j(this)) {
            ResultMainBean<List<APKVersionMainBean>> resultMainBean = null;
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
                if (accountData != null) {
                    try {
                        uid = accountData.getUid();
                    } catch (Exception unused) {
                        CommonService.W = false;
                        if (resultMainBean == null) {
                            com.join.mgps.Util.g1.d("getEMUVersion", "failed  " + this.recomDatabean);
                            this.reloadNumber = this.reloadNumber - 1;
                            j10 = 5000;
                            try {
                                Thread.sleep(j10);
                                getEMUVersion();
                            } catch (InterruptedException unused2) {
                            }
                        }
                        getArenaPluginInfo();
                        getVideoAdCfg(true);
                    } catch (Throwable th2) {
                        th = th2;
                        z10 = false;
                        CommonService.W = z10;
                        if (resultMainBean != null) {
                            throw th;
                        }
                        throw th;
                    }
                } else {
                    uid = 0;
                }
                ResultMainBean<List<APKVersionMainBean>> resultMainBeanZ1 = this.recommendClient.z1(RequestBeanUtil.getInstance(this).getApkVersion(2, 2, 0, uid));
                if (resultMainBeanZ1 != null) {
                    try {
                        try {
                            if (resultMainBeanZ1.getFlag() == 1) {
                                com.join.mgps.Util.g1.d("getEMUVersion", "sucess");
                                this.prefDef.plugHasUpdate().g(Boolean.TRUE);
                                if (resultMainBeanZ1.getMessages().getData().size() == 0) {
                                    CommonService.W = false;
                                    return;
                                }
                                APKVersionMainBean aPKVersionMainBean = resultMainBeanZ1.getMessages().getData().get(0);
                                if (aPKVersionMainBean != null) {
                                    apkVersionbean = aPKVersionMainBean.getApp().get(0);
                                    try {
                                        MApplication.f3175p0 = aPKVersionMainBean.getSimulator_run_ad_text_cfg();
                                        MApplication.f3168b1 = aPKVersionMainBean.getSingle_game_run_ad_text_cfg();
                                        MApplication.f3172f1 = aPKVersionMainBean.getPublic_video_cfg();
                                        SingleGameRunAdTextCfgBean singleGameRunAdTextCfgBean = MApplication.f3168b1;
                                        if (singleGameRunAdTextCfgBean != null) {
                                            MApplication.f3173i1 = singleGameRunAdTextCfgBean.getCounts();
                                        }
                                        List<HomeViewSwich> cfg = aPKVersionMainBean.getCfg();
                                        if (cfg != null && cfg.size() > 0 && (homeViewSwich = cfg.get(0)) != null) {
                                            try {
                                                String strBackSplitData = backSplitData(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_speed_limit().getCfg_values(), null));
                                                if (strBackSplitData.equals(WMConstants.TIMER_STAGE_NONE)) {
                                                    homeViewSwich.getDown_load_speed_limit().setCfg_values_express("300");
                                                } else {
                                                    homeViewSwich.getDown_load_speed_limit().setCfg_values_express(strBackSplitData);
                                                }
                                                String strBackSplitData2 = backSplitData(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_size().getCfg_values(), null));
                                                if (strBackSplitData2.equals("0")) {
                                                    homeViewSwich.getDown_load_size().setCfg_values_express("500");
                                                } else {
                                                    homeViewSwich.getDown_load_size().setCfg_values_express(strBackSplitData2);
                                                }
                                                String strBackSplitData3 = backSplitData(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_cfg_net_game_speed_limit().getCfg_switch(), null));
                                                if (strBackSplitData3.equals(WMConstants.TIMER_STAGE_NONE)) {
                                                    homeViewSwich.getDown_load_cfg_net_game_speed_limit().setCfg_switch_express("0");
                                                } else {
                                                    homeViewSwich.getDown_load_cfg_net_game_speed_limit().setCfg_switch_express(strBackSplitData3);
                                                }
                                                String strBackSplitData4 = backSplitData(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_cfg_simulator_speed_limit().getCfg_switch(), null));
                                                if (strBackSplitData4.equals(WMConstants.TIMER_STAGE_NONE)) {
                                                    homeViewSwich.getDown_load_cfg_simulator_speed_limit().setCfg_switch_express("0");
                                                } else {
                                                    homeViewSwich.getDown_load_cfg_simulator_speed_limit().setCfg_switch_express(strBackSplitData4);
                                                }
                                                String strBackSplitData5 = backSplitData(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_cfg_stand_alone_speed_limit().getCfg_switch(), null));
                                                if (strBackSplitData5.equals(WMConstants.TIMER_STAGE_NONE)) {
                                                    homeViewSwich.getDown_load_cfg_stand_alone_speed_limit().setCfg_switch_express("0");
                                                } else {
                                                    homeViewSwich.getDown_load_cfg_stand_alone_speed_limit().setCfg_switch_express(strBackSplitData5);
                                                }
                                                homeViewSwich.getDown_load_unrestricted_speed().setCfg_values_express(backSplitData(com.join.mgps.Util.a.a(homeViewSwich.getDown_load_unrestricted_speed().getCfg_values(), null)));
                                                com.join.mgps.pref.h.n(this.context).N(homeViewSwich);
                                                MApplication.U = homeViewSwich;
                                            } catch (Exception e11) {
                                                e11.printStackTrace();
                                            }
                                            BattaleSwitchBean an_battle_switch = homeViewSwich.getAn_battle_switch();
                                            if (an_battle_switch == null || an_battle_switch.getCfg_switch() != 1) {
                                                this.prefDef.showAnBattle().g(Boolean.FALSE);
                                            } else {
                                                this.prefDef.showAnBattle().g(Boolean.TRUE);
                                            }
                                            BattaleSwitchBean seep_up_read_only_number_of_win = homeViewSwich.getSeep_up_read_only_number_of_win();
                                            if (seep_up_read_only_number_of_win == null || seep_up_read_only_number_of_win.getCfg_switch() != 1) {
                                                this.prefDef.downloadSpeedUpCount().g(0);
                                            } else {
                                                this.prefDef.downloadSpeedUpCount().g(Integer.valueOf(seep_up_read_only_number_of_win.getCfg_values()));
                                            }
                                            BattaleSwitchBean seep_up_read_only_game_size = homeViewSwich.getSeep_up_read_only_game_size();
                                            if (seep_up_read_only_game_size == null || seep_up_read_only_game_size.getCfg_switch() != 1) {
                                                this.prefDef.downloadSpeedUpGameSize().g(0);
                                            } else {
                                                this.prefDef.downloadSpeedUpGameSize().g(Integer.valueOf(seep_up_read_only_game_size.getCfg_values()));
                                            }
                                            if (!com.join.mgps.Util.e0.z(this.prefDef.downloadSpeedUpLastTime().d().longValue())) {
                                                this.prefDef.downloadSpeedUpCountCurrent().g(0);
                                                this.prefDef.downloadSpeedUpCountCurrentAD().g(0);
                                                this.prefDef.downloadSpeedUpGames().g("");
                                            }
                                            BattaleSwitchBean psp_ad_show_time = homeViewSwich.getPsp_ad_show_time();
                                            if (psp_ad_show_time != null) {
                                                this.prefDef.pspAdShowTimeSwitch().g(Integer.valueOf(psp_ad_show_time.getCfg_switch()));
                                                this.prefDef.pspAdShowTime().g(Integer.valueOf(psp_ad_show_time.getCfg_values()));
                                            }
                                            BattaleSwitchBean ranking_menu = homeViewSwich.getRanking_menu();
                                            if (ranking_menu != null) {
                                                this.prefDef.rankingMenu().g(ranking_menu.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_arc_ad_id = homeViewSwich.getSeep_up_read_only_arc_ad_id();
                                            if (seep_up_read_only_arc_ad_id != null && seep_up_read_only_arc_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_arc_ad_id.getCfg_values())) {
                                                this.prefDef.adIdArc().g(seep_up_read_only_arc_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_psp_ad_id = homeViewSwich.getSeep_up_read_only_psp_ad_id();
                                            if (seep_up_read_only_psp_ad_id != null && seep_up_read_only_psp_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_psp_ad_id.getCfg_values())) {
                                                this.prefDef.adIdPsp().g(seep_up_read_only_psp_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_down_ad_id = homeViewSwich.getSeep_up_read_only_down_ad_id();
                                            if (seep_up_read_only_down_ad_id != null && seep_up_read_only_down_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_down_ad_id.getCfg_values())) {
                                                this.prefDef.adIdDownloadSpeedUp().g(seep_up_read_only_down_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_common_s_ad_id = homeViewSwich.getSeep_up_read_only_common_s_ad_id();
                                            if (seep_up_read_only_common_s_ad_id != null && seep_up_read_only_common_s_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_common_s_ad_id.getCfg_values())) {
                                                this.prefDef.adIdCommonV().g(seep_up_read_only_common_s_ad_id.getCfg_values());
                                            }
                                            BattaleSwitchBean seep_up_read_only_common_h_ad_id = homeViewSwich.getSeep_up_read_only_common_h_ad_id();
                                            if (seep_up_read_only_common_h_ad_id != null && seep_up_read_only_common_h_ad_id.getCfg_switch() == 1 && !TextUtils.isEmpty(seep_up_read_only_common_h_ad_id.getCfg_values())) {
                                                this.prefDef.adIdCommonH().g(seep_up_read_only_common_h_ad_id.getCfg_values());
                                            }
                                            initAdBroadcast();
                                            BattaleSwitchBean nick_name_modify_title = homeViewSwich.getNick_name_modify_title();
                                            if (nick_name_modify_title != null) {
                                                this.prefDef.changeNickNameNotice().g(nick_name_modify_title.getCfg_values());
                                            }
                                            BattaleSwitchBean game_download_boot = homeViewSwich.getGame_download_boot();
                                            if (game_download_boot != null) {
                                                String cfg_values = game_download_boot.getCfg_values();
                                                if (com.join.mgps.Util.t2.i(cfg_values)) {
                                                    try {
                                                        int iIntValue = this.prefDef.insatllAppFirst().d().intValue();
                                                        int i12 = Integer.parseInt(cfg_values);
                                                        if (iIntValue == -8) {
                                                            this.prefDef.insatllAppFirst().g(Integer.valueOf(i12));
                                                        }
                                                    } catch (Exception e12) {
                                                        e12.printStackTrace();
                                                    }
                                                }
                                            }
                                            BattaleSwitchBean game_performance_boot = homeViewSwich.getGame_performance_boot();
                                            if (game_performance_boot != null) {
                                                String cfg_values2 = game_performance_boot.getCfg_values();
                                                if (com.join.mgps.Util.t2.i(cfg_values2)) {
                                                    try {
                                                        int i13 = Integer.parseInt(cfg_values2);
                                                        if (this.prefDef.runRomFirst().d().intValue() == -8) {
                                                            this.prefDef.runRomFirst().g(Integer.valueOf(i13));
                                                        }
                                                    } catch (Exception e13) {
                                                        e13.printStackTrace();
                                                    }
                                                }
                                            }
                                            BattaleSwitchBean app_down_wifi_status = homeViewSwich.getApp_down_wifi_status();
                                            if (app_down_wifi_status != null) {
                                                String cfg_values3 = app_down_wifi_status.getCfg_values();
                                                if (com.join.mgps.Util.t2.i(cfg_values3)) {
                                                    try {
                                                        int i14 = Integer.parseInt(cfg_values3);
                                                        if (this.prefDef.wifiDownNumber().d().intValue() == -1) {
                                                            this.prefDef.wifiDownNumber().g(Integer.valueOf(i14));
                                                        }
                                                    } catch (Exception e14) {
                                                        e14.printStackTrace();
                                                    }
                                                }
                                            }
                                            BattaleSwitchBean ext_game_upload_type = homeViewSwich.getExt_game_upload_type();
                                            if (ext_game_upload_type != null && com.join.mgps.Util.t2.i(ext_game_upload_type.getCfg_values())) {
                                                try {
                                                    this.prefDef.uploadType2().g(ext_game_upload_type.getCfg_values());
                                                } catch (Exception e15) {
                                                    e15.printStackTrace();
                                                }
                                            }
                                            BattaleSwitchBean wf_home_page_position = homeViewSwich.getWf_home_page_position();
                                            if (wf_home_page_position == null || wf_home_page_position.getCfg_switch() != 1) {
                                                this.prefDef.showIndex().g("2");
                                            } else {
                                                this.prefDef.showIndex().g(wf_home_page_position.getCfg_values());
                                            }
                                            BattaleSwitchBean md5_file_tag = homeViewSwich.getMd5_file_tag();
                                            if (md5_file_tag == null || md5_file_tag.getCfg_switch() != 1) {
                                                this.prefDef.md5FileTag().g("");
                                            } else {
                                                this.prefDef.md5FileTag().g(md5_file_tag.getCfg_values());
                                                com.join.mgps.Util.z.f50181t = md5_file_tag.getCfg_values();
                                            }
                                            try {
                                                this.prefDef.emulatorStartAdCount().g(Integer.valueOf(Integer.parseInt(homeViewSwich.getEmulator_start_ad_count().getCfg_values())));
                                            } catch (Exception e16) {
                                                e16.printStackTrace();
                                            }
                                            this.prefDef.emulatorGoldenFingerUrl().g(homeViewSwich.getEmulator_golden_finger_url().getCfg_values());
                                            this.prefDef.emulatorOneSkillUrl().g(homeViewSwich.getEmulator_one_skill_url().getCfg_values());
                                            this.prefDef.emulatorCheckpointUrl().g(homeViewSwich.getEmulator_checkpoint_url().getCfg_values());
                                        }
                                    } catch (Exception e17) {
                                        e17.printStackTrace();
                                    }
                                } else {
                                    apkVersionbean = null;
                                }
                                if (resultMainBeanZ1.getFlag() == 1) {
                                    String[] strArrB = com.join.android.app.common.utils.q.n(this).B();
                                    String ver = apkVersionbean.getVer();
                                    int i15 = Integer.parseInt(ver.split("_")[0]);
                                    int i16 = Integer.parseInt(apkVersionbean.getVer_compatible().split("_")[0]);
                                    if (Integer.parseInt(strArrB[0]) <= i15) {
                                        VersionDto versionDto = new VersionDto();
                                        versionDto.setAndroidUrl(apkVersionbean.getDown_url());
                                        versionDto.setVersionNo(Integer.parseInt(ver.split("_")[0]));
                                        versionDto.setInfo(apkVersionbean.getVer_info());
                                        versionDto.setHead_pic(apkVersionbean.getHead_pic());
                                        versionDto.setTow_tpl_back_ground_pic(apkVersionbean.getTow_tpl_back_ground_pic());
                                        versionDto.setTpl_type(apkVersionbean.getTpl_type());
                                        if (Integer.parseInt(strArrB[0]) < i15) {
                                            if (Float.parseFloat(strArrB[0]) < i16) {
                                                showVersionDownLoadHint(versionDto, true);
                                            } else {
                                                showVersionDownLoadHint(versionDto, false);
                                            }
                                        }
                                    }
                                }
                                List<ApkVersionbean> plugin = aPKVersionMainBean.getPlugin();
                                if (plugin != null) {
                                    for (ApkVersionbean apkVersionbean2 : plugin) {
                                        DownloadTask downloadTaskG = q5.f.M().G(apkVersionbean2.getTag_id());
                                        if (downloadTaskG != null && !TextUtils.isEmpty(apkVersionbean2.getVer())) {
                                            if (apkVersionbean2.equals(downloadTaskG.getVer() + "_" + downloadTaskG.getVer_name()) && downloadTaskG.getDown_type() != apkVersionbean2.getDown_type()) {
                                                q5.f.M().delete(downloadTaskG);
                                                downloadTaskG = null;
                                            }
                                        }
                                        HashMap map = new HashMap();
                                        map.put("tag_id", apkVersionbean2.getTag_id());
                                        List<EMUApkTable> listH = t6.p.o().h(map);
                                        if (listH == null || listH.size() <= 0) {
                                            EMUApkTable eMUApkTable2 = new EMUApkTable();
                                            eMUApkTable2.setApk_name(apkVersionbean2.getApk_name());
                                            eMUApkTable2.setDown_url(apkVersionbean2.getDown_url());
                                            eMUApkTable2.setLaunch_name(apkVersionbean2.getLaunch_name());
                                            eMUApkTable2.setLogo(apkVersionbean2.getLogo());
                                            eMUApkTable2.setPackage_name(apkVersionbean2.getPackage_name());
                                            eMUApkTable2.setRelease_date(apkVersionbean2.getRelease_date());
                                            eMUApkTable2.setSize(apkVersionbean2.getSize());
                                            eMUApkTable2.setTag_id(apkVersionbean2.getTag_id());
                                            eMUApkTable2.setTeam_info(apkVersionbean2.getTeam_info());
                                            eMUApkTable2.setVer(apkVersionbean2.getVer());
                                            eMUApkTable2.setVer_compatible(apkVersionbean2.getVer_compatible());
                                            eMUApkTable2.setVer_info(apkVersionbean2.getVer_info());
                                            eMUApkTable2.setDown_type(apkVersionbean2.getDown_type());
                                            eMUApkTable2.setRemark(JsonMapper.toJsonString(apkVersionbean2.getPlugin_md5()));
                                            t6.p.o().k(eMUApkTable2);
                                            com.join.android.app.common.utils.o.F(eMUApkTable2);
                                            boolean zE0 = UtilsMy.E0(this, eMUApkTable2);
                                            if (downloadTaskG != null) {
                                                if (downloadTaskG.getFileType() != null && downloadTaskG.getFileType().equals(Dtype.chajian.name()) && downloadTaskG.getDown_type() == 2 && eMUApkTable2.getDown_type() == 2 && TextUtils.isEmpty(eMUApkTable2.getApkPath())) {
                                                    eMUApkTable2.setApkPath(com.join.android.app.common.utils.o.h(downloadTaskG.getPlugin_num(), new File(downloadTaskG.getGameZipPath())));
                                                }
                                                if (zE0 && downloadTaskG.getStatus() == 5) {
                                                    downloadTaskG.setUrl(apkVersionbean2.getDown_url());
                                                    downloadTaskG.setShowName(apkVersionbean2.getApk_name());
                                                    if (com.join.mgps.Util.t2.h(downloadTaskG.getMod_info())) {
                                                        downloadTaskG.setStatus(9);
                                                    }
                                                } else if (downloadTaskG.getStatus() == 0) {
                                                    downloadTaskG.setStatus(5);
                                                }
                                                q5.f.M().m(downloadTaskG);
                                                if (downloadTaskG.getStatus() == 9 || (zE0 && downloadTaskG.getStatus() == 5)) {
                                                    com.join.android.app.common.utils.o.G(this.context, eMUApkTable2);
                                                }
                                            } else if (zE0) {
                                                if (eMUApkTable2.getDown_type() != 2) {
                                                    UtilsMy.c3(eMUApkTable2, this.context);
                                                } else if (com.join.android.app.common.utils.o.t(this.context, eMUApkTable2, false, new String[0])) {
                                                    UtilsMy.c3(eMUApkTable2, this.context);
                                                }
                                            } else if (com.join.android.app.common.utils.o.t(this.context, eMUApkTable2, false, new String[0])) {
                                                UtilsMy.b3(eMUApkTable2, this.context);
                                            }
                                            i10 = 1;
                                            i11 = 0;
                                        } else {
                                            if (listH.size() > i10) {
                                                for (int i17 = 0; i17 < listH.size(); i17++) {
                                                    t6.p.o().delete(listH.get(i17));
                                                }
                                            }
                                            try {
                                                eMUApkTable = listH.get(i11);
                                                try {
                                                    eMUApkTable.setApk_name(apkVersionbean2.getApk_name());
                                                    eMUApkTable.setDown_url(apkVersionbean2.getDown_url());
                                                    eMUApkTable.setLaunch_name(apkVersionbean2.getLaunch_name());
                                                    eMUApkTable.setLogo(apkVersionbean2.getLogo());
                                                    eMUApkTable.setPackage_name(apkVersionbean2.getPackage_name());
                                                    eMUApkTable.setRelease_date(apkVersionbean2.getRelease_date());
                                                    eMUApkTable.setSize(apkVersionbean2.getSize());
                                                    eMUApkTable.setTag_id(apkVersionbean2.getTag_id());
                                                    eMUApkTable.setTeam_info(apkVersionbean2.getTeam_info());
                                                    eMUApkTable.setVer(apkVersionbean2.getVer());
                                                    eMUApkTable.setVer_compatible(apkVersionbean2.getVer_compatible());
                                                    eMUApkTable.setVer_info(apkVersionbean2.getVer_info());
                                                    eMUApkTable.setDown_type(apkVersionbean2.getDown_type());
                                                    eMUApkTable.setRemark(JsonMapper.toJsonString(apkVersionbean2.getPlugin_md5()));
                                                    boolean zE1 = UtilsMy.E0(this, eMUApkTable);
                                                    if (downloadTaskG != null) {
                                                        if (downloadTaskG.getFileType() != null && downloadTaskG.getFileType().equals(Dtype.chajian.name()) && downloadTaskG.getDown_type() == 2 && eMUApkTable.getDown_type() == 2 && TextUtils.isEmpty(eMUApkTable.getApkPath())) {
                                                            eMUApkTable.setApkPath(com.join.android.app.common.utils.o.h(downloadTaskG.getPlugin_num(), new File(downloadTaskG.getGameZipPath())));
                                                        }
                                                        if (zE1 && downloadTaskG.getStatus() == 5) {
                                                            downloadTaskG.setUrl(apkVersionbean2.getDown_url());
                                                            if (com.join.mgps.Util.t2.h(downloadTaskG.getMod_info())) {
                                                                downloadTaskG.setStatus(9);
                                                            }
                                                            downloadTaskG.setShowName(apkVersionbean2.getApk_name());
                                                            downloadTaskG.setDescribe(apkVersionbean2.getVer_info());
                                                            downloadTaskG.setPortraitURL(apkVersionbean2.getLogo());
                                                        } else if (downloadTaskG.getStatus() == 0) {
                                                            downloadTaskG.setStatus(5);
                                                        }
                                                        q5.f.M().m(downloadTaskG);
                                                        if (downloadTaskG.getStatus() == 9 || (zE1 && downloadTaskG.getStatus() == 5)) {
                                                            com.join.android.app.common.utils.o.G(this.context, eMUApkTable);
                                                        }
                                                    } else if (zE1) {
                                                        if (eMUApkTable.getDown_type() != 2 || com.join.android.app.common.utils.o.t(this.context, eMUApkTable, false, new String[0])) {
                                                            UtilsMy.c3(eMUApkTable, this.context);
                                                        }
                                                    } else if (com.join.android.app.common.utils.o.t(this.context, eMUApkTable, false, new String[0])) {
                                                        UtilsMy.b3(eMUApkTable, this.context);
                                                    }
                                                } catch (Exception e18) {
                                                    exc = e18;
                                                    exc.printStackTrace();
                                                }
                                            } catch (Exception e19) {
                                                exc = e19;
                                                eMUApkTable = null;
                                            }
                                            t6.p.o().update(eMUApkTable);
                                            com.join.android.app.common.utils.o.F(eMUApkTable);
                                        }
                                        i10 = 1;
                                        i11 = 0;
                                    }
                                }
                                com.papa.sim.statistic.t.l(getApplicationContext()).I2(true, JsonMapper.getInstance().toJson(t6.p.o().d()));
                            }
                        } catch (Exception unused3) {
                            resultMainBean = resultMainBeanZ1;
                            CommonService.W = false;
                            if (resultMainBean == null && this.reloadNumber > 0) {
                                com.join.mgps.Util.g1.d("getEMUVersion", "failed  " + this.recomDatabean);
                                this.reloadNumber = this.reloadNumber - 1;
                                j10 = 5000;
                            }
                            getArenaPluginInfo();
                            getVideoAdCfg(true);
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        resultMainBean = resultMainBeanZ1;
                        z10 = false;
                        CommonService.W = z10;
                        if (resultMainBean != null || this.reloadNumber <= 0) {
                            throw th;
                        }
                        com.join.mgps.Util.g1.d("getEMUVersion", "failed  " + this.recomDatabean);
                        this.reloadNumber = this.reloadNumber - 1;
                        try {
                            Thread.sleep(5000L);
                            getEMUVersion();
                            throw th;
                        } catch (InterruptedException unused4) {
                            throw th;
                        }
                    }
                }
                CommonService.W = false;
                if (resultMainBeanZ1 == null && this.reloadNumber > 0) {
                    com.join.mgps.Util.g1.d("getEMUVersion", "failed  " + this.recomDatabean);
                    this.reloadNumber = this.reloadNumber - 1;
                    j10 = 5000;
                    Thread.sleep(j10);
                    getEMUVersion();
                }
            } catch (Exception unused5) {
                resultMainBean = null;
            } catch (Throwable th4) {
                th = th4;
                z10 = false;
                resultMainBean = null;
            }
        } else {
            CommonService.W = false;
            checkPlatformVersion();
            com.join.mgps.Util.g1.d("getEMUVersion", "nonet");
        }
        getArenaPluginInfo();
        getVideoAdCfg(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getEndGameConfig() {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            RequestEndGameListArgs requestEndGameListArgs = new RequestEndGameListArgs();
            requestEndGameListArgs.setUid(AccountUtil_.getInstance_(this.context).getUid());
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(requestEndGameListArgs);
            requestModel.setDefault(this.context);
            ResponseModel<GameMainV4DataBean.EndGameConfigBean> responseModelO = com.join.mgps.rpc.impl.i.P0().o(requestModel.makeSign());
            if (responseModelO == null || responseModelO.getCode() != 200 || responseModelO.getData() == null) {
                return;
            }
            this.prefDef.endGameConfig().g(JsonMapper.toJsonString(responseModelO.getData()));
        }
    }

    void getFriendInfo(int ruid) {
        new j0().execute(Integer.valueOf(ruid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getHaveGameList() {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            try {
                if (this.rpcConsoleGameClient == null) {
                    this.rpcConsoleGameClient = com.join.mgps.rpc.impl.f.b();
                }
                String uid = AccountUtil_.getInstance_(this).getUid();
                String token = AccountUtil_.getInstance_(this).getToken();
                HashMap map = new HashMap();
                map.put("uid", uid);
                map.put(com.czhj.sdk.common.Constants.TOKEN, token);
                ResultMainBean<List<AppBean>> resultMainBeanA = this.rpcConsoleGameClient.a(map);
                if (resultMainBeanA == null || resultMainBeanA.getFlag() != 1 || resultMainBeanA.getMessages() == null || resultMainBeanA.getMessages().getData() == null) {
                    return;
                }
                savePurchasedList(resultMainBeanA.getMessages().getData());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getHomePopupAd() {
        List<DownloadTask> listV;
        if (!this.prefDef.firstUninstallTipShow().d().booleanValue() && (listV = q5.f.M().v()) != null) {
            checkAndShowUninstallDialog(listV);
            if (this.showInstallNoticeOrappDialog) {
                this.prefDef.firstUninstallTipShow().g(Boolean.TRUE);
            }
        }
        if (this.showInstallNoticeOrappDialog) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(this)) {
            showHomePopupAd(null);
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
            ResultMainBean<PopupAdBean> resultMainBeanR = this.rpcClient.r(RequestBeanUtil.getInstance(this).getHomePopupAd(com.join.mgps.Util.b.piv(accountData), accountData.getUid()));
            if (resultMainBeanR == null || resultMainBeanR.getFlag() != 1) {
                showHomePopupAd(null);
            } else {
                showHomePopupAd(resultMainBeanR.getMessages().getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showHomePopupAd(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getLogincfgs() {
        try {
            com.join.mgps.rpc.impl.d.O1().N1().L1(RequestBeanUtil.getInstance(this.context).getDefalutRequestBean(new RequestUidtagidTagdes())).enqueue(new b());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public int getPositionNum() {
        return this.positionNum;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getRedPointData() {
        UserInfo accountData;
        UsercenterFragmentNew usercenterFragmentNew;
        if (!com.join.android.app.common.utils.m.j(this.context) || (accountData = AccountUtil_.getInstance_(this.context).getAccountData()) == null || accountData.getUid() == 0 || AccountUtil_.getInstance_(this.context).isTourist()) {
            return;
        }
        try {
            MessageRedPointBean messageRedPointBeanH1 = this.rpcClient.H1(RequestBeanUtil.getInstance(this.context).getGRedPointNum(accountData.getUid()));
            if (messageRedPointBeanH1 != null && messageRedPointBeanH1.getMessages() != null && messageRedPointBeanH1.getMessages().getData() != null) {
                MessageRedPointBean.MessagesBean.DataBean data = messageRedPointBeanH1.getMessages().getData();
                MApplication.P = data;
                int community_praise_surplus_number = data.getCommunity_praise_surplus_number() + MApplication.P.getCommunity_surplus_number() + MApplication.P.getNotice_surplus_number() + MApplication.P.getPraise_surplus_number() + MApplication.P.getReplay_surplus_number();
                MApplication.T = community_praise_surplus_number;
                if (community_praise_surplus_number > 0) {
                    if (this.positionNum != 1 || (usercenterFragmentNew = this.userCenterFragment) == null) {
                        showRedPoint();
                    } else {
                        usercenterFragmentNew.showNotif();
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getRootUrl() {
        try {
            com.join.android.app.common.http.c.d(this.context);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getSNKGameInfo(int style) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.timelastSnk < 10000) {
            return;
        }
        this.timelastSnk = jCurrentTimeMillis;
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            if (style == 0) {
                showToast("网络已断开，请连上网络后再试！");
                return;
            }
            return;
        }
        try {
            ResultMainBean<SNKGameInfoBean> resultMainBeanJ0 = this.mRpcClient.J0(RequestBeanUtil.getInstance(this.context).getPreloadingADRequestBean());
            if (resultMainBeanJ0 == null || resultMainBeanJ0.getCode() != 600) {
                return;
            }
            setSNKGameData(resultMainBeanJ0.getMessages().getData());
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("e:");
            sb2.append(e10.getMessage());
        }
    }

    public List<String> getSnkGameList() {
        return this.snkGameList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getUnInstallGameInfo(String gameId, List<DownloadTask> downloadTasksNotInstall) {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                RequestModel requestModel = new RequestModel();
                UninstallOnlineGameArgs uninstallOnlineGameArgs = new UninstallOnlineGameArgs();
                uninstallOnlineGameArgs.setGameId(gameId);
                requestModel.setArgs(uninstallOnlineGameArgs);
                requestModel.setDefault(this);
                ResponseModel<UninstallOnlineGameBean> responseModelR = com.join.mgps.rpc.impl.i.P0().R(requestModel.makeSign());
                if (responseModelR != null && responseModelR.getCode() == 200 && responseModelR.getData() != null) {
                    UninstallOnlineGameBean data = responseModelR.getData();
                    if (data.getText() != null && data.getText().size() > 0 && data.getCover_image() != null) {
                        gotoInstallAppDialogV2Activity(gameId, data);
                        return;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        showInstallAppDialogActivity(0, downloadTasksNotInstall);
    }

    DownloadTask getUninstallOnlineGame(List<DownloadTask> tasks) {
        for (DownloadTask downloadTask : tasks) {
            if (UtilsMy.t2(downloadTask.getTipBeans())) {
                return downloadTask;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getUpdateFeature() {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            try {
                RequestCommonAdArgs requestCommonAdArgs = new RequestCommonAdArgs();
                requestCommonAdArgs.setPage(1);
                requestCommonAdArgs.setPositionMarkList(new ArrayList<String>() { // from class: com.join.mgps.activity.MGMainActivity.16
                    {
                        if (com.join.mgps.Util.d2.v()) {
                            add("KK_SHOW_AD");
                        } else {
                            add("HOME_UPGRADE_TIPS_PIC");
                            add("HOME_UPGRADE_TIPS_AD");
                        }
                    }
                });
                RequestModel requestModel = new RequestModel(this.context);
                requestModel.setArgs(requestCommonAdArgs);
                ResponseModel<List<CommonAdBean>> responseModelK0 = com.join.mgps.rpc.impl.i.P0().K0(requestModel.makeSign());
                if (responseModelK0 != null && responseModelK0.getData() != null && responseModelK0.getData().size() > 0) {
                    List<CommonAdBean> data = responseModelK0.getData();
                    this.updateFeatureList = data;
                    for (CommonAdBean commonAdBean : data) {
                        if (TextUtils.equals(commonAdBean.getPosition_mark(), "HOME_UPGRADE_TIPS_PIC")) {
                            UpdateFeatureActivity_.intent(this).a(commonAdBean).startForResult(10005);
                            return;
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        getHomePopupAd();
    }

    @Receiver(actions = {p5.a.K})
    void getUpdateIntent(Intent intent) {
        VersionDto versionDto = (VersionDto) intent.getSerializableExtra("appUpdateBean");
        showVersionDownLoadHint(versionDto, versionDto.isQiangzhi());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getUserInfo() {
        if (this.isUpdateUserInfo) {
            return;
        }
        this.isUpdateUserInfo = true;
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                MessageUserInfoRequest.RequestParameters.b bVarNewBuilder = MessageUserInfoRequest.RequestParameters.newBuilder();
                bVarNewBuilder.setUid(this.accountBean.getUid());
                bVarNewBuilder.setToken(this.accountBean.getToken());
                bVarNewBuilder.setAppVersion(g8.b.a(this));
                HashMap map = new HashMap();
                map.put("uid", bVarNewBuilder.getUid() + "");
                map.put(com.czhj.sdk.common.Constants.TOKEN, bVarNewBuilder.getToken());
                map.put("appVersion", bVarNewBuilder.getAppVersion());
                bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
                ResponseResult responseResultA = this.rpcAccountClientV2.A(bVarNewBuilder.build());
                this.isUpdateUserInfo = false;
                if (responseResultA != null) {
                    if (responseResultA.getError() == 200) {
                        UserInfo data = responseResultA.getData();
                        if (data != null && data.getUid() != 0) {
                            this.accountBean = data;
                            AccountUtil_.getInstance_(this).saveAccountData(data, this);
                        }
                        com.join.mgps.Util.j0.a().c(new com.join.mgps.event.b(2));
                    } else if (responseResultA.getError() == 701) {
                        tokenFailure();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.isUpdateUserInfo = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getVideoAdCfg(boolean needPreLoad) {
        try {
            if (!com.join.android.app.common.utils.m.j(this.context)) {
                showToast(this.context.getResources().getString(R.string.net_connect_failed));
                return;
            }
            UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
            if (accountData == null) {
                accountData = UserInfo.getDefaultInstance();
            }
            RequestModel requestModel = new RequestModel();
            VideoAdCfgRequestArgs videoAdCfgRequestArgs = new VideoAdCfgRequestArgs();
            videoAdCfgRequestArgs.setUid(accountData.getUid());
            videoAdCfgRequestArgs.setToken(accountData.getToken());
            requestModel.setArgs(videoAdCfgRequestArgs);
            requestModel.setDefault(this.context);
            ResponseModel<VideoAdCfgBean> responseModelS = com.join.mgps.rpc.impl.i.P0().s(requestModel.makeSign());
            if (responseModelS != null && responseModelS.getCode() == 200) {
                VideoAdCfgBean data = responseModelS.getData();
                this.prefDef.arcadeGameAdCfg().g(BaseBean.toJsonStringOrEmpty(data.getArcade_game_ad_cfg()));
                this.prefDef.singleGameAdCfg().g(BaseBean.toJsonStringOrEmpty(data.getSingle_game_ad_cfg()));
                this.prefDef.pspGameAdCfg().g(BaseBean.toJsonStringOrEmpty(data.getPsp_game_ad_cfg()));
                this.prefDef.pspAdShowTimeSwitch().g(Integer.valueOf(data.getPsp_game_ad_cfg().getSwitch_state()));
                this.prefDef.pspAdShowTime().g(Integer.valueOf(data.getPsp_game_ad_cfg().getCount_down()));
                this.prefDef.downloadSpeedupCfg().g(BaseBean.toJsonStringOrEmpty(data.getDownload_speedup_cfg()));
                this.prefDef.mod_normal_ad_cfg().g(BaseBean.toJsonStringOrEmpty(data.getMod_normal_ad_cfg()));
                this.prefDef.mod_enhance_ad_cfg().g(BaseBean.toJsonStringOrEmpty(data.getMod_enhance_ad_cfg()));
                this.prefDef.simulator_path_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_path_cfg()));
                this.prefDef.simulator_fc_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_fc_cfg()));
                this.prefDef.simulator_gba_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_gba_cfg()));
                this.prefDef.simulator_psp_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_psp_cfg()));
                this.prefDef.simulator_jj_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_jj_cfg()));
                this.prefDef.simulator_gold_finger_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_gold_finger_cfg()));
                this.prefDef.simulator_exit_information_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_exit_information_cfg()));
                this.prefDef.simulator_exit_lottery_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_exit_lottery_cfg()));
                this.prefDef.simulator_exit_double_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_exit_double_cfg()));
                this.prefDef.simulator_exit_open_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSimulator_exit_open_cfg()));
                this.prefDef.ssp_cfg().g(BaseBean.toJsonStringOrEmpty(data.getSsp_cfg()));
                this.prefDef.video_init_cfg().g(BaseBean.toJsonStringOrEmpty(data.getVideo_init_cfg()));
                if (data.getDownload_speedup_cfg() == null || data.getDownload_speedup_cfg().getSwitch_state() != 1) {
                    this.prefDef.downloadSpeedUpCountAD().g(0);
                } else {
                    this.prefDef.downloadSpeedUpCountAD().g(Integer.valueOf(data.getDownload_speedup_cfg().getSpeedup_times()));
                }
            } else if (responseModelS != null) {
                showToast(responseModelS.getMessage());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showToast(this.context.getResources().getString(R.string.request_failure));
        } finally {
            if (needPreLoad) {
                initAdVideoConfig();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1000)
    public void getdownloadTask() {
        List<DownloadTask> listD = q5.f.M().d();
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
        getdownloadTaskUI(listD);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void getdownloadTaskUI(List<DownloadTask> downloadTasks) {
        this.downloadTasks = downloadTasks;
        if (downloadTasks == null || downloadTasks.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : downloadTasks) {
            if ("46".equals(downloadTask.getPlugin_num()) && downloadTask.getStatus() == 5) {
                if (!(com.join.android.app.common.utils.g.t0(this).e(this, downloadTask.getPackageName()) || com.join.mgps.va.overmind.i.q().K(downloadTask.getPackageName())) && downloadTask.getStatus() == 5) {
                    q5.f.M().n(downloadTask.getCrc_link_type_val());
                }
            }
            if (downloadTask.getCrc_link_type_val() != null) {
                this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void goToOnekeyLogin() {
        if (isForcedLogin(1)) {
            this.hasJumpToOneKeyLogin = true;
            LoginSplashActivity_.intent(this).isForcedLogin(true).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void gotoInstallAppDialogV2Activity(String gameId, UninstallOnlineGameBean bean) {
        InstallAppDialogV2Activity_.intent(this.context).b(gameId).c(bean.getText().get(0)).a(bean.getCover_image()).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleFailure(ArenaResponse response) {
        int i10;
        Activity activityX = com.join.android.app.common.utils.q.x();
        if (activityX == null || (activityX instanceof GameMainActivity3) || (activityX instanceof GameRoomListActivity) || (i10 = response.errorType) == 10) {
            return;
        }
        if (i10 == 16) {
            showToast("无法加入，你被禁止加入该房间");
            return;
        }
        if (i10 == 17) {
            showToast("该房间为比赛专用房间,非参赛选手无法加入");
            return;
        }
        if (i10 == 9) {
            showToast("房间人数已满你无法加入房间");
            return;
        }
        if (i10 == 7) {
            showToast("密码输入错误，请重试!");
            return;
        }
        if (i10 == 8) {
            showToast("房间已经被解散！");
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.w(8));
        } else if (i10 == 11) {
            showToast("铜板不足，无法创建房间!");
        } else if (i10 == 13) {
            showToast("铜板不足，无法加入房间");
        }
    }

    void handleLaunchQuark(MApplication instance) {
        CommonCfgBean common_cfg;
        PrefDef_ prefDef_P = instance.p();
        if (!prefDef_P.sdkInitReady().d().booleanValue() || prefDef_P.sdkInit().d().booleanValue() || this.hasLaunchQuark) {
            return;
        }
        WebDiskCfg webDiskCfgB = com.join.mgps.Util.d2.b();
        if (webDiskCfgB != null && (common_cfg = webDiskCfgB.getCommon_cfg()) != null) {
            if (common_cfg.getAct_type() == 3) {
                return;
            }
            if ((com.join.mgps.Util.e0.z(MApplication.f3182z.p().quark_first_launch_time().d().longValue() + ((long) (((common_cfg.getAct_start_day() * 24) * 3600) * 1000))) && MApplication.f3182z.p().quark_launch_service_times().d().intValue() <= 0) && common_cfg.getAct_type() == 1) {
                this.handler.postDelayed(new r0(instance), 1500L);
            }
        }
        this.hasLaunchQuark = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 5000)
    public void handleVideoAdWatchLogRecord() {
        List<VideoWatchLogTable> listD = t6.o0.n().d();
        if (listD == null || listD.size() <= 0) {
            return;
        }
        for (final VideoWatchLogTable videoWatchLogTable : listD) {
            this.handler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.t6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f58111b.lambda$handleVideoAdWatchLogRecord$9(videoWatchLogTable);
                }
            }, 300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideRedPoint() {
        this.red_point.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1300)
    public void hideSplash() {
        testStorageRW();
        this.splash.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void init() {
        if (!com.join.mgps.Util.j0.a().b(this)) {
            com.join.mgps.Util.j0.a().d(this);
        }
        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(getApplicationContext());
        tVarL.o();
        tVarL.L2(new w6.d());
        tVarL.K2(true);
        tVarL.J2(true);
        com.papa.sim.statistic.t.l(this).O2(0, AccountUtil_.getInstance_(this).getUid());
        try {
            CommonService_.P2(getApplicationContext()).a();
        } catch (Exception unused) {
        }
        this.prefDef.plugHasUpdate().g(Boolean.FALSE);
        CommonService.W = false;
        com.papa.sim.statistic.t.l(this).a2(AccountUtil_.getInstance_(this).getUid());
        jpushInit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void initAdVideoConfig() {
        initTTDownLoadSpeedAd("", false);
        initTTPspAd(false);
        initGDTDownLoadSpeedAd("", false);
        initGDTPspAd(false);
        initGrMDownLoadSpeedAd("", false);
        initGrMPspAd(false);
        initREDownLoadSpeedAd("", false);
        initREPspAd(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void initCheckSNKGame(List<String> listZip, int style) {
        List<String> list;
        if (!com.join.android.app.common.utils.m.j(this.context) || (list = this.snkGameList) == null || list.size() <= 0) {
            return;
        }
        String str = "";
        for (int i10 = 0; i10 < listZip.size(); i10++) {
            try {
                String strD = com.join.mgps.Util.i1.d(listZip.get(i10) + "wufan2019");
                for (int i11 = 0; i11 < this.snkGameList.size(); i11++) {
                    if (strD.equals(this.snkGameList.get(i11))) {
                        this.listTempZip.add(listZip.get(i10));
                        if (!str.equals("")) {
                            str = str + "," + strD;
                            break;
                        }
                        str = strD;
                        break;
                    }
                }
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("e:");
                sb2.append(e10.getMessage());
                return;
            }
        }
        if (str.equals("")) {
            showCheckData(null);
            return;
        }
        ResultMainBean<List<CollectionBeanSub>> resultMainBeanL0 = this.mRpcClient.l0(RequestBeanUtil.getInstance(this.context).getSNKGameCheckRequestBean(str));
        if (resultMainBeanL0 == null || resultMainBeanL0.getMessages().getData().size() <= 0) {
            return;
        }
        if (style == 1) {
            showCheckData(resultMainBeanL0.getMessages().getData());
        } else {
            sanLocalGameIv(1);
        }
    }

    public void initGDTAd(String appid, String adid, String gameId, int howTimes, int adCount, boolean needShow) {
        if (this.gdtAdVideo != null || !com.join.mgps.Util.t2.i(appid)) {
            com.join.mgps.ad.h hVar = this.gdtAdVideo;
            if (hVar != null) {
                hVar.d(false);
                return;
            }
            return;
        }
        l lVar = new l(this, appid, adid, needShow);
        this.gdtAdVideo = lVar;
        lVar.m(gameId);
        this.gdtAdVideo.n(howTimes);
        this.gdtAdVideo.o(adCount);
        this.gdtAdVideo.a();
    }

    public void initGoldGDTAd(String appid, String adid, String gameId, int howTimes, int adCount, Map<String, Object> extra, boolean needShow) {
        if (this.gdtGoldAdVideo != null || !com.join.mgps.Util.t2.i(appid)) {
            com.join.mgps.ad.h hVar = this.gdtGoldAdVideo;
            if (hVar != null) {
                hVar.d(false);
                return;
            }
            return;
        }
        p pVar = new p(this, appid, adid, needShow);
        this.gdtGoldAdVideo = pVar;
        pVar.m(gameId);
        this.gdtGoldAdVideo.n(howTimes);
        this.gdtGoldAdVideo.o(adCount);
        this.gdtGoldAdVideo.l(extra);
        this.gdtGoldAdVideo.a();
    }

    public void initGoldTTAd(String appid, String adid, String gameId, int howTimes, int adCount, Map<String, Object> extra, boolean needShow) {
        if (this.ttGoldAdVideo != null || !com.join.mgps.Util.t2.i(appid)) {
            com.join.mgps.ad.a0 a0Var = this.ttGoldAdVideo;
            if (a0Var != null) {
                a0Var.d(false);
                return;
            }
            return;
        }
        o oVar = new o(this, appid, adid, needShow);
        this.ttGoldAdVideo = oVar;
        oVar.m(gameId);
        this.ttGoldAdVideo.n(howTimes);
        this.ttGoldAdVideo.o(adCount);
        this.ttGoldAdVideo.l(extra);
        this.ttGoldAdVideo.a();
    }

    public void initGroMTTAd(String appid, String adid, String gameId, int howTimes, int adCount, boolean needShow) {
        if (this.groMAdVideo != null || !com.join.mgps.Util.t2.i(appid)) {
            this.groMAdVideo.d(false);
            return;
        }
        m mVar = new m(this.context, appid, adid, needShow);
        this.groMAdVideo = mVar;
        mVar.m(gameId);
        this.groMAdVideo.n(howTimes);
        this.groMAdVideo.o(adCount);
        this.groMAdVideo.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void initJPushJoinDevice() {
        UserInfo accountData;
        if (!com.join.android.app.common.utils.m.j(this.context) || (accountData = AccountUtil_.getInstance_(this.context).getAccountData()) == null || accountData.getUid() == 0 || AccountUtil_.getInstance_(this.context).isTourist()) {
            return;
        }
        if (this.rpcAccountClient == null) {
            this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        }
        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
        linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(this.context).getUid() + "");
        linkedMultiValueMap.add(com.czhj.sdk.common.Constants.TOKEN, AccountUtil_.getInstance_(this.context).getToken());
        this.rpcAccountClient.C(linkedMultiValueMap);
    }

    void initMainTabLotties() {
        LottieAnimationView lottieAnimationView = this.lottie_mg_emulator;
        if (lottieAnimationView == null) {
            return;
        }
        String[] strArr = MAIN_TAB_LOTTIE;
        lottieAnimationView.setAnimation(strArr[0]);
        this.lottie_mg_recom.setAnimation(strArr[1]);
        this.lottie_mg_chart.setAnimation(strArr[2]);
        this.lottie_mg_fight.setAnimation(strArr[3]);
        this.lottie_mg_category.setAnimation(strArr[4]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void initOM() {
        if (this.isInitOm) {
            return;
        }
        this.isInitOm = true;
        try {
            com.xinzhu.overmind.shared.k kVar = new com.xinzhu.overmind.shared.k();
            kVar.i(this);
            kVar.h();
            if (com.xinzhu.overmind.utils.e.g()) {
                Overmind.get().setXPEnable(false);
            }
            Overmind.get().getAppLifecycleCallback();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        Overmind.get().doCreate();
        if (Overmind.get().isVirtualProcess()) {
            Overmind.get().setCustomCallback(new com.xinzhu.overmind.shared.b());
        }
    }

    public void initREAd(String appid, String adid, String gameId, int howTimes, int adCount, boolean needShow) {
        if (this.reAdVideo != null || !com.join.mgps.Util.t2.i(appid)) {
            com.join.mgps.ad.s sVar = this.reAdVideo;
            if (sVar != null) {
                sVar.d(false);
                return;
            }
            return;
        }
        n nVar = new n(this, appid, adid, needShow);
        this.reAdVideo = nVar;
        nVar.m(gameId);
        this.reAdVideo.n(howTimes);
        this.reAdVideo.o(adCount);
        this.reAdVideo.a();
    }

    public void initTTAd(String appid, String adid, boolean needShow) {
        if (this.ttAdVideo == null && com.join.mgps.Util.t2.i(appid)) {
            k kVar = new k(this, appid, adid, needShow);
            this.ttAdVideo = kVar;
            kVar.a();
        } else {
            com.join.mgps.ad.a0 a0Var = this.ttAdVideo;
            if (a0Var != null) {
                a0Var.d(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void initViewS() {
        View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.mgmain_otherlayout, (ViewGroup) null);
        this.papa_user_round = (TextView) viewInflate.findViewById(R.id.papa_user_round);
        this.biground = (TextView) viewInflate.findViewById(R.id.biground);
        this.downloadLayout = (LinearLayout) viewInflate.findViewById(R.id.downloadLayout);
        this.scroll_text = (TextView) viewInflate.findViewById(R.id.scroll_text);
        this.scroll_text_layout = (ScrollTextViewLayout) viewInflate.findViewById(R.id.scroll_text_layout);
        this.hasNewFinishedGameImage = (ImageView) viewInflate.findViewById(R.id.hasNewFinishedGameImage);
        this.downloadLine = (ImageView) viewInflate.findViewById(R.id.downloadLine);
        this.imageLoading = (ImageView) viewInflate.findViewById(R.id.imageLoading);
        this.coinFloatad = (SimpleDraweeView) viewInflate.findViewById(R.id.coinFloatad);
        this.user_icon = (SimpleDraweeView) viewInflate.findViewById(R.id.papa_user_icon);
        View viewFindViewById = viewInflate.findViewById(R.id.statubar);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
        layoutParams.height = com.join.android.app.common.utils.q.v(this.context);
        viewFindViewById.setLayoutParams(layoutParams);
        this.layout_others.addView(viewInflate);
        this.downloadLayout.setOnClickListener(new d());
    }

    void invite(final FriendInviteBean gameInvite) {
        SmartPopupWindow smartPopupWindow = this.invitePop;
        if (smartPopupWindow != null && smartPopupWindow.isShowing()) {
            this.handler.removeCallbacks(this.f54288r);
            this.invitePop.dismiss();
        }
        com.join.android.app.common.utils.q.n(this);
        Activity activityX = com.join.android.app.common.utils.q.x();
        if (activityX == null) {
            return;
        }
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.pop_friend_invite, (ViewGroup) null);
        SmartPopupWindow smartPopupWindowB = SmartPopupWindow.f.a(activityX, viewInflate).e(false).d(R.style.animationFromRight).b();
        this.invitePop = smartPopupWindowB;
        smartPopupWindowB.setWidth(getResources().getDimensionPixelOffset(R.dimen.wdp465));
        this.invitePop.setHeight(getResources().getDimensionPixelOffset(R.dimen.wdp137));
        viewInflate.findViewById(R.id.accept).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.u6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f58158b.lambda$invite$13(view);
            }
        });
        viewInflate.findViewById(R.id.decline).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.v6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f58171b.lambda$invite$14(gameInvite, view);
            }
        });
        this.avatar = (SimpleDraweeView) viewInflate.findViewById(R.id.avatar);
        this.name = (TextView) viewInflate.findViewById(R.id.name);
        this.gameName = (TextView) viewInflate.findViewById(R.id.gameName);
        this.name.setText(gameInvite.getFromNickname());
        this.gameName.setText(gameInvite.getGameName());
        com.join.android.app.common.utils.l.y(this.avatar, gameInvite.getAvatar());
        this.invitePop.B(activityX.getWindow().getDecorView(), 3, 4);
        this.handler.postDelayed(this.f54288r, 15000L);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0068  */
    boolean isHomePopupAdCached(PopupAdBean adBean) {
        boolean z10;
        RecomDatabean recomDatabean;
        boolean z11 = false;
        if (adBean != null) {
            try {
                if (adBean.getBig_pic() == null || adBean.getBig_pic().size() <= 0) {
                    z10 = false;
                } else {
                    int size = adBean.getBig_pic().size();
                    int i10 = 0;
                    for (int i11 = 0; i11 < size; i11++) {
                        RecomDatabean recomDatabean2 = adBean.getBig_pic().get(i11);
                        if (recomDatabean2.getMain() != null && com.join.mgps.Util.t2.i(recomDatabean2.getMain().getPic_remote())) {
                            String pic_remote = recomDatabean2.getMain().getPic_remote();
                            if (com.join.mgps.Util.t0.n(pic_remote) || isHomePopupAdLocalCached(pic_remote)) {
                                i10++;
                            } else {
                                com.join.mgps.Util.t0.f(pic_remote, this, com.join.mgps.Util.z.b(this.context), null);
                            }
                        }
                    }
                    if (i10 == size) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
            } catch (Exception e10) {
                e = e10;
                e.printStackTrace();
                return z11;
            }
        } else {
            z10 = false;
        }
        if (adBean != null) {
            try {
                if (adBean.getMore() != null && adBean.getMore().size() > 0 && (recomDatabean = adBean.getMore().get(0)) != null && recomDatabean.getMain() != null && com.join.mgps.Util.t2.i(recomDatabean.getMain().getPic_remote())) {
                    String pic_remote2 = recomDatabean.getMain().getPic_remote();
                    if (com.join.mgps.Util.t0.n(pic_remote2) || isHomePopupAdLocalCached(pic_remote2)) {
                        z10 &= true;
                    } else {
                        com.join.mgps.Util.t0.f(pic_remote2, this, com.join.mgps.Util.z.b(this.context), null);
                    }
                }
            } catch (Exception e11) {
                e = e11;
                z11 = z10;
                e.printStackTrace();
                return z11;
            }
        }
        return z10;
    }

    boolean isHomePopupAdLocalCached(String url) {
        return new File(com.join.mgps.Util.z.b(this.context), com.join.mgps.Util.o0.t(url)).exists();
    }

    public boolean isRunService(Context context, String serviceName) {
        try {
            List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningServices(Integer.MAX_VALUE);
            if (runningServices != null && runningServices.size() > 0) {
                Iterator<ActivityManager.RunningServiceInfo> it2 = runningServices.iterator();
                while (it2.hasNext()) {
                    if (serviceName.equals(it2.next().service.getClassName())) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        } catch (SecurityException e10) {
            e10.printStackTrace();
        }
    }

    void jpushInit() {
        try {
            com.join.mgps.Util.c1.i(getApplicationContext());
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jLongValue = this.prefDef.lastSendAppTime().d().longValue();
            if (jCurrentTimeMillis - jLongValue > 86400000 || jLongValue == 0) {
                this.prefDef.needsendRigeister().d().booleanValue();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void mg_category_tabselectClicked() {
        setTabSelect(1);
        showDownNotice();
    }

    @Click
    void mg_chart_tabselectClicked() {
        this.notice_layout.setVisibility(8);
        setTabSelect(2);
    }

    @Click
    void mg_emulator_tabselect() {
        r8 r8Var;
        showDownNotice();
        if (this.positionNum == 3 && (r8Var = this.mgPapaMainFragment) != null && (r8Var instanceof r8) && this.isPapaMainFragmentHasNewData) {
            this.isPapaMainFragmentHasNewData = false;
            Ext ext = new Ext();
            ext.setIsAutoRefresh(2);
            com.papa.sim.statistic.t.l(this.context).I1(ext);
        }
        setTabSelect(3);
    }

    @Click
    void mg_recom_tabselectClicked() {
        setTabSelect(7);
        showDownNotice();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onAccountChangeEvent(com.join.mgps.event.b event) {
        if (event.b() == 1) {
            getUserInfo();
            return;
        }
        if (event.b() == 3) {
            this.mHandler.removeMessages(1);
            if (event.a() == 1) {
                this.mHandler.sendEmptyMessageDelayed(1, event.c());
                return;
            }
            int i10 = 0;
            while (i10 < event.a()) {
                i10++;
                this.mHandler.sendEmptyMessageDelayed(1, event.c() * ((long) i10));
            }
            return;
        }
        if (event.b() == 4) {
            com.join.mgps.event.x xVar = new com.join.mgps.event.x();
            HomeCloudActiveBean homeCloudActiveBean = new HomeCloudActiveBean(0L, 0L, null);
            homeCloudActiveBean.reset();
            xVar.f68232a = homeCloudActiveBean;
            com.join.mgps.Util.j0.a().c(xVar);
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            this.accountBean = accountData;
            if (accountData.getAccountType() != 2) {
                checkSign(true);
            }
            getArchivingCfg();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        List<CommonAdBean> list;
        int i10;
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 10000) {
            this.showInstallLayout = true;
            preLogin(true);
            checkRealName();
            if (com.join.mgps.Util.d2.v()) {
                getUpdateFeature();
            } else {
                getHomePopupAd();
            }
            checkSign(true);
            testStorageRW();
            this.splash.setVisibility(8);
            return;
        }
        if (requestCode == 10002) {
            return;
        }
        if (requestCode == 10003) {
            com.join.mgps.Util.g1.d("backupData", "提示弹窗2222");
            if (!this.showInstallNoticeOrappDialog || (i10 = this.backupNumber) <= 0) {
                this.hasRunFinishforFinishDialog = true;
            } else {
                showBackupFinishDialog(i10);
            }
            showDownNotice();
            return;
        }
        if (requestCode == 34343) {
            testStorageRW();
            preLogin(true);
            this.splash.setVisibility(8);
        } else {
            if (requestCode == 10004 || requestCode != 10005 || (list = this.updateFeatureList) == null) {
                return;
            }
            for (CommonAdBean commonAdBean : list) {
                if (TextUtils.equals(commonAdBean.getPosition_mark(), "HOME_UPGRADE_TIPS_AD")) {
                    UpdateFeatureDialog_.intent(this).a(commonAdBean).start();
                    return;
                }
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onAdVipEvent(com.join.mgps.event.c event) {
        DownloadTask downloadTaskA = event.a();
        this.mAdVipEvent = downloadTaskA;
        if (downloadTaskA == null) {
            return;
        }
        String crc_link_type_val = downloadTaskA.getCrc_link_type_val();
        String strD = this.prefDef.singleGameShowDialog().d();
        if (com.join.mgps.Util.t2.h(strD)) {
            HashMap map = new HashMap();
            map.put(crc_link_type_val, new SingleGameAdBean(1, System.currentTimeMillis()));
            this.allJsonStr = JsonMapper.getInstance().toJson(map);
            toStartGame();
            return;
        }
        new HashMap();
        Map map2 = (Map) JsonMapper.getInstance().fromJson(strD, JsonMapper.getInstance().getTypeFactory().constructParametricType(HashMap.class, String.class, SingleGameAdBean.class));
        if (!strD.contains(crc_link_type_val)) {
            map2.put(crc_link_type_val, new SingleGameAdBean(1, System.currentTimeMillis()));
            this.allJsonStr = JsonMapper.getInstance().toJson(map2);
            toStartGame();
            return;
        }
        SingleGameAdBean singleGameAdBean = (SingleGameAdBean) map2.get(crc_link_type_val);
        int counts = singleGameAdBean.getCounts();
        long time = singleGameAdBean.getTime();
        int i10 = MApplication.f3173i1;
        if (!com.join.mgps.Util.e0.z(time)) {
            map2.put(crc_link_type_val, new SingleGameAdBean(-1, System.currentTimeMillis()));
            this.allJsonStr = JsonMapper.getInstance().toJson(map2);
            showAdVipMainDialog(this.mAdVipEvent.getCrc_link_type_val());
            return;
        }
        if (counts == -1) {
            toStartGame();
            return;
        }
        int i11 = counts + 1;
        map2.put(crc_link_type_val, new SingleGameAdBean(i11, System.currentTimeMillis()));
        this.allJsonStr = JsonMapper.getInstance().toJson(map2);
        if (i11 != i10) {
            toStartGame();
            return;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.accountBean = accountData;
        if (accountData.getVipExpTime() * 1000 <= System.currentTimeMillis()) {
            showAdVipMainDialog(this.mAdVipEvent.getCrc_link_type_val());
        } else {
            toStartGame();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onAddShortcutEvent(com.join.mgps.event.d event) {
        if (event != null) {
            this.mPapaActivity.notifyShortcutAdded(event.a());
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onArchivingCfgEvent(com.join.mgps.event.f event) {
        if (ApiName.ArchivingCfg == event.a()) {
            getArchivingCfg();
            return;
        }
        if (ApiName.advertCfg == event.a()) {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            this.accountBean = accountData;
            if (accountData.getAccountType() != 2) {
                checkSign(false);
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onArenaResponse(ArenaResponse response) {
        if (response == null) {
            return;
        }
        handleFailure(response);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.papa.sim.statistic.t.l(this).M1(AccountUtil_.getInstance_(getApplicationContext()).getUid());
        if (new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
            return;
        }
        MobclickAgentKt.onEvent(this, "mainPageShow");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        full(getResources().getConfiguration().orientation == 2);
    }

    @Override // com.join.android.app.common.servcie.DownloadBaseActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        if (!isTaskRoot() && intent != null) {
            String action = intent.getAction();
            if (intent.hasCategory("android.intent.category.LAUNCHER") && "android.intent.action.MAIN".equals(action)) {
                finish();
                return;
            }
        }
        if (getIntent() != null) {
            if (com.join.mgps.Util.t2.i(intent.getStringExtra("exitGamePackage"))) {
                this.isBackHome = true;
            }
            if (this.isBackHome) {
                return;
            }
        }
        this.shortcutGameId = getIntent().getStringExtra("shortcutGameId");
        if (isTaskRoot() && isCreated && !com.join.mgps.Util.t2.h(this.shortcutGameId)) {
            handleShortCutGameIntent(this.shortcutGameId);
            return;
        }
        isCreated = true;
        this.prefDef.lastInstallApp().g("");
        MApplication.f3177q1 = false;
        getWindow().getDecorView().setBackground(null);
        this.prefDef.platform().g("wufun");
        this.hasNet = com.join.android.app.common.utils.m.j(this);
        PluginConfig.put(this, com.join.mgps.mod.utils.d.f71914p, "wufun");
        PluginConfig.put(this, com.join.mgps.mod.utils.d.f71915q, "wufunNormal");
        PluginConfig.put(this, com.join.mgps.mod.utils.d.f71916r, com.join.mgps.Util.a0.c(this) + "");
        handleVideoAdWatchLogRecord();
    }

    @Override // com.join.android.app.common.servcie.DownloadBaseActivity, com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.activityHasDes = true;
        com.papa.sim.statistic.t.l(getApplicationContext()).O2(1, AccountUtil_.getInstance_(getApplicationContext()).getUid());
        try {
            if (!this.isBackHome) {
                if (this.isMessageReceiverRegisted) {
                    unregisterReceiver(this.mMessageReceiver);
                    this.isMessageReceiverRegisted = false;
                }
                DownloadCompleteReceiver downloadCompleteReceiver = this.receiver;
                if (downloadCompleteReceiver != null) {
                    unregisterReceiver(downloadCompleteReceiver);
                }
                AdReceived adReceived = this.mAdReceived;
                if (adReceived != null) {
                    unregisterReceiver(adReceived);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        MApplication.f3181y = true;
        this.isDestroyed = true;
        com.join.mgps.Util.j0.a().e(this);
        if (!this.prefDef.firstShowUserPermiss().d().booleanValue()) {
            com.wufan.friend.chat.c.u().Z();
        }
        com.join.android.app.component.video.i.d();
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.mHandler = null;
        }
        ScreenActionReceiver screenActionReceiver = this.screenActionReceiver;
        if (screenActionReceiver != null) {
            screenActionReceiver.c(this);
        }
        super.onDestroy();
    }

    @Override // com.join.android.app.common.servcie.DownloadBaseActivity
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadRuntimeEvent(com.join.mgps.event.p event) {
        if (System.currentTimeMillis() - this.lastcheckDownService > 20000) {
            this.lastcheckDownService = System.currentTimeMillis();
            if (!com.php25.PDownload.d.g(this.context)) {
                UtilsMy.h4(getApplicationContext());
            }
        }
        super.onDownloadRuntimeEvent(event);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        if (downloadTaskEvent.c() == 8) {
            updateWaterProgress();
        } else {
            updateStartGameTable(downloadTaskEvent.a());
        }
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            updateUI(downloadTaskA, 1);
            return;
        }
        if (iC == 3) {
            updateUI(downloadTaskA, 2);
            return;
        }
        if (iC == 5) {
            sendHomeDownInstallListPoint();
        } else {
            if (iC == 6) {
                updateUI(downloadTaskA, 6);
                return;
            }
            if (iC == 7) {
                downloadTaskA.setStatus(7);
                updateUI(downloadTaskA, 3);
                sendHomeDownInstallListPoint();
                return;
            } else {
                if (iC == 8) {
                    updateUI(downloadTaskA, 4);
                    return;
                }
                if (iC != 48) {
                    switch (iC) {
                        case 10:
                            if (downloadTaskA != null) {
                                updateUI(downloadTaskA, 7);
                                break;
                            }
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
        }
        if (this.isFirstCommendVersion) {
            showDownNotice();
        }
        updateUI(downloadTaskA, 5);
    }

    @Override // com.BaseAppCompatActivity
    public void onFavoriteChanged(int pid, boolean isFavorite) {
        super.onFavoriteChanged(pid, isFavorite);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendEvent(com.wufan.friend.chat.protocol.Response response) {
        if (response == null) {
            return;
        }
        if (response.getServiceValue() == 1) {
            if (response.getPathValue() == 1) {
                if (response.getData() == null || response.getData().getLoginData() == null || !response.getData().getLoginData().getSucceed()) {
                    com.join.mgps.Util.h1.e("channel", response.getData().getLoginData().getMessage());
                    this.handler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.n6
                        @Override // java.lang.Runnable
                        public final void run() {
                            MGMainActivity.lambda$onFriendEvent$10();
                        }
                    }, 10000L);
                } else {
                    com.join.mgps.Util.h1.e("channel", "登录成功！");
                    com.wufan.friend.chat.c.u().T(true);
                    com.wufan.friend.chat.c.u().U(0);
                }
            } else if (response.getPathValue() == 5 && response.getData() != null && response.getData().getNotification() != null && response.getData().getNotification().getFriendChangeState() != null) {
                FriendChangeStateNotification friendChangeState = response.getData().getNotification().getFriendChangeState();
                try {
                    if ((friendChangeState.getFriend().getAccountId() + "").equals(AccountUtil_.getInstance_(this).getUid())) {
                        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.onOnlineState");
                        intent.putExtra(NoticeTopAnimActivityDialog_.STATE_EXTRA, friendChangeState.getStateValue());
                        sendBroadcast(intent);
                        com.wufan.friend.chat.c.u().W(friendChangeState.getStateValue());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        if (response.getNotificationTypeValue() == 4) {
            com.wufan.friend.chat.c.u().M();
        } else if (response.getNotificationTypeValue() == 1) {
            try {
                FriendInviteBean friendInviteBean = new FriendInviteBean();
                friendInviteBean.set(response.getData().getNotification().getGameInvite());
                UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
                if (accountData != null && friendInviteBean.getAccountId() == accountData.getUid()) {
                    com.wufan.friend.chat.c.u().R(friendInviteBean);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } else if (response.getNotificationTypeValue() == 10) {
            if (response.getData() != null && response.getData().getNotification() != null && response.getData().getNotification().getRejectBattleInviteNotification() != null) {
                showToast(response.getData().getNotification().getRejectBattleInviteNotification().getMessage());
            }
        } else if (response.getNotificationTypeValue() == 2) {
            try {
                FriendChangeStateNotification friendChangeState2 = response.getData().getNotification().getFriendChangeState();
                if ((friendChangeState2.getFriend().getAccountId() + "").equals(AccountUtil_.getInstance_(this).getUid())) {
                    Intent intent2 = new Intent("com.join.android.app.mgsim.wufun.broadcast.onOnlineState");
                    intent2.putExtra(NoticeTopAnimActivityDialog_.STATE_EXTRA, friendChangeState2.getStateValue());
                    sendBroadcast(intent2);
                    com.wufan.friend.chat.c.u().W(friendChangeState2.getStateValue());
                }
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
        if (response.getData() == null || response.getData().getChatMessageMuteData() == null || !response.getData().getChatMessageMuteData().getMuted()) {
            return;
        }
        toast(response.getData().getChatMessageMuteData().getMessage());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendInviteEvent(final FriendInviteBean bean) {
        if (bean == null) {
            return;
        }
        try {
            com.join.android.app.common.utils.q.n(this);
            final boolean zJ = com.join.android.app.common.utils.q.J(this);
            this.handler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.r6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f57955b.lambda$onFriendInviteEvent$11(zJ, bean);
                }
            }, 200L);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4 && event.getAction() == 0) {
            if (com.join.android.app.component.video.a.c0(this, "DiscoveryFragment")) {
                return true;
            }
            VideoStrategyPop videoStrategyPop = this.videoStrategyPop;
            if (videoStrategyPop != null && videoStrategyPop.isShowing()) {
                return true;
            }
            if (this.isOpenExit == 1) {
                if (System.currentTimeMillis() - this.exitTime > 2000) {
                    Toast.makeText(getApplicationContext(), "再按一次退出程序", 0).show();
                    this.exitTime = System.currentTimeMillis();
                } else {
                    MApplication.f3177q1 = true;
                    com.papa.sim.statistic.t.l(getApplicationContext()).O2(1, AccountUtil_.getInstance_(getApplicationContext()).getUid());
                    try {
                        if (this.isMessageReceiverRegisted) {
                            unregisterReceiver(this.mMessageReceiver);
                            this.isMessageReceiverRegisted = false;
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    finish();
                    sendBroadcast(new Intent(p5.a.f96233z));
                }
                return true;
            }
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // com.BaseAppCompatActivity
    protected void onNetworkChanged(int netMobile) {
        super.onNetworkChanged(netMobile);
        this.hasNet = com.join.android.app.common.utils.m.j(this);
        preLogin(false);
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        Bundle extras = intent.getExtras();
        if (extras != null) {
            int i10 = extras.getInt(this.mainPos);
            if (i10 != 0) {
                this.positionNum = i10;
            }
            String string = extras.getString("currTabTagId", "");
            this.currTabTagId = string;
            if (com.join.mgps.Util.t2.i(string)) {
                this.currTabNumber = extras.getInt("currTabNumber", -1);
            }
            this.currGameId = extras.getString("currGameId");
            this.classiFy = extras.getInt("classiFy");
            this.classifyPrimaryIndex = extras.getInt("classifyPrimaryIndex");
            this.intentDateBean = (IntentDateBean) extras.getSerializable("intentDateBean");
            String string2 = extras.getString("ext1");
            if (!TextUtils.isEmpty(string2) && "cloudGame".equals(string2)) {
                this.defaultTab = 1;
            }
        }
        try {
            IntentDateBean intentDateBean = (IntentDateBean) intent.getSerializableExtra("intentActivityBean");
            if (intentDateBean != null) {
                IntentUtil.getInstance().intentActivity(this, intentDateBean);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        setJPushJump();
        setTabSelect(this.positionNum);
        if (TextUtils.equals("uninstall", intent.getStringExtra("dynamicShortcutType"))) {
            UninstallWufunActivity_.intent(this).start();
            setIntent(new Intent());
        }
    }

    @Override // com.join.android.app.common.servcie.DownloadBaseActivity, com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        isForeground = false;
        if (!new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
            MobclickAgent.onPause(this);
        }
        super.onPause();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onRecivedIntentEvent(IntentClassfyEvent event) {
        this.currTabNumber = event.getType();
        setTabSelect(7);
    }

    @Override // com.join.android.app.common.servcie.DownloadBaseActivity, com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        resume();
        if (getIntent() == null || !TextUtils.equals("uninstall", getIntent().getStringExtra("dynamicShortcutType"))) {
            return;
        }
        UninstallWufunActivity_.intent(this).start();
        setIntent(new Intent());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.launcher = registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new u());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onToastEvent(com.join.mgps.event.c0 event) {
        if (event == null || TextUtils.isEmpty(event.a())) {
            return;
        }
        showToast(event.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1000)
    public void onresumData() {
        try {
            com.papa.sim.statistic.t.l(this).a2(AccountUtil_.getInstance_(this).getUid());
            com.constant.a.f();
            checkDownloadNumber();
            if (!new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
                MobclickAgent.onResume(this);
                MobclickAgentKt.onEvent(this, "ym_test156");
            }
            updateAndroidApp();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void preLoad(PopupAdBean adBean) {
        RecomDatabean recomDatabean;
        if (adBean != null) {
            try {
                if (adBean.getBig_pic() != null && adBean.getBig_pic().size() > 0) {
                    int size = adBean.getBig_pic().size();
                    for (int i10 = 0; i10 < size; i10++) {
                        RecomDatabean recomDatabean2 = adBean.getBig_pic().get(i10);
                        if (recomDatabean2.getMain() != null && com.join.mgps.Util.t2.i(recomDatabean2.getMain().getPic_remote())) {
                            String pic_remote = recomDatabean2.getMain().getPic_remote();
                            if (!isHomePopupAdLocalCached(pic_remote)) {
                                com.join.mgps.Util.t0.f(pic_remote, this, com.join.mgps.Util.z.b(this.context), null);
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (adBean == null || adBean.getMore() == null || adBean.getMore().size() <= 0 || (recomDatabean = adBean.getMore().get(0)) == null || recomDatabean.getMain() == null || !com.join.mgps.Util.t2.i(recomDatabean.getMain().getPic_remote())) {
            return;
        }
        String pic_remote2 = recomDatabean.getMain().getPic_remote();
        if (isHomePopupAdLocalCached(pic_remote2)) {
            return;
        }
        com.join.mgps.Util.t0.f(pic_remote2, this, com.join.mgps.Util.z.b(this.context), null);
    }

    void preLoadBootImage(BootPageData data) {
        if (data != null) {
            this.prefDef.insatllAppFirstData().g(JsonMapper.getInstance().toJson(data));
            BootPageItem game_setup_boot = data.getGame_setup_boot();
            BootPageItem performance_boot = data.getPerformance_boot();
            if (game_setup_boot != null) {
                for (String str : game_setup_boot.getPic()) {
                    if (!isHomePopupAdLocalCached(str)) {
                        com.join.mgps.Util.t0.f(str, this, com.join.mgps.Util.z.b(this.context), null);
                    }
                }
            }
            if (performance_boot != null) {
                for (String str2 : performance_boot.getPic()) {
                    if (!isHomePopupAdLocalCached(str2)) {
                        com.join.mgps.Util.t0.f(str2, this, com.join.mgps.Util.z.b(this.context), null);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void preLogin(boolean gotoLogin) {
        this.preloginQueenCount++;
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(this.preloginRunnable);
        } else {
            this.mHandler = new Handler(Looper.getMainLooper());
        }
        this.mHandler.post(this.preloginRunnable.u(gotoLogin));
        if (gotoLogin) {
            goToOnekeyLogin();
        }
    }

    public void raseVipToMgsim(int type, String gameId, String url) {
        if (com.join.mgps.Util.t2.h(url)) {
            url = com.join.mgps.rpc.h.f72349j + "/member/vip_view/welfare/third_other_ad";
        }
        ComponentName componentName = new ComponentName(this, "com.join.mgps.activity.ShareWebActivity_");
        Intent intent = new Intent();
        intent.setComponent(componentName);
        intent.setAction("android.intent.action.VIEW");
        intent.putExtra("PAPA_EMU_INTENT_EXTRA_ACTION_FROM", type + "");
        intent.putExtra("gameId", gameId + "");
        intent.putExtra("url", url);
        intent.setAction("com.join.mgps.papa.share_webview_raiseVip");
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void receiveDelete(DownloadTask downloadTask) {
        List<DownloadTask> list = this.downloadTasks;
        if (list == null) {
            return;
        }
        Iterator<DownloadTask> it2 = list.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.downloadTasksMap.remove(next.getCrc_link_type_val());
                it2.remove();
                List<DownloadTask> listT = q5.f.M().T(null);
                if (listT != null && listT.size() == 0) {
                    this.prefDef.isNewFinishedGame().g(Boolean.FALSE);
                    ImageView imageView = this.hasNewFinishedGameImage;
                    if (imageView != null) {
                        imageView.setVisibility(8);
                    }
                }
                checkDownloadNumber();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void receiveStart(DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
            try {
                if (!TextUtils.isEmpty(downloadTask.getCrc_link_type_val())) {
                    com.join.mgps.Util.j2.g(this, downloadTask.getCrc_link_type_val());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        UtilsMy.X4(this.downloadTasks);
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null) {
            return;
        }
        if (map.containsKey(downloadTask.getCrc_link_type_val())) {
            if (from == 1 || from == 7) {
                checkDownloadNumber();
                return;
            } else {
                if (downloadTask.getStatus() == 3 || downloadTask.getStatus() == 6) {
                    checkDownloadNumber();
                    return;
                }
                return;
            }
        }
        List<DownloadTask> list = this.downloadTasks;
        if (list != null) {
            list.add(downloadTask);
        }
        this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        String[] strArr = {"", "size", "", "size"};
        ScrollTextViewLayout scrollTextViewLayout = this.scroll_text_layout;
        if (scrollTextViewLayout != null) {
            scrollTextViewLayout.setTextArray(strArr);
            this.scroll_text_layout.setIsStop(false);
            this.scroll_text_layout.n();
        }
        checkDownloadNumber();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            if (this.downloadTasks == null) {
                this.downloadTasks = new ArrayList();
            }
            this.downloadTasks.add(downloadTask);
            this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.downloadTasksMap.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        checkDownloadNumber();
        this.prefDef.isNewFinishedGame().g(Boolean.TRUE);
        ImageView imageView = this.hasNewFinishedGameImage;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
    }

    @Receiver(actions = {p5.a.f96226v0})
    void receivedInitAdVideoConfig(Intent intent) {
        initAdVideoConfig();
    }

    @Receiver(actions = {"com.join.intent.showtoast"})
    void recivedShowToast(Intent intent) {
        showMessage(intent.getStringExtra("message"));
    }

    @Receiver(actions = {p5.a.E})
    void recveidDownLiveRes(Intent intent) {
        String stringExtra = intent.getStringExtra("downLoadUrl");
        com.join.mgps.Util.g1.d("liveResLog", "recveidDownLiveRes");
        if (this.downloadUrl.equals(stringExtra)) {
            this.hasNewDownload = true;
        }
    }

    @Receiver(actions = {p5.a.F})
    void recveidcoinfloat(Intent intent) {
        if (this.coinFloatad == null) {
            return;
        }
        RecomDatabean recomDatabean = null;
        if (intent != null) {
            try {
                recomDatabean = (RecomDatabean) intent.getSerializableExtra("coinFloatData");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (recomDatabean == null || recomDatabean.getMain().getAd_switch() != 1) {
            this.coinFloatad.setVisibility(8);
            return;
        }
        if (com.join.android.app.common.utils.i.h(this.prefDef.clickFloatViewTime().d().longValue())) {
            this.coinFloatad.setVisibility(8);
            return;
        }
        this.coinFloatad.setVisibility(8);
        if (!com.join.mgps.Util.t2.i(recomDatabean.getMain().getPic_remote())) {
            this.coinFloatad.setVisibility(8);
            return;
        }
        com.join.android.app.common.utils.l.i(this.coinFloatad, recomDatabean.getMain().getPic_remote(), com.facebook.drawee.drawable.s.c.f27284a);
        this.coinFloatad.setVisibility(0);
        this.coinFloatad.setOnClickListener(new h(recomDatabean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void refreshTabIcon() {
        ObjectAnimator objectAnimator;
        if (this.isPapaMainFragmentHasNewData) {
            LottieAnimationView lottieAnimationView = this.lottie_mg_emulator;
            if (lottieAnimationView != null) {
                lottieAnimationView.setVisibility(0);
            }
            this.mg_emulator_text.setText("刷新推荐");
            TextView textView = this.unreadMessageBadge;
            if (textView != null) {
                textView.setVisibility(0);
            }
            if (this.lottie_mg_emulator != null && ((objectAnimator = this.animation2) == null || !objectAnimator.isRunning())) {
                this.lottie_mg_emulator.post(new Runnable() { // from class: com.join.mgps.activity.x6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f58207b.lambda$refreshTabIcon$6();
                    }
                });
            }
            if (System.currentTimeMillis() - this.LastOpHomePageButtonTime > 1000) {
                Ext ext = new Ext();
                ext.setIsAutoRefresh(1);
                com.papa.sim.statistic.t.l(this.context).I1(ext);
                this.LastOpHomePageButtonTime = System.currentTimeMillis();
            }
        } else {
            ObjectAnimator objectAnimator2 = this.animation2;
            if (objectAnimator2 != null) {
                objectAnimator2.cancel();
                LottieAnimationView lottieAnimationView2 = this.lottie_mg_emulator;
                if (lottieAnimationView2 != null) {
                    lottieAnimationView2.animate().rotation(0.0f).setDuration(50L).start();
                }
            }
            LottieAnimationView lottieAnimationView3 = this.lottie_mg_emulator;
            if (lottieAnimationView3 != null) {
                lottieAnimationView3.setVisibility(0);
            }
            this.mg_emulator_text.setText("首页");
            TextView textView2 = this.unreadMessageBadge;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
        }
        applyAllMainTabLotties();
    }

    public void registerMessageReceiver() {
        this.mMessageReceiver = new MessageReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.setPriority(1000);
        intentFilter.addAction(MESSAGE_RECEIVED_ACTION);
        registerReceiver(this.mMessageReceiver, intentFilter);
        this.isMessageReceiverRegisted = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void reject(int fromAccountId) {
        try {
            if (com.ta.utdid2.android.utils.f.f(this)) {
                HashMap map = new HashMap();
                map.put("uid", AccountUtil_.getInstance_(this).getUid());
                map.put(com.czhj.sdk.common.Constants.TOKEN, AccountUtil_.getInstance_(this).getToken());
                map.put("friendId", Integer.valueOf(fromAccountId));
                this.friendClient.e(map);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void requestWriteUUID(String content) {
        ActivityResultLauncher<String[]> activityResultLauncher = this.launcher;
        if (activityResultLauncher == null) {
            return;
        }
        activityResultLauncher.launch(new String[]{com.kuaishou.weapon.p0.g.f74785i, com.kuaishou.weapon.p0.g.f74786j});
    }

    void resetSelfSupportPrmopt() {
        int iZ = com.join.android.app.common.utils.q.n(this).z();
        if (this.prefDef.versionCode().d().intValue() != iZ) {
            this.prefDef.noPromptDownload().g(Boolean.FALSE);
            this.prefDef.versionCode().g(Integer.valueOf(iZ));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void rewadCopper() {
        UserInfo accountData;
        List<RewardBean> data;
        RewardBean rewardBean;
        try {
            if (!com.join.android.app.common.utils.m.j(this) || (accountData = AccountUtil_.getInstance_(this).getAccountData()) == null) {
                return;
            }
            ResultMainBean<List<RewardBean>> resultMainBeanI = this.rpcClient.I(RequestBeanUtil.getInstance(this).vipMessage(accountData.getUid()));
            if (resultMainBeanI == null || resultMainBeanI.getFlag() != 1 || (data = resultMainBeanI.getMessages().getData()) == null || data.size() <= 0 || (rewardBean = data.get(0)) == null) {
                return;
            }
            toastData(rewardBean);
            this.papa_user_round.setVisibility(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void sanLocalGameIv(int style) {
        try {
            this.curActivty = MApplication.f3182z.getActivity();
            List<String> list = this.snkGameList;
            if (list != null && list.size() != 0) {
                if (style == 0) {
                    Activity activity = this.curActivty;
                    if (activity != null || (activity instanceof FragmentActivity)) {
                        com.join.android.app.common.dialog.f fVar = this.localGameOneDialog;
                        if (fVar != null) {
                            try {
                                fVar.dismiss();
                            } catch (Exception unused) {
                            }
                            this.localGameOneDialog = null;
                        }
                        com.join.android.app.common.dialog.f fVar2 = new com.join.android.app.common.dialog.f(this.curActivty, style);
                        this.localGameOneDialog = fVar2;
                        fVar2.show();
                        this.localGameOneDialog.f(new i());
                        return;
                    }
                    return;
                }
                if (!com.join.mgps.Util.a2.d()) {
                    Activity activity2 = this.curActivty;
                    if (activity2 != null) {
                        new AlertDialog.Builder(activity2).setTitle("需要文件管理权限").setMessage("扫描下载目录需要开启「所有文件访问权限」。请在设置中为本应用开启后重试。").setPositiveButton("去设置", new DialogInterface.OnClickListener() { // from class: com.join.mgps.activity.k6
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i10) {
                                this.f57383b.lambda$sanLocalGameIv$8(dialogInterface, i10);
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    }
                    return;
                }
                List<String> listO = com.join.mgps.Util.o0.o(this.context, Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath());
                this.listZip = listO;
                if (listO == null || listO.size() <= 0) {
                    return;
                }
                initCheckSNKGame(this.listZip, style);
                return;
            }
            this.isFirstCheck = true;
            getSNKGameInfo(style);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void savePurchasedList(List<AppBean> beans) {
        t6.e0.o().a();
        if (beans != null) {
            Iterator<AppBean> it2 = beans.iterator();
            while (it2.hasNext()) {
                t6.e0.o().m(new PurchasedListTable(it2.next()));
            }
        }
        UtilsMy.g3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void saveUUID() {
        String string;
        File file = new File(Environment.getExternalStorageDirectory(), ".papakey");
        try {
            if (file.exists() && com.join.mgps.Util.o3.a()) {
                string = com.join.mgps.Util.o3.z(MApplication.f3182z, file.getAbsolutePath());
                try {
                    com.join.mgps.Util.o0.M(file, new File(com.join.mgps.Util.z.f50165d + "/Documents/Wufun", "papakey"));
                } catch (Exception e10) {
                    e = e10;
                    e.printStackTrace();
                }
            } else {
                string = "";
            }
        } catch (Exception e11) {
            e = e11;
            string = "";
        }
        try {
            if (TextUtils.isEmpty(string)) {
                string = com.join.mgps.Util.o1.f49829a.b(this, "papakey", "");
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
        String strH = com.join.mgps.pref.h.n(this.context).H();
        if (TextUtils.isEmpty(string)) {
            string = strH;
        } else if (!TextUtils.isEmpty(strH)) {
            return;
        }
        if (TextUtils.isEmpty(string)) {
            string = UUID.randomUUID().toString();
        }
        try {
            com.join.mgps.pref.h.n(this.context).w0(string);
            com.join.mgps.Util.o1.f49829a.e(this, "papakey", string, "");
        } catch (Exception e13) {
            e13.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Background(delay = BaseCloudFileManager.ACK_TIMEOUT)
    public void scanQuarkTask() {
        if (ContextCompat.checkSelfPermission(this, com.kuaishou.weapon.p0.g.f74785i) == 0) {
            ((CommonService_.n0) CommonService_.P2(this).extra("action", "retrieveQuarkScanEvent")).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 800)
    public void selectTableDelay() {
        setTabSelect(this.positionNum);
    }

    void sendHideCloudActive() {
        com.join.mgps.event.x xVar = new com.join.mgps.event.x();
        HomeCloudActiveBean homeCloudActiveBean = new HomeCloudActiveBean(0L, 0L, null);
        homeCloudActiveBean.reset();
        xVar.f68232a = homeCloudActiveBean;
        com.join.mgps.Util.j0.a().c(xVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void sendHomeDownInstallListPoint() {
        try {
            ArrayList<Long> arrayListC = q5.f.M().C();
            Ext ext = new Ext();
            ext.setGameList(JsonMapper.getInstance().toJson(arrayListC));
            com.papa.sim.statistic.t.l(this.context).R1(Event.homeDownInstallList, ext);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void sendRegister(String regeisterId) {
        sendRigester(regeisterId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sendRigester(String regeisterId) {
        List<CommentSendMessageResultBean> data;
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                RegisterRequestBean registerRequestBean = new RegisterRequestBean();
                registerRequestBean.setReg_id(regeisterId);
                registerRequestBean.setTimes(System.currentTimeMillis());
                ResultMainBean<List<CommentSendMessageResultBean>> resultMainBeanI1 = this.recommendClient.I1(RequestBeanUtil.getInstance(this).sendRegisterId(registerRequestBean));
                if (resultMainBeanI1 == null || resultMainBeanI1.getFlag() == 0 || (data = resultMainBeanI1.getMessages().getData()) == null || data.size() <= 0) {
                    return;
                }
                CommentSendMessageResultBean commentSendMessageResultBean = data.get(0);
                if (commentSendMessageResultBean.getVal() == null || commentSendMessageResultBean.getVal().equals("") || !commentSendMessageResultBean.getVal().equals("true")) {
                    return;
                }
                this.prefDef.needsendRigeister().g(Boolean.FALSE);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void sendVideoAdWatchLog(int sceneType, int sdkType) {
        VideoWatchLogTable videoWatchLogTable = new VideoWatchLogTable();
        videoWatchLogTable.setSceneType(sceneType);
        videoWatchLogTable.setSdkType(sdkType);
        videoWatchLogTable.setUserId(this.accountBean.getUid());
        videoAdWatchLog(videoWatchLogTable, false);
        handleVideoAdWatchLogRecord();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void serverConnectionException() {
        com.join.android.app.common.manager.a.h().j(this, this.netConnectException, 1);
    }

    public void setClassifyPrimaryIndex(int classifyPrimaryIndex) {
        this.classifyPrimaryIndex = classifyPrimaryIndex;
    }

    void setDefutDownloadPath() {
        com.join.mgps.Util.z.e(this.context);
        com.join.mgps.pref.h.n(this).V(com.join.mgps.Util.z.f50166e);
        testStorageRW();
    }

    public void setHomeTabImage(boolean showMonkey) {
        this.showMonkey = showMonkey;
        if (showMonkey) {
            this.home_tab_monkey_image.startAnimation(AnimationUtils.loadAnimation(this, R.anim.papamain_tabhome_movedown2));
            this.home_tab_huojian_image.startAnimation(AnimationUtils.loadAnimation(this, R.anim.papamain_tabhome_movedown));
            return;
        }
        this.home_tab_monkey_image.startAnimation(AnimationUtils.loadAnimation(this, R.anim.papamain_tabhome_move));
        this.home_tab_huojian_image.startAnimation(AnimationUtils.loadAnimation(this, R.anim.papamain_tabhome_move2));
    }

    void setJPushJump() {
        int i10;
        IntentDateBean intentDateBean = this.intentDateBean;
        if (intentDateBean == null) {
        }
        int i11 = 0;
        switch (intentDateBean.getLink_type()) {
            case 1:
                try {
                    IntentUtil.getInstance().intentActivity(this, this.intentDateBean);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
                break;
            case 2:
                if (this.intentDateBean.getTpl_type() != null && this.intentDateBean.getTpl_type().length() > 0) {
                    int i12 = Integer.parseInt(this.intentDateBean.getTpl_type());
                    if (i12 == 2) {
                        CollectionModuleTwoActivity_.intent(this).a(this.intentDateBean.getCrc_link_type_val()).start();
                        break;
                    } else if (i12 == 3) {
                        CollectionModuleThreeActivity_.intent(this).a(this.intentDateBean.getCrc_link_type_val()).start();
                        break;
                    } else if (i12 == 4) {
                        CollectionModuleFourActivity_.intent(this).a(this.intentDateBean.getCrc_link_type_val()).start();
                        break;
                    }
                }
                break;
            case 3:
                switch (Integer.parseInt(this.intentDateBean.getTpl_type())) {
                    case 1:
                        this.positionNum = 7;
                        break;
                    case 2:
                        try {
                            i10 = com.join.mgps.Util.t2.i(this.intentDateBean.getLink_type_val()) ? Integer.parseInt(this.intentDateBean.getLink_type_val()) : 1;
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                        if (i10 != 1) {
                            ClassifyGameActivity_.intent(this).a(0).b(UtilsMy.i2(i10)).c(UtilsMy.j2(i10)).start();
                        } else {
                            ClassifyAndRankActivity_.intent(this).b(1).start();
                        }
                        break;
                    case 3:
                        this.positionNum = 4;
                        break;
                    case 4:
                        this.positionNum = 3;
                        break;
                    case 6:
                        this.positionNum = 2;
                        break;
                    case 7:
                        GameDiscoverActivity_.intent(this).start();
                        break;
                    case 8:
                        MGInformationActivity_.intent(this).start();
                        break;
                }
                break;
            case 4:
                ShareWebActivity_.intent(this).b(this.intentDateBean).start();
                break;
            case 5:
                Intent intent = new Intent();
                intent.setFlags(276824064);
                intent.setAction("android.intent.action.VIEW");
                if (!this.intentDateBean.getLink_type_val().contains("://")) {
                    showToast("网络连接错误");
                } else {
                    intent.setData(Uri.parse(this.intentDateBean.getLink_type_val()));
                    startActivity(intent);
                }
                break;
            case 6:
                GameInformationActivityV2_.intent(this).c(this.intentDateBean.getLink_type_val()).b(this.intentDateBean.getExtBean()).start();
                break;
            case 7:
                try {
                    i11 = Integer.parseInt(this.intentDateBean.getLink_type_val());
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
                try {
                    ForumBean forumBean = new ForumBean();
                    forumBean.setFid(i11);
                    com.join.mgps.Util.r0.s0(this, forumBean, this.intentDateBean.getExtBean());
                } catch (Exception e13) {
                    e13.printStackTrace();
                    return;
                }
                break;
            case 8:
                try {
                    i11 = Integer.parseInt(this.intentDateBean.getLink_type_val());
                } catch (Exception e14) {
                    e14.printStackTrace();
                }
                ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                forumPostsBean.setPid(i11);
                com.join.mgps.Util.r0.w0(this, forumPostsBean, this.intentDateBean.getExtBean());
                break;
            case 9:
                String crc_link_type_val = this.intentDateBean.getCrc_link_type_val();
                DownloadTask downloadTaskG = q5.f.M().G(crc_link_type_val);
                if (downloadTaskG == null) {
                    Intent intent2 = new Intent();
                    intent2.setAction(p5.a.f96213p);
                    intent2.putExtra("gameId", crc_link_type_val);
                    sendBroadcast(intent2);
                    showToast("游戏未下载,请先下载游戏.");
                } else {
                    com.join.mgps.Util.g1.h(PapayPayDetialActivity_.INFO_EXTRA, System.currentTimeMillis() + "  checkupdate");
                    UtilsMy.o0(this, downloadTaskG);
                }
                break;
            case 10:
                String crc_link_type_val2 = this.intentDateBean.getCrc_link_type_val();
                DownloadTask downloadTaskG2 = q5.f.M().G(crc_link_type_val2);
                if (downloadTaskG2 == null) {
                    Intent intent3 = new Intent();
                    intent3.setAction(p5.a.f96213p);
                    intent3.putExtra("gameId", crc_link_type_val2);
                    sendBroadcast(intent3);
                    showToast("游戏未下载,请先下载游戏.");
                } else {
                    UtilsMy.o0(this, downloadTaskG2);
                }
                break;
            case 11:
                String crc_link_type_val3 = this.intentDateBean.getCrc_link_type_val();
                DownloadTask downloadTaskG3 = q5.f.M().G(crc_link_type_val3);
                if (downloadTaskG3 == null) {
                    Intent intent4 = new Intent();
                    intent4.setAction(p5.a.f96213p);
                    intent4.putExtra("gameId", crc_link_type_val3);
                    sendBroadcast(intent4);
                    showToast("游戏未下载,请先下载游戏.");
                } else {
                    UtilsMy.o0(this, downloadTaskG3);
                }
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setSNKGameData(SNKGameInfoBean resp) {
        this.snkGameList = resp.getScanning_md5();
        if (this.isFirstCheck) {
            this.isFirstCheck = false;
            if (this.context.getSharedPreferences("downloadplato", 0).getLong("plato", 0L) <= 0 || !com.join.mgps.Util.a2.d()) {
                return;
            }
            List<String> listO = com.join.mgps.Util.o0.o(this.context, Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath());
            if (listO == null || listO.size() <= 0) {
                return;
            }
            initCheckSNKGame(listO, 1);
        }
    }

    public void setSnkGameList(List<String> snkGameList) {
        this.snkGameList = snkGameList;
    }

    public void setTabSelect(int position) {
        IntentDateBean intentDateBean;
        this.positionNum = position;
        clearSelection();
        FragmentManager fragmentManager = this.fragmentManager;
        if (fragmentManager == null) {
            return;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        hideFragments(fragmentTransactionBeginTransaction);
        updateStartGameTable(null);
        LinearLayout linearLayout = this.discoverNormal;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        switch (position) {
            case 1:
            case 6:
                Fragment fragment = this.userCenterFragment;
                if (fragment == null) {
                    UsercenterFragmentNew_ usercenterFragmentNew_ = new UsercenterFragmentNew_();
                    this.userCenterFragment = usercenterFragmentNew_;
                    fragmentTransactionBeginTransaction.add(R.id.mg_mian_fragmentlayout, usercenterFragmentNew_);
                } else {
                    fragmentTransactionBeginTransaction.show(fragment);
                    this.userCenterFragment.refreshUserCenter();
                }
                this.mg_category_text.setTextColor(ContextCompat.getColor(this, R.color.main_tab_text_selected));
                hideRedPoint();
                break;
            case 2:
            case 5:
                Fragment fragment2 = this.mPapaActivity;
                if (fragment2 == null) {
                    this.mPapaActivity = new MyGamePapaFragmentV2_();
                    if (this.defaultTab != -1) {
                        Bundle bundle = new Bundle();
                        bundle.putInt("defaultTab", this.defaultTab);
                        this.mPapaActivity.setArguments(bundle);
                    }
                    fragmentTransactionBeginTransaction.add(R.id.mg_mian_fragmentlayout, this.mPapaActivity);
                } else {
                    fragmentTransactionBeginTransaction.show(fragment2);
                    int i10 = this.defaultTab;
                    if (i10 != -1) {
                        this.mPapaActivity.k0(i10);
                    }
                }
                com.papa.sim.statistic.t.l(this.context).R1(Event.enterMyGameTab, new Ext());
                this.mg_chart_text.setTextColor(ContextCompat.getColor(this, R.color.main_tab_text_selected));
                this.mPapaActivity.refreshNotOpenState();
                this.defaultTab = -1;
                break;
            case 3:
                this.home_tab_monkey_layout.setVisibility(8);
                Fragment fragment3 = this.mgPapaMainFragment;
                if (fragment3 == null) {
                    this.mgPapaMainFragment = new r8();
                    FirstIntentData firstIntentDataA = com.join.mgps.Util.p1.a(this);
                    if (firstIntentDataA != null && (intentDateBean = firstIntentDataA.getIntentDateBean()) != null && intentDateBean.getLink_type() == 1) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("gameId", intentDateBean.getCrc_link_type_val());
                        this.mgPapaMainFragment.setArguments(bundle2);
                    }
                    fragmentTransactionBeginTransaction.add(R.id.mg_mian_fragmentlayout, this.mgPapaMainFragment);
                } else {
                    fragmentTransactionBeginTransaction.show(fragment3);
                }
                if (com.join.mgps.Util.t2.h(this.shortcutGameId)) {
                    com.papa.sim.statistic.t.l(this).v(ExtFrom.home.name(), AccountUtil_.getInstance_(this).getUid());
                }
                refreshTabIcon();
                this.mg_emulator_text.setTextColor(ContextCompat.getColor(this, R.color.main_tab_text_selected));
                break;
            case 4:
                com.papa.sim.statistic.t.l(this).q2(AccountUtil_.getInstance_(this).getUid(), "findTab");
                Fragment fragment4 = this.fightFragment;
                if (fragment4 == null) {
                    com.join.mgps.fragment.t0 t0Var = new com.join.mgps.fragment.t0();
                    this.fightFragment = t0Var;
                    fragmentTransactionBeginTransaction.add(R.id.mg_mian_fragmentlayout, t0Var);
                    this.discoverNormal.setVisibility(0);
                } else {
                    fragmentTransactionBeginTransaction.show(fragment4);
                }
                this.fightText.setTextColor(ContextCompat.getColor(this, R.color.main_tab_text_selected));
                TextView textView = this.endGameBadge;
                if (textView != null) {
                    textView.setVisibility(8);
                    this.prefDef.hasShowEndGameBadge().g(Boolean.TRUE);
                }
                break;
            case 7:
                Bundle bundle3 = new Bundle();
                bundle3.putInt("currTabNumber", this.currTabNumber);
                if (com.join.mgps.Util.t2.i(this.currTabTagId)) {
                    bundle3.putString("currTabTagId", this.currTabTagId);
                }
                bundle3.putString("currGameId", this.currGameId);
                com.papa.sim.statistic.t.l(this).m2(AccountUtil_.getInstance_(this).getUid());
                Fragment fragment5 = this.choiceFragment;
                if (fragment5 == null) {
                    FindGameMainFragment findGameMainFragment = new FindGameMainFragment();
                    this.choiceFragment = findGameMainFragment;
                    findGameMainFragment.setArguments(bundle3);
                    fragmentTransactionBeginTransaction.add(R.id.mg_mian_fragmentlayout, this.choiceFragment);
                } else {
                    fragmentTransactionBeginTransaction.show(fragment5);
                    if (this.currTabNumber != -1) {
                        this.choiceFragment.setSelectedTab(bundle3);
                    }
                }
                this.mg_recom_text.setTextColor(ContextCompat.getColor(this, R.color.main_tab_text_selected));
                TextView textView2 = this.miniGameBadge;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.prefDef.hasShowMiniGameBadge().g(Boolean.TRUE);
                }
                this.currTabNumber = -1;
                this.currTabTagId = "";
                this.currGameId = "";
                break;
        }
        try {
            this.positionNum = position;
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
            LinearLayout linearLayout2 = this.downloadLayout;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            TextView textView3 = this.biground;
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
            if (position != 3) {
                if (this.hasNewFinishedGameImage != null) {
                    if (this.prefDef.isNewFinishedGame().d().booleanValue()) {
                        this.hasNewFinishedGameImage.setVisibility(0);
                    } else {
                        this.hasNewFinishedGameImage.setVisibility(8);
                    }
                }
                ScrollTextViewLayout scrollTextViewLayout = this.scroll_text_layout;
                if (scrollTextViewLayout != null && scrollTextViewLayout.m()) {
                    this.scroll_text_layout.p();
                }
            }
            checkDownloadNumber();
            startPlayVideo();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        TextView textView4 = this.endGameBadge;
        if (textView4 != null) {
            textView4.setVisibility(this.prefDef.hasShowEndGameBadge().d().booleanValue() ? 8 : 0);
        }
        applyAllMainTabLotties();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void setwifiStadu() {
        String apSSID = WifiUtils.getInstance(getApplicationContext()).getApSSID();
        if (com.join.mgps.Util.t2.i(apSSID)) {
            WifiUtils.getInstance(this).createWiFiAP(WifiUtils.getInstance(getApplicationContext()).createAPInfo(apSSID, r6.c.f96777q), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showAdM() {
        try {
            if (this.showInstallLayout) {
                checkInstallApp();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void showAddFriend(final int ruid) {
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData == null || accountData.getUid() == ruid || accountData.getUid() == 0) {
            return;
        }
        if (this.mDialog == null) {
            Dialog dialog = new Dialog(this, R.style.newtrans_floating_dialog);
            this.mDialog = dialog;
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                this.mDialog.getWindow().setAttributes(attributes);
            }
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_friend_add, (ViewGroup) null);
            this.close = viewInflate.findViewById(R.id.close);
            this.button = viewInflate.findViewById(R.id.button);
            this.name1 = (TextView) viewInflate.findViewById(R.id.name);
            this.accountId = (TextView) viewInflate.findViewById(R.id.accountId);
            this.avatar1 = (SimpleDraweeView) viewInflate.findViewById(R.id.avatar);
            this.mDialog.setContentView(viewInflate);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp526);
            int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.wdp509);
            Window window = this.mDialog.getWindow();
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            if (dimensionPixelOffset == 0) {
                dimensionPixelOffset = -1;
            }
            attributes2.width = dimensionPixelOffset;
            if (dimensionPixelOffset2 == 0) {
                dimensionPixelOffset2 = -1;
            }
            attributes2.height = dimensionPixelOffset2;
            window.setGravity(17);
            this.close.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.l6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57401b.lambda$showAddFriend$16(view);
                }
            });
        }
        this.button.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.m6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57487b.lambda$showAddFriend$17(ruid, view);
            }
        });
        getFriendInfo(ruid);
        if (!this.mDialog.isShowing()) {
            this.mDialog.show();
        }
        com.papa.sim.statistic.t.l(this).R1(Event.showInviteCode, new Ext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showBackupFinishDialog(int number) {
        if (!this.activityHasDes && number > 0) {
            Intent intent = new Intent();
            intent.setAction(p5.a.f96231y);
            sendBroadcast(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showCheckData(List<CollectionBeanSub> checkGameList) {
        com.join.android.app.common.dialog.l lVar;
        if (checkGameList == null || checkGameList.size() == 0) {
            com.join.android.app.common.dialog.l lVar2 = this.localGameTwoDialog;
            if (lVar2 == null || !lVar2.isShowing()) {
                return;
            }
            this.localGameTwoDialog.d("未检测出游戏！");
            this.localGameTwoDialog.b();
            return;
        }
        String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < checkGameList.size(); i10++) {
            CollectionBeanSub collectionBeanSub = checkGameList.get(i10);
            DecimalFormat decimalFormat = new DecimalFormat("#0.00");
            for (int i11 = 0; i11 < this.listTempZip.size(); i11++) {
                String str = this.listTempZip.get(i11);
                File file = new File(path, str);
                String down_url_remote = collectionBeanSub.getDown_url_remote();
                String strSubstring = down_url_remote.substring(down_url_remote.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                String str2 = decimalFormat.format((file.length() / 1024.0f) / 1024.0f);
                if (file.exists() && str.equals(strSubstring)) {
                    if (!collectionBeanSub.getSize().equals(str2) && collectionBeanSub.getActual_size() != file.length()) {
                        break;
                    }
                    map.put(str, collectionBeanSub);
                    break;
                }
            }
        }
        if (map.size() == 0 && (lVar = this.localGameTwoDialog) != null) {
            lVar.d("未检测出游戏！");
            this.localGameTwoDialog.b();
            return;
        }
        com.join.android.app.common.dialog.j jVar = this.localGameThreeDialog;
        FragmentTransaction fragmentTransactionBeginTransaction = null;
        if (jVar != null) {
            try {
                jVar.dismissAllowingStateLoss();
            } catch (Exception unused) {
            }
            this.localGameThreeDialog = null;
        }
        if (map.size() == 0) {
            return;
        }
        this.localGameThreeDialog = com.join.android.app.common.dialog.j.g0(map);
        try {
            Activity activity = this.curActivty;
            if (activity == null || (activity instanceof MGMainActivity)) {
                fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
            } else if (activity instanceof FragmentActivity) {
                fragmentTransactionBeginTransaction = ((FragmentActivity) activity).getSupportFragmentManager().beginTransaction();
            }
            if (fragmentTransactionBeginTransaction == null) {
                return;
            }
            fragmentTransactionBeginTransaction.add(0, this.localGameThreeDialog);
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        } catch (Exception unused2) {
            Activity activity2 = this.curActivty;
            if (activity2 instanceof FragmentActivity) {
                FragmentTransaction fragmentTransactionBeginTransaction2 = ((FragmentActivity) activity2).getSupportFragmentManager().beginTransaction();
                fragmentTransactionBeginTransaction2.add(0, this.localGameThreeDialog);
                fragmentTransactionBeginTransaction2.commitAllowingStateLoss();
            }
        }
        if (!new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
            MobclickAgentKt.onEvent(this.context, "onComparePage");
        }
        com.join.android.app.common.dialog.l lVar3 = this.localGameTwoDialog;
        if (lVar3 != null) {
            try {
                lVar3.dismiss();
            } catch (Exception unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 800)
    public void showCloudSign(MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, boolean showSign) {
        int i10;
        if (adCfgInfo != null) {
            if (showSign) {
                if (adCfgInfo.getIsSigned()) {
                    i10 = 1;
                } else if (adCfgInfo.getIsShowNewGift()) {
                    i10 = 2;
                } else {
                    i10 = adCfgInfo.getIsFirstPurchaseMember() ? 3 : 0;
                }
                if (i10 > 0) {
                    openWebPage(i10, adCfgInfo);
                }
            }
            if (adCfgInfo.getFirstPlayMemberExpireTime() <= 0 && adCfgInfo.getShowNewGiftExpireTime() <= 0) {
                sendHideCloudActive();
                return;
            }
            com.join.mgps.event.x xVar = new com.join.mgps.event.x();
            HomeCloudActiveBean homeCloudActiveBean = new HomeCloudActiveBean(adCfgInfo.getFirstPlayMemberExpireTime(), adCfgInfo.getShowNewGiftExpireTime(), adCfgInfo);
            homeCloudActiveBean.reset();
            xVar.f68232a = homeCloudActiveBean;
            com.join.mgps.Util.j0.a().c(xVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1500)
    public void showDownNotice() {
    }

    /* JADX WARN: Code duplicated, block: B:15:0x007b  */
    void showDownloadVideoAd(String gameId) {
        PlayCfgBean playCfgBean;
        this.prefDef.lastShowTOUTIAOAd().g(gameId);
        DownloadSpeedupCfgBean downloadSpeedupCfgBean = (DownloadSpeedupCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.downloadSpeedupCfg().d(), DownloadSpeedupCfgBean.class);
        this.downloadSpeedupCfgBean = downloadSpeedupCfgBean;
        if (downloadSpeedupCfgBean != null) {
            if (downloadSpeedupCfgBean.getPlay_cfg() == null || this.downloadSpeedupCfgBean.getPlay_cfg().size() <= 0) {
                playCfgBean = null;
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator<PlayCfgBean> it2 = this.downloadSpeedupCfgBean.getPlay_cfg().iterator();
                while (it2.hasNext()) {
                    arrayList.add(Double.valueOf(it2.next().getProbability()));
                }
                int iB = com.join.mgps.ad.p.b(arrayList);
                if (iB < this.downloadSpeedupCfgBean.getPlay_cfg().size()) {
                    playCfgBean = this.downloadSpeedupCfgBean.getPlay_cfg().get(iB);
                } else {
                    playCfgBean = null;
                }
            }
            if (playCfgBean != null) {
                if (playCfgBean.getSdk_type() == 1) {
                    com.join.mgps.ad.a0 a0Var = this.ttDownLoadSpeedAd;
                    if (a0Var == null) {
                        initTTDownLoadSpeedAd(gameId, true);
                        return;
                    } else {
                        a0Var.q(this, gameId);
                        return;
                    }
                }
                if (playCfgBean.getSdk_type() == 2) {
                    com.join.mgps.ad.h hVar = this.gdtDownLoadSpeedAd;
                    if (hVar == null) {
                        initGDTDownLoadSpeedAd(gameId, true);
                        return;
                    } else {
                        hVar.q(this, gameId);
                        return;
                    }
                }
                if (playCfgBean.getSdk_type() == 4) {
                    return;
                }
                if (playCfgBean.getSdk_type() == 7) {
                    com.join.mgps.ad.l lVar = this.groDownLoadSpeedAd;
                    if (lVar == null) {
                        initGrMDownLoadSpeedAd(gameId, true);
                        return;
                    } else {
                        lVar.q(this, gameId);
                        return;
                    }
                }
                if (playCfgBean.getSdk_type() == 9) {
                    com.join.mgps.ad.s sVar = this.reDownLoadSpeedAd;
                    if (sVar == null) {
                        initREDownLoadSpeedAd(gameId, true);
                    } else {
                        sVar.q(this, gameId);
                    }
                }
            }
        }
    }

    public void showGoldFingerVideo(PlayCfgBean playCfgBean, String gameId, int howTimes, int adCount, int position, boolean close) {
        if (playCfgBean != null) {
            HashMap map = new HashMap();
            map.put(NoticeTopAnimActivityDialog_.STATE_EXTRA, Integer.valueOf(position));
            map.put("close", Boolean.valueOf(close));
            if (playCfgBean.getSdk_type() == 1) {
                com.join.mgps.ad.a0 a0Var = this.ttGoldAdVideo;
                if (a0Var == null) {
                    initGoldTTAd(playCfgBean.getSdk_key(), playCfgBean.getAd_id(), gameId, howTimes, adCount, map, true);
                    return;
                } else {
                    a0Var.s(this, gameId, howTimes, adCount, map);
                    return;
                }
            }
            if (playCfgBean.getSdk_type() == 2) {
                com.join.mgps.ad.h hVar = this.gdtGoldAdVideo;
                if (hVar == null) {
                    initGoldGDTAd(playCfgBean.getSdk_key(), playCfgBean.getAd_id(), gameId, howTimes, adCount, map, true);
                } else {
                    hVar.s(this, gameId, howTimes, adCount, map);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:28:0x00a0 A[PHI: r1
      0x00a0: PHI (r1v10 java.lang.String) = (r1v9 java.lang.String), (r1v13 java.lang.String) binds: [B:22:0x008e, B:27:0x009e] A[DONT_GENERATE, DONT_INLINE]] */
    @UiThread(delay = 500)
    public void showHomePopupAd(PopupAdBean adBean) {
        boolean z10;
        try {
            long jLongValue = this.prefDef.homePopupAdLastTime().d().longValue();
            int iIntValue = this.prefDef.homePopupAdCount().d().intValue();
            String strD = this.prefDef.homePopupAdLast().d();
            if (!com.join.android.app.common.utils.i.h(jLongValue)) {
                strD = "";
                iIntValue = 0;
            }
            if (adBean == null && com.join.mgps.Util.t2.i(strD)) {
                adBean = (PopupAdBean) JsonMapper.getInstance().fromJson(strD, PopupAdBean.class);
            }
            if (adBean != null && adBean.getAd_switch() != null && adBean.getAd_switch().equals("1")) {
                String jsonString = JsonMapper.toJsonString(adBean);
                if (jsonString.equals(strD)) {
                    z10 = iIntValue < adBean.getStart_up_counts();
                } else {
                    this.prefDef.homePopupAdLast().g(jsonString);
                    this.prefDef.homePopupAdCount().g(0);
                    clearOldCache(adBean);
                    z10 = true;
                    iIntValue = 0;
                }
                if (z10) {
                    jsonString = JsonMapper.toJsonString(adBean);
                    preLoad(adBean);
                    if (iIntValue != 0 && !isHomePopupAdCached(adBean)) {
                        z10 = false;
                    }
                } else {
                    z10 = false;
                }
                if (z10) {
                    this.prefDef.homePopupAdLastTime().g(Long.valueOf(System.currentTimeMillis()));
                    this.prefDef.homePopupAdCount().g(Integer.valueOf(iIntValue + 1));
                    this.showInstallLayout = false;
                    if (!this.activityHasDes && !isForcedLogin(2)) {
                        this.hasShowAd = true;
                        HomePopupAdActivity_.intent(this.context).a(jsonString).startForResult(10002);
                        return;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.hasShowAd) {
            return;
        }
        checkShowOldUserRecom(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInputRoomPwdDialog(ArenaRequest request) {
        com.join.mgps.customview.input.a aVar = new com.join.mgps.customview.input.a(this, "请输入房间密码", 4, false);
        aVar.g(new h0(aVar, request));
        aVar.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showInstallAppDialogActivity(int showType, List<DownloadTask> tasks) {
        if (this.hasDialog || this.showUpdate || tasks == null) {
            return;
        }
        com.join.mgps.Util.h0.h0(this).S(this.context, showType, tasks);
        this.hasDialog = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        ToastManager.show(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showOnlineCouponDialog(OnlineCouponConfigBean data, int localType) {
        com.join.mgps.Util.h0.h0(this.context).X(this.context, data, localType);
        com.papa.sim.statistic.t.l(this).T1(Event.homeSuccessUpRedBag, AccountUtil_.getInstance_(this).getAccountData().getUid());
    }

    void showPspVideoAd() {
        int iB;
        PspGameAdCfgBean pspGameAdCfgBean = (PspGameAdCfgBean) JsonMapper.getInstance().fromJson(this.prefDef.pspGameAdCfg().d(), PspGameAdCfgBean.class);
        this.pspGameAdCfgBean = pspGameAdCfgBean;
        if (pspGameAdCfgBean != null) {
            if (pspGameAdCfgBean.getPlay_cfg() == null || this.pspGameAdCfgBean.getPlay_cfg().size() <= 0) {
                iB = 0;
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator<PlayCfgBean> it2 = this.pspGameAdCfgBean.getPlay_cfg().iterator();
                while (it2.hasNext()) {
                    arrayList.add(Double.valueOf(it2.next().getProbability()));
                }
                iB = com.join.mgps.ad.p.b(arrayList);
            }
            PlayCfgBean playCfgBean = this.pspGameAdCfgBean.getPlay_cfg().get(iB);
            if (playCfgBean.getSdk_type() == 1) {
                com.join.mgps.ad.a0 a0Var = this.ttPspAd;
                if (a0Var == null) {
                    initTTPspAd(true);
                    return;
                } else {
                    a0Var.p(this);
                    return;
                }
            }
            if (playCfgBean.getSdk_type() == 2) {
                com.join.mgps.ad.h hVar = this.gdtPspAd;
                if (hVar == null) {
                    initGDTPspAd(true);
                    return;
                } else {
                    hVar.p(this);
                    return;
                }
            }
            if (playCfgBean.getSdk_type() == 4) {
                return;
            }
            if (playCfgBean.getSdk_type() == 7) {
                com.join.mgps.ad.l lVar = this.groPspAd;
                if (lVar == null) {
                    initGrMPspAd(true);
                    return;
                } else {
                    lVar.p(this);
                    return;
                }
            }
            if (playCfgBean.getSdk_type() == 9) {
                com.join.mgps.ad.s sVar = this.rePspAd;
                if (sVar == null) {
                    initREPspAd(true);
                } else {
                    sVar.p(this);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showRedPoint() {
        this.red_point.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showSharedGameDialog(final CollectionBeanSub datas) {
        try {
            com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.context, R.style.MyDialog);
            tVar.setContentView(R.layout.shared_game);
            tVar.setCanceledOnTouchOutside(true);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) tVar.findViewById(R.id.game_icon);
            TextView textView = (TextView) tVar.findViewById(R.id.game_name);
            TextView textView2 = (TextView) tVar.findViewById(R.id.game_info);
            Button button = (Button) tVar.findViewById(R.id.ok);
            if (!datas.getIco_remote().isEmpty()) {
                com.join.android.app.common.utils.l.d(simpleDraweeView, R.drawable.main_normal_icon, datas.getIco_remote());
            }
            if (!datas.getGame_name().isEmpty()) {
                textView.setText(datas.getGame_name());
            }
            if (!datas.getInfo().isEmpty()) {
                textView2.setText(datas.getInfo());
            }
            button.setOnClickListener(new c(datas, tVar));
            tVar.show();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String s10) {
        com.join.mgps.Util.a3.b(this.context).d(s10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @UiThread
    public void showVersionDownLoadHint(final VersionDto versionDto, boolean mandatory) {
        int iIntValue = this.prefDef.wifiDownNumber().d().intValue();
        if (com.join.android.app.common.utils.m.k(this.context) && !mandatory && (iIntValue == -1 || iIntValue > 0)) {
            this.prefDef.wifiDownNumber().g(Integer.valueOf(iIntValue - 1));
            ((UpdateService_.a) ((UpdateService_.a) ((UpdateService_.a) UpdateService_.p(this.context).extra("url", versionDto.getAndroidUrl())).extra("downNotInstall", true)).extra("papaUpdateinfo", versionDto)).a();
            return;
        }
        SharedPreferences.Editor editorEdit = getSharedPreferences("VersionXML", 0).edit();
        editorEdit.putBoolean("Mandatory", mandatory);
        editorEdit.putString("VersionDto", JsonMapper.getInstance().toJson(versionDto));
        editorEdit.commit();
        com.join.mgps.dialog.e eVar = this.appUpdateDialog;
        if (eVar == null) {
            this.appUpdateDialog = new com.join.mgps.dialog.e(this, R.style.HKDialogLoading, versionDto, mandatory);
        } else {
            eVar.d(versionDto, mandatory);
        }
        this.appUpdateDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.join.mgps.activity.s6
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f58096b.lambda$showVersionDownLoadHint$4(dialogInterface);
            }
        });
        this.appUpdateDialog.show();
        this.showUpdate = true;
    }

    @Receiver(actions = {p5.a.f96194f0})
    void showupdateDialog(Intent intent) {
        com.join.mgps.dialog.e eVar = new com.join.mgps.dialog.e(this, R.style.HKDialogLoading, (VersionDto) intent.getSerializableExtra("papaUpdateinfo"));
        this.appUpdateDialog = eVar;
        eVar.show();
        this.appUpdateDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.join.mgps.activity.o6
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f57811b.lambda$showupdateDialog$5(dialogInterface);
            }
        });
        this.showUpdate = true;
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
        this.isSign = true;
        MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest.b bVarNewBuilder = MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest.newBuilder();
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        bVarNewBuilder.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0");
        HashMap map = new HashMap();
        map.put("uid", bVarNewBuilder.getUid() + "");
        map.put(com.czhj.sdk.common.Constants.TOKEN, bVarNewBuilder.getToken());
        map.put("appVersion", "517_6.1.7.0");
        bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
        updateSignUI(this.rpcAccountClientV2.l(bVarNewBuilder.build()));
        this.isSign = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void startAlphaBreathAnimation(View wihteBack) {
        wihteBack.setLayerType(1, null);
        startAnimation(this.flipCardAnimation, wihteBack, new com.join.mgps.Util.x0(0.7f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 2000)
    public void startBackups(boolean hasPermiss) {
        Throwable th;
        boolean z10;
        boolean z11;
        int size;
        String str;
        File file;
        Iterator<Filepath> it2;
        try {
            try {
                if (this.prefDef.sdkInit().d().booleanValue()) {
                    this.hasBackupIng = false;
                    return;
                }
                if (this.hasBackupIng) {
                    this.hasBackupIng = false;
                    return;
                }
                this.hasBackupIng = true;
                ArrayList arrayList = new ArrayList();
                ArrayList<DownloadTask> arrayList2 = new ArrayList();
                String strG = com.join.mgps.pref.h.n(this).g();
                Iterator<Filepath> it3 = com.join.mgps.Util.f2.a(this).iterator();
                String pathHome = "";
                String pathHome2 = pathHome;
                String pathHome3 = pathHome2;
                String pathHome4 = pathHome3;
                while (it3.hasNext()) {
                    Filepath next = it3.next();
                    if (next.isIslocal()) {
                        pathHome2 = next.getPathHome();
                        it2 = it3;
                    } else {
                        pathHome = next.getPathHome();
                        pathHome3 = next.getPathHome();
                        pathHome4 = next.getPathHome();
                        it2 = it3;
                        if (pathHome.contains("/Android/data/")) {
                            pathHome = next.getPathRoot() + "/wufan91/";
                        }
                        if (pathHome4.contains("/wufan91/")) {
                            pathHome4 = next.getPathRoot() + "/mgpapa/";
                            if (!new File(pathHome4).exists()) {
                                pathHome4 = "";
                            }
                        }
                    }
                    it3 = it2;
                }
                String str2 = "";
                String[] strArr = {".downloadTask", ".downloadTask_chajian"};
                if (com.join.mgps.Util.t2.i(pathHome)) {
                    com.join.mgps.Util.o3.s(pathHome, Arrays.asList(strArr), arrayList);
                }
                if (com.join.mgps.Util.t2.i(pathHome2)) {
                    com.join.mgps.Util.o3.s(pathHome2, Arrays.asList(strArr), arrayList);
                }
                if (com.join.mgps.Util.t2.i(pathHome3)) {
                    com.join.mgps.Util.o3.s(pathHome3, Arrays.asList(strArr), arrayList);
                }
                if (com.join.mgps.Util.t2.i(pathHome4)) {
                    com.join.mgps.Util.o3.r(pathHome4, ".downloadTask", arrayList);
                }
                if (!pathHome.equals(strG) && !pathHome2.equals(strG)) {
                    com.join.mgps.Util.o3.s(strG, Arrays.asList(strArr), arrayList);
                }
                Iterator it4 = arrayList.iterator();
                while (it4.hasNext()) {
                    try {
                        DownloadTask downloadTask = (DownloadTask) JsonMapper.getInstance().fromJson(com.join.mgps.Util.o3.B((String) it4.next()), DownloadTask.class);
                        if (downloadTask != null) {
                            if (downloadTask.getGameZipPath().contains("/mgpapa/")) {
                                File file2 = new File(downloadTask.getGameZipPath());
                                if (file2.exists()) {
                                    downloadTask.setGameZipPath(file2.getAbsolutePath());
                                    downloadTask.setPath(file2.getAbsolutePath());
                                } else {
                                    File file3 = new File(downloadTask.getGameZipPath().replace("/mgpapa/", "/wufan91/"));
                                    if (!file2.exists() && file3.exists()) {
                                        downloadTask.setGameZipPath(file3.getAbsolutePath());
                                        downloadTask.setPath(file3.getAbsolutePath());
                                    }
                                }
                            }
                            if (downloadTask.getFileType() != null && downloadTask.getFileType().equals(Dtype.chajian.name()) && downloadTask.getDown_type() == 2 && !TextUtils.isEmpty(downloadTask.getGameZipPath())) {
                                if (new File(downloadTask.getGameZipPath()).exists()) {
                                    try {
                                        if (Build.VERSION.SDK_INT >= 30) {
                                            String gameZipPath = downloadTask.getGameZipPath();
                                            if (!gameZipPath.contains(getPackageName()) && gameZipPath.contains("wufan91/")) {
                                                String[] strArrSplit = gameZipPath.split("wufan91/");
                                                if (strArrSplit.length > 1) {
                                                    String str3 = com.join.mgps.pref.h.n(this.context).g() + strArrSplit[1];
                                                    com.join.mgps.Util.o3.c(gameZipPath, str3);
                                                    downloadTask.setGameZipPath(str3);
                                                    downloadTask.setPath(str3);
                                                }
                                            }
                                        }
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                }
                            }
                            arrayList2.add(downloadTask);
                        }
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                }
                List<DownloadTask> listU = q5.f.M().u();
                Iterator it5 = arrayList2.iterator();
                while (it5.hasNext()) {
                    DownloadTask downloadTask2 = (DownloadTask) it5.next();
                    Iterator<DownloadTask> it6 = listU.iterator();
                    while (it6.hasNext()) {
                        if (it6.next().getPackageName().equals(downloadTask2.getPackageName())) {
                            it5.remove();
                            break;
                        }
                    }
                }
                for (DownloadTask downloadTask3 : arrayList2) {
                    if (downloadTask3 != null) {
                        try {
                            if (downloadTask3.getDown_type() == 2) {
                                try {
                                    if (!TextUtils.isEmpty(downloadTask3.getDtype()) && downloadTask3.getDtype().equals(Dtype.chajian.name()) && ((downloadTask3.getStatus() == 5 || downloadTask3.getStatus() == 9) && !com.join.android.app.common.utils.o.r(this.context, downloadTask3, false, new String[0]))) {
                                        com.join.android.app.common.utils.o.G(this.context, t6.p.o().n(downloadTask3.getPlugin_num()));
                                    }
                                } catch (Exception e12) {
                                    e = e12;
                                    e.printStackTrace();
                                }
                            }
                        } catch (Exception e13) {
                            e = e13;
                        }
                    }
                    if (q5.f.M().G(downloadTask3.getCrc_link_type_val()) == null) {
                        downloadTask3.setOpen(true);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(downloadTask3.getCrc_link_type_val());
                        sb2.append("  ");
                        sb2.append(downloadTask3.getShowName());
                        q5.f.M().k(downloadTask3);
                        UtilsMy.i3(downloadTask3, 5);
                    }
                }
                try {
                    List<APKUtils.a> listP = com.join.android.app.common.utils.g.t0(this).p(this);
                    List<DownloadTask> listO = q5.f.M().o();
                    Iterator<APKUtils.a> it7 = listP.iterator();
                    while (it7.hasNext()) {
                        APKUtils.a next2 = it7.next();
                        Iterator<DownloadTask> it8 = listO.iterator();
                        while (it8.hasNext()) {
                            if (next2.c().equals(it8.next().getPackageName())) {
                                it7.remove();
                                break;
                            }
                        }
                    }
                    ArrayList arrayList3 = new ArrayList();
                    Iterator<APKUtils.a> it9 = listP.iterator();
                    while (it9.hasNext()) {
                        arrayList3.add(it9.next().c());
                    }
                    ResultMainBean<List<SearchDataBean>> resultMainBeanR0 = this.rpcGameClient.r0(RequestBeanUtil.getInstance(this).getAppDataBackRequest((String[]) arrayList3.toArray(new String[arrayList3.size()])));
                    if (resultMainBeanR0 == null || resultMainBeanR0.getFlag() != 1) {
                        size = 0;
                    } else {
                        List<SearchDataBean> data = resultMainBeanR0.getMessages().getData();
                        com.join.mgps.Util.g1.c(System.currentTimeMillis() + "  time");
                        com.join.mgps.Util.g1.c(System.currentTimeMillis() + "  time");
                        ArrayList arrayList4 = new ArrayList();
                        Iterator<SearchDataBean> it10 = data.iterator();
                        while (it10.hasNext()) {
                            DownloadTask downloadtaskDown = it10.next().getDownloadtaskDown();
                            if (!Dtype.MOD.name().equals(downloadtaskDown.getFileType()) || isModMainGame(downloadtaskDown)) {
                                downloadtaskDown.setFileType(Dtype.android.name());
                                downloadtaskDown.setRomType(downloadtaskDown.getPlugin_num());
                                if (Boolean.valueOf(com.join.android.app.common.utils.g.t0(this).e(this, downloadtaskDown.getPackageName())).booleanValue()) {
                                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this).n(this, downloadtaskDown.getPackageName());
                                    if (!com.join.mgps.Util.t2.i(downloadtaskDown.getVer()) || aVarN.d() >= Integer.parseInt(downloadtaskDown.getVer())) {
                                        str = str2;
                                        downloadtaskDown.setStatus(5);
                                    } else if (com.join.mgps.Util.t2.h(downloadtaskDown.getMod_info())) {
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append(aVarN.d());
                                        str = str2;
                                        sb3.append(str);
                                        downloadtaskDown.setVer(sb3.toString());
                                        downloadtaskDown.setVer_name(aVarN.e());
                                        downloadtaskDown.setStatus(9);
                                    } else {
                                        str = str2;
                                    }
                                    if (com.join.mgps.Util.t2.h(downloadtaskDown.getSingle_game_mod_info())) {
                                        UtilsMy.Q2(downloadtaskDown);
                                    }
                                } else {
                                    str = str2;
                                    file = TextUtils.isEmpty(downloadtaskDown.getGameZipPath()) ? null : new File(downloadtaskDown.getGameZipPath());
                                    if (file != null && file.exists()) {
                                        downloadtaskDown.setStatus(11);
                                    } else if (downloadtaskDown.getStatus() == 5) {
                                        q5.f.M().n(downloadtaskDown.getCrc_link_type_val());
                                    }
                                }
                                if (q5.f.M().G(downloadtaskDown.getCrc_link_type_val()) == null) {
                                    downloadtaskDown.setOpen(true);
                                    q5.f.M().k(downloadtaskDown);
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append(downloadtaskDown.getCrc_link_type_val());
                                    sb4.append("  ");
                                    sb4.append(downloadtaskDown.getShowName());
                                    UtilsMy.i3(downloadtaskDown, 5);
                                    arrayList4.add(downloadtaskDown);
                                }
                                str2 = str;
                            } else {
                                if (Boolean.valueOf(com.join.mgps.va.overmind.i.q().K(downloadtaskDown.getPackageName())).booleanValue()) {
                                    downloadtaskDown.setStatus(5);
                                } else {
                                    file = TextUtils.isEmpty(downloadtaskDown.getGameZipPath()) ? null : new File(downloadtaskDown.getGameZipPath());
                                    if (file != null && file.exists()) {
                                        downloadtaskDown.setStatus(11);
                                    } else if (downloadtaskDown.getStatus() == 5) {
                                        q5.f.M().n(downloadtaskDown.getCrc_link_type_val());
                                    }
                                }
                                if (q5.f.M().G(downloadtaskDown.getCrc_link_type_val()) == null) {
                                    downloadtaskDown.setOpen(true);
                                    q5.f.M().k(downloadtaskDown);
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append(downloadtaskDown.getCrc_link_type_val());
                                    sb5.append("  ");
                                    sb5.append(downloadtaskDown.getShowName());
                                    UtilsMy.i3(downloadtaskDown, 5);
                                    arrayList4.add(downloadtaskDown);
                                }
                                str = str2;
                            }
                            str2 = str;
                        }
                        size = arrayList4.size();
                    }
                } catch (Exception e14) {
                    e14.printStackTrace();
                }
                if (size != 0 || arrayList2.size() != 0) {
                    com.papa.sim.statistic.t.l(this).b1(AccountUtil_.getInstance_(this).getUid(), arrayList2.size(), size);
                    updateHistory();
                }
                this.backupNumber = arrayList2.size() + size;
                if (this.hasRunFinishforFinishDialog) {
                    showBackupFinishDialog(size + arrayList2.size());
                }
                if (hasPermiss && UtilsMy.n0(this.context)) {
                    this.prefDef.isFirstRunApkBackupLong().g(Long.valueOf(System.currentTimeMillis()));
                }
                com.join.mgps.Util.g1.d("backupData", "恢复完成");
                z11 = false;
            } catch (Exception e15) {
                try {
                    e15.printStackTrace();
                    z11 = false;
                } catch (Throwable th2) {
                    z10 = false;
                    th = th2;
                    this.hasBackupIng = z10;
                    throw th;
                }
            }
            this.hasBackupIng = z11;
        } catch (Throwable th3) {
            th = th3;
            z10 = false;
            this.hasBackupIng = z10;
            throw th;
        }
    }

    public void startDownloadActivity(String gameId, int requestCode) {
        Intent intent = new Intent(this, (Class<?>) NewArenaDownloadActivity_.class);
        intent.putExtra("gameId", gameId);
        intent.putExtra(NewArenaDownloadActivity_.P, this.hasPlug);
        intent.putExtra(NewArenaDownloadActivity_.Q, this.hasRom);
        intent.putExtra("from", "MGMainActivity_" + requestCode);
        startActivityForResult(intent, requestCode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @UiThread(delay = me.relex.photodraweeview.d.S1)
    public void startGameRoom(com.join.mgps.event.w event) {
        if (event == null || event.d() == null) {
            return;
        }
        int iH = event.h();
        String strF = event.f();
        GameRoom gameRoomD = event.d();
        int i10 = 2;
        if (event.i() != 1) {
            i10 = event.i() == 2 ? 3 : 1;
        }
        ((GameRoomActivity_.a0) GameRoomActivity_.intent(this).l(iH).h(strF).d(gameRoomD.getGameName()).i(gameRoomD).k(i10).flags(C.ENCODING_PCM_A_LAW)).start();
        Ext ext = new Ext();
        ext.setFrom("1");
        ext.setGameId(gameRoomD.getGameId() + "");
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        if (accountData != null) {
            ext.setUid(accountData.getUid());
        }
        ext.setPosition(i10 + "");
        com.papa.sim.statistic.t.l(this.context).R1(Event.JoinLobbyroom, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startIntentOldUserRecom(long range) {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this);
            UserRecomRequestArgs userRecomRequestArgs = new UserRecomRequestArgs();
            ArrayList arrayList = new ArrayList();
            for (DownloadTask downloadTask : q5.f.M().d()) {
                arrayList.add(downloadTask.getCrc_link_type_val());
                if (APKUtils.K(downloadTask)) {
                    arrayList.add(((ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class)).getMain_game_id());
                }
            }
            userRecomRequestArgs.setDownloadedGameIdList(arrayList);
            userRecomRequestArgs.setDuration(range);
            userRecomRequestArgs.setUid(AccountUtil_.getInstance_(this).getAccountData().getUid());
            requestModel.setArgs(userRecomRequestArgs);
            com.join.mgps.rpc.impl.i.P0().N0().U0(requestModel.makeSign()).enqueue(new t0(range));
        }
    }

    void startLineAnimation() {
        this.downloadLine.setImageResource(R.drawable.line_blue_bg);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this, R.anim.img_translate);
        this.animation = animationLoadAnimation;
        animationLoadAnimation.setFillAfter(true);
        this.imageLoading.setVisibility(0);
        this.imageLoading.startAnimation(this.animation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void startLoadRecommendwifi() {
        RecomeWifiDatabean data;
        List<CollectionBeanSub> game_list;
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                ResultMainBean<RecomeWifiDatabean> resultMainBeanQ = this.rpcClient.q(RequestBeanUtil.getInstance(this).getRecomeAppwifi(1, 9));
                if (resultMainBeanQ == null || resultMainBeanQ.getFlag() != 1 || (game_list = (data = resultMainBeanQ.getMessages().getData()).getGame_list()) == null || game_list.size() <= 0) {
                    return;
                }
                Message message = new Message();
                message.what = 2;
                message.obj = data;
                this.handler.sendMessage(message);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void startPlayVideo() {
        com.join.mgps.fragment.t0 t0Var;
        if (this.positionNum != 4 || (t0Var = this.fightFragment) == null) {
            return;
        }
        t0Var.autoPlay();
    }

    void startShowRecommendwifi(final RecomeWifiDatabean lists) {
        if (this.isDestroyed) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) RecomWifiActivity_.class);
        intent.putExtra("data", lists);
        startActivity(intent);
    }

    void stopLineAnimation() {
        ImageView imageView = this.imageLoading;
        if (imageView == null) {
            return;
        }
        imageView.clearAnimation();
        this.imageLoading.setVisibility(8);
        int i10 = this.positionNum;
        if (i10 == 3 || i10 == 7 || i10 == 1) {
            this.downloadLine.setImageResource(R.drawable.line_grey_bg);
        } else if (i10 == 2 || i10 == 5) {
            this.downloadLine.setImageResource(R.drawable.line_grey_bg);
        } else {
            this.downloadLine.setImageResource(R.drawable.line_white_bg);
        }
    }

    void toast(final String msg) {
        this.handler.post(new Runnable() { // from class: com.join.mgps.activity.q6
            @Override // java.lang.Runnable
            public final void run() {
                this.f57909b.lambda$toast$15(msg);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toastData(RewardBean rewardBean) {
        if (rewardBean != null) {
            rewardBean.getOn_off();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void tokenFailure() {
        AccountUtil_.getInstance_(this).accountLoginOut(this);
        touristLogin();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void touristLogin() {
        if (com.join.android.app.common.utils.m.j(this)) {
            if (isLogined(this) || this.touristLogin) {
                return;
            }
            this.touristLogin = true;
            this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
            try {
                TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
                touristLoginRequestBean.setVersion(com.join.android.app.common.utils.q.n(this).A());
                touristLoginRequestBean.setDevice_id("");
                touristLoginRequestBean.setMac("");
                touristLoginRequestBean.setSource("2");
                touristLoginRequestBean.setTuid(this.prefDef.touriseTUID().d().longValue());
                touristLoginRequestBean.setSign(com.join.mgps.Util.k2.g(touristLoginRequestBean));
                AccountUtil_.getInstance_(this.context).setLocalUserIcon("");
                AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanI = this.rpcAccountClient.I(touristLoginRequestBean.getParams());
                if (accountResultMainBeanI != null && accountResultMainBeanI.getError() == 0 && accountResultMainBeanI.getData().is_success()) {
                    AccountUtil_.getInstance_(this).saveAccountData(g8.a.a(accountResultMainBeanI.getData().getUser_info()), this);
                    UtilsMy.a3(this);
                }
                com.join.mgps.Util.j0.a().c(new com.join.mgps.event.b(2));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.touristLogin = false;
    }

    @Receiver(actions = {p5.a.f96203k})
    void unreadnotify(@Receiver.Extra String gameId) {
        updateStartGameTable(q5.f.M().G(gameId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void updateAndroidApp() {
        APKUtils.a aVarN;
        try {
            for (DownloadTask downloadTask : q5.f.M().v()) {
                if (com.join.android.app.common.utils.g.t0(this).e(this, downloadTask.getPackageName()) && (aVarN = com.join.android.app.common.utils.g.t0(this).n(this, downloadTask.getPackageName())) != null && com.join.mgps.Util.t2.i(downloadTask.getVer()) && aVarN.d() == Integer.parseInt(downloadTask.getVer())) {
                    UtilsMy.i3(downloadTask, 5);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadingPoint(int number) {
        TextView textView = this.biground;
        if (textView == null) {
            return;
        }
        if (this.positionNum != 4) {
            this.downloadLayout.setVisibility(8);
            this.biground.setVisibility(8);
            return;
        }
        if (number < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) textView.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            this.biground.setLayoutParams(layoutParams);
            this.biground.setCompoundDrawables(null, null, null, null);
            this.biground.setBackgroundResource(R.drawable.mygame_big_round);
            this.biground.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) textView.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(0, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 4, 0);
            this.biground.setGravity(17);
            this.biground.setLayoutParams(layoutParams2);
            this.biground.setCompoundDrawables(null, null, null, null);
            this.biground.setBackgroundResource(R.drawable.message_round);
            this.biground.setPadding(1, 0, 2, 1);
        }
        this.biground.setText(number + "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateFindGameRetHot(TipsInfoBean tipsInfoBean) {
        if (this.miniGameBadge == null) {
            return;
        }
        if (tipsInfoBean == null || !tipsInfoBean.getDisplay_switch().booleanValue()) {
            this.miniGameBadge.setVisibility(8);
        } else {
            this.miniGameBadge.setText(tipsInfoBean.getTitle());
            this.miniGameBadge.setVisibility(this.prefDef.hasShowMiniGameBadge().d().booleanValue() ? 8 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateHidePoint() {
        stopLineAnimation();
        TextView textView = this.biground;
        if (textView == null) {
            return;
        }
        textView.setVisibility(8);
        this.biground.setText("");
        this.bigCenterRound.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateHistory() {
        try {
            if (Build.VERSION.SDK_INT < 26 || !MApplication.f3182z.f3194o) {
                CommonService_.P2(getApplicationContext()).a();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateLine(int downloadingNumber) {
        ScrollTextViewLayout scrollTextViewLayout = this.scroll_text_layout;
        if (scrollTextViewLayout == null) {
            return;
        }
        int i10 = this.positionNum;
        if (i10 == 3 || i10 == 7 || i10 == 1 || i10 == 2 || i10 == 5 || i10 == 1) {
            scrollTextViewLayout.setDrawable(getResources().getDrawable(R.drawable.papa_download_selector));
        } else {
            scrollTextViewLayout.setDrawable(getResources().getDrawable(R.drawable.papa_download_butn));
        }
        if (downloadingNumber == 0) {
            stopLineAnimation();
        } else {
            this.downloadLine.setImageResource(R.drawable.line_blue_bg);
            startLineAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateNoOpenPoint() {
        if (this.biground == null) {
            return;
        }
        stopLineAnimation();
        this.biground.setVisibility(8);
        this.biground.setText("");
        Drawable drawable = getResources().getDrawable(R.drawable.mygame_litle_round);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        this.bigCenterRound.setVisibility(0);
        this.bigCenterRound.setCompoundDrawables(drawable, null, null, null);
        this.bigCenterRound.setBackgroundResource(R.color.transparent);
    }

    void updateRlHomeTabGameVisibility() {
        if (this.rl_home_tab_game == null) {
            return;
        }
        SimpleDraweeView simpleDraweeView = this.downlodingGameIcon;
        int i10 = 0;
        boolean z10 = simpleDraweeView != null && simpleDraweeView.getVisibility() == 0;
        SimpleDraweeView simpleDraweeView2 = this.gifIcon;
        boolean z11 = simpleDraweeView2 != null && simpleDraweeView2.getVisibility() == 0;
        RelativeLayout relativeLayout = this.rl_home_tab_game;
        if (!z10 && !z11) {
            i10 = 8;
        }
        relativeLayout.setVisibility(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 400)
    public void updateSignUI(MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult result) {
        if (result == null) {
            ToastManager.show("签到失败，请重试");
            return;
        }
        if (result.getError() != 200) {
            ToastManager.show("签到失败，请重试");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("totalTime", result.getInto().getTotalTime());
            jSONObject.put("freeTime", result.getInto().getFreeTime());
            jSONObject.put("vipTime", result.getInto().getVipTime());
            String string = jSONObject.toString();
            Bundle bundle = new Bundle();
            if (com.join.mgps.Util.t2.i(string)) {
                bundle.putString("_sign_data", string);
            }
            FragmentPageActivity_.intent(this).b(1).c("云玩").a(bundle).start();
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void updateStartGameTable(DownloadTask downloadTaskN) {
        try {
            try {
                int i10 = this.positionNum;
                if (2 != i10 && 5 != i10) {
                    List<DownloadTask> listD = q5.f.M().d();
                    Iterator<DownloadTask> it2 = listD.iterator();
                    while (it2.hasNext()) {
                        if (it2.next().getCrc_link_type_val().length() <= 3) {
                            it2.remove();
                        }
                    }
                    if (listD.size() > 0) {
                        if (downloadTaskN == null || downloadTaskN.getStatus() != 2) {
                            long startTime = 0;
                            for (DownloadTask downloadTask : listD) {
                                if (downloadTask.getStatus() == 2 && startTime < downloadTask.getStartTime()) {
                                    startTime = downloadTask.getStartTime();
                                    this.downloadTaskx = downloadTask;
                                }
                            }
                        } else {
                            this.downloadTaskx = downloadTaskN;
                        }
                        if (this.downloadTaskx != null) {
                            DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(this.downloadTaskx.getCrc_link_type_val());
                            if (downloadTaskG == null || downloadTaskG.getStatus() != 2) {
                                this.downlodingGameIcon.setVisibility(8);
                                this.cdp_down_progress.setVisibility(8);
                                ImageView imageView = this.mg_chart_image;
                                if (imageView != null) {
                                    imageView.setImageDrawable(null);
                                    this.mg_chart_image.setVisibility(8);
                                }
                            } else {
                                if (com.join.mgps.Util.d2.g(this.downloadTaskx.getPackageName())) {
                                    this.cdp_down_progress.setVisibility(8);
                                    this.downlodingGameIcon.setVisibility(8);
                                } else {
                                    this.downlodingGameIcon.setVisibility(0);
                                    this.cdp_down_progress.setVisibility(0);
                                    com.join.android.app.common.utils.l.h(this.downlodingGameIcon, this.downloadTaskx.getPortraitURL());
                                }
                                this.cdp_down_progress.setProgress((int) downloadTaskG.getProgress());
                                int i11 = this.positionNum;
                                if (2 == i11 || 5 == i11) {
                                    this.cdp_down_progress.setVisibility(8);
                                    ImageView imageView2 = this.mg_chart_image;
                                    if (imageView2 != null) {
                                        imageView2.setImageDrawable(null);
                                        this.mg_chart_image.setVisibility(8);
                                    }
                                    this.downlodingGameIcon.setVisibility(8);
                                }
                                stopAlphBreathAnim();
                            }
                        }
                    }
                    List<DownloadTask> listA0 = q5.f.M().a0(this.context);
                    if (listA0 != null) {
                        Iterator<DownloadTask> it3 = listA0.iterator();
                        while (it3.hasNext()) {
                            DownloadTask next = it3.next();
                            if (next != null && (TextUtils.equals(com.join.mgps.Util.d2.f49546d, next.getCrc_link_type_val()) || TextUtils.equals(com.join.mgps.Util.d2.f49545c, next.getCrc_link_type_val()))) {
                                it3.remove();
                            }
                        }
                    }
                    if (listA0 == null || listA0.size() <= 0) {
                        DownloadTask downloadTask2 = null;
                        long openTime = 0;
                        for (DownloadTask downloadTask3 : listD) {
                            if (downloadTask3.getStatus() == 5 && (openTime == 0 || openTime < downloadTask3.getOpenTime())) {
                                openTime = downloadTask3.getOpenTime();
                                downloadTask2 = downloadTask3;
                            }
                        }
                        if (downloadTask2 != null) {
                            com.join.android.app.common.utils.l.h(this.gifIcon, downloadTask2.getPortraitURL());
                            this.gifIcon.setVisibility(0);
                            ImageView imageView3 = this.mg_chart_image;
                            if (imageView3 != null) {
                                imageView3.setImageDrawable(null);
                                this.mg_chart_image.setVisibility(8);
                            }
                        } else {
                            this.numberInTab.setVisibility(8);
                            ImageView imageView4 = this.mg_chart_image;
                            if (imageView4 != null) {
                                imageView4.setImageDrawable(null);
                                this.mg_chart_image.setVisibility(8);
                            }
                            this.gifIcon.setVisibility(8);
                            stopAlphBreathAnim();
                        }
                    } else {
                        this.numberInTab.setVisibility(0);
                        this.downlodingGameIcon.setVisibility(8);
                        this.cdp_down_progress.setVisibility(8);
                        stopAlphBreathAnim();
                        int i12 = this.positionNum;
                        if (2 == i12 || 5 == i12) {
                            this.gifIcon.setVisibility(8);
                            ImageView imageView5 = this.mg_chart_image;
                            if (imageView5 != null) {
                                imageView5.setImageDrawable(null);
                                this.mg_chart_image.setVisibility(8);
                            }
                        } else {
                            DownloadTask downloadTask4 = null;
                            long finishTime = 0;
                            for (DownloadTask downloadTask5 : listA0) {
                                if (!com.join.mgps.Util.d2.d(this, downloadTask5) && (finishTime == 0 || finishTime < downloadTask5.getFinishTime())) {
                                    finishTime = downloadTask5.getFinishTime();
                                    downloadTask4 = downloadTask5;
                                }
                            }
                            if (downloadTask4 != null) {
                                DownloadTask downloadTask6 = this.downloadTaskx;
                                if (downloadTask6 == null || !com.join.mgps.Util.d2.g(downloadTask6.getPackageName())) {
                                    com.join.android.app.common.utils.l.h(this.gifIcon, downloadTask4.getPortraitURL());
                                    this.gifIcon.setVisibility(0);
                                    startAlphaBreathAnimation(this.gifIcon);
                                    ImageView imageView6 = this.mg_chart_image;
                                    if (imageView6 != null) {
                                        imageView6.setImageDrawable(null);
                                        this.mg_chart_image.setVisibility(8);
                                    }
                                } else {
                                    ImageView imageView7 = this.mg_chart_image;
                                    if (imageView7 != null) {
                                        imageView7.setImageDrawable(null);
                                        this.mg_chart_image.setVisibility(8);
                                    }
                                }
                            }
                        }
                    }
                    updateRlHomeTabGameVisibility();
                    applyChartTabLottieOverlay("updateStartGameTable_finally");
                    return;
                }
                this.gifIcon.setVisibility(8);
                this.downlodingGameIcon.setVisibility(8);
                this.cdp_down_progress.setVisibility(8);
                this.numberInTab.setVisibility(8);
                ImageView imageView8 = this.mg_chart_image;
                if (imageView8 != null) {
                    imageView8.setImageDrawable(null);
                    this.mg_chart_image.setVisibility(8);
                }
                stopAlphBreathAnim();
                updateRlHomeTabGameVisibility();
                applyChartTabLottieOverlay("updateStartGameTable_finally");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } catch (Throwable th) {
            updateRlHomeTabGameVisibility();
            applyChartTabLottieOverlay("updateStartGameTable_finally");
            throw th;
        }
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
            if (from != 1 && from != 2) {
                if (from == 3) {
                    receiveDelete(downloadTask);
                    return;
                } else if (from == 5) {
                    receiveSuccess(downloadTask);
                    return;
                } else if (from != 7 && from != 8 && from != 9) {
                    return;
                }
            }
            receiveStart(downloadTask, from);
        }
    }

    void updateWaterProgress() {
        DownloadTask downloadTaskG;
        if (this.downloadTaskx == null || (downloadTaskG = com.join.android.app.common.servcie.j.f().g(this.downloadTaskx.getCrc_link_type_val())) == null) {
            return;
        }
        this.cdp_down_progress.setProgress((int) downloadTaskG.getProgress());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void videoAdWatchLog(VideoWatchLogTable videoWatchLogTable, boolean isOld) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            t6.o0.n().m(videoWatchLogTable);
            return;
        }
        RequestModel requestModel = new RequestModel();
        VideoAdWatchLogRequest videoAdWatchLogRequest = new VideoAdWatchLogRequest();
        videoAdWatchLogRequest.setUid(videoWatchLogTable.getUserId());
        videoAdWatchLogRequest.setSdkType(videoWatchLogTable.getSdkType());
        videoAdWatchLogRequest.setSceneType(videoWatchLogTable.getSceneType());
        requestModel.setArgs(videoAdWatchLogRequest);
        requestModel.setDefault(this.context);
        ResponseModel<Boolean> responseModelC0 = com.join.mgps.rpc.impl.i.P0().c0(requestModel.makeSign());
        if (responseModelC0 == null || responseModelC0.getCode() != 200) {
            return;
        }
        if (!responseModelC0.getData().booleanValue()) {
            t6.o0.n().m(videoWatchLogTable);
        } else if (isOld) {
            t6.o0.n().delete(videoWatchLogTable);
        } else {
            getVideoAdCfg(false);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadRuntimeEvent(com.join.mgps.event.a0 event) {
        com.join.android.app.common.dialog.f fVar = this.localGameOneDialog;
        if (fVar != null) {
            fVar.dismiss();
            this.localGameOneDialog = null;
        }
        com.join.android.app.common.dialog.l lVar = this.localGameTwoDialog;
        if (lVar != null) {
            lVar.dismiss();
            this.localGameTwoDialog = null;
        }
        com.join.android.app.common.dialog.j jVar = this.localGameThreeDialog;
        if (jVar != null) {
            try {
                jVar.dismissAllowingStateLoss();
            } catch (Exception unused) {
            }
            this.localGameThreeDialog = null;
        }
        sanLocalGameIv(event.a());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.y jPushNotifEvent) {
        getRedPointData();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendEvent(com.join.mgps.event.w event) {
        if (event == null) {
            return;
        }
        if (event.a() == 1) {
            com.wufan.friend.chat.c.u().L(AccountUtil_.getInstance_(this).getAccountData() != null ? AccountUtil_.getInstance_(this).getAccountData().getUid() : 0, AccountUtil_.getInstance_(this).getToken());
            return;
        }
        if (event.a() == 2) {
            showToast("已发送对战邀请！");
            return;
        }
        if (event.a() == 3) {
            startGameRoom(event);
            return;
        }
        if (event.a() == 5) {
            reject(event.b());
            return;
        }
        if (event.a() == 7) {
            String strC = event.c();
            if (!checkGameIsInstall(strC)) {
                startDownloadActivity(strC, 10004);
            } else {
                com.wufan.friend.chat.c.u().O();
            }
        }
    }
}
