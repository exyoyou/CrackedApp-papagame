package com.papa91.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.byazt.bv.BaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonSyntaxException;
import com.join.mgps.Util.o0;
import com.join.mgps.activity.GameMainActivity4;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.join.mgps.activity.SimulatorExitPlayActivity1_;
import com.join.mgps.dto.Constant;
import com.join.mgps.service.CommonService_;
import com.papa91.MessageVipCommonDialog;
import com.papa91.VideoStrategyPop;
import com.papa91.arc.CContext;
import com.papa91.arc.MarketUtil;
import com.papa91.arc.ad.AdUtils;
import com.papa91.arc.bean.AchievementBean;
import com.papa91.arc.bean.AchievementDoneBean;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.bean.EndGameAdBean;
import com.papa91.arc.bean.EndGameAllowBean;
import com.papa91.arc.bean.EndGameAwardArgs;
import com.papa91.arc.bean.PopwindowBean;
import com.papa91.arc.bean.ReqRealNameArgs;
import com.papa91.arc.bean.Request;
import com.papa91.arc.bean.RequestEndGameAllowArgs;
import com.papa91.arc.bean.RequestUpdateEndGameResultArgs;
import com.papa91.arc.bean.Response;
import com.papa91.arc.common.constants.BAction;
import com.papa91.arc.common.constants.IntentKeys;
import com.papa91.arc.dialog.PerfectWarmDialog;
import com.papa91.arc.dialog.RealNameDialog;
import com.papa91.arc.ext.ThreadManager;
import com.papa91.arc.http.utils.PrefUtil;
import com.papa91.arc.interfaces.DialogListenerWrap;
import com.papa91.arc.interfaces.RealNameCallBack;
import com.papa91.arc.util.FileUtils;
import com.papa91.arc.util.SignUtil;
import com.papa91.arc.util.StoreUtils;
import com.papa91.arc.util.StringUtils;
import com.papa91.arc.util.SystemInfoUtils;
import com.papa91.common.BaseAppConfig;
import com.papa91.common.DNSDataResult;
import com.papa91.common.MyJson;
import com.papa91.mix.R;
import com.papa91.paay.PaayReceiver;
import com.papa91.paay.PayCenter;
import com.papa91.paay.PayListener;
import com.papa91.paay.PayResponse;
import com.papa91.paay.PayResponseData;
import com.papa91.utils.DownLoadFile;
import com.papa91.utils.HttpFinishInterface;
import com.papa91.utils.HttpUtils;
import com.papa91.view.AchievementDoneFloatDialog;
import com.papa91.view.AutoSaveSlot;
import com.papa91.view.DragProgressView;
import com.papa91.view.EndGamePointGetDialog;
import com.papa91.view.FloatingDragger;
import com.papa91.view.RewardBananaDialog;
import com.papa91.view.RewardBananaResultDialog;
import com.papa91.view.RewardBananaTipDialog;
import com.papa91.view.smartpopupwindow.SmartPopupWindow;
import com.umeng.umcrash.UMCrash;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.ppsspp.ppsspp.CheatInfo;
import org.ppsspp.ppsspp.EditCheatInfo;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"NewApi"})
public class EmuBaseActivity extends Cocos2dxActivity {
    private static String BBK_GIONEE_MAIN_NAME = null;
    public static final int BBK_IQOO = 1;
    public static final int CLOSE_AD = 10;
    public static final int COMPLAIN_PLAYER = 12;
    private static final int EXIT_AD_KEY = 101;
    public static final int GIONEE_SOFTMANAGER = 2;
    public static final int LIKT_TYPE_TO_HTML5 = 4;
    private static final String LOG_TAG = "EmuBaseActivity";
    protected static final String ON_NETWORK_ERROR_MSG = "您的网络有点差，请重试";
    protected static final String ON_TOKER_LOST_MSG = "验证失败请重新登录";
    private static final String PAPA_EMU_INTENT_EXTRA_ACTION_FROM = "PAPA_EMU_INTENT_EXTRA_ACTION_FROM";
    public static final int PAY_CHEAT = 6;
    public static final int PAY_COIN = 4;
    public static final int PAY_JOIN = 7;
    public static final int PAY_SP = 3;
    public static final int RAISE_VIP = 11;
    public static final int SELECT_CHEAT = 5;
    public static final int SELECT_COIN = 2;
    public static final int SELECT_JOIN = 8;
    public static final int SELECT_SP = 1;
    public static final int SHOW_AD = 9;
    private static final int TO_PREFECTURE_KEY = 100;
    public static final int UPDATE_END_GAME_RESULT = 13;
    private static AchievementDoneFloatDialog achievementDoneFloatDialog = null;
    public static final String actionEmuintent = "com.wufun.intent.activity.view.action.emuintent";
    public static final String actionVip = "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success";
    public static final String actionVip_mha = "com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success";
    public static final String actionlogin = "com.join.android.app.mgsim.wufun.broadcast.action_login_success";
    public static final String actionlogin_mha = "com.join.android.app.mgsim.wufan.mha.broadcast.action_login_success";
    public static final String aidlStr = "com.papa.mgsim.wufun.aidl.service";
    public static String appPackName = "com.join.android.app.mgsim.wufun";
    public static final String appPackName_aso4 = "com.papa91.fc.aso4";
    public static final String appPackName_mgsim = "com.join.android.app.mgsim.wufun";
    public static final String appPackName_mha = "com.join.android.app.mgsim.wufun.mha";
    static AutoSaveSlot autoSaveSlot = null;
    private static EmuBaseActivity baseActivity = null;
    public static String challengeId = null;
    protected static List<CheatInfo> cheatInfos = null;
    private static ClipboardManager cmb = null;
    static Context context = null;
    public static String endId = null;
    static int init_first_box_time = 0;
    public static boolean isInChallenge = false;
    static String jusrid = null;
    static int left_device_play_reward_count = 0;
    static int left_play_reward_count = 0;
    static int level = 0;
    static Messenger mMessenger = null;
    static ServiceConnection mServiceConnection = null;
    static int max = 0;
    static int max_time_interval = 0;
    static int min_time_interval = 0;
    private static int payType = 0;
    public static final String prefix = "com.join.android.app.mgsim.wufun.broadcast";
    static int progress;
    static DragProgressView progressView;
    static RewardBananaDialog rewardBananaDialog;
    public static String romName;
    public static int scenario;
    public static String server_ip;
    public static String subTitle;
    static int time;
    static String unique_id;
    static String url;
    protected String AD_appId;
    protected TextView accept;
    private ActionReceiver actionReceiver;
    private boolean adClosed;
    protected FrameLayout adExitRootView;
    private RelativeLayout adParent;
    AdResultReceiver adResultReceiver;
    private RelativeLayout adRoot;
    PerfectWarmDialog alertTipDialog;
    public EndGameAllowBean allowBean;
    protected SimpleDraweeView avatar;
    private Button btn_startRecord;
    private String crc_link_type_val;
    public int endGameMills;
    public int endGameResult;
    protected TextView gameName;
    GameReceiver gameReceiver;
    IMReceive iMReceive;
    private IntentFilter intentFilter;
    protected SmartPopupWindow invitePop;
    protected boolean isSingleGame;
    private boolean isStarting;
    protected String jump_type;
    private String link_type;
    private String link_type_val;
    private boolean loading_real_name;
    MenuViewReceiver menuViewReceiver;
    public MessageVipCommonDialog messageDialog;
    BroadcastReceiver messageReceiver;
    protected TextView name;
    NetWorkReceiver netWorkReceiver;
    protected String onExitBannerId;
    protected String onLoadBannerId;
    protected String onMenuOpenBannerId;
    protected PaayReceiver paayReceiver;
    PerfectWarmDialog perfectWarmDialog;
    PlayTimeReceiver playTimeReceiver;
    protected int rankAutoUpload;
    RealNameDialog realNameDialog;
    RealNameResultReceiver realnameResultReceiver;
    PermissRecver recver;
    RewardBananaTipDialog rewardBananaTipDialog;
    public int sdkType;
    ShareResultReceiver shareResultReceiver;
    private String tpl_type;
    private VideoStrategyPop videoStrategyPop;
    public static int[] keyVaule = {0, 0, 0, 0};
    public static String screenMOde = "1";
    public static String enableAudio = "1";
    public static String vibriorMode = "1";
    public static String version = "1.5.0";
    public static int fid = 0;
    public static String romPath = null;
    public static String ugcPath = null;
    protected static int startMode = 0;
    protected static String server_port = "5369";
    public static String UserID = "0";
    public static String GameID = "0";
    public static String Version = "0";
    public static String RoomID = "0";
    public static String GroupID = "0";
    public static int endGameId = -1;
    public static int endGameTime = 0;
    public static String endGameLevelRules = "";
    public static String verCode = "0";
    public static long startTIme = 0;
    public static int spLock = 0;
    public static String token = "0";
    public static boolean tourist = true;
    private static String UPDATA_APP_TOAST = "请先将啪啪模拟器升级1.6版本";
    private static int systemSettingType = 0;
    public static String netState = "";
    public static String DEVICE_VERSION = "";
    public static String DEVICE_ID = "";
    public static String httpKeySign = "";
    public static String ExitAdImageFilePath = "";
    public static boolean hasAd = false;
    public static String className = null;
    public static String assetsPath = "/mnt/sdcard/test/assets/";
    public static String soPath = null;
    public static boolean hasRewardBanana = false;
    static boolean startRewardCount = false;
    static int getRewardConfig = 0;
    static int generatedTimes = 0;
    static String rewardConfig = "";
    protected static boolean gameIsPause = false;
    private static ArrayList<String> unUpdateAchieve = new ArrayList<>();
    protected static int screenMode = 0;
    static String snapshotPath = "";
    static boolean isNet = true;
    public static Dialog mDialog = null;
    static String dnsJson = "";

    /* JADX INFO: renamed from: in, reason: collision with root package name */
    static Intent f77968in = new Intent("com.join.android.app.mgsim.wufun.loginNim");
    static Intent in5 = new Intent("com.join.android.app.mgsim.wufun.loginOutNim");
    static Intent in1 = new Intent("com.join.android.app.mgsim.wufun.StartRecording");
    static Intent in2 = new Intent("com.join.android.app.mgsim.wufun.FinishRecording");
    static Intent in3 = new Intent("com.join.android.app.mgsim.wufun.SendTextMsg");
    static boolean useIndependentEmu = false;
    static int generate_times = -1;
    static int received_times = 0;
    static int reward_amount = 0;
    static int reward_times = 0;
    static int reward_left_count = 0;
    static int total_reward_amount = 0;
    static int exitMode = 0;
    public static String actionShowMenuSlot = "com.join.android.app.mgsim.wufun.broadcast.showMenuSlot";
    public static String actionShowMenuCheat = "com.join.android.app.mgsim.wufun.broadcast.showMenuCheat";
    public static String actionShowMenuPerformance = "com.join.android.app.mgsim.wufun.broadcast.showMenuPerformance";
    public static String actionShowMenuGate = "com.join.android.app.mgsim.wufun.broadcast.showMenuGate";
    public static String actionShowMenuOnekey = "com.join.android.app.mgsim.wufun.broadcast.showMenuOnekey";
    public static String actionShowMenu = "com.join.android.app.mgsim.wufun.broadcast.showMenu";
    public static String actionHideMenu = "com.join.android.app.mgsim.wufun.broadcast.HideMenu";
    public static String actionVipTip = "com.join.android.app.mgsim.wufun.broadcast.VipTip";
    public static String actionShowMenuView = "com.join.android.app.mgsim.wufun.broadcast.ShowMenuView";
    public static String actionShowShare = "com.join.android.app.mgsim.wufun.broadcast.ShowShare";
    public static String actionLoadRomFinish = "com.join.android.app.mgsim.wufun.broadcast.LoadRomFinish";
    public static String actionLoadStageCompleted = "com.join.android.app.mgsim.wufun.broadcast.LoadStageCompleted";
    public static String actionRecordEnd = "com.join.android.app.mgsim.wufun.broadcast.recordEnd";
    public static String actionShowInvite = "com.join.android.app.mgsim.wufun.broadcast.showInvitePlay";
    public static String actionOnOnlineState = "com.join.android.app.mgsim.wufun.broadcast.onOnlineState";
    public static String actionHandleMessage = "com.join.android.app.mgsim.wufun.broadcast.onHandleMessage";
    public static String actionHandleEmptyMessage = "com.join.android.app.mgsim.wufun.broadcast.onHandleEmptyMessage";
    public static String actionHandleExitGame = "com.join.android.app.mgsim.wufun.broadcast.onHandleExitGame";
    private boolean appCodeIsBigger160 = false;
    protected int m_SVIP = 0;
    protected int m_VIP = 0;
    public boolean onAdShwoIsCloseMine = false;
    String messData = "";
    private int APP_Version = 0;
    public boolean allowPeripheralJoin = true;
    int getRewardConfigCount = 3;
    private boolean adLoadError = false;
    protected int miniRankTime = 0;
    int rankPlayTime = 1;
    protected boolean hasCheckRealName = false;
    private boolean needCheckRealName = true;
    private int checkRealNameType = 11;
    public boolean isAfterFailedEndGame = false;
    protected Handler handler = new Handler() { // from class: com.papa91.activity.EmuBaseActivity.4
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                EmuBaseActivity unused = EmuBaseActivity.baseActivity;
                EmuBaseActivity.startAPPActivity();
            } else if (i10 == 1) {
                EmuBaseActivity.baseActivity.selectSpAndCheat(EmuBaseActivity.payType);
            } else if (i10 == 3) {
                EmuBaseActivity.baseActivity.getSystemPaste();
            } else if (i10 == 4) {
                EmuBaseActivity.baseActivity.startBBK_GOINEE_sysAPP();
            } else if (i10 == 100) {
                EmuBaseActivity.baseActivity.startPrefecture(message.arg1);
            } else if (i10 != 101) {
                switch (i10) {
                    case 11:
                        EmuBaseActivity.baseActivity.raseVipToMgsim(message.arg1);
                        break;
                    case 12:
                        EmuBaseActivity.baseActivity.complainMsg(message.arg1, message.arg2);
                        break;
                    case 13:
                        EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
                        int i11 = message.arg1;
                        emuBaseActivity.endGameResult = i11;
                        int i12 = message.arg2;
                        emuBaseActivity.endGameMills = i12;
                        if (i11 != 0) {
                            emuBaseActivity.updateEndGameResultV2(i11, i12, null);
                        }
                        break;
                }
            } else {
                EmuBaseActivity.baseActivity.startAdActivity(message.arg1, message.arg2);
            }
            super.handleMessage(message);
        }
    };
    private boolean isExit = false;
    PayListener payListener = new PayListener() { // from class: com.papa91.activity.EmuBaseActivity.13
        @Override // com.papa91.paay.PayListener
        public void onResult(PayResponse payResponse) {
            JsonObject jsonObject = new JsonObject();
            if (payResponse == null) {
                jsonObject.addProperty("isbuy", Boolean.FALSE);
                EmuBaseActivity.requestOnInquiry(jsonObject.toString());
                return;
            }
            if (payResponse.getError() == -1) {
                jsonObject.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                jsonObject.addProperty("data", EmuBaseActivity.ON_NETWORK_ERROR_MSG);
                jsonObject.addProperty("isbuy", Boolean.FALSE);
                jsonObject.addProperty("errorMsg", EmuBaseActivity.ON_NETWORK_ERROR_MSG);
                EmuBaseActivity.requestOnPay(jsonObject.toString());
                return;
            }
            PayResponseData data = payResponse.getData();
            boolean zEquals = data.getResult().equals("ok");
            JsonObject jsonObject2 = new JsonObject();
            String price_message = data.getPrice_message();
            String error_message = data.getError_message();
            jsonObject2.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
            if (price_message != null && !price_message.equals("")) {
                jsonObject2.addProperty("data", price_message);
            }
            jsonObject2.addProperty("isbuy", Boolean.valueOf(zEquals));
            if (error_message != null && !error_message.equals("")) {
                jsonObject2.addProperty("errorMsg", error_message);
            }
            EmuBaseActivity.requestOnPay(jsonObject2.toString());
        }
    };
    PayListener selectListener = new PayListener() { // from class: com.papa91.activity.EmuBaseActivity.14
        @Override // com.papa91.paay.PayListener
        public void onResult(PayResponse payResponse) {
            String buy_error_message;
            boolean z10;
            JsonObject jsonObject = new JsonObject();
            if (payResponse == null) {
                jsonObject.addProperty("isbuy", Boolean.FALSE);
                EmuBaseActivity.requestOnInquiry(jsonObject.toString());
                return;
            }
            String str = "";
            if (payResponse.getError() == 701) {
                jsonObject.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                jsonObject.addProperty("data", "");
                jsonObject.addProperty("isbuy", Boolean.FALSE);
                EmuBaseActivity.requestOnInquiry(jsonObject.toString());
                return;
            }
            PayResponseData data = payResponse.getData();
            if (data != null) {
                boolean zIsIs_buy = data.isIs_buy();
                String price_message = data.getPrice_message();
                buy_error_message = data.getBuy_error_message();
                z10 = zIsIs_buy;
                str = price_message;
            } else {
                buy_error_message = EmuBaseActivity.ON_NETWORK_ERROR_MSG;
                z10 = false;
            }
            if (payResponse.getError() == -1) {
                jsonObject.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                jsonObject.addProperty("data", EmuBaseActivity.ON_TOKER_LOST_MSG);
                jsonObject.addProperty("isbuy", Boolean.FALSE);
                jsonObject.addProperty("errorMsg", EmuBaseActivity.ON_NETWORK_ERROR_MSG);
                EmuBaseActivity.requestOnInquiry(jsonObject.toString());
                return;
            }
            jsonObject.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
            jsonObject.addProperty("data", str);
            jsonObject.addProperty("isbuy", Boolean.valueOf(z10));
            jsonObject.addProperty("errorMsg", buy_error_message);
            EmuBaseActivity.requestOnInquiry(jsonObject.toString());
        }
    };
    private PackageInfo appInfo = null;
    private boolean isStartRecord = false;
    boolean isInBackground = false;
    CountDownTimer timer = new CountDownTimer(15000, 1000) { // from class: com.papa91.activity.EmuBaseActivity.37
        @Override // android.os.CountDownTimer
        public void onFinish() {
            EmuBaseActivity.acceptInvitePlay(2);
            SmartPopupWindow smartPopupWindow = EmuBaseActivity.this.invitePop;
            if (smartPopupWindow == null || !smartPopupWindow.isShowing()) {
                return;
            }
            EmuBaseActivity.this.invitePop.dismiss();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
            TextView textView = EmuBaseActivity.this.accept;
            if (textView != null) {
                textView.setText("拒绝(" + (j10 / 1000) + "s)");
            }
        }
    };
    long playTime = 0;
    long limitTime = 0;
    boolean isArenaCheck = false;
    Runnable limitTimeRunnable = new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.39
        @Override // java.lang.Runnable
        public void run() {
            if (EmuBaseActivity.this.isFinishing() || EmuBaseActivity.this.isDestroyed()) {
                return;
            }
            EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
            long j10 = emuBaseActivity.playTime + 1;
            emuBaseActivity.playTime = j10;
            if (j10 >= emuBaseActivity.limitTime) {
                emuBaseActivity.onHandleRealName(3, emuBaseActivity.isArenaCheck);
            } else {
                emuBaseActivity.handler.postDelayed(this, 1000L);
            }
        }
    };
    private String gameType = "";

    /* JADX INFO: renamed from: com.papa91.activity.EmuBaseActivity$3, reason: invalid class name */
    class AnonymousClass3 implements Runnable {
        AnonymousClass3() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$run$0(View view) {
            EmuBaseActivity.mDialog.dismiss();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (EmuBaseActivity.mDialog == null) {
                Dialog dialog = new Dialog(EmuBaseActivity.context, R.style.MyDialog);
                EmuBaseActivity.mDialog = dialog;
                dialog.setContentView(R.layout.bind_dialog2);
                Button button = (Button) EmuBaseActivity.mDialog.findViewById(R.id.dialog_button_ok);
                TextView textView = (TextView) EmuBaseActivity.mDialog.findViewById(R.id.tip_title);
                TextView textView2 = (TextView) EmuBaseActivity.mDialog.findViewById(R.id.dialog_content);
                TextView textView3 = (TextView) EmuBaseActivity.mDialog.findViewById(R.id.dialog_desci);
                EmuBaseActivity.mDialog.setCancelable(false);
                EmuBaseActivity.mDialog.setCanceledOnTouchOutside(false);
                textView.setText("提示");
                textView2.setText("请校验会员身份\n联网校验后，你在一段时间内可离线使用。");
                textView3.setVisibility(8);
                button.setText("开启网络");
                View viewFindViewById = EmuBaseActivity.mDialog.findViewById(R.id.close);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.activity.t
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            EmuBaseActivity.AnonymousClass3.lambda$run$0(view);
                        }
                    });
                }
                button.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.activity.EmuBaseActivity.3.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        EmuBaseActivity.context.startActivity(new Intent("android.settings.SETTINGS"));
                    }
                });
            }
            EmuBaseActivity.isNet = false;
            EmuBaseActivity.mDialog.show();
        }
    }

    public class ActionReceiver extends BroadcastReceiver {
        public ActionReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !BAction.ACTION_REAL_NAME_RESULT.equals(intent.getAction())) {
                return;
            }
            EmuBaseActivity.this.onHandlerResultNameResult(intent);
        }
    }

    public class AdResultReceiver extends BroadcastReceiver {
        private boolean hasReward;

        public AdResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (EmuBaseActivity.this.isSingleGame) {
                return;
            }
            int i10 = 1;
            int intExtra = intent.getIntExtra("adAction", 1);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("adAction：");
            sb2.append(intExtra);
            try {
                if (intExtra == 7) {
                    EmuBaseActivity.runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.AdResultReceiver.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MessageVipCommonDialog messageVipCommonDialog = EmuBaseActivity.this.messageDialog;
                            if (messageVipCommonDialog != null) {
                                messageVipCommonDialog.dismiss();
                                EmuBaseActivity.this.messageDialog = null;
                            }
                        }
                    });
                    EmuBaseActivity.setAdResult(1);
                } else {
                    if (intExtra == 8) {
                        return;
                    }
                    if (intExtra == 6) {
                        this.hasReward = true;
                        return;
                    }
                    if (intExtra == 1) {
                        this.hasReward = false;
                        EmuBaseActivity.this.senCommonEvent("expGameVSAdVideo", "");
                        return;
                    }
                    if (intExtra != 3) {
                        if (intExtra == 98) {
                            EmuBaseActivity.runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.AdResultReceiver.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    MessageVipCommonDialog messageVipCommonDialog = EmuBaseActivity.this.messageDialog;
                                    if (messageVipCommonDialog != null) {
                                        messageVipCommonDialog.dismiss();
                                        EmuBaseActivity.this.messageDialog = null;
                                    }
                                }
                            });
                            String stringExtra = intent.getStringExtra("url");
                            int intExtra2 = intent.getIntExtra("time", 0);
                            if (intent.getIntExtra("V_switch", 0) != 0) {
                                EmuBaseActivity.this.showVideoPopWin(stringExtra, intExtra2);
                                return;
                            }
                            int intExtra3 = intent.getIntExtra("howTimes", 0);
                            int intExtra4 = intent.getIntExtra("adCount", 0);
                            int intExtra5 = intent.getIntExtra("adSdkType", 1);
                            String stringExtra2 = intent.getStringExtra("gameId");
                            Intent intent2 = new Intent("com.tools.AdBroadcast");
                            intent2.putExtra("action", 0);
                            intent2.putExtra("howTimes", intExtra3);
                            intent2.putExtra("adSdkType", intExtra5);
                            intent2.putExtra("adCount", intExtra4);
                            intent2.putExtra("gameId", stringExtra2);
                            EmuBaseActivity.send(intent2);
                            return;
                        }
                        if (intExtra == 99) {
                            if (EmuBaseActivity.this.isSingleGame) {
                                return;
                            }
                            String stringExtra3 = intent.getStringExtra("content");
                            String stringExtra4 = intent.getStringExtra("dialogUrl");
                            String stringExtra5 = intent.getStringExtra("pic");
                            String stringExtra6 = intent.getStringExtra(MediationConstant.EXTRA_ADID);
                            String stringExtra7 = intent.getStringExtra("btn_l");
                            String stringExtra8 = intent.getStringExtra("btn_r");
                            String stringExtra9 = intent.getStringExtra("btn_url");
                            int intExtra6 = intent.getIntExtra("times", 0);
                            int intExtra7 = intent.getIntExtra("adCount", 0);
                            int intExtra8 = intent.getIntExtra("howTimes", 0);
                            int intExtra9 = intent.getIntExtra("adSdkType", 1);
                            EmuBaseActivity.this.adLoadError = false;
                            EmuBaseActivity.this.showVipDialog(stringExtra3, stringExtra4, stringExtra5, stringExtra6, stringExtra7, stringExtra8, stringExtra9, intExtra6, intExtra8, intExtra9, intExtra7);
                            return;
                        }
                        if (intExtra == 13) {
                            return;
                        }
                        if (intExtra != 17) {
                            if (intExtra != 100) {
                                if (intExtra == 5) {
                                    EmuBaseActivity.this.adLoadError = true;
                                    try {
                                        EmuBaseActivity.baseActivity.runOnUiThread(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.AdResultReceiver.4
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                EndGameAllowBean endGameAllowBean = EmuBaseActivity.this.allowBean;
                                                if (endGameAllowBean == null || (!endGameAllowBean.isUnlimited() && EmuBaseActivity.this.allowBean.getCards() <= 0)) {
                                                    EmuBaseActivity.showToast("广告获取失败");
                                                }
                                                if (EmuBaseActivity.scenario == 3) {
                                                    EmuBaseActivity.this.endGameAllow(false, 0);
                                                }
                                            }
                                        });
                                    } catch (Exception unused) {
                                    }
                                    EmuBaseActivity.this.handleAdError(context, intent);
                                    return;
                                } else if (intExtra == 9) {
                                    EmuBaseActivity.this.adLoadError = false;
                                    return;
                                } else {
                                    EmuBaseActivity.this.handleAdResult(context, intent);
                                    return;
                                }
                            }
                            int intExtra10 = intent.getIntExtra("exit", 0);
                            EmuBaseActivity.this.onHandleEmuExit();
                            EmuBaseActivity.exitDlgBack(intExtra10);
                            if (intExtra10 == 1) {
                                EmuBaseActivity.sendGamePlay(2);
                                EmuBaseActivity.this.isExit = true;
                                return;
                            } else {
                                if (intExtra10 == 2) {
                                    EmuBaseActivity.sendGamePlay(2);
                                    System.exit(0);
                                    Process.killProcess(Process.myPid());
                                    return;
                                }
                                return;
                            }
                        }
                        String stringExtra10 = intent.getStringExtra("gameId");
                        if (TextUtils.isEmpty(stringExtra10) || TextUtils.isEmpty(EmuBaseActivity.GameID) || !EmuBaseActivity.GameID.equals(stringExtra10)) {
                            return;
                        }
                        int intExtra11 = intent.getIntExtra("result", 0);
                        int intExtra12 = intent.getIntExtra("amount", 0);
                        int intExtra13 = intent.getIntExtra("times", 0);
                        int intExtra14 = intent.getIntExtra("total_reward_amount", 0);
                        if (intExtra11 == 0) {
                            EmuBaseActivity.received_times++;
                            EmuBaseActivity.reward_left_count--;
                            EmuBaseActivity.reward_amount = 0;
                            EmuBaseActivity.reward_times = 0;
                            EmuBaseActivity.unique_id = "";
                            EmuBaseActivity.total_reward_amount += intExtra12;
                            DragProgressView dragProgressView = EmuBaseActivity.progressView;
                            if (dragProgressView != null) {
                                dragProgressView.setSignal(dragProgressView.getSignal() - 1);
                                if (EmuBaseActivity.left_play_reward_count - EmuBaseActivity.received_times < 1) {
                                    EmuBaseActivity.progressView.setVisibility(8);
                                }
                                if (EmuBaseActivity.reward_left_count < 1 && EmuBaseActivity.progressView.getSignal() < 1) {
                                    EmuBaseActivity.progressView.stop();
                                    return;
                                } else {
                                    EmuBaseActivity.progressView.setSignalMax(EmuBaseActivity.reward_left_count);
                                    EmuBaseActivity.progressView.resume();
                                }
                            }
                        }
                        try {
                            EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
                            if (intExtra11 != 0) {
                                i10 = 0;
                            }
                            emuBaseActivity.setRewardResult1(i10, intExtra12, intExtra13, intExtra14);
                            return;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return;
                        }
                    }
                    EmuBaseActivity.runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.AdResultReceiver.2
                        @Override // java.lang.Runnable
                        public void run() {
                            MessageVipCommonDialog messageVipCommonDialog = EmuBaseActivity.this.messageDialog;
                            if (messageVipCommonDialog != null) {
                                messageVipCommonDialog.dismiss();
                                EmuBaseActivity.this.messageDialog = null;
                            }
                        }
                    });
                    EmuBaseActivity.setAdResult(1);
                    if (EmuBaseActivity.startMode == 16) {
                        EmuBaseActivity.this.getVideoAward(EmuBaseActivity.scenario, true);
                    }
                }
            } catch (Exception unused2) {
            }
        }
    }

    public class CommonMessageReceiver extends BroadcastReceiver {
        public CommonMessageReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action) && action.equals("com.emu.battle.score")) {
                String stringExtra = intent.getStringExtra(CommonService_.AnonymousClass32.f72720g);
                if (TextUtils.isEmpty(stringExtra) || "0".equals(stringExtra) || !Objects.equals(stringExtra, EmuBaseActivity.GroupID)) {
                    return;
                }
                EmuBaseActivity.this.updateScoreUi(intent.getStringExtra("battleScore"));
            }
        }
    }

    class GameReceiver extends BroadcastReceiver {
        GameReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                if (action.equals(EmuBaseActivity.actionShowInvite)) {
                    intent.getIntExtra(CommonService_.AnonymousClass32.f72720g, 0);
                    intent.getStringExtra("userId");
                    String stringExtra = intent.getStringExtra("userName");
                    String stringExtra2 = intent.getStringExtra("userAvatar");
                    long longExtra = intent.getLongExtra("gameId", 0L);
                    intent.getLongExtra(UMCrash.SP_KEY_TIMESTAMP, 0L);
                    try {
                        EmuBaseActivity.this.showInvitePlayUi(stringExtra, intent.getStringExtra("gameName"), stringExtra2, longExtra);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else if (action.equals(EmuBaseActivity.actionOnOnlineState)) {
                    EmuBaseActivity.this.setUserStateUi(intent.getIntExtra(NoticeTopAnimActivityDialog_.STATE_EXTRA, 0));
                } else if (EmuBaseActivity.actionHandleMessage.equals(action)) {
                    Message message = (Message) intent.getParcelableExtra("_message");
                    if (message != null) {
                        EmuBaseActivity.this.handler.sendMessage(message);
                    }
                } else if (EmuBaseActivity.actionHandleEmptyMessage.equals(action)) {
                    EmuBaseActivity.this.handler.sendEmptyMessage(intent.getIntExtra("_what", 0));
                } else if (EmuBaseActivity.actionHandleExitGame.equals(action)) {
                    EmuBaseActivity.this.onHandleGameExit(intent);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public class IMReceive extends BroadcastReceiver {
        public IMReceive() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (EmuBaseActivity.this.isSingleGame) {
                return;
            }
            String stringExtra = intent.getStringExtra("type");
            final String stringExtra2 = intent.getStringExtra("msg");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("im-->");
            sb2.append(stringExtra);
            sb2.append("=>");
            sb2.append(stringExtra2);
            final int iIntValue = Integer.valueOf(stringExtra).intValue();
            EmuBaseActivity.this.runOnGLThread(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.IMReceive.1
                @Override // java.lang.Runnable
                public void run() {
                    EmuBaseActivity.SendMessStatue(iIntValue, stringExtra2);
                }
            });
        }
    }

    enum MenuType {
        slot(1, "存档"),
        cheating(2, GameMainActivity4.TITLE_GOLDFINGER),
        performance(3, "设置"),
        vip(4, "会员"),
        oneKey(5, "一键技能"),
        gate(6, "选关");

        private int mCode;
        private String mDesc;

        MenuType(int i10, String str) {
            this.mCode = i10;
            this.mDesc = str;
        }

        public int getCode() {
            return this.mCode;
        }
    }

    class MenuViewReceiver extends BroadcastReceiver {
        MenuViewReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (EmuBaseActivity.this.isSingleGame) {
                return;
            }
            if (EmuBaseActivity.actionShowMenuSlot.equals(intent.getAction())) {
                EmuBaseActivity.this.showMenuSlot();
                return;
            }
            if (EmuBaseActivity.actionShowMenuCheat.equals(intent.getAction())) {
                EmuBaseActivity.this.showMenuCheating();
                return;
            }
            if (EmuBaseActivity.actionShowMenuPerformance.equals(intent.getAction()) || "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success".equals(intent.getAction())) {
                return;
            }
            if (EmuBaseActivity.actionShowMenuOnekey.equals(intent.getAction())) {
                EmuBaseActivity.this.showMenuOnekey();
                return;
            }
            if (EmuBaseActivity.actionShowMenuGate.equals(intent.getAction())) {
                EmuBaseActivity.this.showMenuGate();
                return;
            }
            if (EmuBaseActivity.actionShowMenu.equals(intent.getAction())) {
                EmuBaseActivity.this.showMenuView(true);
                return;
            }
            if (EmuBaseActivity.actionHideMenu.equals(intent.getAction())) {
                EmuBaseActivity.this.showMenuView(false);
                return;
            }
            if (EmuBaseActivity.actionVipTip.equals(intent.getAction())) {
                EmuBaseActivity.this.showVipTip(intent.getIntExtra("tipid", 0), intent.getIntExtra("charid", 0));
                return;
            }
            if (EmuBaseActivity.actionShowMenuView.equals(intent.getAction())) {
                EmuBaseActivity.this.showMenuView(true);
                return;
            }
            if (EmuBaseActivity.actionShowShare.equals(intent.getAction())) {
                EmuBaseActivity.this.showShare(intent.getStringExtra("imagePath"));
                return;
            }
            if (EmuBaseActivity.actionLoadRomFinish.equals(intent.getAction())) {
                EmuBaseActivity.this.loadRomFinish();
                return;
            }
            if (EmuBaseActivity.actionLoadStageCompleted.equals(intent.getAction())) {
                EmuBaseActivity.this.onLoadStageCompleted(intent.getIntExtra("status", 0), intent.getStringExtra("message"));
                return;
            }
            if (EmuBaseActivity.actionRecordEnd.equals(intent.getAction())) {
                EmuBaseActivity.this.rankPlayTime = intent.getIntExtra(IntentKeys.KEY_PARAMS_RANK_PLAY_TIME, 0);
                EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
                emuBaseActivity.onRankRecordEnd(emuBaseActivity.rankPlayTime);
            } else {
                if (BAction.ACTION_RANK_RECORD_UPLOAD_RESULT.equals(intent.getAction())) {
                    EmuBaseActivity.this.onRankUploadResult(intent.getIntExtra(IntentKeys.KEY_PARAMS_RANK_UPLOAD, 0));
                    return;
                }
                if (!BAction.ACTION_ENDGAME_RECORD_UPLOAD_RESULT.equals(intent.getAction())) {
                    if (BAction.ACTION_EMU_SCREEN_MODE.equals(intent.getAction())) {
                        EmuBaseActivity.this.setMenuDirection(intent.getIntExtra(BaseAppConfig.PREF_SCREEN_MODE, 0) != 3 ? 0 : 1);
                    }
                } else {
                    String unused = Cocos2dxActivity.TAG;
                    String stringExtra = intent.getStringExtra("url");
                    EmuBaseActivity emuBaseActivity2 = EmuBaseActivity.this;
                    emuBaseActivity2.updateEndGameResultV2(emuBaseActivity2.endGameResult, emuBaseActivity2.endGameMills, stringExtra);
                }
            }
        }
    }

    class MyReceiver extends BroadcastReceiver {
        MyReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MessageVipCommonDialog messageVipCommonDialog;
            EmuBaseActivity.token = intent.getExtras().getString(Constants.TOKEN);
            EmuBaseActivity.this.m_VIP = intent.getExtras().getInt(BaseAppConfig.KEY_VIP_LEVEL);
            EmuBaseActivity.this.m_SVIP = intent.getExtras().getInt(BaseAppConfig.KEY_SVIP_LEVEL);
            EmuBaseActivity.UserID = intent.getExtras().getString("uid");
            EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
            EmuBaseActivity.setVipType(emuBaseActivity.m_VIP, emuBaseActivity.m_SVIP);
            try {
                String str = EmuBaseActivity.soPath;
                if (str != "" && !"".equals(str) && EmuBaseActivity.soPath.contains("/so")) {
                    String str2 = EmuBaseActivity.soPath.split("/so")[0];
                    if (Integer.valueOf(str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1).split("_")[0]).intValue() >= 430) {
                        EmuBaseActivity.setUserInfo(EmuBaseActivity.UserID, EmuBaseActivity.token);
                    }
                }
            } catch (Exception unused) {
            }
            EmuBaseActivity emuBaseActivity2 = EmuBaseActivity.this;
            if (emuBaseActivity2.m_VIP > 0 && (messageVipCommonDialog = emuBaseActivity2.messageDialog) != null && messageVipCommonDialog.isShowing()) {
                EmuBaseActivity.this.messageDialog.dismiss();
                EmuBaseActivity.this.messageDialog = null;
                EmuBaseActivity.setAdResult(1);
            }
            EmuBaseActivity.this.onVipChanged();
        }
    }

    public class NetWorkReceiver extends BroadcastReceiver {
        public NetWorkReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) EmuBaseActivity.this.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                try {
                    EmuBaseActivity.this.HttpPost_Memer();
                    if (EmuBaseActivity.unUpdateAchieve != null) {
                        final ArrayList arrayList = new ArrayList(EmuBaseActivity.unUpdateAchieve);
                        final Timer timer = new Timer();
                        timer.schedule(new TimerTask() { // from class: com.papa91.activity.EmuBaseActivity.NetWorkReceiver.1
                            int count = 0;

                            @Override // java.util.TimerTask, java.lang.Runnable
                            public void run() {
                                if (this.count >= arrayList.size()) {
                                    timer.cancel();
                                } else {
                                    EmuBaseActivity.update((String) arrayList.get(this.count), EmuBaseActivity.tourist);
                                    this.count++;
                                }
                            }
                        }, 0L, 200L);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (!EmuBaseActivity.canShowRewardMenu() || EmuBaseActivity.isRewardConfigInited()) {
                return;
            }
            EmuBaseActivity.this.getRewardConfig();
        }
    }

    class PermissRecver extends BroadcastReceiver {
        PermissRecver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || EmuBaseActivity.this.isInBackground) {
                return;
            }
            EmuBaseActivity.this.getPermiss(intent.getStringExtra("permission"));
        }
    }

    public class PlayTimeReceiver extends BroadcastReceiver {
        public PlayTimeReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            EmuBaseActivity.this.m_SVIP = intent.getExtras().getInt(BaseAppConfig.KEY_SVIP_LEVEL);
            EmuBaseActivity.this.m_VIP = intent.getExtras().getInt(BaseAppConfig.KEY_VIP_LEVEL);
            EmuBaseActivity.UserID = intent.getExtras().getString("uid");
            EmuBaseActivity.token = intent.getExtras().getString(Constants.TOKEN);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("uid", EmuBaseActivity.UserID);
            jsonObject.addProperty(Constants.TOKEN, EmuBaseActivity.token);
            jsonObject.addProperty(BaseAppConfig.KEY_SVIP_LEVEL, Integer.valueOf(EmuBaseActivity.this.m_SVIP));
            jsonObject.addProperty(BaseAppConfig.KEY_VIP_LEVEL, Integer.valueOf(EmuBaseActivity.this.m_VIP));
            EmuBaseActivity.tourist = intent.getExtras().getBoolean("tourist", true);
            EmuBaseActivity.this.loginFinish();
            EmuBaseActivity.this.needCheckRealName = true;
            EmuBaseActivity.this.checkRealNameType = 11;
            EmuBaseActivity.requestOnsign(jsonObject.toString());
            EmuBaseActivity.this.updateAutoSlotData();
            EmuBaseActivity.this.onVipChanged();
        }
    }

    public class RealNameResultReceiver extends BroadcastReceiver {
        public RealNameResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            EmuBaseActivity.this.checkRealName(10);
        }
    }

    public class ShareResultReceiver extends BroadcastReceiver {
        public ShareResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            EmuBaseActivity.setShareResult(intent.getIntExtra("shareResult", 1), intent.getIntExtra("from", 1));
        }
    }

    public static void FinishRecord() {
        send(in2);
    }

    public static void HideBottomMenu() {
        baseActivity.runOnUiThread(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.12
            @Override // java.lang.Runnable
            public void run() {
                if (EmuBaseActivity.hasNavBar(EmuBaseActivity.baseActivity)) {
                    EmuBaseActivity.hideBottomUIMenu();
                }
            }
        });
    }

    public static boolean LocalBattle(long j10, long j11, long j12, long j13) {
        Intent intent = new Intent(p5.a.S);
        intent.putExtra("gameId", "" + j10);
        intent.putExtra("uid", "" + j11);
        intent.putExtra("p2Uid", "" + j12);
        intent.putExtra("time", j13);
        send(intent);
        return true;
    }

    public static void LoginNim() {
        send(f77968in);
    }

    public static void OutChatRoom() {
        send(in5);
    }

    public static native int SendMessStatue(int i10, String str);

    public static void SendTextMessage(String str) {
        in3.putExtra("text", str);
        send(in3);
    }

    public static void ShowSetNetWorkDialog() {
        baseActivity.runOnUiThread(new AnonymousClass3());
    }

    public static void StartRecording() {
        send(in1);
    }

    public static void StartcomplainMsg(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("StartcomplainMsg : ");
        sb2.append(str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("StartcomplainMsg : ");
        sb3.append(str2);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("StartcomplainMsg : ");
        sb4.append(str3);
        StringBuilder sb5 = new StringBuilder();
        sb5.append("StartcomplainMsg : ");
        sb5.append(str4);
        StringBuilder sb6 = new StringBuilder();
        sb6.append("StartcomplainMsg : ");
        sb6.append(str5);
        Intent intent = new Intent();
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.setAction("com.wufun.intent.activity.view.action.emuintent");
        intent.addCategory("android.intent.category.DEFAULT");
        MyJson myJson = new MyJson();
        try {
            if (str.equals("4") && str3 != null && str3.startsWith("http")) {
                if (str3.contains("?")) {
                    str3 = str3 + "&game_id=" + GameID;
                } else {
                    str3 = str3 + "?game_id=" + GameID;
                }
            }
            myJson.put("link_type", str);
            myJson.put("jump_type", str2);
            myJson.put("link_type_val", str3);
            myJson.put("crc_link_type_val", str4);
            myJson.put("tpl_type", str5);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        intent.putExtra("intentDataJson", myJson.toString());
        try {
            intent.setAction("com.wufun.intent.activity.view.action.emuintent");
            baseActivity.startActivity(intent);
        } catch (Exception unused) {
            intent.setAction("com.papa.intent.activity.view.action.emuintent");
            baseActivity.startActivity(intent);
        }
    }

    public static void acceptInvitePlay(int i10) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.acceptInvitePlay");
        intent.putExtra("accept", i10);
        send(intent);
    }

    public static native void addEditCheat(EditCheatInfo editCheatInfo);

    static boolean canShowRewardMenu() {
        return hasRewardBanana && startRewardCount && startMode == 0;
    }

    public static native void cheatEnable(int i10, int i11);

    public static native boolean checkCheatCode(String str, boolean z10);

    public static boolean clickAddCheatEvent(String str) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.click.addcheat");
        intent.putExtra("position", str);
        send(intent);
        return true;
    }

    public static boolean clickFreeCustomizeEvent(String str) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.click.freecustomize");
        intent.putExtra("position", str);
        send(intent);
        return true;
    }

    public static void complain(int i10, int i11) {
        Message message = new Message();
        message.what = 12;
        message.arg1 = i10;
        message.arg2 = i11;
        sendHandleMessage(message);
    }

    private static void copyFolderReserveTime(String str, String str2) {
        File file = new File(str);
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            for (int i10 = 0; i10 < fileArrListFiles.length; i10++) {
                String str3 = str2 + net.lingala.zip4j.util.e.F0 + fileArrListFiles[i10].getName();
                long jLastModified = fileArrListFiles[i10].lastModified();
                File file2 = new File(str3);
                fileArrListFiles[i10].renameTo(file2);
                file2.setLastModified(jLastModified);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00c4 A[Catch: IOException -> 0x00f8, Exception -> 0x0294, TryCatch #0 {IOException -> 0x00f8, blocks: (B:14:0x003b, B:16:0x0048, B:18:0x004e, B:20:0x0065, B:22:0x007c, B:26:0x00a1, B:27:0x00b0, B:29:0x00b6, B:30:0x00ba, B:25:0x0092, B:31:0x00c4, B:33:0x00ca), top: B:70:0x003b, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00ca A[Catch: IOException -> 0x00f8, Exception -> 0x0294, TRY_LEAVE, TryCatch #0 {IOException -> 0x00f8, blocks: (B:14:0x003b, B:16:0x0048, B:18:0x004e, B:20:0x0065, B:22:0x007c, B:26:0x00a1, B:27:0x00b0, B:29:0x00b6, B:30:0x00ba, B:25:0x0092, B:31:0x00c4, B:33:0x00ca), top: B:70:0x003b, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00fc A[Catch: Exception -> 0x0294, TRY_LEAVE, TryCatch #1 {Exception -> 0x0294, blocks: (B:3:0x000a, B:5:0x0022, B:7:0x0028, B:8:0x002b, B:11:0x0037, B:14:0x003b, B:16:0x0048, B:18:0x004e, B:20:0x0065, B:22:0x007c, B:26:0x00a1, B:27:0x00b0, B:29:0x00b6, B:30:0x00ba, B:25:0x0092, B:31:0x00c4, B:33:0x00ca, B:37:0x00fc, B:40:0x0106, B:42:0x016d, B:44:0x0173, B:46:0x017d, B:52:0x01a8, B:54:0x01cd, B:55:0x01f1, B:57:0x01f8, B:58:0x01fd, B:59:0x0228, B:61:0x0250, B:62:0x0277, B:64:0x027e, B:65:0x0283, B:41:0x0136, B:36:0x00f9), top: B:72:0x000a, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0106 A[Catch: Exception -> 0x0294, TRY_ENTER, TryCatch #1 {Exception -> 0x0294, blocks: (B:3:0x000a, B:5:0x0022, B:7:0x0028, B:8:0x002b, B:11:0x0037, B:14:0x003b, B:16:0x0048, B:18:0x004e, B:20:0x0065, B:22:0x007c, B:26:0x00a1, B:27:0x00b0, B:29:0x00b6, B:30:0x00ba, B:25:0x0092, B:31:0x00c4, B:33:0x00ca, B:37:0x00fc, B:40:0x0106, B:42:0x016d, B:44:0x0173, B:46:0x017d, B:52:0x01a8, B:54:0x01cd, B:55:0x01f1, B:57:0x01f8, B:58:0x01fd, B:59:0x0228, B:61:0x0250, B:62:0x0277, B:64:0x027e, B:65:0x0283, B:41:0x0136, B:36:0x00f9), top: B:72:0x000a, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0136 A[Catch: Exception -> 0x0294, TryCatch #1 {Exception -> 0x0294, blocks: (B:3:0x000a, B:5:0x0022, B:7:0x0028, B:8:0x002b, B:11:0x0037, B:14:0x003b, B:16:0x0048, B:18:0x004e, B:20:0x0065, B:22:0x007c, B:26:0x00a1, B:27:0x00b0, B:29:0x00b6, B:30:0x00ba, B:25:0x0092, B:31:0x00c4, B:33:0x00ca, B:37:0x00fc, B:40:0x0106, B:42:0x016d, B:44:0x0173, B:46:0x017d, B:52:0x01a8, B:54:0x01cd, B:55:0x01f1, B:57:0x01f8, B:58:0x01fd, B:59:0x0228, B:61:0x0250, B:62:0x0277, B:64:0x027e, B:65:0x0283, B:41:0x0136, B:36:0x00f9), top: B:72:0x000a, inners: #0 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:33:0x00ca, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:40:0x0106, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:41:0x0136, please report this as an issue */
    public static void copyStates(String str, String str2) {
        String str3;
        File file;
        File file2;
        int i10;
        String str4;
        String str5 = str;
        try {
            new File(str2).mkdirs();
            File file3 = new File(str5);
            File file4 = new File(str2);
            if (file3.isDirectory() && !file4.exists()) {
                file4.mkdirs();
            }
            String[] list = file3.list();
            byte[] bArr = new byte[5120];
            if (list != null) {
                int i11 = 0;
                int i12 = 0;
                while (i12 < list.length) {
                    try {
                        File file5 = new File(str5, list[i12]);
                        if (file5.exists() && file5.isFile()) {
                            if (!(file5 + "").endsWith(".xml")) {
                                if (!(file5 + "").endsWith(".json")) {
                                    if (file5.isDirectory()) {
                                        copyStates(str5 + net.lingala.zip4j.util.e.F0 + list[i12], str2 + net.lingala.zip4j.util.e.F0 + list[i12]);
                                    } else {
                                        str3 = File.separator;
                                        if (str5.endsWith(str3)) {
                                            file = new File(str5 + list[i12]);
                                            file2 = new File(str5 + list[i12] + ".png");
                                        } else {
                                            file = new File(str5 + str3 + list[i12]);
                                            file2 = new File(str5 + str3 + list[i12] + ".png");
                                        }
                                        if (!file.isFile()) {
                                        }
                                        i12++;
                                        str5 = str;
                                        i11 = 0;
                                    }
                                }
                            }
                            FileInputStream fileInputStream = new FileInputStream(file5);
                            StringBuilder sb2 = new StringBuilder();
                            String str6 = File.separator;
                            if (str2.endsWith(str6)) {
                                str4 = str2;
                            } else {
                                str4 = str2 + str6;
                            }
                            sb2.append(str4);
                            sb2.append(list[i12]);
                            FileOutputStream fileOutputStream = new FileOutputStream(sb2.toString());
                            while (true) {
                                int i13 = fileInputStream.read(bArr);
                                if (i13 == -1) {
                                    break;
                                } else {
                                    fileOutputStream.write(bArr, i11, i13);
                                }
                            }
                            fileOutputStream.flush();
                            fileOutputStream.close();
                            fileInputStream.close();
                        } else if (file5.isDirectory()) {
                            copyStates(str5 + net.lingala.zip4j.util.e.F0 + list[i12], str2 + net.lingala.zip4j.util.e.F0 + list[i12]);
                        } else {
                            str3 = File.separator;
                            if (str5.endsWith(str3)) {
                                file = new File(str5 + list[i12]);
                                file2 = new File(str5 + list[i12] + ".png");
                            } else {
                                file = new File(str5 + str3 + list[i12]);
                                file2 = new File(str5 + str3 + list[i12] + ".png");
                            }
                            if (!file.isFile() && file.getName().contains(o0.f49827a)) {
                                String absolutePath = file.getAbsolutePath();
                                long jLastModified = file.lastModified();
                                absolutePath.substring(i11, absolutePath.lastIndexOf(o0.f49827a));
                                try {
                                    i10 = Integer.parseInt(file.getName().substring(file.getName().lastIndexOf(o0.f49827a) + 1));
                                } catch (Exception unused) {
                                    i10 = -1;
                                }
                                if (i10 != -1) {
                                    if (!new File(str2 + net.lingala.zip4j.util.e.F0 + file.getName().toString()).exists()) {
                                        FileInputStream fileInputStream2 = new FileInputStream(file);
                                        FileOutputStream fileOutputStream2 = new FileOutputStream(str2 + net.lingala.zip4j.util.e.F0 + file.getName().toString());
                                        while (true) {
                                            int i14 = fileInputStream2.read(bArr);
                                            if (i14 == -1) {
                                                break;
                                            } else {
                                                fileOutputStream2.write(bArr, 0, i14);
                                            }
                                        }
                                        fileOutputStream2.flush();
                                        fileOutputStream2.close();
                                        fileInputStream2.close();
                                        new File(str2 + net.lingala.zip4j.util.e.F0 + file.getName().toString()).setLastModified(jLastModified);
                                    }
                                    if (!new File(str2 + net.lingala.zip4j.util.e.F0 + file.getName().toString() + ".png").exists()) {
                                        FileInputStream fileInputStream3 = new FileInputStream(file2);
                                        FileOutputStream fileOutputStream3 = new FileOutputStream(str2 + net.lingala.zip4j.util.e.F0 + file.getName().toString() + ".png");
                                        while (true) {
                                            int i15 = fileInputStream3.read(bArr);
                                            if (i15 == -1) {
                                                break;
                                            } else {
                                                fileOutputStream3.write(bArr, 0, i15);
                                            }
                                        }
                                        fileOutputStream3.flush();
                                        fileOutputStream3.close();
                                        fileInputStream3.close();
                                    }
                                }
                            }
                            i12++;
                            str5 = str;
                            i11 = 0;
                        }
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                    i12++;
                    str5 = str;
                    i11 = 0;
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void creatFrameLayout() {
        if (this.adRoot == null) {
            this.adParent = new RelativeLayout(this);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((getResources().getDisplayMetrics().widthPixels * 3) / 4, 200);
            layoutParams.gravity = 1;
            this.adParent.setLayoutParams(layoutParams);
            RelativeLayout relativeLayout = new RelativeLayout(this);
            this.adRoot = relativeLayout;
            relativeLayout.setId(R.id.ad_root);
            this.adRoot.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            TextView textView = new TextView(this);
            textView.setText("VIP免广告");
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(11, this.adRoot.getId());
            textView.setPadding(20, 0, 20, 0);
            layoutParams2.setMargins(20, 10, 20, 0);
            textView.setLayoutParams(layoutParams2);
            textView.setBackgroundResource(R.drawable.baidu_ad_sponsor_back);
            textView.setTextColor(-3815995);
            textView.setTextSize(11.0f);
            this.adParent.addView(this.adRoot);
            this.adParent.addView(textView);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.activity.EmuBaseActivity.18
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    EmuBaseActivity.this.raseVipToMgsim(8);
                }
            });
            Cocos2dxActivity.mFrameLayout.addView(this.adParent);
        }
        this.adParent.setVisibility(8);
    }

    public static boolean createDir(String str) {
        File file = new File(str);
        if (file.exists()) {
            System.out.println("创建目录失败，目标目录已存在！");
            return false;
        }
        String str2 = File.separator;
        if (!str.endsWith(str2)) {
            str = str + str2;
        }
        if (!file.mkdirs()) {
            System.out.println("创建目录失败！");
            return false;
        }
        System.out.println("创建目录成功！" + str);
        return true;
    }

    public static native void deleteEditCheat(int i10);

    public static void deleteOldSnapshot(String str) {
        File parentFile;
        File[] fileArrListFiles;
        File file = new File(str);
        if (!file.exists() || (parentFile = file.getParentFile()) == null || (fileArrListFiles = parentFile.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                try {
                    if (System.currentTimeMillis() - (Long.parseLong(file2.getName().substring(0, file2.getName().lastIndexOf(o0.f49827a))) * 1000) > 86400000) {
                        file2.delete();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public static int dip2px(Context context2, float f10) {
        return (int) ((f10 * context2.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static void doneAchieve(int i10, int i11) {
        Gson gson = new Gson();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AchievementDoneBean(i10, i11));
        update(gson.toJson(arrayList), tourist);
    }

    protected static void emuLogCat(String str, String str2, String str3, String str4, String str5) {
        Intent intent = new Intent(p5.a.W);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("packageName", str3);
        intent.putExtra("version", str4);
        intent.putExtra(CommonService_.AnonymousClass16.f72636f, str5);
        send(intent);
    }

    public static void emuOnResume() {
        try {
            send(new Intent(p5.a.f96192e0));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static native void enableEidtCheat(int i10);

    public static void endGameRes(int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("endGameRes: ");
        sb2.append(i10);
        sb2.append(" ");
        sb2.append(i11);
        Message message = new Message();
        message.what = 13;
        message.arg1 = i10;
        message.arg2 = i11;
        sendHandleMessage(message);
    }

    public static void exitActivity(int i10) {
        AdUtils.showExitStickAd(Cocos2dxActivity.getContext());
        sendGamePlay(2);
    }

    public static native void exitDlgBack(int i10);

    protected static native int exitEmu();

    private boolean findAppVersionTo16() {
        int i10;
        PackageManager packageManager = getPackageManager();
        try {
            this.appInfo = packageManager.getPackageInfo(appPackName, 16384);
        } catch (PackageManager.NameNotFoundException unused) {
            this.appInfo = null;
        }
        PackageInfo packageInfo = this.appInfo;
        boolean z10 = true;
        boolean z11 = false;
        if (packageInfo == null) {
            try {
                PackageInfo packageInfo2 = packageManager.getPackageInfo("com.join.android.app.mgsim.wufun.mha", 16384);
                this.appInfo = packageInfo2;
                if (packageInfo2 != null) {
                    i10 = packageInfo2.versionCode;
                    z11 = i10 >= 500;
                    try {
                        appPackName = "com.join.android.app.mgsim.wufun.mha";
                    } catch (PackageManager.NameNotFoundException unused2) {
                    }
                } else {
                    i10 = 0;
                }
            } catch (PackageManager.NameNotFoundException unused3) {
            }
        } else {
            i10 = packageInfo.versionCode;
            if (i10 >= 27) {
                z11 = true;
            }
        }
        if (!z11) {
            try {
                PackageInfo packageInfo3 = packageManager.getPackageInfo("com.papa91.fc.aso4", 16384);
                this.appInfo = packageInfo3;
                if (packageInfo3 != null) {
                    appPackName = "com.papa91.fc.aso4";
                    i10 = packageInfo3.versionCode;
                } else {
                    z10 = z11;
                }
                z11 = z10;
            } catch (PackageManager.NameNotFoundException unused4) {
            }
        }
        this.APP_Version = i10;
        return z11;
    }

    public static boolean firstLoadAutoSlot() {
        Context context2 = context;
        if (context2 == null) {
            return false;
        }
        return Boolean.valueOf(getDefaultSharedPreferences(context2).getBoolean("firstLoadAutoSlot", true)).booleanValue();
    }

    public static void firstLoadAutoSlotSet() {
        Context context2 = context;
        if (context2 == null) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = getDefaultSharedPreferences(context2).edit();
            editorEdit.putBoolean("firstLoadAutoSlot", false);
            editorEdit.commit();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static boolean freeLoadSlot() {
        Context context2 = context;
        return (context2 == null || getDefaultSharedPreferences(context2).getString("firstTimeFreeLoadSlot", "").contains(GameID)) ? false : true;
    }

    public static void freeLoadSlotSet() {
        Context context2 = context;
        if (context2 == null) {
            return;
        }
        try {
            SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(context2);
            String string = defaultSharedPreferences.getString("firstTimeFreeLoadSlot", "");
            SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
            editorEdit.putString("firstTimeFreeLoadSlot", string + GameID + ",");
            editorEdit.commit();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static native int gameCompleted();

    protected static boolean gameOut(String str, int i10, String str2) {
        Intent intent = new Intent(p5.a.V);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("sec", i10);
        send(intent);
        return true;
    }

    public static boolean gameStart160(String str, String str2, int i10) {
        Intent intent = new Intent(p5.a.T);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("startMode", i10);
        send(intent);
        return true;
    }

    public static boolean gameStartLocalBattle(long j10, long j11, long j12, long j13) {
        Intent intent = new Intent(p5.a.R);
        intent.putExtra("gameId", "" + j10);
        intent.putExtra("uid", "" + j11);
        intent.putExtra("p2Uid", "" + j12);
        intent.putExtra("time", j13);
        send(intent);
        return true;
    }

    public static String getAchievement() {
        return PrefUtil.getInstance(context).getString("all_achievements");
    }

    public static String getAllDNSUrl() {
        return dnsJson;
    }

    public static native ArrayList<CheatInfo> getCheatList();

    public static native ArrayList<CheatInfo> getCheatList1(int i10);

    public static SharedPreferences getDefaultSharedPreferences(Context context2) {
        String str = appPackName;
        if (context2.getPackageName().equals(str)) {
            return PreferenceManager.getDefaultSharedPreferences(context2);
        }
        return context2.getSharedPreferences(str + "_preferences", 4);
    }

    public static native ArrayList<EditCheatInfo> getEditCheatList();

    public static String getExitAdPath() {
        return hasAd ? ExitAdImageFilePath : "";
    }

    public static native int getGameTime();

    public static String getHostPackageName() {
        return appPackName;
    }

    static void getIsAdult() {
        baseActivity.sendBroadcast(new Intent("com.show.realname.check"));
    }

    private static String getNavBarOverride() {
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(null, "qemu.hw.mainkeys");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void getOnlineState() {
        send(new Intent("com.join.android.app.mgsim.wufun.broadcast.getOnlineState"));
    }

    @SuppressLint({"NewApi"})
    public static String getPaste() {
        sendHandleEmptyMessage(3);
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getPermiss(String str) {
        if (Build.VERSION.SDK_INT < 23 || ContextCompat.checkSelfPermission(this, str) == 0) {
            return;
        }
        ActivityCompat.requestPermissions(this, new String[]{str}, 0);
        Toast.makeText(this, "请授权 录音权限", 1).show();
    }

    public static String getPhoneInfo() {
        return "is_android";
    }

    public static String getRecordInfo(String str) {
        int i10;
        String str2 = "";
        if (str != null && str.length() > 0) {
            File file = new File(str.substring(0, str.lastIndexOf(net.lingala.zip4j.util.e.F0)));
            if (!file.isDirectory()) {
                return "";
            }
            File[] fileArrListFiles = file.listFiles();
            int i11 = 0;
            while (i11 < fileArrListFiles.length - 1) {
                int i12 = i11 + 1;
                for (int i13 = i12; i13 < fileArrListFiles.length; i13++) {
                    if (fileArrListFiles[i11].lastModified() > fileArrListFiles[i13].lastModified()) {
                        File file2 = fileArrListFiles[i13];
                        fileArrListFiles[i13] = fileArrListFiles[i11];
                        fileArrListFiles[i11] = file2;
                    }
                }
                i11 = i12;
            }
            for (int i14 = 0; i14 < fileArrListFiles.length; i14++) {
                if (fileArrListFiles[i14].isFile() && fileArrListFiles[i14].getName().contains(o0.f49827a)) {
                    String absolutePath = fileArrListFiles[i14].getAbsolutePath();
                    if (absolutePath.substring(0, absolutePath.lastIndexOf(o0.f49827a)).equals(str)) {
                        try {
                            i10 = Integer.parseInt(fileArrListFiles[i14].getName().substring(fileArrListFiles[i14].getName().lastIndexOf(o0.f49827a) + 1));
                        } catch (Exception unused) {
                            i10 = -1;
                        }
                        if (i10 != -1) {
                            String str3 = new SimpleDateFormat("yyyy-MM-dd HH:mm").format((Date) new java.sql.Date(fileArrListFiles[i14].lastModified()));
                            str2 = i10 == 0 ? (fileArrListFiles[i14].getAbsolutePath() + "," + fileArrListFiles[i14].getAbsolutePath() + ".png," + str3 + ";") + str2 : (str2 + fileArrListFiles[i14].getAbsolutePath() + "," + fileArrListFiles[i14].getAbsolutePath() + ".png," + str3) + ";";
                        }
                    }
                }
            }
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getSystemPaste() {
        if (cmb == null) {
            cmb = (ClipboardManager) getSystemService(com.haima.hmcp.Constants.WS_MESSAGE_TYPE_CLIPBOARD);
        }
        ClipData primaryClip = cmb.getPrimaryClip();
        if (primaryClip == null) {
            return;
        }
        int itemCount = primaryClip.getItemCount();
        String str = "";
        for (int i10 = 0; i10 < itemCount; i10++) {
            str = str + primaryClip.getItemAt(i10).coerceToText(this).toString();
        }
        if (str.isEmpty() || str.equals("")) {
            return;
        }
        setPasteForCheat(str);
    }

    public static native int getVCLoaded();

    static void goExitPage(int i10) {
        Intent intent = new Intent();
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("gameId", "" + GameID);
        intent.putExtra("level", level);
        intent.putExtra("progress", progress);
        intent.putExtra("levelUrl", url);
        intent.putExtra("time", time);
        intent.putExtra("max", max);
        intent.putExtra("isStatEndGameFailedPoint", isInChallenge);
        intent.putExtra("endId", endId);
        intent.putExtra(SimulatorExitPlayActivity1_.SNAPSHOT_PATH_EXTRA, snapshotPath);
        try {
            if (TextUtils.isEmpty(jusrid) || i10 != 1) {
                intent.putExtra("battleUids", new int[0]);
            } else {
                String[] strArrSplit = jusrid.split(",");
                if (strArrSplit != null && strArrSplit.length != 0) {
                    int[] iArr = new int[strArrSplit.length];
                    for (int i11 = 0; i11 < strArrSplit.length; i11++) {
                        iArr[i11] = Integer.parseInt(strArrSplit[i11]);
                    }
                    intent.putExtra("battleUids", iArr);
                }
            }
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
        intent.setClassName(getHostPackageName(), "com.join.mgps.activity.SimulatorExitPlayActivity1_");
        Cocos2dxActivity.getContext().startActivity(intent);
    }

    private void goWebView(Context context2, String str) {
        MarketUtil.intent(Cocos2dxActivity.getContext(), "4", "", str, "", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleButtonAction(final Dialog dialog, Dialog dialog2, final ButtonBean buttonBean, final int i10) {
        if (buttonBean == null) {
            dialog2.dismiss();
            return;
        }
        if (buttonBean.getEventType().intValue() == 2) {
            if (1 == buttonBean.getPopUpWindow().getType()) {
                showNativeRealName(buttonBean.getPopUpWindow(), i10);
                return;
            }
            PerfectWarmDialog perfectWarmDialog = new PerfectWarmDialog(this);
            this.alertTipDialog = perfectWarmDialog;
            perfectWarmDialog.setData(buttonBean.getPopUpWindow());
            this.alertTipDialog.setListener(new DialogListenerWrap() { // from class: com.papa91.activity.EmuBaseActivity.42
                @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                public void onCenterClick(Dialog dialog3, ButtonBean buttonBean2) {
                    super.onCenterClick(dialog3, buttonBean2);
                    if (1 == buttonBean2.getEventType().intValue()) {
                        dialog3.dismiss();
                    }
                    EmuBaseActivity.this.handleButtonAction(dialog, dialog3, buttonBean2, i10);
                }

                @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                public void onLeftClick(Dialog dialog3, ButtonBean buttonBean2) {
                    super.onLeftClick(dialog3, buttonBean2);
                    if (1 == buttonBean2.getEventType().intValue()) {
                        dialog3.dismiss();
                    }
                    EmuBaseActivity.this.handleButtonAction(dialog, dialog3, buttonBean2, i10);
                }

                @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                public void onRightClick(Dialog dialog3, ButtonBean buttonBean2) {
                    super.onRightClick(dialog3, buttonBean2);
                    if (1 == buttonBean2.getEventType().intValue()) {
                        dialog3.dismiss();
                    }
                    EmuBaseActivity.this.handleButtonAction(dialog, dialog3, buttonBean2, i10);
                }
            });
            this.alertTipDialog.show();
            return;
        }
        if (4 == buttonBean.getEventType().intValue()) {
            dialog2.dismiss();
            if (dialog != null) {
                dialog.dismiss();
            }
            exitEmu();
            return;
        }
        if (1 == buttonBean.getEventType().intValue()) {
            this.handler.postDelayed(new Runnable() { // from class: com.papa91.activity.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f77990b.lambda$handleButtonAction$6(buttonBean);
                }
            }, 100L);
        } else if (3 != buttonBean.getEventType().intValue()) {
            dialog2.dismiss();
        } else {
            dialog2.dismiss();
            exitEmu();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCheckNameResult(final PopwindowBean popwindowBean, final int i10) {
        closeRealNameDialog();
        if (popwindowBean == null || !popwindowBean.getPopup().booleanValue()) {
            return;
        }
        if (1 == popwindowBean.getType()) {
            showNativeRealName(popwindowBean, i10);
            return;
        }
        if (popwindowBean.getButtonCenter() != null && popwindowBean.getButtonCenter().getEventType().intValue() == 4 && popwindowBean.isNoAge()) {
            senCommonEvent("antiAddtionWindowUp", "0");
        }
        PerfectWarmDialog perfectWarmDialog = new PerfectWarmDialog(this);
        this.perfectWarmDialog = perfectWarmDialog;
        perfectWarmDialog.setData(popwindowBean);
        this.perfectWarmDialog.setListener(new DialogListenerWrap() { // from class: com.papa91.activity.EmuBaseActivity.40
            @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
            public void onCenterClick(Dialog dialog, ButtonBean buttonBean) {
                super.onCenterClick(dialog, buttonBean);
                EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
                emuBaseActivity.handleButtonAction(emuBaseActivity.perfectWarmDialog, dialog, buttonBean, i10);
            }

            @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
            public void onCloseClick(Dialog dialog, ButtonBean buttonBean) {
                super.onCloseClick(dialog, buttonBean);
                EmuBaseActivity.this.senCommonEvent("closedRealNameWindow", "0");
                EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
                emuBaseActivity.handleButtonAction(emuBaseActivity.perfectWarmDialog, dialog, buttonBean, i10);
            }
        });
        this.perfectWarmDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.papa91.activity.n
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                this.f78005b.lambda$handleCheckNameResult$5(popwindowBean, dialogInterface);
            }
        });
        this.perfectWarmDialog.show();
    }

    public static boolean hasNavBar(Context context2) {
        Resources resources = context2.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        if (identifier == 0) {
            return !ViewConfiguration.get(context2).hasPermanentMenuKey();
        }
        boolean z10 = resources.getBoolean(identifier);
        String navBarOverride = getNavBarOverride();
        if ("1".equals(navBarOverride)) {
            return false;
        }
        if ("0".equals(navBarOverride)) {
            return true;
        }
        return z10;
    }

    public static void hideBottomUIMenu() {
        baseActivity.getWindow().getDecorView().setSystemUiVisibility(com.umeng.analytics.pro.q.a.f84859f);
    }

    public static native void httpPostMemberInfo();

    protected static native int initEmu();

    protected static native int initLaunchConfig(String[] strArr, String[] strArr2);

    private void initSign() {
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(appPackName, 16384);
            this.appInfo = packageInfo;
            if (packageInfo != null) {
                DEVICE_VERSION = this.appInfo.versionCode + "";
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        httpKeySign = getMD5(DEVICE_ID + "gzRN53VWRF9BYUXomg2014");
        MyJson myJson = new MyJson();
        try {
            myJson.put("version", DEVICE_VERSION);
            myJson.put("deviceid", DEVICE_ID);
            myJson.put(Constant.MD5, httpKeySign);
            MyJson myJson2 = new MyJson();
            myJson2.put(QuarkPromptActivity_.ARGS_EXTRA, new JSONArray());
            myJson.put("messages", myJson2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        new HttpUtils().sendRequestWithHttpClient(HttpUtils.EXIT_AD_URL + "/advertisement/simulator_sign_out_ad", myJson.toString(), new HttpFinishInterface() { // from class: com.papa91.activity.EmuBaseActivity.19
            @Override // com.papa91.utils.HttpFinishInterface
            public void onRequestError(String str) {
            }

            @Override // com.papa91.utils.HttpFinishInterface
            public void onRequestSuccess(String str) {
                try {
                    EmuBaseActivity.this.messData = str;
                    JSONArray jSONArray = new MyJson(str).getJSONObject("messages").getJSONArray("data");
                    if (jSONArray == null || jSONArray.length() <= 0) {
                        return;
                    }
                    JSONObject jSONObject = (JSONObject) jSONArray.get(0);
                    String string = jSONObject.getString("pic_remote");
                    EmuBaseActivity.this.link_type = jSONObject.getString("link_type");
                    EmuBaseActivity.this.jump_type = jSONObject.getString("jump_type");
                    EmuBaseActivity.this.link_type_val = jSONObject.getString("link_type_val");
                    EmuBaseActivity.this.crc_link_type_val = jSONObject.getString("crc_link_type_val");
                    EmuBaseActivity.this.tpl_type = jSONObject.getString("tpl_type");
                    int i10 = jSONObject.getInt("ad_switch");
                    int i11 = jSONObject.getInt("quit_switch");
                    if (i10 != 0) {
                        EmuBaseActivity.hasAd = true;
                        if (i11 != 0) {
                            EmuBaseActivity.this.onAdShwoIsCloseMine = true;
                        }
                    }
                    EmuBaseActivity.ExitAdImageFilePath = new DownLoadFile().downLoad(StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()) + "/papa91/images/", string);
                } catch (JSONException e11) {
                    e11.printStackTrace();
                }
            }
        });
    }

    private boolean isFirstReame(String str) {
        SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(this);
        try {
            return defaultSharedPreferences.getBoolean(str, true);
        } catch (ClassCastException unused) {
            try {
                return Boolean.parseBoolean(defaultSharedPreferences.getString(str, "true"));
            } catch (Exception e10) {
                e10.printStackTrace();
                return true;
            }
        }
    }

    public static boolean isLogined() {
        return (TextUtils.isEmpty(UserID) || TextUtils.isEmpty(token) || UserID.equals("0") || token.equals("0")) ? false : true;
    }

    public static boolean isNetworkConnected() {
        Context context2 = context;
        if (context2 == null) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context2.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isAvailable();
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean isPathWriteable(String str) {
        File file = new File(new File(str), "test.txt");
        try {
            file.createNewFile();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        if (!file.exists()) {
            return false;
        }
        file.delete();
        return true;
    }

    static boolean isRewardConfigInited() {
        return getRewardConfig == 2;
    }

    public static int isSettingSystemManage() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(baseActivity);
        int i10 = defaultSharedPreferences.getInt("BBK_GIONE_NUM_GUIDE", 0);
        SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
        int i11 = i10 + 1;
        editorEdit.putInt("BBK_GIONE_NUM_GUIDE", i11);
        editorEdit.commit();
        if (i11 > 7) {
            return 0;
        }
        String str = Build.MANUFACTURER;
        if (str.equals("BBK")) {
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            List<ResolveInfo> listQueryIntentActivities = baseActivity.getPackageManager().queryIntentActivities(intent, 0);
            for (int i12 = 0; i12 < listQueryIntentActivities.size(); i12++) {
                if (listQueryIntentActivities.get(i12).activityInfo.packageName.equals("com.iqoo.secure")) {
                    systemSettingType = 1;
                    BBK_GIONEE_MAIN_NAME = listQueryIntentActivities.get(i12).activityInfo.name;
                    return systemSettingType;
                }
            }
            return 0;
        }
        if (!str.equals("GiONEE") && !str.equals("GIONEE")) {
            if (str.equals(BaseConstants.ROM_OPPO_UPPER_CONSTANT)) {
                return 3;
            }
            return str.equals("vivo") ? 1 : 0;
        }
        Intent intent2 = new Intent("android.intent.action.MAIN", (Uri) null);
        intent2.addCategory("android.intent.category.LAUNCHER");
        List<ResolveInfo> listQueryIntentActivities2 = baseActivity.getPackageManager().queryIntentActivities(intent2, 0);
        for (int i13 = 0; i13 < listQueryIntentActivities2.size(); i13++) {
            if (listQueryIntentActivities2.get(i13).activityInfo.packageName.equals("com.gionee.softmanager")) {
                systemSettingType = 2;
                BBK_GIONEE_MAIN_NAME = listQueryIntentActivities2.get(i13).activityInfo.name;
                return systemSettingType;
            }
        }
        return 0;
    }

    public static native int jMenuSaveState(int i10);

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkRealName$3(Response response, int i10) {
        if (response == null || response.getCode() != 200) {
            Toast.makeText(this, (response == null || TextUtils.isEmpty(response.getMessage())) ? "网络连接异常，请检查网络连接" : response.getMessage(), 0).show();
            this.loading_real_name = false;
            return;
        }
        PopwindowBean popwindowBean = (PopwindowBean) response.getData();
        if (popwindowBean != null) {
            handleCheckNameResult(popwindowBean, i10);
            if (popwindowBean.getEndDuration().intValue() > 0) {
                this.playTime = 0L;
                playCountDown(popwindowBean.getEndDuration().intValue(), i10 == 10);
            }
            if (i10 == 10) {
                showRealNameResult(popwindowBean);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkRealName$4(Request request, final int i10) {
        try {
            final Response<PopwindowBean> responseCheckRealName = com.papa91.arc.http.HttpUtils.checkRealName(request);
            this.loading_real_name = false;
            ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.activity.m
                @Override // java.lang.Runnable
                public final void run() {
                    this.f78002b.lambda$checkRealName$3(responseCheckRealName, i10);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
            this.loading_real_name = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeRealNameDialog$7() {
        PerfectWarmDialog perfectWarmDialog = this.alertTipDialog;
        if (perfectWarmDialog != null) {
            perfectWarmDialog.dismiss();
        }
        PerfectWarmDialog perfectWarmDialog2 = this.perfectWarmDialog;
        if (perfectWarmDialog2 != null) {
            perfectWarmDialog2.dismiss();
        }
        RealNameDialog realNameDialog = this.realNameDialog;
        if (realNameDialog != null) {
            realNameDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$endGameAllow$8(Response response, boolean z10, int i10) {
        if (response == null || response.getCode() != 200 || response.getData() == null) {
            return;
        }
        EndGameAllowBean endGameAllowBean = (EndGameAllowBean) response.getData();
        this.allowBean = endGameAllowBean;
        if (z10) {
            showEndGameFailed(endGameAllowBean.getCards(), endGameAllowBean.isUnlimited(), i10);
        } else {
            showEndGameStartView(false, endGameAllowBean.getCards(), endGameAllowBean.isUnlimited());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$endGameAllow$9(Request request, final boolean z10, final int i10) {
        try {
            final Response<EndGameAllowBean> responseEndGameAllow = com.papa91.arc.http.HttpUtils.endGameAllow(request);
            ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.activity.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f77975b.lambda$endGameAllow$8(responseEndGameAllow, z10, i10);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$endGameStart$10(Response response) {
        if (response == null || response.getCode() != 200) {
            this.isStarting = false;
            return;
        }
        if (response.getData() != null) {
            if (this.allowBean.isAllowed()) {
                challengeId = ((EndGameAllowBean) response.getData()).getChallengeId();
                endGameStartCountDown(((EndGameAllowBean) response.getData()).getChallengeId());
                isInChallenge = true;
            } else {
                EndGameAllowBean endGameAllowBean = this.allowBean;
                if (endGameAllowBean == null || !endGameAllowBean.isWatchAd()) {
                    showToast("已经没有挑战次数啦！");
                } else {
                    hideAllView();
                    scenario = 3;
                    new EndGamePointGetDialog(this, this.allowBean, GameID).show();
                    senCommonEvent("vsKjPopWindow", "");
                }
            }
        }
        this.isStarting = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$endGameStart$11(Request request) {
        try {
            final Response<EndGameAllowBean> responseEndGameStart = com.papa91.arc.http.HttpUtils.endGameStart(request);
            ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.activity.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f77969b.lambda$endGameStart$10(responseEndGameStart);
                }
            });
        } catch (Exception e10) {
            this.isStarting = false;
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getVideoAward$16(Response response, int i10) {
        if (response == null || response.getCode() != 200) {
            return;
        }
        if (i10 == 2) {
            showToast("领取成功");
            new Handler().postDelayed(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.43
                @Override // java.lang.Runnable
                public void run() {
                    Intent intent = new Intent();
                    intent.setAction("com.emu.ad.result");
                    intent.putExtra("adAction", 100);
                    intent.putExtra("exit", 1);
                    EmuBaseActivity.this.sendBroadcast(intent);
                }
            }, 1000L);
        } else {
            if (response.getData() == null || !((EndGameAllowBean) response.getData()).isAllowed()) {
                return;
            }
            endGameAllow(false, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getVideoAward$17(Request request, final int i10) {
        try {
            final Response<EndGameAllowBean> videoAward = com.papa91.arc.http.HttpUtils.getVideoAward(request);
            ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.activity.s
                @Override // java.lang.Runnable
                public final void run() {
                    this.f78017b.lambda$getVideoAward$16(videoAward, i10);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleButtonAction$6(ButtonBean buttonBean) {
        goWebView(this, buttonBean.getJumpLink());
        senCommonEvent("clickKnowGoRealPage", "0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleCheckNameResult$5(PopwindowBean popwindowBean, DialogInterface dialogInterface) {
        if (popwindowBean.isNoAge() && popwindowBean.getStatus() == 0) {
            senCommonEvent("nonageAstrictHint", "0");
        } else if (popwindowBean.getPopup().booleanValue() && popwindowBean.getButtonCenter() != null && popwindowBean.getButtonCenter().getEventType().intValue() == 1) {
            senCommonEvent("realNameUpWindows", "0");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(String str, String str2, String str3) {
        try {
            if (((Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(getApplicationContext(), com.kuaishou.weapon.p0.g.f74785i) == 0 && ContextCompat.checkSelfPermission(getApplicationContext(), com.kuaishou.weapon.p0.g.f74786j) == 0) || Environment.getExternalStorageState().equals("mounted")) && str.contains(StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()))) {
                String strReplace = str.replace(StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()), StoreUtils.getExternalStorageDirectory());
                if (new File(strReplace).exists()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("async state(oldVersion) src=");
                    sb2.append(strReplace);
                    sb2.append(", dst=");
                    sb2.append(str2);
                    copyStates(strReplace, str2);
                    FileUtils.deleteDirs(strReplace);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("async state src=");
            sb3.append(str);
            sb3.append(", dst=");
            sb3.append(str2);
            copyStates(BaseAppConfig.APP_PATH + str3, str2);
            copyStates(str2, BaseAppConfig.APP_PATH + str3);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showInvitePlayUiJava$1(View view) {
        acceptInvitePlay(1);
        this.invitePop.dismiss();
        this.timer.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showInvitePlayUiJava$2(View view) {
        acceptInvitePlay(0);
        this.invitePop.dismiss();
        this.timer.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateEndGameResult$12(Response response, int i10, int i11) {
        if (response == null || response.getCode() != 200 || response.getData() == null) {
            return;
        }
        EndGameAllowBean endGameAllowBean = (EndGameAllowBean) response.getData();
        for (EndGameAdBean endGameAdBean : endGameAllowBean.getAdVideoConfigList()) {
            if (endGameAdBean != null) {
                this.sdkType = endGameAdBean.getSdkType();
                CContext.mVideoAdListener.loadEndAd(endGameAdBean.getSdkType(), endGameAdBean.getAdId(), endGameAdBean.getSdkKey());
                break;
            }
        }
        updateEndGameResultSuccess(i10, i11, endGameAllowBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateEndGameResult$13(Request request, final int i10, final int i11) {
        try {
            final Response<EndGameAllowBean> responseUpdateEndGameResult = com.papa91.arc.http.HttpUtils.updateEndGameResult(request);
            ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.activity.o
                @Override // java.lang.Runnable
                public final void run() {
                    this.f78007b.lambda$updateEndGameResult$12(responseUpdateEndGameResult, i10, i11);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateEndGameResultV2$14(Response response, int i10, int i11) {
        if (response == null || response.getCode() != 200 || response.getData() == null) {
            return;
        }
        EndGameAllowBean endGameAllowBean = (EndGameAllowBean) response.getData();
        if (endGameAllowBean.getAwardCards() > 0 && endGameAllowBean.getMultipleAwardCards() > 0) {
            for (EndGameAdBean endGameAdBean : endGameAllowBean.getAdVideoConfigList()) {
                if (endGameAdBean != null) {
                    scenario = 2;
                    this.sdkType = endGameAdBean.getSdkType();
                    CContext.mVideoAdListener.loadEndAd(endGameAdBean.getSdkType(), endGameAdBean.getAdId(), endGameAdBean.getSdkKey());
                    break;
                }
            }
        }
        updateEndGameResultSuccess(i10, i11, endGameAllowBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateEndGameResultV2$15(Request request, final int i10, final int i11) {
        try {
            final Response<EndGameAllowBean> responseUpdateEndGameResultV2 = com.papa91.arc.http.HttpUtils.updateEndGameResultV2(request);
            ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.activity.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f77971b.lambda$updateEndGameResultV2$14(responseUpdateEndGameResultV2, i10, i11);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void loadAutoSlot(String str, int i10) {
        loadState(str);
        sendEmuStat("readAutosave", Integer.valueOf(i10));
        AutoSaveSlot autoSaveSlot2 = autoSaveSlot;
        if (autoSaveSlot2 != null) {
            autoSaveSlot2.start();
        }
        if (firstLoadAutoSlot()) {
            firstLoadAutoSlotSet();
            autoSaveSlot.showQuickLoadTip();
            showAutoRecordTips();
        }
    }

    public static void loadRomCompleted() {
        sendGameMessage("loadRomCompleted", "");
        send(new Intent(actionLoadRomFinish));
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.35
            @Override // java.lang.Runnable
            public void run() {
                if (EmuBaseActivity.autoSaveSlot != null && EmuBaseActivity.startMode == 0) {
                    EmuBaseActivity.autoSaveSlot.show();
                    EmuBaseActivity.autoSaveSlot.start();
                }
                EmuBaseActivity.showJavaShortCut(true);
            }
        });
    }

    public static void loadStageCompleted(int i10, String str) {
        Intent intent = new Intent(actionLoadStageCompleted);
        intent.putExtra("status", i10);
        intent.putExtra("message", str);
        send(intent);
    }

    public static native void loadStageData(int i10);

    public static native int loadState(String str);

    public static native void modifyEditCheat(int i10, EditCheatInfo editCheatInfo);

    /* JADX WARN: Code duplicated, block: B:64:0x0280  */
    public static String modifyRecordInfo(String str, boolean z10, boolean z11) {
        int i10;
        String str2;
        int i11;
        String str3 = str;
        String str4 = "";
        if (str3 != null && str.length() > 0) {
            String str5 = net.lingala.zip4j.util.e.F0;
            int i12 = 0;
            File file = new File(str3.substring(0, str3.lastIndexOf(net.lingala.zip4j.util.e.F0)));
            if (!file.isDirectory()) {
                return "";
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                fileArrListFiles = new File[0];
            }
            int i13 = 0;
            while (true) {
                i10 = 1;
                if (i13 >= fileArrListFiles.length - 1) {
                    break;
                }
                int i14 = i13 + 1;
                for (int i15 = i14; i15 < fileArrListFiles.length; i15++) {
                    if (fileArrListFiles[i13].lastModified() > fileArrListFiles[i15].lastModified()) {
                        File file2 = fileArrListFiles[i15];
                        fileArrListFiles[i15] = fileArrListFiles[i13];
                        fileArrListFiles[i13] = file2;
                    }
                }
                i13 = i14;
            }
            if (z10) {
                str2 = str3 + "vba";
                str3 = str3 + "vba";
            } else {
                str2 = str3;
            }
            if (z11) {
                str2 = str2 + "_v2";
                str3 = str3 + "_v2";
            }
            String str6 = null;
            String str7 = null;
            int i16 = 0;
            int i17 = 1;
            while (i16 < fileArrListFiles.length) {
                if (fileArrListFiles[i16].isFile() && fileArrListFiles[i16].getName().contains(o0.f49827a)) {
                    String absolutePath = fileArrListFiles[i16].getAbsolutePath();
                    String strSubstring = absolutePath.substring(i12, absolutePath.lastIndexOf(o0.f49827a));
                    if (strSubstring.equals(str3)) {
                        try {
                            i11 = Integer.parseInt(fileArrListFiles[i16].getName().substring(fileArrListFiles[i16].getName().lastIndexOf(o0.f49827a) + i10));
                        } catch (Exception unused) {
                            i11 = -1;
                        }
                        if (i11 != -1) {
                            String str8 = str7;
                            String str9 = new SimpleDateFormat("yyyy-MM-dd HH:mm").format((Date) new java.sql.Date(fileArrListFiles[i16].lastModified()));
                            if (i11 == 0) {
                                str4 = (fileArrListFiles[i16].getAbsolutePath() + "," + fileArrListFiles[i16].getAbsolutePath() + ".png," + str9 + ";") + str4;
                                str7 = str8;
                            } else {
                                int iLastIndexOf = strSubstring.lastIndexOf(47);
                                if (str6 == null) {
                                    str6 = new String(strSubstring.substring(i12, iLastIndexOf));
                                }
                                String str10 = str8 == null ? new String(strSubstring + "TmpState") : str8;
                                File file3 = new File(strSubstring + "TmpState");
                                if (!file3.exists()) {
                                    file3.mkdirs();
                                }
                                String str11 = str10 + str5 + strSubstring.substring(strSubstring.lastIndexOf(47) + 1, str2.length()) + o0.f49827a + i17;
                                String str12 = str11 + ".png";
                                String str13 = strSubstring + o0.f49827a + i17;
                                String str14 = str13 + ".png";
                                fileArrListFiles[i16].toString();
                                String str15 = fileArrListFiles[i16].toString() + ".png";
                                String str16 = str10;
                                String str17 = str6;
                                long jLastModified = fileArrListFiles[i16].lastModified();
                                File file4 = new File(str11);
                                if (fileArrListFiles[i16].exists()) {
                                    fileArrListFiles[i16].renameTo(file4);
                                    file4.setLastModified(jLastModified);
                                }
                                File file5 = new File(str15);
                                long jLastModified2 = file5.lastModified();
                                File file6 = new File(str12);
                                if (file5.exists()) {
                                    file5.renameTo(file6);
                                    file6.setLastModified(jLastModified2);
                                }
                                i17++;
                                str4 = (str4 + str13 + "," + str14 + "," + str9) + ";";
                                str6 = str17;
                                str7 = str16;
                            }
                        } else {
                            str7 = str7;
                        }
                    } else {
                        str7 = str7;
                    }
                } else {
                    str7 = str7;
                }
                i16++;
                str2 = str2;
                str3 = str3;
                str5 = str5;
                i12 = 0;
                i10 = 1;
            }
            String str18 = str7;
            if (str6 != null && str18 != null) {
                copyFolderReserveTime(str18, str6);
            }
        }
        return str4;
    }

    protected static boolean netBattleMatchEfficiency(String str, String str2, String str3) {
        Intent intent = new Intent(p5.a.U);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str3);
        intent.putExtra("jsonData", str2);
        send(intent);
        return true;
    }

    protected static native void netSitDown(boolean z10);

    public static void onAutoSaveClick() {
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.33
            @Override // java.lang.Runnable
            public void run() {
                if (EmuBaseActivity.autoSaveSlot == null || EmuBaseActivity.startMode != 0) {
                    return;
                }
                EmuBaseActivity.autoSaveSlot.showSlots();
                EmuBaseActivity.sendEmuStat("showAutosave", new Object[0]);
            }
        });
    }

    public static void onAutoSaveDoubleClick() {
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.34
            @Override // java.lang.Runnable
            public void run() {
                EmuBaseActivity.sendEmuStat("DoublereadAutosave", new Object[0]);
                if (EmuBaseActivity.autoSaveSlot == null || EmuBaseActivity.startMode != 0) {
                    return;
                }
                EmuBaseActivity.autoSaveSlot.quickLoadSlot();
            }
        });
    }

    public static void onLoadCheatListData() {
        List<CheatInfo> list = cheatInfos;
        if (list == null) {
            cheatInfos = new ArrayList();
        } else {
            list.clear();
        }
        while (true) {
            ArrayList<CheatInfo> cheatList1 = getCheatList1(cheatInfos.size());
            if (cheatList1 == null || cheatList1.size() <= 0) {
                return;
            } else {
                cheatInfos.addAll(cheatList1);
            }
        }
    }

    public static native void onLoginFinish();

    public static void openJavaEmuMenu(int i10) {
        if (baseActivity.isSingleGame) {
            return;
        }
        if (i10 == MenuType.slot.getCode()) {
            openMenu(Cocos2dxActivity.getContext(), actionShowMenuSlot);
            return;
        }
        if (i10 == MenuType.cheating.getCode()) {
            openMenu(Cocos2dxActivity.getContext(), actionShowMenuCheat);
            return;
        }
        if (i10 == MenuType.performance.getCode()) {
            openMenu(Cocos2dxActivity.getContext(), actionShowMenuPerformance);
            return;
        }
        if (i10 == MenuType.vip.getCode()) {
            openMenu(Cocos2dxActivity.getContext(), "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success");
        } else if (i10 == MenuType.oneKey.getCode()) {
            openMenu(Cocos2dxActivity.getContext(), actionShowMenuOnekey);
        } else if (i10 == MenuType.gate.getCode()) {
            openMenu(Cocos2dxActivity.getContext(), actionShowMenuGate);
        }
    }

    public static void openMenu(Context context2, String str) {
        send(new Intent(str));
    }

    public static void pauseGame(final int i10) {
        gameIsPause = i10 == 1;
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.30
            @Override // java.lang.Runnable
            public void run() {
                AutoSaveSlot autoSaveSlot2 = EmuBaseActivity.autoSaveSlot;
                if (autoSaveSlot2 != null) {
                    if (i10 == 1) {
                        autoSaveSlot2.pause();
                    } else {
                        autoSaveSlot2.resume();
                    }
                }
            }
        });
    }

    public static void payCondition(int i10) {
        payType = i10;
        sendHandleEmptyMessage(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playCountDown(long j10, boolean z10) {
        this.handler.removeCallbacks(this.limitTimeRunnable);
        this.limitTime = j10;
        this.isArenaCheck = z10;
        this.handler.postDelayed(this.limitTimeRunnable, 1000L);
    }

    static boolean playTime(long j10) {
        Intent intent = new Intent(p5.a.O);
        intent.putExtra("gameId", GameID);
        intent.putExtra("uid", UserID);
        intent.putExtra("sec", j10);
        send(intent);
        return true;
    }

    public static void raiseVip(int i10) {
        if (i10 == 8) {
            StartcomplainMsg("4", "0", "http://anv3cjapi.5fun.com/member/battle_kick/index", "", "");
            return;
        }
        Message message = new Message();
        message.what = 11;
        message.arg1 = i10;
        sendHandleMessage(message);
    }

    static void reconnectNetwork() {
        sendGameMessage("battleReconnect", "");
    }

    public static void recordEnd(int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("recordEndTest: ");
        sb2.append(i10);
        Intent intent = new Intent(actionRecordEnd);
        intent.putExtra(IntentKeys.KEY_PARAMS_RANK_PLAY_TIME, i10 / 60);
        send(intent);
    }

    protected static native void requestOnInquiry(String str);

    protected static native void requestOnPay(String str);

    protected static native void requestOnsign(String str);

    public static native void resetEndGame(String str);

    public static boolean rewardBananaEvent(String str, String str2, int i10, int i11, int i12) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.reward.analytics");
        intent.putExtra("action", str);
        intent.putExtra("uniqueId", "" + str2);
        intent.putExtra("gameId", "" + GameID);
        intent.putExtra("uid", "" + UserID);
        intent.putExtra("amount", i10);
        intent.putExtra("times", i11);
        intent.putExtra("type", i12);
        send(intent);
        return true;
    }

    static void runOnUiThread1(Runnable runnable) {
        ((Activity) Cocos2dxActivity.getContext()).runOnUiThread(runnable);
    }

    public static native void saveBindsFile();

    public static native void saveSnap(int i10);

    public static void selectCondition(int i10) {
        payType = i10;
        sendHandleEmptyMessage(1);
    }

    public static void send(Intent intent) {
        intent.putExtra("packageName", getHostPackageName());
        intent.putExtra("gameId", GameID);
        try {
            intent.addFlags(32);
            Cocos2dxActivity.getContext().sendBroadcast(intent);
            sendInBridge(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void sendAddFriends(int i10) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.addFriends");
        intent.putExtra("from", i10);
        send(intent);
    }

    private void sendEmuShowHideState(boolean z10) {
        Intent intent = new Intent(BAction.ACTION_EMU_SHOW_HIDE);
        intent.putExtra("gameId", GameID);
        intent.putExtra(CommonService_.AnonymousClass42.f72758c, z10);
        sendBroadcast(intent);
    }

    public static void sendEmuStat(String str, Object... objArr) {
        try {
            Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.stat");
            intent.putExtra(NotificationCompat.CATEGORY_EVENT, str);
            intent.putExtra("gameId", GameID);
            if (str.equals("readAutosave") || str.equals("onclickAutosave")) {
                intent.putExtra("pos", ((Integer) objArr[0]).intValue());
            }
            send(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void sendFriendsApplication(int i10) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.friendsApplication");
        intent.putExtra("action", i10);
        send(intent);
    }

    protected static void sendGameExit() {
        Intent intent = new Intent(actionHandleExitGame);
        intent.setFlags(32);
        Cocos2dxActivity.getContext().sendBroadcast(intent);
    }

    static void sendGameMessage(String str, String str2) {
        Intent intent = new Intent(p5.a.N0);
        intent.putExtra("key", str);
        intent.putExtra("msg", str2);
        intent.putExtra("startMode", startMode);
        intent.putExtra("gameId", GameID);
        intent.putExtra(CommonService_.AnonymousClass32.f72720g, GroupID);
        intent.putExtra("uid", UserID);
        send(intent);
    }

    static void sendGamePlay(int i10) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.gamePlay");
        intent.putExtra("action", i10);
        intent.putExtra("startMode", startMode);
        intent.putExtra("gameId", GameID);
        intent.putExtra(CommonService_.AnonymousClass32.f72720g, GroupID);
        intent.putExtra("uid", UserID);
        send(intent);
    }

    public static void sendHandleEmptyMessage(int i10) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.onHandleEmptyMessage");
        intent.putExtra("_what", i10);
        Cocos2dxActivity.getContext().sendBroadcast(intent);
    }

    public static void sendHandleMessage(Message message) {
        if (message != null) {
            Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.onHandleMessage");
            intent.putExtra("_message", message);
            Cocos2dxActivity.getContext().sendBroadcast(intent);
        }
    }

    static void sendInBridge(Intent intent) {
        if (useIndependentEmu && intent != null) {
            Message message = new Message();
            message.what = 11;
            message.setData(new Bundle(intent.getExtras()));
            Bundle bundle = new Bundle();
            bundle.putString("action", intent.getAction());
            bundle.putString("fromCls", className);
            message.obj = bundle;
            try {
                Messenger messenger = mMessenger;
                if (messenger != null) {
                    messenger.send(message);
                } else if (Cocos2dxActivity.getContext() instanceof EmuBaseActivity) {
                    ((EmuBaseActivity) Cocos2dxActivity.getContext()).bindBridge();
                }
            } catch (RemoteException e10) {
                e10.printStackTrace();
            }
        }
    }

    public static void sendReceiveInvitation() {
        send(new Intent("com.join.android.app.mgsim.wufun.broadcast.receiveInvitation"));
    }

    public static void sendStatEvent(String str, String str2) {
        if (TextUtils.isEmpty(str) || !str.equals("FCProduceBanner")) {
            return;
        }
        rewardBananaEvent("FCProduceBanner", "", 0, 0, 2);
    }

    public static void sendUmengEvent(String str, String str2) {
        Intent intent = new Intent("papa_broadcast_share_umengevent");
        intent.putExtra("umengEvent", str);
        intent.putExtra("eventData", str2);
        send(intent);
    }

    public static native void setAdResult(int i10);

    public static void setAdVisible(int i10, int i11) {
        if (i11 == 1) {
            Message message = new Message();
            message.what = 9;
            message.arg1 = i10;
            sendHandleMessage(message);
            return;
        }
        Message message2 = new Message();
        message2.what = 10;
        message2.arg1 = i10;
        sendHandleMessage(message2);
    }

    public static void setBBK_GOINEE_sysAPP() {
        sendHandleEmptyMessage(4);
    }

    public static void setBananaVisible(final boolean z10) {
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.31
            @Override // java.lang.Runnable
            public void run() {
                if (EmuBaseActivity.canShowRewardMenu() && EmuBaseActivity.progressView != null && EmuBaseActivity.startRewardCount) {
                    if (EmuBaseActivity.isRewardConfigInited() && EmuBaseActivity.left_play_reward_count - EmuBaseActivity.received_times < 1) {
                        EmuBaseActivity.progressView.setVisibility(8);
                    } else if (z10) {
                        EmuBaseActivity.progressView.setVisibility(0);
                        EmuBaseActivity.progressView.resume();
                    } else {
                        EmuBaseActivity.progressView.setVisibility(8);
                        EmuBaseActivity.progressView.pause();
                    }
                }
            }
        });
    }

    public static void setBannerType(int i10, int i11) {
    }

    public static native void setBattleScore(int i10, int i11);

    public static void setEmuUIVisible(final int i10) {
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.36
            @Override // java.lang.Runnable
            public void run() {
                if (EmuBaseActivity.autoSaveSlot == null || EmuBaseActivity.startMode != 0) {
                    return;
                }
                if (i10 == 1) {
                    EmuBaseActivity.autoSaveSlot.show();
                } else {
                    EmuBaseActivity.autoSaveSlot.hide();
                }
            }
        });
    }

    private void setFirestReame(String str) {
        SharedPreferences.Editor editorEdit = getDefaultSharedPreferences(this).edit();
        editorEdit.putBoolean(str, false);
        editorEdit.commit();
    }

    protected static native void setJoyStickKey(int[] iArr);

    protected static native int setJson(String str);

    public static void setOnlineState(int i10) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.setOnlineState");
        intent.putExtra(NoticeTopAnimActivityDialog_.STATE_EXTRA, i10);
        send(intent);
    }

    protected static native int setPadVisible(int i10, int i11);

    protected static void setPadVisible(int i10) {
        setPadVisible(i10, 1);
    }

    protected static native void setPasteForCheat(String str);

    public static native void setPause(int i10);

    public static native void setRewardResult(int i10, int i11);

    public static native void setSPBind(int i10, int i11, int i12);

    public static native void setSPVisible(boolean z10);

    public static void setScreenMode(int i10) {
        screenMode = i10;
        Intent intent = new Intent(BAction.ACTION_EMU_SCREEN_MODE);
        intent.putExtra(BaseAppConfig.PREF_SCREEN_MODE, i10);
        send(intent);
    }

    public static native void setShareResult(int i10, int i11);

    protected static native void setUserInfo(String str, String str2);

    public static native void setUserState(int i10);

    protected static native void setVipType(int i10, int i11);

    public static void showAchievementFloatDialog(List<AchievementBean.AchievementInfo> list) {
    }

    public static native void showAutoRecordTips();

    protected static native int showDailog(int i10);

    public static void showExitDlg(int i10, int i11, int i12, int i13, String str) {
        if (baseActivity.isSingleGame) {
            return;
        }
        if (startMode == 16) {
            Intent intent = new Intent();
            intent.setAction("com.emu.ad.result");
            intent.putExtra("adAction", 100);
            intent.putExtra("exit", 1);
            Cocos2dxActivity.getContext().sendBroadcast(intent);
            return;
        }
        level = i10;
        progress = i11;
        max = i12;
        time = i13;
        url = str;
        EmuMenuBaseActivity.saveSnapFrom = 0;
        exitMode = 0;
        saveSnap(0);
    }

    public static native void showInvitePlay(String str, String str2, String str3, long j10);

    public static void showJavaMembTips(int i10, int i11) {
        Intent intent = new Intent(actionVipTip);
        intent.putExtra("tipid", i10);
        intent.putExtra("charid", i11);
        send(intent);
    }

    public static void showJavaShortCut(boolean z10) {
        send(z10 ? new Intent(actionShowMenu) : new Intent(actionHideMenu));
    }

    private void showNativeRealName(PopwindowBean popwindowBean, final int i10) {
        senCommonEvent("realNameDisplayWindow", "0");
        RealNameDialog realNameDialog = new RealNameDialog(this, popwindowBean, new RealNameCallBack() { // from class: com.papa91.activity.EmuBaseActivity.41
            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onCancel(Dialog dialog, ButtonBean buttonBean) {
                EmuBaseActivity.this.senCommonEvent("clickClosedRealNameWindow", "0");
                EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
                emuBaseActivity.handleButtonAction(emuBaseActivity.realNameDialog, dialog, buttonBean, i10);
            }

            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onEvent(String str, String str2) {
                EmuBaseActivity.this.senCommonEvent(str, str2);
            }

            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onFail(int i11) {
            }

            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onSuccess(Dialog dialog, PopwindowBean popwindowBean2) {
                dialog.dismiss();
                EmuBaseActivity.this.handleCheckNameResult(popwindowBean2, i10);
                if (popwindowBean2.getEndDuration().intValue() > 0) {
                    EmuBaseActivity emuBaseActivity = EmuBaseActivity.this;
                    emuBaseActivity.playTime = 0L;
                    emuBaseActivity.playCountDown(popwindowBean2.getEndDuration().intValue(), i10 == 10);
                }
            }
        });
        this.realNameDialog = realNameDialog;
        realNameDialog.show(UserID, Integer.valueOf(i10), 2);
    }

    public static void showNetExitDlg(int i10, int i11, int i12, int i13, String str, String str2) {
        level = i10;
        progress = i11;
        max = i12;
        time = i13;
        url = str;
        jusrid = str2;
        EmuMenuBaseActivity.saveSnapFrom = 0;
        exitMode = 1;
        saveSnap(0);
    }

    private void showRealNameResult(PopwindowBean popwindowBean) {
        long jIntValue = popwindowBean.getEndDuration().intValue();
        if (!popwindowBean.isPopup()) {
            netSitDown(true);
            return;
        }
        senCommonEvent("clickKnowGoRealPage", "0");
        netSitDown(false);
        if (jIntValue == -1) {
            finish();
        }
    }

    public static void showRewardDialog(final String str, final int i10, int i11) {
        ((Activity) Cocos2dxActivity.getContext()).runOnUiThread(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.21
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(EmuBaseActivity.token) || TextUtils.isEmpty(EmuBaseActivity.UserID)) {
                    EmuBaseActivity.sign();
                    EmuBaseActivity.setRewardResult(0, 0);
                    return;
                }
                boolean z10 = EmuBaseActivity.tourist;
                int i12 = EmuBaseActivity.generate_times;
                int i13 = i10;
                if (i12 != i13) {
                    EmuBaseActivity.unique_id = "";
                    EmuBaseActivity.reward_amount = 0;
                    EmuBaseActivity.reward_times = 0;
                    EmuBaseActivity.reward_left_count = 0;
                }
                EmuBaseActivity.generate_times = i13;
                EmuBaseActivity.showRewardDialog1(str);
            }
        });
    }

    public static void showRewardDialog1(String str) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        RewardBananaDialog rewardBananaDialog2 = rewardBananaDialog;
        if (rewardBananaDialog2 != null) {
            if (rewardBananaDialog2.isShowing()) {
                rewardBananaDialog.dismiss();
            }
            rewardBananaDialog = null;
        }
        if (rewardBananaDialog == null) {
            RewardBananaDialog rewardBananaDialog3 = new RewardBananaDialog(Cocos2dxActivity.getContext(), R.style.Dialog) { // from class: com.papa91.activity.EmuBaseActivity.24
                @Override // com.papa91.view.RewardBananaDialog
                public void giveUpReceive(int i17) {
                    super.giveUpReceive(i17);
                    DragProgressView dragProgressView = EmuBaseActivity.progressView;
                    dragProgressView.setSignal(dragProgressView.getSignal() - 1);
                    EmuBaseActivity.progressView.resume();
                }
            };
            rewardBananaDialog = rewardBananaDialog3;
            rewardBananaDialog3.setListener(new RewardBananaDialog.OnRewardBananaListener() { // from class: com.papa91.activity.EmuBaseActivity.25
                @Override // com.papa91.view.RewardBananaDialog.OnRewardBananaListener
                public void onDoubleReward(String str2, int i17, int i18, int i19, String str3) {
                    Intent intent = new Intent("com.tools.AdBroadcast");
                    intent.putExtra("action", 5);
                    intent.putExtra("orientation", 1);
                    intent.putExtra("uniqueId", str2);
                    intent.putExtra("gameId", str3);
                    intent.putExtra("amount", i17);
                    intent.putExtra("times", i18);
                    intent.putExtra("type", i19);
                    intent.putExtra("uid", EmuBaseActivity.UserID);
                    EmuBaseActivity.send(intent);
                    EmuBaseActivity.rewardBananaEvent("FCDouble", str2, i17, i18, i19);
                }

                @Override // com.papa91.view.RewardBananaDialog.OnRewardBananaListener
                public void onReceiveReward(String str2, int i17, int i18, int i19, String str3) {
                    Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.reward.receive");
                    intent.putExtra("orientation", 1);
                    intent.putExtra("uniqueId", str2);
                    intent.putExtra("gameId", str3);
                    intent.putExtra("amount", i17);
                    intent.putExtra("times", 1);
                    intent.putExtra("type", i19);
                    intent.putExtra("uid", EmuBaseActivity.UserID);
                    EmuBaseActivity.send(intent);
                    EmuBaseActivity.rewardBananaEvent("FCReceiveBanner", str2, i17, i18, i19);
                }

                @Override // com.papa91.view.RewardBananaDialog.OnRewardBananaListener
                public void onRewardInfo(String str2, int i17, int i18, int i19, int i20) {
                    EmuBaseActivity.unique_id = str2;
                    EmuBaseActivity.reward_amount = i17;
                    EmuBaseActivity.reward_times = i18;
                    EmuBaseActivity.reward_left_count = i19;
                    EmuBaseActivity.total_reward_amount = i20;
                }
            });
            rewardBananaDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.papa91.activity.EmuBaseActivity.26
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    EmuBaseActivity.setRewardResult(0, 0);
                    EmuBaseActivity.setPause(0);
                }
            });
        }
        rewardBananaDialog.show();
        setPause(1);
        int i17 = 0;
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new MyJson(str).getJSONObject("banana_reward_config", null);
                if (jSONObject != null) {
                    MyJson myJson = new MyJson(jSONObject.toString());
                    myJson.getInt("max_reward_amount", 0);
                    myJson.getInt("min_reward_amount", 0);
                    myJson.getInt("max_reward_times", 0);
                    myJson.getInt("min_reward_times", 0);
                    left_play_reward_count = myJson.getInt("left_play_reward_count", 0);
                    left_device_play_reward_count = myJson.getInt("left_device_play_reward_count", 0);
                    if (reward_left_count < 0) {
                        reward_left_count = 0;
                    }
                    int i18 = reward_left_count;
                    try {
                        int i19 = reward_amount;
                        try {
                            i15 = i18;
                            i14 = reward_times;
                            i17 = i19;
                        } catch (Exception e10) {
                            i10 = i18;
                            e = e10;
                            i11 = i19;
                            e.printStackTrace();
                            i12 = i10;
                            i13 = i11;
                            i16 = 0;
                        }
                    } catch (Exception e11) {
                        i11 = 0;
                        i10 = i18;
                        e = e11;
                    }
                } else {
                    i14 = 0;
                    i15 = 0;
                }
                i16 = i14;
                i12 = i15;
                i13 = i17;
            } catch (Exception e12) {
                e = e12;
                i10 = 0;
                i11 = 0;
            }
            rewardBananaDialog.setAccount(UserID, token, DEVICE_ID);
            rewardBananaDialog.setData(i12, unique_id, i13, i16, 2, GameID, total_reward_amount);
        }
        i12 = 0;
        i13 = 0;
        i16 = 0;
        rewardBananaDialog.setAccount(UserID, token, DEVICE_ID);
        rewardBananaDialog.setData(i12, unique_id, i13, i16, 2, GameID, total_reward_amount);
    }

    static void showRewardMenu() {
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.29
            @Override // java.lang.Runnable
            public void run() {
                if (EmuBaseActivity.canShowRewardMenu() && EmuBaseActivity.progressView != null) {
                    if (EmuBaseActivity.isRewardConfigInited() && EmuBaseActivity.left_play_reward_count - EmuBaseActivity.received_times < 1) {
                        EmuBaseActivity.progressView.setVisibility(8);
                        return;
                    }
                    if (EmuBaseActivity.progressView.getVisibility() != 0) {
                        EmuBaseActivity.progressView.setVisibility(0);
                    }
                    if (TextUtils.isEmpty(EmuBaseActivity.rewardConfig)) {
                        return;
                    }
                    EmuBaseActivity.progressView.setSignalMax(EmuBaseActivity.reward_left_count);
                    EmuBaseActivity.progressView.setInterval(EmuBaseActivity.init_first_box_time, EmuBaseActivity.min_time_interval, EmuBaseActivity.max_time_interval);
                    if (EmuBaseActivity.progressView.isRunning()) {
                        return;
                    }
                    EmuBaseActivity.progressView.start();
                }
            }
        });
    }

    protected static void showRewardTipDialog() {
        RewardBananaTipDialog rewardBananaTipDialog = new RewardBananaTipDialog(Cocos2dxActivity.getContext(), R.style.Dialog);
        rewardBananaTipDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.papa91.activity.EmuBaseActivity.22
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                EmuBaseActivity.setPause(0);
            }
        });
        rewardBananaTipDialog.show();
        setPause(1);
    }

    static void showToast(final String str) {
        runOnUiThread1(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.32
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(Cocos2dxActivity.getContext(), str, 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showVideoPopWin(String str, int i10) {
        VideoStrategyPop videoStrategyPop = this.videoStrategyPop;
        if (videoStrategyPop == null || !videoStrategyPop.isShowing()) {
            VideoStrategyPop videoStrategyPop2 = new VideoStrategyPop(this, i10, str, new VideoStrategyPop.VideoPopListener() { // from class: com.papa91.activity.EmuBaseActivity.6
                @Override // com.papa91.VideoStrategyPop.VideoPopListener
                public void onClose() {
                    EmuBaseActivity.setAdResult(1);
                }
            });
            this.videoStrategyPop = videoStrategyPop2;
            videoStrategyPop2.showAtLocation(videoStrategyPop2.getContentView(), 17, 0, 0);
            this.videoStrategyPop.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.papa91.activity.EmuBaseActivity.7
                @Override // android.widget.PopupWindow.OnDismissListener
                public void onDismiss() {
                    EmuBaseActivity.this.videoStrategyPop.dismiss();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showVipDialog(String str, String str2, String str3, String str4, String str5, String str6, String str7, final int i10, final int i11, final int i12, final int i13) {
        if (this.messageDialog == null) {
            MessageVipCommonDialog messageVipCommonDialog = new MessageVipCommonDialog(context, str, str2, str3, str4, str5, str6, str7, i10) { // from class: com.papa91.activity.EmuBaseActivity.8
                @Override // com.papa91.MessageVipCommonDialog, android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (EmuBaseActivity.this.needResumeGame()) {
                        EmuBaseActivity.setPause(0);
                    }
                    super.onDismiss(dialogInterface);
                }

                @Override // com.papa91.MessageVipCommonDialog, android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                    EmuBaseActivity.setPause(1);
                    super.onShow(dialogInterface);
                }
            };
            this.messageDialog = messageVipCommonDialog;
            messageVipCommonDialog.show();
            this.messageDialog.setCancelBtn(new View.OnClickListener() { // from class: com.papa91.activity.EmuBaseActivity.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (EmuBaseActivity.this.messageDialog.getBtn_url() == null || "".equals(EmuBaseActivity.this.messageDialog.getBtn_url())) {
                        return;
                    }
                    Intent intent = new Intent("com.tools.AdBroadcast");
                    intent.putExtra("action", 3);
                    intent.putExtra("url", EmuBaseActivity.this.messageDialog.getBtn_url());
                    intent.putExtra("from", 1);
                    EmuBaseActivity.send(intent);
                }
            });
            this.messageDialog.setImgListener(new View.OnClickListener() { // from class: com.papa91.activity.EmuBaseActivity.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (EmuBaseActivity.this.messageDialog.getUrl() == null || "".equals(EmuBaseActivity.this.messageDialog.getUrl())) {
                        return;
                    }
                    Intent intent = new Intent("com.tools.AdBroadcast");
                    intent.putExtra("action", 4);
                    intent.putExtra("url", EmuBaseActivity.this.messageDialog.getUrl());
                    EmuBaseActivity.send(intent);
                }
            });
            this.messageDialog.setOkBtn(new View.OnClickListener() { // from class: com.papa91.activity.EmuBaseActivity.11
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (EmuBaseActivity.this.adLoadError) {
                        Intent intent = new Intent();
                        intent.setAction("com.emu.ad.result");
                        intent.putExtra("adAction", 7);
                        EmuBaseActivity.send(intent);
                        EmuBaseActivity.this.adLoadError = false;
                        return;
                    }
                    Intent intent2 = new Intent("com.tools.AdBroadcast");
                    intent2.putExtra("times", i10);
                    intent2.putExtra("howTimes", i11);
                    intent2.putExtra("adSdkType", i12);
                    intent2.putExtra("gameId", EmuBaseActivity.GameID);
                    intent2.putExtra("action", 0);
                    intent2.putExtra("adCount", i13);
                    EmuBaseActivity.send(intent2);
                }
            });
        }
    }

    public static void sign() {
        try {
            Intent intent = new Intent();
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.setClassName(getHostPackageName(), "com.join.mgps.activity.login.LoginSplashActivity_");
            Cocos2dxActivity.getContext().startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void snapFinished(String str) {
        snapshotPath = str;
        String str2 = actionShowShare;
        if (EmuMenuBaseActivity.saveSnapFrom != 1) {
            str2 = actionShowShare + ".main";
        }
        Intent intent = new Intent(str2);
        intent.putExtra("imagePath", str);
        send(intent);
        if (EmuMenuBaseActivity.saveSnapFrom == 0) {
            goExitPage(exitMode);
            deleteOldSnapshot(str);
        }
        EmuMenuBaseActivity.saveSnapFrom = 0;
    }

    public static boolean spVisibleState() {
        SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(Cocos2dxActivity.getContext());
        if (startMode != 16) {
            if (defaultSharedPreferences.getBoolean(GameID + "_isSpVisible", true)) {
                return true;
            }
        }
        return false;
    }

    public static void startAPPActivity() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(appPackName, "com.join.mgps.activity.ForumActivity_"));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fid", fid);
            jSONObject.put("name", "");
            jSONObject.put("icon_src", "");
            jSONObject.put("users", 0);
            jSONObject.put("posts", 0);
            jSONObject.put("add_time", 0);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        intent.putExtra("key_forum_bean", jSONObject.toString());
        intent.setAction("com.wufun.intent.activity.view.action.emuintent");
        baseActivity.startActivity(intent);
    }

    public static void startForumsActivity() {
        sendHandleEmptyMessage(0);
    }

    public static void startForumsActivityForAd(int i10, int i11) {
        Message message = new Message();
        message.what = 101;
        message.arg1 = i10;
        message.arg2 = i11;
        sendHandleMessage(message);
    }

    public static void startRewardCount() {
        startRewardCount = true;
        showRewardMenu();
    }

    public static void startShare(final int i10, final String str) {
        baseActivity.runOnUiThread(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.2
            @Override // java.lang.Runnable
            public void run() {
                Intent intent = new Intent("papa_broadcast_share_message");
                intent.putExtra("shareJson", str);
                intent.putExtra("shareType", i10);
                EmuBaseActivity.send(intent);
            }
        });
    }

    public static void startShowAd(final int i10, int i11) {
        baseActivity.runOnUiThread(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.1
            @Override // java.lang.Runnable
            public void run() {
                Intent intent = new Intent("com.tools.AdBroadcast");
                intent.putExtra("action", 2);
                intent.putExtra("plugNum", i10);
                intent.putExtra("gameId", EmuBaseActivity.GameID);
                EmuBaseActivity.send(intent);
            }
        });
    }

    public static void startplayTime(int i10) {
        playTime(i10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("startplayTime: ");
        sb2.append(i10);
    }

    public static void toPrefecture(int i10) {
        Message message = new Message();
        message.what = 100;
        message.arg1 = i10;
        sendHandleMessage(message);
    }

    protected static boolean unLockSP(String str) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void update(String str, boolean z10) {
    }

    public static void updateAchieve(String str) {
        update(str, false);
    }

    static void updateVsScore(String str) {
        sendGameMessage("battleScoreBoard", str);
    }

    public static void uploadEfficiencyData() {
    }

    public void HttpPost_Memer() {
        Dialog dialog;
        if (!isNetworkConnected() || (dialog = mDialog) == null) {
            return;
        }
        dialog.dismiss();
    }

    protected void asyncConfig() {
        this.handler.post(new Runnable() { // from class: com.papa91.activity.EmuBaseActivity.38
            void doCopyCfg() {
                try {
                    String absolutePath = new File(BaseAppConfig.CONFIG_PATH).getAbsolutePath();
                    if (absolutePath.contains(StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()))) {
                        String strReplace = absolutePath.replace(StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()), StoreUtils.getExternalStorageDirectory());
                        String unused = Cocos2dxActivity.TAG;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("async cfg(oldVersion) src=");
                        sb2.append(strReplace);
                        sb2.append(", dst=");
                        sb2.append(absolutePath);
                        FileUtils.copyFolder(strReplace, absolutePath);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }

            void doCopySav() {
                try {
                    if (TextUtils.isEmpty(EmuBaseActivity.romPath)) {
                        return;
                    }
                    String str = EmuBaseActivity.romPath;
                    String absolutePath = new File(BaseAppConfig.APP_PATH + str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1) + net.lingala.zip4j.util.e.F0).getAbsolutePath();
                    if (absolutePath.contains(StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()))) {
                        String strReplace = absolutePath.replace(StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()), StoreUtils.getExternalStorageDirectory());
                        String unused = Cocos2dxActivity.TAG;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("async sav(oldVersion) src=");
                        sb2.append(strReplace);
                        sb2.append(", dst=");
                        sb2.append(absolutePath);
                        EmuBaseActivity.this.asyncFile(strReplace, absolutePath);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if ((Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(EmuBaseActivity.this.getApplicationContext(), com.kuaishou.weapon.p0.g.f74785i) == 0 && ContextCompat.checkSelfPermission(EmuBaseActivity.this.getApplicationContext(), com.kuaishou.weapon.p0.g.f74786j) == 0) || Environment.getExternalStorageState().equals("mounted")) {
                        doCopyCfg();
                        doCopySav();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        });
    }

    protected void asyncFile(String str, String str2) {
        FileUtils.copyFolder(str, str2, new String[]{".sav", ".srm", ".mcr"});
    }

    void bindBridge() {
        if (useIndependentEmu) {
            try {
                Context context2 = Cocos2dxActivity.getContext();
                if (context2 == null) {
                    return;
                }
                mServiceConnection = new ServiceConnection() { // from class: com.papa91.activity.EmuBaseActivity.20
                    @Override // android.content.ServiceConnection
                    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                        EmuBaseActivity.mMessenger = new Messenger(iBinder);
                        String unused = Cocos2dxActivity.TAG;
                        EmuBaseActivity.this.onMessengerConnected(EmuBaseActivity.mMessenger);
                    }

                    @Override // android.content.ServiceConnection
                    public void onServiceDisconnected(ComponentName componentName) {
                    }
                };
                Intent intent = new Intent();
                intent.setComponent(new ComponentName(getHostPackageName(), "com.join.mgps.va.service.MessengerService"));
                context2.bindService(intent, mServiceConnection, 1);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void bindService() {
        gameStart();
        bindBridge();
    }

    public void buySp() {
        PayCenter.buySP(this, UserID, token, GameID, new PayListener() { // from class: com.papa91.activity.EmuBaseActivity.15
            @Override // com.papa91.paay.PayListener
            public void onResult(PayResponse payResponse) {
                PayResponseData data = payResponse.getData();
                String buy_error_message = data.getBuy_error_message();
                String result = data.getResult();
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("result", result);
                jsonObject.addProperty("data", buy_error_message);
            }
        });
    }

    protected void checkRealName(final int i10) {
        try {
            if (this.isSingleGame) {
                return;
            }
            if (!isNetworkConnected()) {
                Toast.makeText(this, "请联网后重试！", 0).show();
                return;
            }
            com.papa91.arc.http.HttpUtils.init(context);
            if (this.loading_real_name) {
                return;
            }
            this.loading_real_name = true;
            ReqRealNameArgs reqRealNameArgs = new ReqRealNameArgs();
            if (!TextUtils.isEmpty(UserID)) {
                reqRealNameArgs.setUid(Integer.valueOf(UserID));
            }
            reqRealNameArgs.setUserToken(token);
            if ("".equals(this.gameType)) {
                if (i10 == 10) {
                    this.gameType = "FIGHT_LOBBY";
                } else {
                    this.gameType = "SO_SIMULATOR";
                }
            }
            reqRealNameArgs.setGameType(this.gameType);
            reqRealNameArgs.setType(Integer.valueOf(i10));
            reqRealNameArgs.setGameId(GameID);
            reqRealNameArgs.setAction(2);
            reqRealNameArgs.setPlatformType("ANDROID");
            final Request request = Request.getRequest(context, reqRealNameArgs);
            request.setSign(SignUtil.getSignForAPP(request));
            ThreadManager.runOnWriteThread(new Runnable() { // from class: com.papa91.activity.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f77983b.lambda$checkRealName$4(request, i10);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
            this.loading_real_name = false;
        }
    }

    protected void closeRealNameDialog() {
        ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.activity.l
            @Override // java.lang.Runnable
            public final void run() {
                this.f78001b.lambda$closeRealNameDialog$7();
            }
        });
    }

    public void complainMsg(int i10, int i11) {
        this.link_type = "4";
        this.link_type_val = "http://anv3frapi.5fun.com/lobby/report?report_uid=" + i11 + "&reported_uid=" + i10;
        Intent intent = new Intent();
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.setAction("com.wufun.intent.activity.view.action.emuintent");
        intent.addCategory("android.intent.category.DEFAULT");
        MyJson myJson = new MyJson();
        try {
            myJson.put("link_type", this.link_type);
            myJson.put("jump_type", this.jump_type);
            myJson.put("link_type_val", this.link_type_val);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        intent.putExtra("intentDataJson", myJson.toString());
        intent.setAction("com.wufun.intent.activity.view.action.emuintent");
        startActivity(intent);
    }

    public String dealSDPath(String str, String str2) {
        MyJson myJson;
        try {
            this.appInfo = getPackageManager().getPackageInfo(appPackName, 16384);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        PackageInfo packageInfo = this.appInfo;
        int i10 = packageInfo != null ? packageInfo.versionCode : 0;
        MyJson myJson2 = null;
        try {
            myJson = new MyJson(str);
            try {
                String string = myJson.getString(BaseAppConfig.KEY_ROM_PATH, "");
                romPath = string;
                try {
                    if (i10 < 41) {
                        myJson.put(BaseAppConfig.KEY_UGC_PATH, string);
                        ugcPath = new String(romPath);
                    } else {
                        int iLastIndexOf = string.lastIndexOf(47);
                        String strSubstring = romPath.substring(iLastIndexOf + 1);
                        String str3 = new String(str2 + strSubstring + net.lingala.zip4j.util.e.F0 + strSubstring);
                        ugcPath = str3;
                        myJson.put(BaseAppConfig.KEY_UGC_PATH, str3);
                        File file = new File(ugcPath);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        File file2 = new File(romPath.substring(0, iLastIndexOf) + "/PSP");
                        File file3 = new File(str2 + strSubstring + "/PSP");
                        if (file2.exists()) {
                            file2.renameTo(file3);
                        }
                    }
                } catch (Exception e10) {
                    myJson.put(BaseAppConfig.KEY_UGC_PATH, romPath);
                    ugcPath = new String(romPath);
                    e10.printStackTrace();
                }
            } catch (JSONException e11) {
                e = e11;
                myJson2 = myJson;
                e.printStackTrace();
                myJson = myJson2;
            }
        } catch (JSONException e12) {
            e = e12;
        }
        myJson.toString();
        return myJson.toString();
    }

    void destroyRewardInfo() {
        generatedTimes = 0;
        rewardConfig = "";
        startRewardCount = false;
        this.getRewardConfigCount = 3;
        getRewardConfig = 0;
        left_play_reward_count = 0;
        RewardBananaTipDialog rewardBananaTipDialog = this.rewardBananaTipDialog;
        if (rewardBananaTipDialog != null && rewardBananaTipDialog.isShowing()) {
            this.rewardBananaTipDialog.dismiss();
        }
        this.rewardBananaTipDialog = null;
        hasRewardBanana = false;
    }

    public void endGameAllow(final boolean z10, final int i10) {
        try {
            if (startMode != 16) {
                return;
            }
            if (!z10) {
                showEndGameStartView(true, 0, false);
            }
            if (!isNetworkConnected()) {
                showToast("网络连接异常，请检查网络连接");
                return;
            }
            this.isAfterFailedEndGame = z10;
            RequestEndGameAllowArgs requestEndGameAllowArgs = new RequestEndGameAllowArgs();
            requestEndGameAllowArgs.setGameId(GameID);
            requestEndGameAllowArgs.setUid(UserID);
            requestEndGameAllowArgs.setScenario(3);
            requestEndGameAllowArgs.setEndgameId(endId);
            final Request request = Request.getRequest(Cocos2dxActivity.getContext(), requestEndGameAllowArgs);
            request.setSign(SignUtil.getSignForAPP(request));
            ThreadManager.runOnWriteThread(new Runnable() { // from class: com.papa91.activity.i
                @Override // java.lang.Runnable
                public final void run() {
                    this.f77992b.lambda$endGameAllow$9(request, z10, i10);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void endGameStart() {
        try {
            if (startMode != 16) {
                return;
            }
            if (!isNetworkConnected()) {
                this.isStarting = false;
                showToast("网络连接异常，请检查网络连接");
            } else {
                if (this.isStarting) {
                    return;
                }
                this.isStarting = true;
                RequestEndGameAllowArgs requestEndGameAllowArgs = new RequestEndGameAllowArgs();
                requestEndGameAllowArgs.setGameId(GameID);
                requestEndGameAllowArgs.setUid(UserID);
                requestEndGameAllowArgs.setEndgameId(endId);
                final Request request = Request.getRequest(Cocos2dxActivity.getContext(), requestEndGameAllowArgs);
                request.setSign(SignUtil.getSignForAPP(request));
                ThreadManager.runOnWriteThread(new Runnable() { // from class: com.papa91.activity.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f77999b.lambda$endGameStart$11(request);
                    }
                });
            }
        } catch (Exception e10) {
            this.isStarting = false;
            e10.printStackTrace();
        }
    }

    public void endGameStartCountDown(String str) {
    }

    void gameStart() {
        try {
            startTIme = System.currentTimeMillis();
            int i10 = startMode;
            if (i10 == 0) {
                if (!gameStart15(GameID, UserID)) {
                    createDir(StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()) + "mgpapa/aidlservice/Game_start15_" + GameID + "_" + UserID);
                }
            } else if (i10 == 2 || i10 == 1) {
                if (!gameStartBattle15(GameID, UserID)) {
                    createDir(StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()) + "mgpapa/aidlservice/Game_startBattle15_" + GameID + "_" + UserID);
                }
            } else if (!gameStart160(GameID, UserID, i10)) {
                createDir(StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()) + "mgpapa/aidlservice/Game_start160_" + GameID + "_" + UserID + "_" + startMode);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    boolean gameStart15(String str, String str2) {
        Intent intent = new Intent(p5.a.P);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        send(intent);
        return true;
    }

    boolean gameStartBattle15(String str, String str2) {
        Intent intent = new Intent(p5.a.Q);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        send(intent);
        return true;
    }

    public native int getCurChar();

    public String getMD5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] bArrDigest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i10 = 0; i10 < bArrDigest.length; i10++) {
                if (Integer.toHexString(bArrDigest[i10] & 255).length() == 1) {
                    stringBuffer.append("0");
                    stringBuffer.append(Integer.toHexString(bArrDigest[i10] & 255));
                } else {
                    stringBuffer.append(Integer.toHexString(bArrDigest[i10] & 255));
                }
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            return "";
        }
    }

    protected void getRewardConfig() {
        if (isNetworkConnected() && getRewardConfig != 1) {
            getRewardConfig = 1;
            this.getRewardConfigCount--;
        }
    }

    public void getVideoAward(final int i10, boolean z10) {
        try {
            if (startMode != 16) {
                return;
            }
            if (isNetworkConnected()) {
                EndGameAwardArgs endGameAwardArgs = new EndGameAwardArgs();
                endGameAwardArgs.setGameId(GameID);
                endGameAwardArgs.setUid(UserID);
                endGameAwardArgs.setEndgameId(endId);
                endGameAwardArgs.setChallengeId(challengeId);
                endGameAwardArgs.setScenario(i10);
                endGameAwardArgs.setMultiply(z10);
                final Request request = Request.getRequest(Cocos2dxActivity.getContext(), endGameAwardArgs);
                request.setSign(SignUtil.getSignForAPP(request));
                ThreadManager.runOnWriteThread(new Runnable() { // from class: com.papa91.activity.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f77996b.lambda$getVideoAward$17(request, i10);
                    }
                });
            } else {
                showToast("网络连接异常，请检查网络连接");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    protected void handleAdError(Context context2, Intent intent) {
    }

    protected void handleAdResult(Context context2, Intent intent) {
    }

    public native boolean hasLifeCheck(long j10);

    public void hideAllView() {
    }

    public void hideMenuDialog() {
    }

    public void initBanner(JSONArray jSONArray, String str) {
    }

    void initReceiver() {
        this.paayReceiver = new PaayReceiver() { // from class: com.papa91.activity.EmuBaseActivity.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                EmuBaseActivity.UserID = intent.getExtras().getString("uid");
                EmuBaseActivity.token = intent.getExtras().getString(Constants.TOKEN);
                if (intent.getExtras().getInt("sp") != 2) {
                    EmuBaseActivity.selectCondition(EmuBaseActivity.payType);
                    return;
                }
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("isbuy", Boolean.TRUE);
                jsonObject.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                jsonObject.addProperty("data", "already");
                EmuBaseActivity.requestOnInquiry(jsonObject.toString());
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        this.intentFilter = intentFilter;
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        NetWorkReceiver netWorkReceiver = new NetWorkReceiver();
        this.netWorkReceiver = netWorkReceiver;
        registerReceiver(netWorkReceiver, this.intentFilter);
        this.iMReceive = new IMReceive();
        registerReceiver(this.iMReceive, new IntentFilter("com.join.mgps.activity.sendUI"));
        this.playTimeReceiver = new PlayTimeReceiver();
        IntentFilter intentFilter2 = new IntentFilter("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
        intentFilter2.addAction("com.join.android.app.mgsim.wufan.mha.broadcast.action_login_success");
        intentFilter2.addAction("com.join.android.app.mgsim.wufun.mha.broadcast.action_login_success");
        registerReceiver(this.playTimeReceiver, intentFilter2);
        registerReceiver(this.paayReceiver, new IntentFilter(PayCenter.ACTION_LOGIN_SUCCESS));
        BroadcastReceiver myReceiver = new MyReceiver();
        IntentFilter intentFilter3 = new IntentFilter("com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success");
        intentFilter3.addAction("com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success");
        registerReceiver(myReceiver, intentFilter3);
        this.shareResultReceiver = new ShareResultReceiver();
        registerReceiver(this.shareResultReceiver, new IntentFilter("com.emu.share.result"));
        this.realnameResultReceiver = new RealNameResultReceiver();
        registerReceiver(this.realnameResultReceiver, new IntentFilter("com.show.realname.check"));
        this.adResultReceiver = new AdResultReceiver();
        IntentFilter intentFilter4 = new IntentFilter("com.emu.ad.result");
        if (Build.VERSION.SDK_INT >= 33) {
            registerReceiver(this.adResultReceiver, intentFilter4, 2);
        } else {
            registerReceiver(this.adResultReceiver, intentFilter4);
        }
        this.gameReceiver = new GameReceiver();
        IntentFilter intentFilter5 = new IntentFilter();
        intentFilter5.addAction(actionShowInvite);
        intentFilter5.addAction(actionOnOnlineState);
        intentFilter5.addAction(actionHandleMessage);
        intentFilter5.addAction(actionHandleEmptyMessage);
        intentFilter5.addAction(actionHandleExitGame);
        registerReceiver(this.gameReceiver, intentFilter5);
        this.menuViewReceiver = new MenuViewReceiver();
        IntentFilter intentFilter6 = new IntentFilter();
        intentFilter6.addAction(actionShowMenuSlot);
        intentFilter6.addAction(actionShowMenuSlot);
        intentFilter6.addAction(actionShowMenuCheat);
        intentFilter6.addAction(actionShowMenuPerformance);
        intentFilter6.addAction(actionShowMenuGate);
        intentFilter6.addAction(actionShowMenuOnekey);
        intentFilter6.addAction(actionShowMenu);
        intentFilter6.addAction(actionHideMenu);
        intentFilter6.addAction(actionVipTip);
        intentFilter6.addAction(actionShowMenuView);
        intentFilter6.addAction(actionShowShare);
        intentFilter6.addAction(actionLoadRomFinish);
        intentFilter6.addAction(actionLoadStageCompleted);
        intentFilter6.addAction(actionRecordEnd);
        intentFilter6.addAction(BAction.ACTION_RANK_RECORD_UPLOAD_RESULT);
        intentFilter6.addAction(BAction.ACTION_ENDGAME_RECORD_UPLOAD_RESULT);
        intentFilter6.addAction(BAction.ACTION_EMU_SCREEN_MODE);
        registerReceiver(this.menuViewReceiver, intentFilter6);
        this.recver = new PermissRecver();
        IntentFilter intentFilter7 = new IntentFilter();
        intentFilter7.addAction("com.wufun.get.permission.EMU");
        registerReceiver(this.recver, intentFilter7);
        if (this.actionReceiver == null) {
            this.actionReceiver = new ActionReceiver();
            registerReceiver(this.actionReceiver, new IntentFilter(BAction.ACTION_REAL_NAME_RESULT));
        }
        this.messageReceiver = new CommonMessageReceiver();
        IntentFilter intentFilter8 = new IntentFilter();
        intentFilter8.addAction("com.emu.battle.score");
        registerReceiver(this.messageReceiver, intentFilter8);
    }

    public void loadRomFinish() {
    }

    protected void loginFinish() {
        ArrayList<String> arrayList = unUpdateAchieve;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    protected boolean needResumeGame() {
        return true;
    }

    protected void onAfterActivityCreated(Bundle bundle) {
        int i10;
        if (this.hasCheckRealName || (i10 = startMode) == 8 || i10 == 15 || i10 == 7 || i10 == 9 || i10 == 10) {
            return;
        }
        checkRealName(11);
        this.hasCheckRealName = true;
        this.needCheckRealName = false;
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    @SuppressLint({"NewApi"})
    protected void onCreate(Bundle bundle) {
        baseActivity = this;
        context = this;
        initSign();
        getWindow().setFlags(128, 128);
        super.onCreate(bundle);
        this.adExitRootView = new FrameLayout(this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        Cocos2dxActivity.mFrameLayout.addView(this.adExitRootView, layoutParams);
        this.appCodeIsBigger160 = findAppVersionTo16();
        bindService();
        final String name = new File(BaseAppConfig.ROM_PATH).getName();
        String str = BaseAppConfig.APK_PATH;
        final String strSubstring = str.substring(0, str.lastIndexOf(net.lingala.zip4j.util.e.F0));
        final String str2 = BaseAppConfig.APP_PATH + name;
        this.handler.post(new Runnable() { // from class: com.papa91.activity.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f78011b.lambda$onCreate$0(str2, strSubstring, name);
            }
        });
        initReceiver();
        if (hasRewardBanana) {
            setDefaultRewardConfig();
            getRewardConfig();
        }
        updateAutoSlotData();
        try {
            String stringExtra = getIntent().getStringExtra("jsonData");
            if (stringExtra != null) {
                try {
                    String string = new MyJson(stringExtra).getString("dnsJson", "");
                    if (string != null && !"".equals(string)) {
                        dnsJson = string;
                        DNSDataResult dNSDataResult = (DNSDataResult) new Gson().fromJson(string, DNSDataResult.class);
                        if (dNSDataResult.getAppContent() != null && !"".equals(dNSDataResult.getAppContent())) {
                            HttpUtils.EXIT_AD_URL = dNSDataResult.getAppContent();
                        }
                        if (dNSDataResult.getFightV3() != null && !"".equals(dNSDataResult.getFightV3())) {
                            HttpUtils.REWARD_CONFIG_URL = dNSDataResult.getFightV3();
                        }
                        if (!TextUtils.isEmpty(dNSDataResult.getGameUrl())) {
                            HttpUtils.GAME_URL = dNSDataResult.getGameUrl();
                        }
                        if (!TextUtils.isEmpty(dNSDataResult.getAccountCertification())) {
                            HttpUtils.RealName_URL = dNSDataResult.getAccountCertification();
                        }
                    }
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
        } catch (JsonSyntaxException e11) {
            e11.printStackTrace();
        }
        sendGamePlay(0);
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onDestroy() {
        unregisterReceiver(this.gameReceiver);
        unregisterReceiver(this.paayReceiver);
        unregisterReceiver(this.playTimeReceiver);
        unregisterReceiver(this.netWorkReceiver);
        unregisterReceiver(this.recver);
        unregisterReceiver(this.messageReceiver);
        unregisterReceiver(this.menuViewReceiver);
        ShareResultReceiver shareResultReceiver = this.shareResultReceiver;
        if (shareResultReceiver != null) {
            unregisterReceiver(shareResultReceiver);
        }
        RealNameResultReceiver realNameResultReceiver = this.realnameResultReceiver;
        if (realNameResultReceiver != null) {
            unregisterReceiver(realNameResultReceiver);
        }
        AdResultReceiver adResultReceiver = this.adResultReceiver;
        if (adResultReceiver != null) {
            unregisterReceiver(adResultReceiver);
        }
        RewardBananaDialog rewardBananaDialog2 = rewardBananaDialog;
        if (rewardBananaDialog2 != null) {
            if (rewardBananaDialog2.isShowing()) {
                rewardBananaDialog.dismiss();
            }
            rewardBananaDialog = null;
        }
        ActionReceiver actionReceiver = this.actionReceiver;
        if (actionReceiver != null) {
            unregisterReceiver(actionReceiver);
        }
        left_play_reward_count = 0;
        generate_times = -1;
        received_times = 0;
        unique_id = "";
        destroyRewardInfo();
        autoSaveSlot = null;
        sendGamePlay(2);
        unbindBridge();
        super.onDestroy();
    }

    protected void onHandleEmuExit() {
    }

    protected void onHandleGameExit(Intent intent) {
    }

    public void onHandleMessage(Message message) {
    }

    protected void onHandleRealName(int i10, boolean z10) {
        this.playTime = 0L;
        closeRealNameDialog();
        this.hasCheckRealName = false;
        int i11 = startMode;
        if (i11 != 8 && i11 != 15 && i11 != 7 && i11 != 9 && i11 != 10) {
            checkRealName(i10);
            this.hasCheckRealName = true;
        } else if (z10) {
            checkRealName(i10);
            this.hasCheckRealName = true;
        }
    }

    protected void onHandlerResultNameResult(Intent intent) {
        onHandleRealName(11, false);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        VideoStrategyPop videoStrategyPop;
        if (i10 == 4 && (videoStrategyPop = this.videoStrategyPop) != null && videoStrategyPop.isShowing()) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    public void onLoadStageCompleted(int i10, String str) {
    }

    void onMessengerConnected(Messenger messenger) {
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        try {
            String stringExtra = intent.getStringExtra("jsonData");
            if (StringUtils.isNotEmpty(stringExtra)) {
                MyJson myJson = new MyJson(stringExtra);
                int i10 = myJson.getInt("intentFrom", 0);
                String string = myJson.getString(BaseAppConfig.KEY_ROM_PATH, "");
                if (!TextUtils.isEmpty(string)) {
                    romPath = string;
                    romName = string.substring(string.lastIndexOf(net.lingala.zip4j.util.e.F0));
                }
                if (i10 == 1) {
                    String string2 = myJson.getString(BaseAppConfig.KEY_NET_STATE, "");
                    if (string2.isEmpty()) {
                        return;
                    }
                    loadState(string2);
                    setPause(1);
                }
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onPause() {
        DragProgressView dragProgressView;
        super.onPause();
        this.isInBackground = true;
        if (!canShowRewardMenu() || (dragProgressView = progressView) == null) {
            return;
        }
        dragProgressView.pause();
    }

    protected void onRankRecordEnd(int i10) {
    }

    protected void onRankUploadResult(int i10) {
        exitEmu();
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onResume() {
        DragProgressView dragProgressView;
        super.onResume();
        try {
            HttpPost_Memer();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.isInBackground = false;
        if (canShowRewardMenu() && (dragProgressView = progressView) != null) {
            dragProgressView.resume();
        }
        emuOnResume();
        if (this.needCheckRealName) {
            onHandleRealName(this.checkRealNameType, false);
            this.needCheckRealName = false;
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        if (isFirstReame(GameID)) {
            modifyRecordInfo(ugcPath, false, false);
            modifyRecordInfo(ugcPath, true, false);
            modifyRecordInfo(ugcPath, false, true);
            setFirestReame(GameID);
        }
        super.onStart();
        sendEmuShowHideState(true);
        if (this.isExit) {
            sendEmuShowHideState(false);
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (this.isExit) {
            return;
        }
        sendEmuShowHideState(false);
    }

    public void onVipChanged() {
    }

    public void raseVipToMgsim(int i10) {
        ComponentName componentName = new ComponentName(appPackName, "com.join.mgps.activity.ShareWebActivity_");
        Intent intent = new Intent();
        intent.setComponent(componentName);
        intent.setAction("android.intent.action.VIEW");
        intent.putExtra(PAPA_EMU_INTENT_EXTRA_ACTION_FROM, i10 + "");
        intent.putExtra("gameId", GameID + "");
        intent.setAction("com.join.mgps.papa.share_webview_raiseVip");
        startActivity(intent);
    }

    public void selectSpAndCheat(int i10) {
        if (!this.appCodeIsBigger160) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("type", Integer.valueOf(payType));
            jsonObject.addProperty("data", UPDATA_APP_TOAST);
            jsonObject.addProperty("isbuy", Boolean.FALSE);
            jsonObject.addProperty("errorMsg", UPDATA_APP_TOAST);
            requestOnInquiry(jsonObject.toString());
        }
        switch (i10) {
            case 1:
                PayCenter.inquirySP(this, UserID, token, GameID, this.selectListener);
                break;
            case 2:
                PayCenter.inquiryCoinInfo(this, UserID, token, GameID, this.selectListener);
                break;
            case 3:
                PayCenter.buySP(this, UserID, token, GameID, this.payListener);
                break;
            case 4:
                PayCenter.buyCoin(this, UserID, token, GameID, this.payListener);
                break;
            case 5:
                PayCenter.inquiryCheat(this, UserID, token, GameID, this.selectListener);
                break;
            case 6:
                PayCenter.buyCheat(this, UserID, token, GameID, this.payListener);
                break;
            case 7:
                PayCenter.startLobby(this, UserID, token, GameID, "client", RoomID, new PayListener() { // from class: com.papa91.activity.EmuBaseActivity.16
                    @Override // com.papa91.paay.PayListener
                    public void onResult(PayResponse payResponse) {
                        JsonObject jsonObject2 = new JsonObject();
                        if (payResponse == null) {
                            jsonObject2.addProperty("isbuy", Boolean.FALSE);
                            EmuBaseActivity.requestOnInquiry(jsonObject2.toString());
                            return;
                        }
                        if (payResponse.getError() == -1) {
                            jsonObject2.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                            jsonObject2.addProperty("data", EmuBaseActivity.ON_NETWORK_ERROR_MSG);
                            jsonObject2.addProperty("isbuy", Boolean.FALSE);
                            jsonObject2.addProperty("errorMsg", EmuBaseActivity.ON_NETWORK_ERROR_MSG);
                            EmuBaseActivity.requestOnPay(jsonObject2.toString());
                            return;
                        }
                        PayResponseData data = payResponse.getData();
                        if (payResponse.getError() == 701 || data == null) {
                            jsonObject2.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                            jsonObject2.addProperty("data", "");
                            jsonObject2.addProperty("isbuy", Boolean.FALSE);
                            EmuBaseActivity.requestOnInquiry(jsonObject2.toString());
                            return;
                        }
                        boolean zEquals = data.getStatus().equals("ok");
                        JsonObject jsonObject3 = new JsonObject();
                        String price_message = data.getPrice_message();
                        String error = data.getError();
                        jsonObject3.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                        if (price_message != null && !price_message.equals("")) {
                            jsonObject3.addProperty("data", price_message);
                        }
                        jsonObject3.addProperty("isbuy", Boolean.valueOf(zEquals));
                        if (error != null && !error.equals("")) {
                            jsonObject3.addProperty("errorMsg", error);
                        }
                        EmuBaseActivity.requestOnPay(jsonObject3.toString());
                    }
                });
                break;
            case 8:
                PayCenter.lobbyPlayCheck(this, UserID, token, GameID, "", "", new PayListener() { // from class: com.papa91.activity.EmuBaseActivity.17
                    @Override // com.papa91.paay.PayListener
                    public void onResult(PayResponse payResponse) {
                        JsonObject jsonObject2 = new JsonObject();
                        if (payResponse == null) {
                            jsonObject2.addProperty("isbuy", Boolean.FALSE);
                            EmuBaseActivity.requestOnInquiry(jsonObject2.toString());
                            return;
                        }
                        if (payResponse.getError() == -1) {
                            jsonObject2.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                            jsonObject2.addProperty("data", EmuBaseActivity.ON_NETWORK_ERROR_MSG);
                            jsonObject2.addProperty("isbuy", Boolean.FALSE);
                            jsonObject2.addProperty("errorMsg", EmuBaseActivity.ON_NETWORK_ERROR_MSG);
                            EmuBaseActivity.requestOnInquiry(jsonObject2.toString());
                            return;
                        }
                        PayResponseData data = payResponse.getData();
                        if (payResponse.getError() == 701 || data == null) {
                            jsonObject2.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                            jsonObject2.addProperty("data", "");
                            jsonObject2.addProperty("isbuy", Boolean.FALSE);
                            EmuBaseActivity.requestOnInquiry(jsonObject2.toString());
                            return;
                        }
                        JsonObject jsonObject3 = new JsonObject();
                        String join_message = data.getJoin_message();
                        String error = data.getError();
                        jsonObject3.addProperty("type", Integer.valueOf(EmuBaseActivity.payType));
                        if (join_message != null && !join_message.equals("")) {
                            jsonObject3.addProperty("data", join_message);
                        }
                        jsonObject3.addProperty("isbuy", Boolean.TRUE);
                        if (error != null && !error.equals("")) {
                            jsonObject3.addProperty("errorMsg", error);
                        }
                        EmuBaseActivity.requestOnInquiry(jsonObject3.toString());
                    }
                });
                break;
        }
    }

    public void senCommonEvent(String str, String str2) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint");
        intent.putExtra("gameId", GameID);
        intent.putExtra("uid", UserID);
        intent.putExtra("position", str2);
        intent.putExtra(CommonService_.AnonymousClass33.f72723b, str);
        intent.putExtra("endId", endId);
        sendBroadcast(intent);
    }

    void sendEmuExitBroadcast(int i10) {
        Intent intent = new Intent();
        intent.setAction("com.emu.ad.result");
        intent.putExtra("adAction", 100);
        intent.putExtra("exit", i10);
        sendBroadcast(intent);
    }

    public native void setAutoSave(int i10);

    @Override // android.app.Activity
    public void setContentView(View view) {
        try {
            AutoSaveSlot autoSaveSlot2 = new AutoSaveSlot(this, view);
            autoSaveSlot = autoSaveSlot2;
            View view2 = autoSaveSlot2.getView();
            com.yatoooon.screenadaptation.e.a().f(view2);
            if (hasRewardBanana) {
                DragProgressView dragProgressView = new DragProgressView(Cocos2dxActivity.getContext());
                progressView = dragProgressView;
                dragProgressView.setVisibility(8);
                progressView.setOnProduceListener(new DragProgressView.OnProduceListener() { // from class: com.papa91.activity.EmuBaseActivity.27
                    @Override // com.papa91.view.DragProgressView.OnProduceListener
                    public void onProduce() {
                        EmuBaseActivity.sendStatEvent("FCProduceBanner", "");
                    }
                });
                progressView.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.activity.EmuBaseActivity.28
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        EmuBaseActivity.rewardBananaEvent("FCAchieveBanner", "", 0, 0, 2);
                        if (EmuBaseActivity.isRewardConfigInited()) {
                            reward();
                        } else if (!EmuBaseActivity.isNetworkConnected()) {
                            EmuBaseActivity.showToast("请联网后重试");
                        } else {
                            EmuBaseActivity.showToast("正在获取奖励信息，请稍后重试");
                            EmuBaseActivity.this.getRewardConfig();
                        }
                    }

                    void reward() {
                        if (EmuBaseActivity.progressView == null || TextUtils.isEmpty(EmuBaseActivity.rewardConfig)) {
                            return;
                        }
                        if (EmuBaseActivity.progressView.getSignal() > 0) {
                            EmuBaseActivity.showRewardDialog(EmuBaseActivity.rewardConfig, EmuBaseActivity.generatedTimes, 0);
                        } else if (EmuBaseActivity.reward_left_count > 0) {
                            EmuBaseActivity.showRewardTipDialog();
                        } else {
                            EmuBaseActivity.showToast("今日奖励已全部领取，请明天再来");
                        }
                    }
                });
                com.yatoooon.screenadaptation.e.a().f(progressView);
                super.setContentView(new FloatingDragger(this, view2, progressView).getView());
            } else {
                super.setContentView(view2);
            }
        } catch (Exception unused) {
            if (view.getParent() == null) {
                super.setContentView(view);
            }
        }
    }

    void setDefaultRewardConfig() {
        try {
            MyJson myJson = new MyJson("{    \"error\": 0,    \"msg\": \"success\",    \"data\": {        \"max_reward_amount\": 300,        \"min_reward_amount\": 100,        \"min_reward_times\": 2,        \"max_reward_times\": 8,        \"max_play_reward_count\": 30,        \"max_start_reward_count\": 10,        \"max_time_interval\": 90,        \"min_time_interval\": 30,        \"init_first_box_time\": 15,        \"reward_count\": 4,        \"left_reward_count\": 36,        \"start_reward_count\": 4,        \"left_start_reward_count\": 6,        \"play_reward_count\": 0,        \"left_play_reward_count\": 30,        \"left_game_start_reward_count\": 1,        \"left_device_start_reward_count\": 10,        \"left_device_play_reward_count\": 30,        \"total_reward_amount\": 0    }}");
            int i10 = myJson.getInt("error", -1);
            myJson.getString("msg");
            JSONObject jSONObject = myJson.getJSONObject("data", null);
            if (i10 != 0 || jSONObject == null) {
                return;
            }
            int i11 = jSONObject.has("max_reward_amount") ? jSONObject.getInt("max_reward_amount") : 0;
            int i12 = jSONObject.has("min_reward_amount") ? jSONObject.getInt("min_reward_amount") : 0;
            int i13 = jSONObject.has("max_reward_times") ? jSONObject.getInt("max_reward_times") : 0;
            int i14 = jSONObject.has("min_reward_times") ? jSONObject.getInt("min_reward_times") : 0;
            int i15 = jSONObject.has("left_play_reward_count") ? jSONObject.getInt("left_play_reward_count") : 0;
            if (jSONObject.has("max_time_interval")) {
                max_time_interval = jSONObject.getInt("max_time_interval");
            }
            if (jSONObject.has("min_time_interval")) {
                min_time_interval = jSONObject.getInt("min_time_interval");
            }
            if (jSONObject.has("init_first_box_time")) {
                init_first_box_time = jSONObject.getInt("init_first_box_time");
            }
            if (jSONObject.has("left_device_play_reward_count")) {
                left_device_play_reward_count = jSONObject.getInt("left_device_play_reward_count");
            }
            left_play_reward_count = i15;
            reward_left_count = Math.min(i15, left_device_play_reward_count);
            total_reward_amount = total_reward_amount;
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("max_reward_amount", i11);
            jSONObject3.put("min_reward_amount", i12);
            jSONObject3.put("max_reward_times", i13);
            jSONObject3.put("min_reward_times", i14);
            jSONObject3.put("left_play_reward_count", i15);
            jSONObject3.put("left_device_play_reward_count", left_device_play_reward_count);
            jSONObject2.put("banana_reward_config", jSONObject3);
            rewardConfig = jSONObject2.toString();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setMenuDirection(int i10) {
    }

    void setRewardResult1(int i10, int i11, int i12, int i13) {
        if (i10 != 1 || i12 <= 1) {
            return;
        }
        if (i13 == 0) {
            i13 = total_reward_amount;
        }
        RewardBananaResultDialog rewardBananaResultDialog = new RewardBananaResultDialog(Cocos2dxActivity.getContext(), R.style.Dialog);
        rewardBananaResultDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.papa91.activity.EmuBaseActivity.23
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                EmuBaseActivity.setPause(0);
            }
        });
        rewardBananaResultDialog.show(i11, i13);
        setPause(1);
    }

    public void setRootAdViewParentVisible(boolean z10) {
        RelativeLayout relativeLayout = this.adParent;
        if (relativeLayout != null) {
            if (z10) {
                relativeLayout.setVisibility(0);
            } else {
                relativeLayout.setVisibility(8);
            }
        }
    }

    protected void setUserStateUi(int i10) {
    }

    public void showEndGameFailed(int i10, boolean z10, int i11) {
    }

    public void showEndGameStartView(boolean z10, int i10, boolean z11) {
    }

    protected void showInvitePlayUi(String str, String str2, String str3, long j10) {
    }

    void showInvitePlayUiJava(String str, String str2, String str3) {
        SmartPopupWindow smartPopupWindow = this.invitePop;
        if (smartPopupWindow != null && smartPopupWindow.isShowing()) {
            this.timer.cancel();
            this.invitePop.dismiss();
        }
        SystemInfoUtils.getInstance(this);
        Activity topActivity = SystemInfoUtils.getTopActivity();
        if (topActivity == null) {
            return;
        }
        if (this.invitePop == null) {
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.pop_friend_invite_emu, (ViewGroup) null);
            SmartPopupWindow smartPopupWindowCreatePopupWindow = SmartPopupWindow.Builder.build(topActivity, viewInflate).setOutsideTouchDismiss(false).setAnimationStyle(R.style.animationFromRight).createPopupWindow();
            this.invitePop = smartPopupWindowCreatePopupWindow;
            smartPopupWindowCreatePopupWindow.setWidth(getResources().getDimensionPixelOffset(org.ppsspp.ppsspp.R.dimen.wdp560));
            this.invitePop.setHeight(getResources().getDimensionPixelOffset(org.ppsspp.ppsspp.R.dimen.wdp136));
            TextView textView = (TextView) viewInflate.findViewById(R.id.accept);
            this.accept = textView;
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.activity.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f78015b.lambda$showInvitePlayUiJava$1(view);
                }
            });
            viewInflate.findViewById(R.id.decline).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.activity.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f78016b.lambda$showInvitePlayUiJava$2(view);
                }
            });
            this.avatar = (SimpleDraweeView) viewInflate.findViewById(R.id.avatar);
            this.name = (TextView) viewInflate.findViewById(R.id.name);
            this.gameName = (TextView) viewInflate.findViewById(R.id.gameName);
        }
        this.name.setText(str);
        this.gameName.setText(str2);
        this.avatar.setImageURI(Uri.parse(str3));
        this.invitePop.showAtAnchorView(topActivity.getWindow().getDecorView(), 3, 4, 0, getResources().getDimensionPixelOffset(org.ppsspp.ppsspp.R.dimen.wdp40));
        this.timer.start();
    }

    public void showMenuCheating() {
    }

    public void showMenuGate() {
    }

    public void showMenuOnekey() {
    }

    public void showMenuPerformance() {
    }

    public void showMenuSlot() {
    }

    public void showMenuView(boolean z10) {
    }

    public void showShare(String str) {
    }

    public void showVipTip(int i10, int i11) {
    }

    public void startAdActivity(int i10, int i11) {
        if (i10 != 0 && i11 != 0) {
            this.link_type = i10 + "";
            this.link_type_val = i11 + "";
        }
        Intent intent = new Intent();
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.setAction("com.wufun.intent.activity.view.action.emuintent");
        intent.addCategory("android.intent.category.DEFAULT");
        MyJson myJson = new MyJson();
        try {
            myJson.put("link_type", this.link_type);
            myJson.put("jump_type", this.jump_type);
            myJson.put("link_type_val", this.link_type_val);
            myJson.put("crc_link_type_val", this.crc_link_type_val);
            myJson.put("tpl_type", this.tpl_type);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        intent.putExtra("intentDataJson", myJson.toString());
        try {
            intent.setAction("com.wufun.intent.activity.view.action.emuintent");
            startActivity(intent);
        } catch (Exception unused) {
            intent.setAction("com.papa.intent.activity.view.action.emuintent");
            startActivity(intent);
        }
        if (this.onAdShwoIsCloseMine) {
            finish();
        }
    }

    public void startBBK_GOINEE_sysAPP() {
        int i10 = systemSettingType;
        if (i10 == 1) {
            ComponentName componentName = new ComponentName("com.iqoo.secure", BBK_GIONEE_MAIN_NAME);
            Intent intent = new Intent();
            intent.setComponent(componentName);
            startActivity(intent);
            return;
        }
        if (i10 != 2) {
            return;
        }
        ComponentName componentName2 = new ComponentName("com.gionee.softmanager", BBK_GIONEE_MAIN_NAME);
        Intent intent2 = new Intent();
        intent2.setComponent(componentName2);
        startActivity(intent2);
    }

    void startPrefecture(int i10) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(appPackName, "com.join.mgps.activity.ForumActivity_"));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fid", i10);
            jSONObject.put("name", "");
            jSONObject.put("icon_src", "");
            jSONObject.put("users", 0);
            jSONObject.put("posts", 0);
            jSONObject.put("add_time", 0);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        intent.putExtra("key_forum_bean", jSONObject.toString());
        Message message = new Message();
        message.what = 0;
        message.obj = intent;
        startActivity(intent);
    }

    void unbindBridge() {
        Context context2;
        if (useIndependentEmu && (context2 = Cocos2dxActivity.getContext()) != null) {
            try {
                ServiceConnection serviceConnection = mServiceConnection;
                if (serviceConnection != null) {
                    context2.unbindService(serviceConnection);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void updateAutoSlotData() {
        if (autoSaveSlot == null) {
            return;
        }
        String strSubstring = ugcPath;
        if (!TextUtils.isEmpty(strSubstring)) {
            strSubstring = strSubstring.substring(0, strSubstring.lastIndexOf(net.lingala.zip4j.util.e.F0));
        }
        autoSaveSlot.setUgcPath(strSubstring);
        autoSaveSlot.setVipLevel(this.m_VIP);
    }

    public void updateEndGameResult(final int i10, final int i11) {
        try {
            if (startMode != 16) {
                return;
            }
            isInChallenge = false;
            if (isNetworkConnected()) {
                RequestUpdateEndGameResultArgs requestUpdateEndGameResultArgs = new RequestUpdateEndGameResultArgs();
                requestUpdateEndGameResultArgs.setGameId(GameID);
                requestUpdateEndGameResultArgs.setUid(UserID);
                requestUpdateEndGameResultArgs.setEndgameId(endId);
                requestUpdateEndGameResultArgs.setChallengeId(challengeId);
                requestUpdateEndGameResultArgs.setElapsedTime(i11);
                int i12 = 1;
                if (i10 != 1) {
                    i12 = 2;
                }
                requestUpdateEndGameResultArgs.setStatus(i12);
                final Request request = Request.getRequest(Cocos2dxActivity.getContext(), requestUpdateEndGameResultArgs);
                request.setSign(SignUtil.getSignForAPP(request));
                ThreadManager.runOnWriteThread(new Runnable() { // from class: com.papa91.activity.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f77979b.lambda$updateEndGameResult$13(request, i10, i11);
                    }
                });
            } else {
                showToast("网络连接异常，请检查网络连接");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void updateEndGameResultSuccess(int i10, int i11, EndGameAllowBean endGameAllowBean) {
    }

    public void updateEndGameResultV2(final int i10, final int i11, String str) {
        try {
            if (startMode != 16) {
                return;
            }
            isInChallenge = false;
            if (isNetworkConnected()) {
                RequestUpdateEndGameResultArgs requestUpdateEndGameResultArgs = new RequestUpdateEndGameResultArgs();
                requestUpdateEndGameResultArgs.setGameId(GameID);
                requestUpdateEndGameResultArgs.setUid(UserID);
                requestUpdateEndGameResultArgs.setEndgameId(endId);
                requestUpdateEndGameResultArgs.setChallengeId(challengeId);
                requestUpdateEndGameResultArgs.setElapsedTime(i11);
                requestUpdateEndGameResultArgs.setFileUrl(str);
                requestUpdateEndGameResultArgs.setStatus(i10 == 0 ? 1 : 2);
                final Request request = Request.getRequest(Cocos2dxActivity.getContext(), requestUpdateEndGameResultArgs);
                request.setSign(SignUtil.getSignForAPP(request));
                ThreadManager.runOnWriteThread(new Runnable() { // from class: com.papa91.activity.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f77986b.lambda$updateEndGameResultV2$15(request, i10, i11);
                    }
                });
            } else {
                showToast("网络连接异常，请检查网络连接");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void updateScoreUi(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("player1")) {
                jSONObject.getString("player1");
            }
            int i10 = jSONObject.has("score1") ? jSONObject.getInt("score1") : 0;
            if (jSONObject.has("player2")) {
                jSONObject.getString("player2");
            }
            setBattleScore(i10, jSONObject.has("score2") ? jSONObject.getInt("score2") : 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        } catch (UnsatisfiedLinkError unused) {
        }
    }

    public static void startplayTime(long j10) {
        playTime(j10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("startplayTime: ");
        sb2.append(j10);
    }
}
