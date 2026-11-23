package com.papa91.arc;

import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.google.gson.Gson;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.mgps.Util.o0;
import com.join.mgps.Util.v0;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.join.mgps.activity.SimulatorAreaActivity_;
import com.join.mgps.activity.posting.PostingActivity_;
import com.join.mgps.dto.Constant;
import com.join.mgps.service.CommonService_;
import com.papa91.arc.bean.AdInfoBean;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.bean.GateBean;
import com.papa91.arc.bean.MainBean;
import com.papa91.arc.bean.PopwindowBean;
import com.papa91.arc.bean.ReqRealNameArgs;
import com.papa91.arc.bean.Request;
import com.papa91.arc.bean.Response;
import com.papa91.arc.bean.SkillConfigBean;
import com.papa91.arc.bean.SkillTableDataBean;
import com.papa91.arc.bean.SpBindsDataBean;
import com.papa91.arc.bean.SubBean;
import com.papa91.arc.bean.TypeBean;
import com.papa91.arc.bean.VipBean;
import com.papa91.arc.common.constants.BAction;
import com.papa91.arc.common.constants.StatIntents;
import com.papa91.arc.dialog.PerfectWarmDialog;
import com.papa91.arc.dialog.RealNameDialog;
import com.papa91.arc.dialog.SettingCheatDialog;
import com.papa91.arc.dialog.SettingDialog;
import com.papa91.arc.dialog.SettingGateDialog;
import com.papa91.arc.dialog.SettingPerformanceDialog;
import com.papa91.arc.dialog.SettingShareDialog;
import com.papa91.arc.dialog.SettingSlotDialog;
import com.papa91.arc.dialog.SettingVipDialog;
import com.papa91.arc.dialog.SettingVipTipDialog;
import com.papa91.arc.dialog.TipTwoDialog;
import com.papa91.arc.ext.ThreadManager;
import com.papa91.arc.http.HttpUtils;
import com.papa91.arc.interfaces.DialogListenerWrap;
import com.papa91.arc.interfaces.RealNameCallBack;
import com.papa91.arc.util.FileUtils;
import com.papa91.arc.util.GameSettings;
import com.papa91.arc.util.SignUtil;
import com.papa91.arc.util.StoreUtils;
import com.papa91.arc.util.StringUtils;
import com.papa91.arc.view.GameTimeLimitedDialog;
import com.papa91.arc.view.GameTimeLimitedNetworkFailedDialog;
import com.papa91.arc.view.IEmulator;
import com.papa91.arc.view.MenuView;
import com.papa91.arc.view.ToastUtil;
import com.papa91.common.BaseAppConfig;
import com.papa91.wrapper.UserPrefs;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.ppsspp.ppsspp.CheatInfo;
import org.ppsspp.ppsspp.EditCheatInfo;
import org.ppsspp.ppsspp.NativeActivity;
import org.ppsspp.ppsspp.NativeApp;
import org.ppsspp.ppsspp.PpssppActivity;
import org.ppsspp.ppsspp.R;

/* JADX INFO: loaded from: classes2.dex */
public class EmuActivity_psp extends PpssppActivity implements IEmulator {
    private static final String TAG = "Ppsspp";
    static boolean isNet = true;
    public static int lastWindow;
    private static boolean loadingFinished;
    public static Dialog mDialog;
    static Messenger mMessenger;
    static ServiceConnection mServiceConnection;
    private static Context sContext;
    private ActionReceiver actionReceiver;
    AdInfoBean adInfoBean;
    AdResultReceiver adResultReceiver;
    PerfectWarmDialog alertTipDialog;
    SettingCheatDialog cheatDialog;
    TipTwoDialog dialogExit;
    String diskPath;
    SettingGateDialog gateDialog;
    private IntentFilter intentFilter;
    private boolean isDestroyed;
    private boolean isRecreate;
    private boolean loading_real_name;
    LoginReceiver loginReceiver;
    MyReceiver myReceiver;
    NetWorkReceiver netWorkReceiver;
    PerfectWarmDialog perfectWarmDialog;
    SettingPerformanceDialog performanceDialog;
    UserPrefs pref;
    RealNameDialog realNameDialog;
    private EmuReceiveReceiver receveReceiver;
    SettingShareDialog shareDialog;
    String shareImagePath;
    boolean showTimeLimitedDialog2;
    SettingSlotDialog slotDialog;
    SharedPreferences sp;
    GameTimeLimitedDialog timeLimitedDialog;
    GameTimeLimitedNetworkFailedDialog timeLimitedNetworkFailedDialog;
    Timer timer;
    TimerTask timerTask;
    String url;
    SettingVipDialog vipDialog;
    SettingVipTipDialog vipTipDialog;
    private int EXIT_CODE = 0;
    int START_MODE_NETWORK = 7;
    int START_MODE_RESTART = 0;
    int START_MODE_NETCLIENT = 1;
    int START_MODE_NETSERVER = 2;
    protected int autoSlotTime = 20;
    boolean gameIsPause = false;
    Handler mHandler = new Handler();
    private boolean hasCheckRealName = false;
    private boolean needCheckRealName = true;
    private int checkRealNameType = 11;
    boolean isHideAdTimeView = false;
    private String appContent = "http://anv9.ctapi.5fun.com";
    private PackageInfo appInfo = null;
    List<VipBean> vipBeans = new ArrayList();
    private ExecutorService executorService = Executors.newFixedThreadPool(2);
    String ad_host_url = "http://anctapi.5fun.com";
    protected ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.papa91.arc.EmuActivity_psp.15
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            EmuActivity_psp.this.gameStart();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    };
    boolean adToastShowing = false;
    Runnable hideTimeRunner = new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.18
        @Override // java.lang.Runnable
        public void run() {
            if (((NativeActivity) EmuActivity_psp.this).menuView != null) {
                ((NativeActivity) EmuActivity_psp.this).menuView.hideTimer();
                ((NativeActivity) EmuActivity_psp.this).menuView.releaseTimer();
            }
        }
    };
    long playTime = 0;
    long limitTime = 0;
    Runnable limitTimeRunnable = new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.24
        @Override // java.lang.Runnable
        public void run() {
            if (EmuActivity_psp.this.isFinishing() || EmuActivity_psp.this.isDestroyed || ((NativeActivity) EmuActivity_psp.this).shuttingDown) {
                return;
            }
            EmuActivity_psp emuActivity_psp = EmuActivity_psp.this;
            long j10 = emuActivity_psp.playTime + 1;
            emuActivity_psp.playTime = j10;
            if (j10 >= emuActivity_psp.limitTime) {
                emuActivity_psp.onHandleRealName(3);
            } else {
                emuActivity_psp.mHandler.postDelayed(this, 1000L);
            }
        }
    };
    long liveTime = 0;
    LinkedHashMap<String, Long> activityQueue = new LinkedHashMap<>();

    /* JADX INFO: renamed from: com.papa91.arc.EmuActivity_psp$10, reason: invalid class name */
    class AnonymousClass10 implements HttpUtils.OnResult {
        AnonymousClass10() {
        }

        @Override // com.papa91.arc.http.HttpUtils.OnResult
        public void onFailure(String str) {
        }

        void onPostExecute(String str) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    EmuActivity_psp.this.vipBeans.clear();
                }
                JSONArray jSONArray = new MyJson(str).getJSONObject("messages").getJSONArray("data");
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObject = (JSONObject) jSONArray.get(i10);
                    VipBean vipBean = new VipBean();
                    JSONObject jSONObject2 = (JSONObject) jSONObject.get("main");
                    vipBean.setMain(new MainBean(jSONObject2.getString("title"), jSONObject2.getString(PostingActivity_.LABEL_EXTRA), jSONObject2.getString("pic_remote"), jSONObject2.getString("title_type"), jSONObject2.getString("sub_title"), jSONObject2.getInt("ad_switch")));
                    JSONObject jSONObject3 = (JSONObject) ((JSONArray) jSONObject.get("sub")).get(0);
                    vipBean.setSub(new SubBean(jSONObject3.getString("link_type"), jSONObject3.getString("link_type_val"), jSONObject3.getString("crc_link_type_val"), jSONObject3.getString("jump_type"), jSONObject3.getString("is_more"), jSONObject3.getString("tpl_type")));
                    EmuActivity_psp.this.vipBeans.add(vipBean);
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            try {
                if (EmuActivity_psp.this.isDestroyed) {
                    return;
                }
                for (int i11 = 0; i11 < EmuActivity_psp.this.vipBeans.size(); i11++) {
                    EmuActivity_psp emuActivity_psp = EmuActivity_psp.this;
                    EmuActivity_psp.download(emuActivity_psp, emuActivity_psp.vipBeans.get(i11).getMain().getPic_remote());
                }
                EmuActivity_psp emuActivity_psp2 = EmuActivity_psp.this;
                SettingVipDialog settingVipDialog = emuActivity_psp2.vipDialog;
                if (settingVipDialog != null) {
                    settingVipDialog.updateVipDatas(emuActivity_psp2.vipBeans);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override // com.papa91.arc.http.HttpUtils.OnResult
        public void onSuccess(final String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            EmuActivity_psp.this.mHandler.post(new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.10.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass10.this.onPostExecute(str);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.papa91.arc.EmuActivity_psp$11, reason: invalid class name */
    class AnonymousClass11 implements HttpUtils.OnResult {
        AnonymousClass11() {
        }

        @Override // com.papa91.arc.http.HttpUtils.OnResult
        public void onFailure(String str) {
        }

        void onPostExecute(String str) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    EmuActivity_psp.this.adInfoBean = null;
                }
                JSONObject jSONObject = new MyJson(str).getJSONObject("data");
                if (jSONObject != null) {
                    EmuActivity_psp.this.adInfoBean = new AdInfoBean();
                    JSONObject jSONObject2 = (JSONObject) jSONObject.get("main");
                    EmuActivity_psp.this.adInfoBean.setMain(new MainBean(jSONObject2.getString("title"), jSONObject2.getString(PostingActivity_.LABEL_EXTRA), jSONObject2.getString("pic_remote"), jSONObject2.getString("title_type"), jSONObject2.getString("sub_title"), jSONObject2.getInt("ad_switch")));
                    JSONObject jSONObject3 = (JSONObject) ((JSONArray) jSONObject.get("sub")).get(0);
                    EmuActivity_psp.this.adInfoBean.setSub(new SubBean(jSONObject3.getString("link_type"), jSONObject3.getString("link_type_val"), jSONObject3.getString("crc_link_type_val"), jSONObject3.getString("jump_type"), jSONObject3.getString("is_more"), jSONObject3.getString("tpl_type")));
                }
                EmuActivity_psp.this.showAdView();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.papa91.arc.http.HttpUtils.OnResult
        public void onSuccess(final String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            EmuActivity_psp.this.mHandler.post(new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.11.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass11.this.onPostExecute(str);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.papa91.arc.EmuActivity_psp$17, reason: invalid class name */
    class AnonymousClass17 implements Runnable {
        AnonymousClass17() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$run$0(View view) {
            EmuActivity_psp.mDialog.dismiss();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (EmuActivity_psp.mDialog == null) {
                Dialog dialog = new Dialog(EmuActivity_psp.getContext(), R.style.MyDialog);
                EmuActivity_psp.mDialog = dialog;
                dialog.setContentView(R.layout.bind_dialog2);
                Button button = (Button) EmuActivity_psp.mDialog.findViewById(R.id.dialog_button_ok);
                TextView textView = (TextView) EmuActivity_psp.mDialog.findViewById(R.id.tip_title);
                TextView textView2 = (TextView) EmuActivity_psp.mDialog.findViewById(R.id.dialog_content);
                TextView textView3 = (TextView) EmuActivity_psp.mDialog.findViewById(R.id.dialog_desci);
                EmuActivity_psp.mDialog.setCancelable(false);
                EmuActivity_psp.mDialog.setCanceledOnTouchOutside(false);
                textView.setText("提示");
                textView2.setText("请校验会员身份\n联网校验后，你在一段时间内可离线使用。");
                textView3.setVisibility(8);
                button.setText("开启网络");
                EmuActivity_psp.mDialog.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.k
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        EmuActivity_psp.AnonymousClass17.lambda$run$0(view);
                    }
                });
                button.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.EmuActivity_psp.17.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        EmuActivity_psp.getContext().startActivity(new Intent("android.settings.SETTINGS"));
                    }
                });
            }
            EmuActivity_psp.isNet = false;
            EmuActivity_psp.mDialog.show();
        }
    }

    /* JADX INFO: renamed from: com.papa91.arc.EmuActivity_psp$25, reason: invalid class name */
    class AnonymousClass25 implements Runnable {
        final /* synthetic */ PopwindowBean val$result;
        final /* synthetic */ int val$type;

        AnonymousClass25(PopwindowBean popwindowBean, int i10) {
            this.val$result = popwindowBean;
            this.val$type = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(PopwindowBean popwindowBean, DialogInterface dialogInterface) {
            if (popwindowBean.isNoAge() && popwindowBean.getStatus() == 0) {
                EmuActivity_psp.this.senCommonEvent("nonageAstrictHint", "0");
            } else if (popwindowBean.getPopup().booleanValue() && popwindowBean.getButtonCenter() != null && popwindowBean.getButtonCenter().getEventType().intValue() == 1) {
                EmuActivity_psp.this.senCommonEvent("realNameUpWindows", "0");
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            EmuActivity_psp.this.closeRealNameDialog();
            PopwindowBean popwindowBean = this.val$result;
            if (popwindowBean == null || !popwindowBean.getPopup().booleanValue()) {
                return;
            }
            if (1 == this.val$result.getType()) {
                EmuActivity_psp.this.showNativeRealName(this.val$result, this.val$type);
                return;
            }
            if (this.val$result.getButtonCenter() != null && this.val$result.getButtonCenter().getEventType().intValue() == 4 && this.val$result.isNoAge()) {
                EmuActivity_psp.this.senCommonEvent("antiAddtionWindowUp", "0");
            }
            EmuActivity_psp.this.perfectWarmDialog = new PerfectWarmDialog(EmuActivity_psp.this);
            EmuActivity_psp.this.perfectWarmDialog.setData(this.val$result);
            EmuActivity_psp.this.perfectWarmDialog.setListener(new DialogListenerWrap() { // from class: com.papa91.arc.EmuActivity_psp.25.1
                @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                public void onCenterClick(Dialog dialog, ButtonBean buttonBean) {
                    super.onCenterClick(dialog, buttonBean);
                    AnonymousClass25 anonymousClass25 = AnonymousClass25.this;
                    EmuActivity_psp emuActivity_psp = EmuActivity_psp.this;
                    emuActivity_psp.handleButtonAction(emuActivity_psp.perfectWarmDialog, dialog, buttonBean, anonymousClass25.val$type);
                }

                @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                public void onCloseClick(Dialog dialog, ButtonBean buttonBean) {
                    super.onCloseClick(dialog, buttonBean);
                    EmuActivity_psp.this.senCommonEvent("closedRealNameWindow", "0");
                    AnonymousClass25 anonymousClass25 = AnonymousClass25.this;
                    EmuActivity_psp emuActivity_psp = EmuActivity_psp.this;
                    emuActivity_psp.handleButtonAction(emuActivity_psp.perfectWarmDialog, dialog, buttonBean, anonymousClass25.val$type);
                }
            });
            PerfectWarmDialog perfectWarmDialog = EmuActivity_psp.this.perfectWarmDialog;
            final PopwindowBean popwindowBean2 = this.val$result;
            perfectWarmDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.papa91.arc.l
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    this.f78071b.lambda$run$0(popwindowBean2, dialogInterface);
                }
            });
            EmuActivity_psp.this.perfectWarmDialog.show();
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
            EmuActivity_psp.this.onHandlerResultNameResult(intent);
        }
    }

    public class AdResultReceiver extends BroadcastReceiver {
        public AdResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int intExtra = intent.getIntExtra("adAction", 1);
            if (intExtra != 18 && intExtra != 20) {
                if (intExtra != 5) {
                    EmuActivity_psp.this.handleAdResult(context, intent);
                    return;
                }
                if (StringUtils.isNotEmpty(intent.getStringExtra("extras"))) {
                    EmuActivity_psp.this.handleAdError(context, intent);
                    return;
                }
                GameTimeLimitedDialog gameTimeLimitedDialog = EmuActivity_psp.this.timeLimitedDialog;
                if (gameTimeLimitedDialog != null && gameTimeLimitedDialog.isShowing()) {
                    EmuActivity_psp.this.timeLimitedDialog.dismiss();
                }
                EmuActivity_psp.this.hideAdCountDown();
                return;
            }
            String adGamesConfig = EmuActivity_psp.this.pref.getAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID);
            long remainTime = !TextUtils.isEmpty(adGamesConfig) ? EmuActivity_psp.this.pref.getRemainTime(adGamesConfig) : 0L;
            UserPrefs userPrefs = EmuActivity_psp.this.pref;
            if (userPrefs != null) {
                userPrefs.setAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID, remainTime, true);
            }
            GameTimeLimitedDialog gameTimeLimitedDialog2 = EmuActivity_psp.this.timeLimitedDialog;
            if (gameTimeLimitedDialog2 != null && gameTimeLimitedDialog2.isShowing()) {
                EmuActivity_psp.this.timeLimitedDialog.dismiss();
            }
            GameTimeLimitedNetworkFailedDialog gameTimeLimitedNetworkFailedDialog = EmuActivity_psp.this.timeLimitedNetworkFailedDialog;
            if (gameTimeLimitedNetworkFailedDialog != null && gameTimeLimitedNetworkFailedDialog.isShowing()) {
                EmuActivity_psp.this.timeLimitedNetworkFailedDialog.dismiss();
            }
            EmuActivity_psp.this.hideAdCountDown();
        }
    }

    class EmuReceiveReceiver extends BroadcastReceiver {
        EmuReceiveReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("com.emu.ad.result") && intent.getIntExtra("adAction", 0) == 100) {
                if (intent.getIntExtra("exit", 0) == 1) {
                    ((NativeActivity) EmuActivity_psp.this).shuttingDown = true;
                    EmuActivity_psp.this.finish();
                    EmuActivity_psp.this.EXIT_CODE = 1;
                } else if ((((NativeActivity) EmuActivity_psp.this).menuView == null || !((NativeActivity) EmuActivity_psp.this).menuView.menuShowing()) && !EmuActivity_psp.this.isFinishing()) {
                    EmuActivity_psp.this.gameOnResume();
                }
            }
        }
    }

    public class LoginReceiver extends BroadcastReceiver {
        public LoginReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ((NativeActivity) EmuActivity_psp.this).m_SVIP = intent.getExtras().getInt(BaseAppConfig.KEY_SVIP_LEVEL);
            NativeActivity.m_VIP = intent.getExtras().getInt(BaseAppConfig.KEY_VIP_LEVEL);
            NativeActivity.UserID = intent.getExtras().getString("uid");
            NativeActivity.token = intent.getExtras().getString(Constants.TOKEN);
            NativeActivity.tourist = intent.getExtras().getBoolean("tourist", true);
            EmuActivity_psp.this.loginFinish();
        }
    }

    class MyReceiver extends BroadcastReceiver {
        MyReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NativeActivity.token = intent.getExtras().getString(Constants.TOKEN);
            int i10 = intent.getExtras().getInt(BaseAppConfig.KEY_VIP_LEVEL);
            int i11 = intent.getExtras().getInt(BaseAppConfig.KEY_SVIP_LEVEL);
            NativeActivity.UserID = intent.getExtras().getString("uid");
            NativeActivity.m_VIP = i10;
            ((NativeActivity) EmuActivity_psp.this).m_SVIP = i11;
            EmuActivity_psp.this.restoreVipData();
            EmuActivity_psp.this.onVipChanged();
        }
    }

    public class NetWorkReceiver extends BroadcastReceiver {
        public NetWorkReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) EmuActivity_psp.this.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                return;
            }
            EmuActivity_psp.this.HttpPost_Memer();
        }
    }

    public static void ShowSetNetWorkDialog() {
        ((EmuActivity_psp) getContext()).runOnUiThread(new AnonymousClass17());
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0214 A[PHI: r4 r16
      0x0214: PHI (r4v9 java.io.BufferedReader) = (r4v6 java.io.BufferedReader), (r4v10 java.io.BufferedReader) binds: [B:94:0x0201, B:104:0x0212] A[DONT_GENERATE, DONT_INLINE]
      0x0214: PHI (r16v6 java.io.PrintWriter) = (r16v3 java.io.PrintWriter), (r16v7 java.io.PrintWriter) binds: [B:94:0x0201, B:104:0x0212] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:113:0x0222  */
    /* JADX WARN: Code duplicated, block: B:115:0x020d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x021b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x01fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:? A[SYNTHETIC] */
    public static void convert(String str, String str2, String str3) throws Throwable {
        BufferedReader bufferedReader;
        PrintWriter printWriter;
        Pattern pattern;
        Pattern pattern2;
        String str4 = "（";
        StringBuilder sb2 = new StringBuilder();
        try {
            try {
                File file = new File(str);
                File file2 = new File(str2);
                Pattern patternCompile = Pattern.compile("cheat\\s*?\"([^\"]*?)\"");
                Pattern patternCompile2 = Pattern.compile("[0-1][^,]*?,\\s+?\"([^\"]*?)\"");
                Pattern patternCompile3 = Pattern.compile("\\[([^\\]]*?)\\]");
                Pattern patternCompile4 = Pattern.compile("\\{([^\\}]*?)\\}");
                Pattern patternCompile5 = Pattern.compile("\"name\":\"([^\"]*?)\"\\s*?,\\s*?\"vaule\":\"([^\"]*?)\"\\s*?,\\s*?\"isGS\":(.*)");
                if (file.exists()) {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(new File(str)), "UTF-8"));
                    String strGroup = null;
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            String strTrim = line.trim();
                            if (strTrim.matches(".?cheat.*?")) {
                                int iIndexOf = strTrim.indexOf(str4);
                                if (iIndexOf > 0) {
                                    strTrim = strTrim.substring(0, iIndexOf) + x.a.f97579g;
                                }
                                Matcher matcher = patternCompile.matcher(strTrim);
                                if (matcher.find()) {
                                    strGroup = matcher.group(1);
                                }
                            } else {
                                str4 = str4;
                                if (strTrim.startsWith(v0.f50057a)) {
                                    sb2.append("_C");
                                    sb2.append(strTrim.matches("default\\s+0") ? "0" : "1");
                                    sb2.append(' ');
                                    sb2.append(strGroup);
                                    sb2.append("\n");
                                } else if (strTrim.startsWith("1")) {
                                    Matcher matcher2 = patternCompile2.matcher(strTrim);
                                    if (matcher2.find()) {
                                        sb2.append("_L ");
                                        sb2.append(matcher2.group(1));
                                        sb2.append("\n");
                                    }
                                }
                            }
                            str4 = str4;
                        } catch (FileNotFoundException e10) {
                            e = e10;
                            bufferedReader = bufferedReader2;
                        } catch (IOException e11) {
                            e = e11;
                            bufferedReader = bufferedReader2;
                            printWriter = null;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused) {
                                }
                            }
                            if (printWriter != null) {
                                printWriter.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            printWriter = null;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused2) {
                                }
                            }
                            if (printWriter == null) {
                                throw th;
                            }
                            printWriter.close();
                            throw th;
                        }
                        printWriter = null;
                        e.printStackTrace();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (printWriter != null) {
                            printWriter.close();
                        }
                    }
                    bufferedReader2.close();
                }
                if (file2.exists()) {
                    BufferedReader bufferedReader3 = new BufferedReader(new InputStreamReader(new FileInputStream(new File(str2)), "UTF-8"));
                    while (true) {
                        try {
                            String line2 = bufferedReader3.readLine();
                            if (line2 == null) {
                                break;
                            }
                            Pattern pattern3 = patternCompile3;
                            Matcher matcher3 = pattern3.matcher(line2);
                            if (matcher3.find()) {
                                int i10 = 1;
                                pattern2 = patternCompile4;
                                Matcher matcher4 = pattern2.matcher(matcher3.group(1));
                                while (matcher4.find()) {
                                    String strGroup2 = matcher4.group(i10);
                                    Pattern pattern4 = patternCompile5;
                                    Matcher matcher5 = pattern4.matcher(strGroup2);
                                    if (matcher5.find()) {
                                        sb2.append("_C");
                                        sb2.append(Boolean.parseBoolean(matcher5.group(3)) ? "1" : "0");
                                        sb2.append(' ');
                                        sb2.append(matcher5.group(1));
                                        sb2.append("\n");
                                        sb2.append("_L ");
                                        sb2.append(matcher5.group(2));
                                        sb2.append("\n");
                                    }
                                    patternCompile5 = pattern4;
                                    i10 = 1;
                                }
                                pattern = patternCompile5;
                            } else {
                                pattern = patternCompile5;
                                pattern2 = patternCompile4;
                            }
                            patternCompile3 = pattern3;
                            patternCompile5 = pattern;
                            patternCompile4 = pattern2;
                        } catch (FileNotFoundException e12) {
                            e = e12;
                            bufferedReader = bufferedReader3;
                            printWriter = null;
                        } catch (IOException e13) {
                            e = e13;
                            bufferedReader = bufferedReader3;
                            printWriter = null;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (printWriter != null) {
                                printWriter.close();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = bufferedReader3;
                            printWriter = null;
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (printWriter == null) {
                                throw th;
                            }
                            printWriter.close();
                            throw th;
                        }
                        e.printStackTrace();
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        if (printWriter != null) {
                            printWriter.close();
                        }
                    }
                    bufferedReader3.close();
                }
                File file3 = new File(str3);
                if (!file3.exists()) {
                    file3.createNewFile();
                }
                PrintWriter printWriter2 = new PrintWriter(new OutputStreamWriter(new FileOutputStream(file3), "UTF-8"));
                try {
                    printWriter2.write(sb2.toString().trim());
                    printWriter2.flush();
                    printWriter2.close();
                    printWriter2.close();
                } catch (FileNotFoundException e14) {
                    e = e14;
                    printWriter = printWriter2;
                    bufferedReader = null;
                } catch (IOException e15) {
                    e = e15;
                    printWriter = printWriter2;
                    bufferedReader = null;
                    e.printStackTrace();
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    if (printWriter != null) {
                        printWriter.close();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    printWriter = printWriter2;
                    bufferedReader = null;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    if (printWriter == null) {
                        throw th;
                    }
                    printWriter.close();
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (FileNotFoundException e16) {
            e = e16;
            bufferedReader = null;
        } catch (IOException e17) {
            e = e17;
            bufferedReader = null;
        } catch (Throwable th5) {
            th = th5;
            bufferedReader = null;
        }
    }

    public static boolean createDir(String str) {
        File file = new File(str);
        if (file.exists()) {
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

    /* JADX WARN: Code duplicated, block: B:20:0x0075 A[Catch: IOException -> 0x00b0, TryCatch #0 {IOException -> 0x00b0, blocks: (B:12:0x0038, B:14:0x0054, B:17:0x006b, B:18:0x006f, B:20:0x0075, B:21:0x0078, B:24:0x0082, B:25:0x009c, B:27:0x00a2, B:28:0x00a6), top: B:34:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0081  */
    /* JADX WARN: Code duplicated, block: B:24:0x0082 A[Catch: IOException -> 0x00b0, TryCatch #0 {IOException -> 0x00b0, blocks: (B:12:0x0038, B:14:0x0054, B:17:0x006b, B:18:0x006f, B:20:0x0075, B:21:0x0078, B:24:0x0082, B:25:0x009c, B:27:0x00a2, B:28:0x00a6), top: B:34:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00a2 A[Catch: IOException -> 0x00b0, LOOP:1: B:25:0x009c->B:27:0x00a2, LOOP_END, TryCatch #0 {IOException -> 0x00b0, blocks: (B:12:0x0038, B:14:0x0054, B:17:0x006b, B:18:0x006f, B:20:0x0075, B:21:0x0078, B:24:0x0082, B:25:0x009c, B:27:0x00a2, B:28:0x00a6), top: B:34:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00a6 A[EDGE_INSN: B:41:0x00a6->B:28:0x00a6 BREAK  A[LOOP:1: B:25:0x009c->B:27:0x00a2], SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:24:0x0082, please report this as an issue */
    static void createResFile(Context context, String str, String[] strArr, boolean z10) {
        InputStream inputStreamOpen;
        FileOutputStream fileOutputStream;
        byte[] bArr;
        int i10;
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(str + "bios");
        if (!file2.exists()) {
            file2.mkdir();
        }
        AssetManager assets = context.getAssets();
        for (int i11 = 0; i11 < strArr.length; i11++) {
            if (z10) {
                if (!file.exists()) {
                    file.mkdirs();
                }
                inputStreamOpen = assets.open(strArr[i11], 3);
                if (inputStreamOpen == null) {
                    fileOutputStream = new FileOutputStream(str + strArr[i11]);
                    bArr = new byte[1024];
                    while (true) {
                        i10 = inputStreamOpen.read(bArr);
                        if (i10 > 0) {
                            break;
                            break;
                        }
                        fileOutputStream.write(bArr, 0, i10);
                    }
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    inputStreamOpen.close();
                }
            } else {
                try {
                    File file3 = new File(str + strArr[i11]);
                    if (file3.exists()) {
                        long length = file3.length();
                        InputStream inputStreamOpen2 = assets.open(strArr[i11]);
                        int iAvailable = inputStreamOpen2.available();
                        inputStreamOpen2.close();
                        if (length == iAvailable) {
                        }
                    }
                    file = file3.getParentFile();
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    inputStreamOpen = assets.open(strArr[i11], 3);
                    if (inputStreamOpen == null) {
                        fileOutputStream = new FileOutputStream(str + strArr[i11]);
                        bArr = new byte[1024];
                        while (true) {
                            i10 = inputStreamOpen.read(bArr);
                            if (i10 > 0) {
                                break;
                            } else {
                                fileOutputStream.write(bArr, 0, i10);
                            }
                        }
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        inputStreamOpen.close();
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public static void delayStatistics(String str) {
        try {
            netBattleMatchEfficiency(NativeActivity.GameID, str, NativeActivity.UserID);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void download(Context context, String str) {
        Fresco.getImagePipeline().U(ImageRequestBuilder.x(Uri.parse(str)).y(true).G(ImageRequest.RequestLevel.FULL_FETCH).I(false).a(), context);
    }

    public static void exitActivity(int i10) {
        sendGamePlay(2);
    }

    protected static boolean gameOut(String str, int i10, String str2) {
        Intent intent = new Intent(p5.a.V);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("sec", i10);
        send(intent);
        return true;
    }

    public static Context getContext() {
        return sContext;
    }

    public static String getHostPackageName() {
        return NativeActivity.appPackName;
    }

    private int getNextTip(HashMap<Integer, Boolean> map, int i10) {
        if (map.get(Integer.valueOf(i10)).booleanValue()) {
            return i10;
        }
        int i11 = i10 + 1;
        int i12 = 0;
        while (i12 < 2) {
            if (i11 > map.size() - 1) {
                i12++;
                i11 = 0;
            }
            if (map.get(Integer.valueOf(i11)).booleanValue()) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    static String getSDPath() {
        return StoreUtils.getExternalStorageDirectory(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUgcPath() {
        String str = NativeActivity.ugcPath;
        if (TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(NativeActivity.romPath)) {
                String str2 = NativeActivity.romPath;
                String strSubstring = str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                str = getSDPath() + "/papa91/psp/" + strSubstring + net.lingala.zip4j.util.e.F0 + strSubstring;
            }
        } else if (!TextUtils.isEmpty(NativeActivity.romPath)) {
            String str3 = NativeActivity.romPath;
            str = NativeActivity.ugcPath + net.lingala.zip4j.util.e.F0 + str3.substring(str3.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
        }
        if (!TextUtils.isEmpty(str)) {
            new File(str).getParentFile().mkdirs();
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUgcPathInternal() {
        String str = NativeActivity.ugcPath;
        if (TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(NativeActivity.romPath)) {
                String str2 = NativeActivity.romPath;
                String strSubstring = str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                str = getFilesDir() + "/emus/" + strSubstring + net.lingala.zip4j.util.e.F0 + strSubstring;
            }
        } else if (!TextUtils.isEmpty(NativeActivity.romPath)) {
            String str3 = NativeActivity.romPath;
            String strSubstring2 = str3.substring(str3.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
            str = getFilesDir() + "/emus/" + strSubstring2 + net.lingala.zip4j.util.e.F0 + strSubstring2;
        }
        if (!TextUtils.isEmpty(str)) {
            new File(str).getParentFile().mkdirs();
        }
        return str;
    }

    private void goWebView(Context context, String str) {
        MarketUtil.intent(getContext(), "4", "", str, "", "");
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
            this.alertTipDialog.setListener(new DialogListenerWrap() { // from class: com.papa91.arc.EmuActivity_psp.27
                @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                public void onCenterClick(Dialog dialog3, ButtonBean buttonBean2) {
                    super.onCenterClick(dialog3, buttonBean2);
                    if (1 == buttonBean2.getEventType().intValue()) {
                        dialog3.dismiss();
                    }
                    EmuActivity_psp.this.handleButtonAction(dialog, dialog3, buttonBean2, i10);
                }

                @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                public void onLeftClick(Dialog dialog3, ButtonBean buttonBean2) {
                    super.onLeftClick(dialog3, buttonBean2);
                    if (1 == buttonBean2.getEventType().intValue()) {
                        dialog3.dismiss();
                    }
                    EmuActivity_psp.this.handleButtonAction(dialog, dialog3, buttonBean2, i10);
                }

                @Override // com.papa91.arc.interfaces.DialogListenerWrap, com.papa91.arc.interfaces.IDialogListener
                public void onRightClick(Dialog dialog3, ButtonBean buttonBean2) {
                    super.onRightClick(dialog3, buttonBean2);
                    if (1 == buttonBean2.getEventType().intValue()) {
                        dialog3.dismiss();
                    }
                    EmuActivity_psp.this.handleButtonAction(dialog, dialog3, buttonBean2, i10);
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
            senCommonEvent("antiAddtionWindowUp", "0");
            this.shuttingDown = true;
            finish();
            this.EXIT_CODE = 1;
            return;
        }
        if (1 == buttonBean.getEventType().intValue()) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.papa91.arc.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f78057b.lambda$handleButtonAction$6(buttonBean);
                }
            }, 100L);
            return;
        }
        if (3 != buttonBean.getEventType().intValue()) {
            dialog2.dismiss();
            return;
        }
        dialog2.dismiss();
        senCommonEvent("antiAddtionWindowUp", "0");
        this.shuttingDown = true;
        finish();
        this.EXIT_CODE = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCheckNameResult(PopwindowBean popwindowBean, int i10) {
        ThreadManager.runOnUiThread(new AnonymousClass25(popwindowBean, i10));
    }

    public static boolean isNetworkConnected() {
        if (getContext() == null) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isAvailable();
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkRealName$5(Request request, int i10) {
        try {
            Response<PopwindowBean> responseCheckRealName = HttpUtils.checkRealName(request);
            this.loading_real_name = false;
            if (responseCheckRealName == null || responseCheckRealName.getCode() != 200) {
                String message = "网络连接异常，请检查网络连接";
                if (responseCheckRealName != null && !TextUtils.isEmpty(responseCheckRealName.getMessage())) {
                    message = responseCheckRealName.getMessage();
                }
                Toast.makeText(this, message, 0).show();
                this.loading_real_name = false;
                return;
            }
            PopwindowBean data = responseCheckRealName.getData();
            if (data != null) {
                if (data.getPopup().booleanValue()) {
                    handleCheckNameResult(data, i10);
                }
                this.playTime = 0L;
                if (data.getEndDuration().intValue() > 0) {
                    playCountDown(data.getEndDuration().intValue());
                }
            }
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
    public static /* synthetic */ boolean lambda$getDiskPaths$3(File file) {
        return file.getName().endsWith(".iso");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getDiskPaths$4(File file, File file2) {
        if (file.getName().compareTo(file2.getName()) > 0) {
            return -1;
        }
        return file.getName().compareTo(file2.getName()) == 0 ? 0 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleButtonAction$6(ButtonBean buttonBean) {
        goWebView(this, buttonBean.getJumpLink());
        senCommonEvent("clickKnowGoRealPage", "0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$restoreAdData$1(String str) {
        HttpUtils.post(this.ad_host_url + "/v5/game/simulatorGameInterfaceAd", null, str, new AnonymousClass11());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$restoreVipData$0(String str) {
        HttpUtils.post(this.url, null, str, new AnonymousClass10());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAdView$2() {
        CContext.ISharePrefrence iSharePrefrence;
        if (this.adInfoBean == null || this.menuView == null || (iSharePrefrence = CContext.mShareLitener) == null) {
            return;
        }
        String hasShowAdInfo = iSharePrefrence.getHasShowAdInfo();
        String md5 = getMD5(new Gson().toJson(this.adInfoBean));
        if (TextUtils.isEmpty(hasShowAdInfo) || !md5.equals(hasShowAdInfo)) {
            this.menuView.showAdImage(true, this.adInfoBean.getMain().getPic_remote());
        }
    }

    private void loadDNSURL() {
        String string;
        String stringExtra = getIntent().getStringExtra("jsonData");
        if (stringExtra != null) {
            try {
                String string2 = new MyJson(stringExtra).getString("dnsJson", "");
                if (string2 == null || "".equals(string2) || (string = new JSONObject(string2).getString("appContent")) == null || "".equals(string)) {
                    return;
                }
                this.appContent = string;
                this.url = string + "/simulator/simulator_member_fun_type";
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
    }

    public static void login() {
        try {
            try {
                try {
                    Intent intent = new Intent();
                    intent.putExtra("intentFrom", 5);
                    intent.setComponent(new ComponentName(NativeActivity.appPackName_mgsim, "com.join.mgps.activity.login.LoginSplashActivity_"));
                    intent.setAction("android.intent.action.VIEW");
                    intent.setAction("android.intent.action.VIEW");
                    getContext().startActivity(intent);
                } catch (Exception unused) {
                    Intent intent2 = new Intent();
                    intent2.putExtra("intentFrom", 5);
                    intent2.setComponent(new ComponentName("com.join.android.app.mgsim.wufan.mha", "com.join.mgps.activity.login.LoginSplashActivity_"));
                    intent2.setAction("android.intent.action.VIEW");
                    intent2.setAction("android.intent.action.VIEW");
                    getContext().startActivity(intent2);
                }
            } catch (Exception unused2) {
                Intent intent3 = new Intent();
                intent3.putExtra("intentFrom", 5);
                intent3.setComponent(new ComponentName(NativeActivity.appPackName, "com.join.mgps.activity.login.LoginSplashActivity_"));
                intent3.setAction("android.intent.action.VIEW");
                intent3.setAction("android.intent.action.VIEW");
                getContext().startActivity(intent3);
            }
        } catch (Exception unused3) {
        }
    }

    protected static boolean netBattleMatchEfficiency(String str, String str2, String str3) {
        Intent intent = new Intent(p5.a.U);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str3);
        intent.putExtra("jsonData", str2);
        send(intent);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playCountDown(long j10) {
        this.mHandler.removeCallbacks(this.limitTimeRunnable);
        this.limitTime = j10;
        this.mHandler.postDelayed(this.limitTimeRunnable, 1000L);
    }

    static boolean playTime(long j10) {
        Intent intent = new Intent(p5.a.O);
        intent.putExtra("gameId", NativeActivity.GameID);
        intent.putExtra("uid", NativeActivity.UserID);
        intent.putExtra("sec", j10);
        send(intent);
        return true;
    }

    static void send(Intent intent) {
        intent.putExtra("packageName", getHostPackageName());
        try {
            intent.addFlags(32);
            if (getContext().getPackageName().equals(getHostPackageName())) {
                getContext().sendBroadcast(intent);
            } else {
                sendInBridge(intent);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    static void sendGamePlay(int i10) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.gamePlay");
        intent.putExtra("action", i10);
        intent.putExtra("startMode", NativeActivity.startMode);
        intent.putExtra("gameId", NativeActivity.GameID);
        intent.putExtra("uid", NativeActivity.UserID);
        send(intent);
    }

    static void sendInBridge(Intent intent) {
        if (intent == null) {
            return;
        }
        Message message = new Message();
        message.what = 11;
        message.setData(new Bundle(intent.getExtras()));
        Bundle bundle = new Bundle();
        bundle.putString("action", intent.getAction());
        bundle.putString("fromCls", NativeActivity.className);
        message.obj = bundle;
        try {
            Messenger messenger = mMessenger;
            if (messenger != null) {
                messenger.send(message);
            }
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public static void sendLimitStat(String str) {
        String str2;
        if (str.equals("OnClickPSPCutDown")) {
            str2 = p5.a.X;
        } else if (str.equals("PSPLimitPopup")) {
            str2 = p5.a.Y;
        } else if (str.equals("PSPLimitPlay")) {
            str2 = p5.a.Z;
        } else if (str.equals("PSPLimitMember")) {
            str2 = p5.a.f96184a0;
        } else {
            str2 = str.equals("PSPLimitQuit") ? p5.a.f96186b0 : "";
        }
        Intent intent = new Intent(str2);
        intent.putExtra("gameId", NativeActivity.GameID);
        intent.putExtra("uid", NativeActivity.UserID);
        send(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNativeRealName(PopwindowBean popwindowBean, final int i10) {
        senCommonEvent("realNameDisplayWindow", "0");
        RealNameDialog realNameDialog = new RealNameDialog(this, popwindowBean, new RealNameCallBack() { // from class: com.papa91.arc.EmuActivity_psp.26
            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onCancel(Dialog dialog, ButtonBean buttonBean) {
                EmuActivity_psp.this.senCommonEvent("clickClosedRealNameWindow", "0");
                EmuActivity_psp emuActivity_psp = EmuActivity_psp.this;
                emuActivity_psp.handleButtonAction(emuActivity_psp.realNameDialog, dialog, buttonBean, i10);
            }

            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onEvent(String str, String str2) {
                EmuActivity_psp.this.senCommonEvent(str, str2);
            }

            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onFail(int i11) {
            }

            @Override // com.papa91.arc.interfaces.RealNameCallBack
            public void onSuccess(Dialog dialog, PopwindowBean popwindowBean2) {
                dialog.dismiss();
                EmuActivity_psp.this.handleCheckNameResult(popwindowBean2, i10);
                if (popwindowBean2.getEndDuration().intValue() > 0) {
                    EmuActivity_psp emuActivity_psp = EmuActivity_psp.this;
                    emuActivity_psp.playTime = 0L;
                    emuActivity_psp.playCountDown(popwindowBean2.getEndDuration().intValue());
                }
            }
        });
        this.realNameDialog = realNameDialog;
        realNameDialog.show(NativeActivity.UserID, Integer.valueOf(i10), 2);
    }

    public static void startVideo() {
        Intent intent = new Intent("com.tools.AdBroadcast");
        intent.putExtra("action", 7);
        send(intent);
    }

    public static void startplayTime(int i10) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("startplayTime1abc ");
            sb2.append(i10);
            playTime(i10);
        } catch (Exception e10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("startplayTime3 ");
            sb3.append(i10);
            e10.printStackTrace();
        }
    }

    protected static boolean unLockSP(String str) {
        return true;
    }

    public void HttpPost_Memer() {
        if (isNetworkConnected()) {
            try {
                NativeApp.httpPostMemberInfo();
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
            Dialog dialog = mDialog;
            if (dialog != null) {
                dialog.dismiss();
            }
        }
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public boolean IsHapticFeedbackEnable() {
        return NativeApp.IsHapticFeedbackEnable();
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public boolean IsSoundEnable() {
        return NativeApp.IsSoundEnable();
    }

    @Override // com.papa91.arc.view.IEmulator
    public void addEditCheatInfo(EditCheatInfo editCheatInfo) {
        NativeApp.addEditCheat(editCheatInfo);
    }

    @Override // org.ppsspp.ppsspp.NativeActivity
    protected void attachMenu() {
        super.attachMenu();
        showAdView();
    }

    void bakState() {
        File[] fileArrListFiles = new File(getUgcPath()).getParentFile().listFiles(FileUtils.getSlotFilter());
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return;
        }
        List listAsList = Arrays.asList(fileArrListFiles);
        Collections.sort(listAsList, new Comparator<File>() { // from class: com.papa91.arc.EmuActivity_psp.13
            @Override // java.util.Comparator
            public int compare(File file, File file2) {
                if (file.lastModified() < file2.lastModified()) {
                    return 1;
                }
                return file.lastModified() == file2.lastModified() ? 0 : -1;
            }
        });
        File file = (File) listAsList.get(0);
        String strSubstring = file.getAbsolutePath().substring(file.getAbsolutePath().lastIndexOf(o0.f49827a) + 1);
        FileUtils.copyFile(file.getAbsolutePath(), getUgcPathInternal() + o0.f49827a + strSubstring);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(file.getAbsolutePath());
        sb2.append(".png");
        FileUtils.copyFile(sb2.toString(), getUgcPathInternal() + o0.f49827a + strSubstring + ".png");
    }

    void bindBridge() {
        try {
            Context context = getContext();
            if (context == null) {
                return;
            }
            mServiceConnection = new ServiceConnection() { // from class: com.papa91.arc.EmuActivity_psp.16
                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    Messenger messenger = new Messenger(iBinder);
                    EmuActivity_psp.mMessenger = messenger;
                    EmuActivity_psp.this.onMessengerConnected(messenger);
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName componentName) {
                }
            };
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(getHostPackageName(), "com.join.mgps.va.service.MessengerService"));
            context.bindService(intent, mServiceConnection, 1);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void bindService() {
        gameStart();
        bindBridge();
    }

    /* JADX INFO: Removed unreachable split cross block B:32:0x008f */
    void changeCfgPath() {
        try {
            String str = StoreUtils.getExternalStorageDirectory(this) + "/PSP";
            String str2 = StoreUtils.getExternalStorageDirectory() + "/PSP";
            try {
                if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(getApplicationContext(), com.kuaishou.weapon.p0.g.f74785i) == 0 && ContextCompat.checkSelfPermission(getApplicationContext(), com.kuaishou.weapon.p0.g.f74786j) == 0) {
                    if (!new File(str).exists() && new File(str2).exists()) {
                        FileUtils.copyFolder(str2, str);
                    }
                } else if (Environment.getExternalStorageState().equals("mounted") && !new File(str).exists() && new File(str2).exists()) {
                    FileUtils.copyFolder(str2, str);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void cheatInfoEnable(int i10, int i11) {
        NativeApp.cheatEnable(i10, i11);
        StatIntents.getInstance(getContext()).statOpenGoldfinger(NativeActivity.GameID, NativeActivity.UserID);
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean checkCheatCodeInfo(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            ToastUtil.show(getContext(), "作弊码名称不能为空！");
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            ToastUtil.show(getContext(), "作弊码不能为空！");
            return false;
        }
        if (NativeApp.checkCheatCode(str)) {
            return true;
        }
        ToastUtil.show(getContext(), "作弊码格式有误！");
        return false;
    }

    void checkRealName(final int i10) {
        try {
            if (!isNetworkConnected()) {
                Toast.makeText(this, "请联网后重试！", 0).show();
                return;
            }
            HttpUtils.init(this);
            if (this.loading_real_name) {
                return;
            }
            this.loading_real_name = true;
            ReqRealNameArgs reqRealNameArgs = new ReqRealNameArgs();
            reqRealNameArgs.setUid(Integer.valueOf(NativeActivity.UserID));
            reqRealNameArgs.setUserToken(NativeActivity.token);
            reqRealNameArgs.setGameType("SO_SIMULATOR");
            reqRealNameArgs.setType(Integer.valueOf(i10));
            reqRealNameArgs.setGameId(NativeActivity.GameID);
            reqRealNameArgs.setAction(2);
            reqRealNameArgs.setPlatformType("ANDROID");
            final Request request = Request.getRequest(this, reqRealNameArgs);
            request.setSign(SignUtil.getSignForAPP(request));
            ThreadManager.runOnWriteThread(new Runnable() { // from class: com.papa91.arc.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f78061b.lambda$checkRealName$5(request, i10);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
            this.loading_real_name = false;
        }
    }

    public void closeDialogWithOut(SettingDialog settingDialog) {
        SettingCheatDialog settingCheatDialog = this.cheatDialog;
        if (settingCheatDialog != null && settingCheatDialog != settingDialog) {
            if (settingCheatDialog.isShowing()) {
                this.cheatDialog.dismiss();
            }
            this.cheatDialog = null;
        }
        SettingGateDialog settingGateDialog = this.gateDialog;
        if (settingGateDialog != null && settingGateDialog != settingDialog) {
            if (settingGateDialog.isShowing()) {
                this.gateDialog.dismiss();
            }
            this.gateDialog = null;
        }
        SettingSlotDialog settingSlotDialog = this.slotDialog;
        if (settingSlotDialog != null && settingSlotDialog != settingDialog) {
            if (settingSlotDialog.isShowing()) {
                this.slotDialog.dismiss();
            }
            this.slotDialog = null;
        }
        SettingVipDialog settingVipDialog = this.vipDialog;
        if (settingVipDialog == null || settingVipDialog == settingDialog) {
            return;
        }
        if (settingVipDialog.isShowing()) {
            this.vipDialog.dismissOnly();
        }
        this.vipDialog = null;
    }

    protected void closeRealNameDialog() {
        ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.arc.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f78060b.lambda$closeRealNameDialog$7();
            }
        });
    }

    @Override // com.papa91.arc.view.IEmulator
    public void deleteEditCheatInfo(int i10) {
        NativeApp.deleteEditCheat(i10);
    }

    @Override // com.papa91.arc.view.IEmulator
    public void enableEidtCheat(int i10, int i11) {
        if (getVip() > 0) {
            NativeApp.enableEidtCheat(i10);
            senCommonEvent("Custom_openGoldfinger", "");
            return;
        }
        if (i11 != 1 && i11 != -1) {
            NativeApp.enableEidtCheat(i10);
            senCommonEvent("Custom_closeGoldfinger", "");
            return;
        }
        CContext.IVideoAdListener iVideoAdListener = CContext.mVideoAdListener;
        if (iVideoAdListener != null && i11 == 1) {
            iVideoAdListener.showGoldAdDialog(this, NativeActivity.GameID, i10);
        } else {
            NativeApp.enableEidtCheat(i10);
            senCommonEvent("Custom_openGoldfinger", "");
        }
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void exit() {
        exit1();
    }

    public void exit1() {
        if (this.dialogExit == null) {
            TipTwoDialog tipTwoDialog = new TipTwoDialog(this);
            this.dialogExit = tipTwoDialog;
            tipTwoDialog.setListener(new TipTwoDialog.OnOptionsListener() { // from class: com.papa91.arc.EmuActivity_psp.4
                @Override // com.papa91.arc.dialog.TipTwoDialog.OnOptionsListener
                public void onCancel() {
                }

                @Override // com.papa91.arc.dialog.TipTwoDialog.OnOptionsListener
                public void onClose() {
                }

                @Override // com.papa91.arc.dialog.TipTwoDialog.OnOptionsListener
                public void onConfirm() {
                    ((NativeActivity) EmuActivity_psp.this).shuttingDown = true;
                    EmuActivity_psp.this.finish();
                    EmuActivity_psp.this.EXIT_CODE = 1;
                }
            });
        }
        this.dialogExit.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.papa91.arc.EmuActivity_psp.5
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if ((((NativeActivity) EmuActivity_psp.this).menuView == null || !((NativeActivity) EmuActivity_psp.this).menuView.menuShowing()) && !EmuActivity_psp.this.isFinishing()) {
                    EmuActivity_psp.this.gameOnResume();
                }
            }
        });
        this.dialogExit.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.papa91.arc.EmuActivity_psp.6
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                EmuActivity_psp.this.gameOnPause();
            }
        });
        if (this.dialogExit.isShowing()) {
            return;
        }
        this.dialogExit.show();
    }

    public void exitActivty(int i10) {
        if (NativeActivity.startMode == this.START_MODE_NETWORK) {
            Intent intent = new Intent("papa_broadcast_continue_match_fight");
            intent.putExtra("game_end_state", i10);
            sendBroadcast(intent);
        }
        try {
            int iCurrentTimeMillis = (int) (System.currentTimeMillis() - NativeActivity.startTIme);
            boolean zGameOut = gameOut(NativeActivity.GameID, iCurrentTimeMillis, NativeActivity.UserID);
            gameDestroy(this);
            if (!zGameOut) {
                createDir(getSDPath() + "/mgpapa/aidlservice/Game_out_" + NativeActivity.GameID + "_" + iCurrentTimeMillis + "_" + NativeActivity.UserID);
            }
            NativeActivity.startTIme = System.currentTimeMillis();
            int i11 = NativeActivity.startMode;
            if (i11 == this.START_MODE_RESTART) {
                if (!zGameOut) {
                    createDir(getSDPath() + "/mgpapa/aidlservice/Game_start15_" + NativeActivity.GameID + "_" + NativeActivity.UserID);
                }
            } else if (i11 == this.START_MODE_NETCLIENT || i11 == this.START_MODE_NETSERVER) {
                if (!zGameOut) {
                    createDir(getSDPath() + "/mgpapa/aidlservice/Game_startBattle15_" + NativeActivity.GameID + "_" + NativeActivity.UserID);
                }
            } else if (!zGameOut) {
                createDir(getSDPath() + "/mgpapa/aidlservice/Game_start160_" + NativeActivity.GameID + "_" + NativeActivity.UserID + "_" + NativeActivity.startMode);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        exitActivity(i10);
    }

    public void forceExit() {
        for (long j10 = 0; j10 <= 4; j10++) {
            try {
                if (!NativeApp.IsEmuExitFinish()) {
                    Thread.sleep(200L);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void forum() {
        goForum(NativeActivity.appPackName, NativeActivity.fid + "");
    }

    protected void gameDestroy(Activity activity) {
        if (activity == null) {
            return;
        }
        String name = activity.getClass().getName();
        synchronized (this) {
            if (this.activityQueue.containsKey(name)) {
                Long l10 = this.activityQueue.get(name);
                if (l10 == null) {
                    l10 = 0L;
                }
                if (l10.longValue() > 0) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - l10.longValue();
                    this.activityQueue.remove(name);
                    this.liveTime += jCurrentTimeMillis;
                }
            }
            if (this.activityQueue.isEmpty() && this.liveTime > 0) {
                Intent intent = new Intent(BAction.ACTION_EMU_GAME_PLAY_TIMES);
                intent.putExtra("gameId", NativeActivity.GameID);
                intent.putExtra(CommonService_.AnonymousClass36.f72735c, this.liveTime / 1000);
                sendBroadcast(intent);
            }
        }
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void gameOnPause() {
        NativeApp.pauseGame();
        this.gameIsPause = true;
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void gameOnResume() {
        NativeApp.resumeGame();
        this.gameIsPause = false;
    }

    protected void gamePause(Activity activity) {
        if (activity == null) {
            return;
        }
        String name = activity.getClass().getName();
        synchronized (this) {
            if (this.activityQueue.containsKey(name)) {
                Long l10 = this.activityQueue.get(name);
                if (l10 == null) {
                    l10 = 0L;
                }
                long jCurrentTimeMillis = System.currentTimeMillis() - l10.longValue();
                this.activityQueue.remove(name);
                if (this.activityQueue.isEmpty()) {
                    this.liveTime += jCurrentTimeMillis;
                }
            }
        }
    }

    protected void gameResume(Activity activity) {
        if (activity == null) {
            return;
        }
        this.activityQueue.put(activity.getClass().getName(), Long.valueOf(System.currentTimeMillis()));
    }

    void gameStart() {
        try {
            NativeActivity.startTIme = System.currentTimeMillis();
            int i10 = NativeActivity.startMode;
            if (i10 == this.START_MODE_RESTART) {
                if (!gameStart15(NativeActivity.GameID, NativeActivity.UserID)) {
                    createDir(getSDPath() + "mgpapa/aidlservice/Game_start15_" + NativeActivity.GameID + "_" + NativeActivity.UserID);
                }
            } else if (i10 == this.START_MODE_NETCLIENT || i10 == this.START_MODE_NETSERVER) {
                if (!gameStartBattle15(NativeActivity.GameID, NativeActivity.UserID)) {
                    createDir(getSDPath() + "mgpapa/aidlservice/Game_startBattle15_" + NativeActivity.GameID + "_" + NativeActivity.UserID);
                }
            } else if (!gameStart160(NativeActivity.GameID, NativeActivity.UserID, i10)) {
                createDir(getSDPath() + "mgpapa/aidlservice/Game_start160_" + NativeActivity.GameID + "_" + NativeActivity.UserID + "_" + NativeActivity.startMode);
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

    boolean gameStart160(String str, String str2, int i10) {
        Intent intent = new Intent(p5.a.T);
        intent.putExtra("gameId", str);
        intent.putExtra("uid", str2);
        intent.putExtra("startMode", i10);
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

    public String getAdRequestParam() {
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(NativeActivity.appPackName, 16384);
            this.appInfo = packageInfo;
            if (packageInfo != null) {
                NativeActivity.DEVICE_VERSION = this.appInfo.versionCode + "_" + this.appInfo.versionName.replace("'", "");
            }
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
        }
        NativeActivity.httpKeySign = getMD5(NativeActivity.DEVICE_ID + "gzRN53VWRF9BYUXomg2014");
        MyJson myJson = new MyJson();
        try {
            myJson.put("version", NativeActivity.DEVICE_VERSION);
            myJson.put("deviceid", NativeActivity.DEVICE_ID);
            myJson.put(Constant.MD5, NativeActivity.httpKeySign);
            myJson.put("platform", this.sp.getString("platform", ""));
            myJson.put("channelNum", NativeActivity.channelId);
            MyJson myJson2 = new MyJson();
            myJson2.put(SimulatorAreaActivity_.SIMULATOR_TYPE_EXTRA, getSimulatorType());
            myJson.put(QuarkPromptActivity_.ARGS_EXTRA, myJson2);
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
        return myJson.toString();
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean getAutoSlotStatus() {
        return false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getAutoStateMax() {
        return 5;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getAutoStateTimeCount() {
        int i10 = this.autoSlotTime;
        if (i10 <= 0) {
            this.autoSlotTime = 20;
        } else if (!this.gameIsPause) {
            this.autoSlotTime = i10 - 1;
        }
        return this.autoSlotTime;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getAutoStateTimeGap() {
        return 1000;
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public boolean getChangeDiskState() {
        return NativeApp.NeedChangeDisk();
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<CheatInfo> getCheatListData() {
        NativeApp.loadPspDBCheat();
        return NativeApp.getCheatList();
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getCheatLoaded() {
        return 0;
    }

    public int getCurChar() {
        return 0;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getCurrentChar() {
        return getCurChar();
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getCustomCheatTip(boolean z10) {
        return "金手指码每行分为两部分:\n第一部分：0x+8位数字、字母\n第二部分：0x+8位数字、字母\n两部分中间请用【空格】分割，例：0x12345678 0x1234ABCD";
    }

    public String getDiskPaths() {
        if (StringUtils.isNotEmpty(NativeActivity.romPath)) {
            File file = new File(NativeActivity.romPath);
            if (file.exists()) {
                File[] fileArrListFiles = file.getParentFile().listFiles(new FileFilter() { // from class: com.papa91.arc.i
                    @Override // java.io.FileFilter
                    public final boolean accept(File file2) {
                        return EmuActivity_psp.lambda$getDiskPaths$3(file2);
                    }
                });
                Arrays.sort(fileArrListFiles, new Comparator() { // from class: com.papa91.arc.j
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return EmuActivity_psp.lambda$getDiskPaths$4((File) obj, (File) obj2);
                    }
                });
                for (File file2 : fileArrListFiles) {
                    if (!StringUtils.isEmpty(this.diskPath)) {
                        if (!file2.getAbsolutePath().equals(this.diskPath)) {
                            this.diskPath = file2.getAbsolutePath();
                            break;
                        }
                    } else {
                        this.diskPath = file2.getAbsolutePath();
                    }
                }
            }
        }
        return this.diskPath;
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<EditCheatInfo> getEditCheatListData() {
        return NativeApp.getEditCheatList();
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public int getEndGameLimitTime() {
        return 0;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getGameId() {
        return NativeActivity.GameID;
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public int getGamePlayTime() {
        return 0;
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<GateBean> getGateData() {
        return null;
    }

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

    @Override // com.papa91.arc.view.IEmulator
    public List<TypeBean> getMenuTypes(int i10) {
        ArrayList arrayList = new ArrayList();
        if (i10 == 0) {
            int i11 = R.drawable.ic_cheat_vip;
            arrayList.add(new TypeBean(0, "悟饭定制", true, i11, i11));
            arrayList.add(new TypeBean(1, "自定义", false, -1, -1));
        } else if (i10 == 1) {
            arrayList.add(new TypeBean(0, "我的存档", true, -1, -1));
        }
        return arrayList;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getModSubfix() {
        return "";
    }

    FilenameFilter getOStateFilter(final String str) {
        return new FilenameFilter() { // from class: com.papa91.arc.EmuActivity_psp.14
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str2) {
                return str2.contains(o0.f49827a) && str2.lastIndexOf(o0.f49827a) != str2.length() && str2.substring(str2.lastIndexOf(o0.f49827a) + 1).equals("ppst") && !TextUtils.isEmpty(str) && str2.startsWith(str);
            }
        };
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getPlugVerCode() {
        return NativeActivity.verCode;
    }

    public String getRequestParam() {
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(NativeActivity.appPackName, 16384);
            this.appInfo = packageInfo;
            if (packageInfo != null) {
                NativeActivity.DEVICE_VERSION = this.appInfo.versionCode + "_" + this.appInfo.versionName.replace("'", "");
            }
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
        }
        NativeActivity.httpKeySign = getMD5(NativeActivity.DEVICE_ID + "gzRN53VWRF9BYUXomg2014");
        MyJson myJson = new MyJson();
        try {
            myJson.put("version", NativeActivity.DEVICE_VERSION);
            myJson.put("deviceid", NativeActivity.DEVICE_ID);
            myJson.put(Constant.MD5, NativeActivity.httpKeySign);
            MyJson myJson2 = new MyJson();
            myJson2.put(QuarkPromptActivity_.ARGS_EXTRA, new JSONArray());
            myJson.put("messages", myJson2);
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
        return myJson.toString();
    }

    public String getSimulatorType() {
        return "psp";
    }

    @Override // com.papa91.arc.view.IEmulator
    public SkillConfigBean getSkillConfigData() {
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public SkillTableDataBean getSkillTableData() {
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int[] getSpBindImages(int i10) {
        return new int[0];
    }

    @Override // com.papa91.arc.view.IEmulator
    public SpBindsDataBean getSpBindsData() {
        return null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getToken() {
        return NativeActivity.token;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getUserId() {
        return NativeActivity.UserID;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getVip() {
        if (SnkConfig.isSnkGame(NativeActivity.GameID)) {
            return 10;
        }
        return NativeActivity.m_VIP;
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<VipBean> getVipData() {
        return this.vipBeans;
    }

    public void goForum(String str, String str2) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName(str, "com.join.mgps.activity.ForumActivity_"));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fid", str2);
            jSONObject.put("name", "");
            jSONObject.put("icon_src", "");
            jSONObject.put("users", 0);
            jSONObject.put("posts", 0);
            jSONObject.put("add_time", 0);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        intent.putExtra("key_forum_bean", jSONObject.toString());
        try {
            intent.setAction("com.wufun.intent.activity.view.action.emuintent");
            startActivity(intent);
        } catch (Exception unused) {
            intent.setAction("com.papa.intent.activity.view.action.emuintent");
            startActivity(intent);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void goLogin() {
    }

    @Override // com.papa91.arc.view.IEmulator
    public void goSlotShop() {
        MarketUtil.intent(getContext(), "4", "", "https://anv3cjapi.5fun.com/member/vip_view/welfare/psp_ad", "", "");
    }

    @Override // com.papa91.arc.view.IEmulator
    public void goVipShop(int i10, boolean z10) {
        if (!z10) {
            goVipShop(i10);
            return;
        }
        if (i10 == 0) {
            if (StringUtils.isEmpty(CContext.mShareLitener.getEmulatorOneSkillUrl())) {
                goVipShop(i10);
                return;
            }
            MarketUtil.intent(getContext(), "4", "0", CContext.mShareLitener.getEmulatorOneSkillUrl() + "&gameId=" + NativeActivity.GameID, "", "");
            return;
        }
        if (i10 == 1) {
            if (StringUtils.isEmpty(CContext.mShareLitener.getEmulatorGoldenFingerUrl())) {
                goVipShop(i10);
                return;
            }
            MarketUtil.intent(getContext(), "4", "0", CContext.mShareLitener.getEmulatorGoldenFingerUrl() + "&gameId=" + NativeActivity.GameID, "", "");
            return;
        }
        if (i10 != 3) {
            return;
        }
        if (StringUtils.isEmpty(CContext.mShareLitener.getEmulatorCheckpointUrl())) {
            goVipShop(i10);
            return;
        }
        MarketUtil.intent(getContext(), "4", "0", CContext.mShareLitener.getEmulatorCheckpointUrl() + "&gameId=" + NativeActivity.GameID, "", "");
    }

    protected void handleAdError(Context context, Intent intent) {
        int iOptInt;
        if (intent.getIntExtra("adAction", 5) == 5) {
            String stringExtra = intent.getStringExtra("extras");
            if (StringUtils.isNotEmpty(stringExtra)) {
                try {
                    iOptInt = new JSONObject(stringExtra).optInt(NoticeTopAnimActivityDialog_.STATE_EXTRA, -1);
                } catch (JSONException e10) {
                    e10.printStackTrace();
                    iOptInt = -1;
                }
            } else {
                iOptInt = -1;
            }
            SettingCheatDialog settingCheatDialog = this.cheatDialog;
            if (settingCheatDialog == null || iOptInt == -1) {
                return;
            }
            settingCheatDialog.updateSwitchState(iOptInt);
        }
    }

    protected void handleAdResult(Context context, Intent intent) {
        int iOptInt;
        SettingCheatDialog settingCheatDialog;
        int intExtra = intent.getIntExtra("adAction", 1008);
        String stringExtra = intent.getStringExtra("extras");
        boolean zOptBoolean = true;
        if (StringUtils.isNotEmpty(stringExtra)) {
            try {
                JSONObject jSONObject = new JSONObject(stringExtra);
                zOptBoolean = jSONObject.optBoolean("close", true);
                iOptInt = jSONObject.optInt(NoticeTopAnimActivityDialog_.STATE_EXTRA, -1);
            } catch (JSONException e10) {
                e10.printStackTrace();
                iOptInt = -1;
            }
        } else {
            iOptInt = -1;
        }
        if (intExtra != 1008) {
            if (intExtra != 1007 || (settingCheatDialog = this.cheatDialog) == null || iOptInt == -1) {
                return;
            }
            settingCheatDialog.updateSwitchState(iOptInt);
            return;
        }
        SettingCheatDialog settingCheatDialog2 = this.cheatDialog;
        if (settingCheatDialog2 == null || !zOptBoolean || iOptInt == -1) {
            return;
        }
        settingCheatDialog2.updateSwitchState(iOptInt);
    }

    boolean hasExternalPermission() {
        return (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(getApplicationContext(), com.kuaishou.weapon.p0.g.f74785i) == 0 && ContextCompat.checkSelfPermission(getApplicationContext(), com.kuaishou.weapon.p0.g.f74786j) == 0) || Environment.getExternalStorageState().equals("mounted");
    }

    void hideAdCountDown() {
        this.isHideAdTimeView = true;
        this.mHandler.removeCallbacks(this.hideTimeRunner);
        this.mHandler.postDelayed(this.hideTimeRunner, 500L);
    }

    void initArgs() {
        MyJson myJson;
        String str;
        sContext = this;
        GameSettings.init(this);
        if (TextUtils.isEmpty(this.jstring)) {
            initArgsDefault();
        } else {
            try {
                myJson = new MyJson(this.jstring);
            } catch (JSONException e10) {
                e10.printStackTrace();
                myJson = null;
            }
            if (myJson != null) {
                NativeActivity.appPackName = myJson.getString(BaseAppConfig.PA_PACKAGE_NAME, NativeActivity.appPackName);
                NativeActivity.startMode = myJson.getInt("startMode", 0);
                NativeActivity.romPath = myJson.getString(BaseAppConfig.KEY_ROM_PATH, "");
                NativeActivity.ugcPath = myJson.getString(BaseAppConfig.KEY_UGC_PATH, "");
                NativeActivity.assetsPath = myJson.getString(BaseAppConfig.KEY_ASSETS_PATH, "");
                new File(NativeActivity.romPath).getName();
                NativeActivity.soPath = myJson.getString(BaseAppConfig.KEY_SO_PATH, "");
                NativeActivity.assetsPath = myJson.getString(BaseAppConfig.KEY_ASSETS_PATH, "");
                String string = myJson.getString(BaseAppConfig.KEY_ACTIVITY_NAME, "");
                NativeActivity.className = string;
                NativeActivity.className = string.replace(o0.f49827a, net.lingala.zip4j.util.e.F0);
                NativeActivity.UserID = myJson.getString(BaseAppConfig.KEY_START_USERID, "");
                NativeActivity.GameID = myJson.getString(BaseAppConfig.KEY_START_GAMEID, "");
                NativeActivity.fid = myJson.getInt(BaseAppConfig.KEY_START_FID, 0);
                NativeActivity.RoomID = myJson.getString(BaseAppConfig.KEY_START_ROOMID, "");
                NativeActivity.Version = myJson.getString("version", "");
                NativeActivity.server_ip = myJson.getString(BaseAppConfig.KEY_SERVER_IP, "");
                NativeActivity.server_port = myJson.getString(BaseAppConfig.KEY_SERVER_PORT, "");
                NativeActivity.token = myJson.getString(Constants.TOKEN, "0");
                NativeActivity.spLock = myJson.getInt(BaseAppConfig.KEY_SP_LOCK, 0);
                this.m_SVIP = myJson.getInt(BaseAppConfig.KEY_SVIP_LEVEL, 0);
                NativeActivity.m_VIP = myJson.getInt(BaseAppConfig.KEY_VIP_LEVEL, 0);
                NativeActivity.pspAdShowTime = myJson.getInt("pspAdShowTime", 0);
                NativeActivity.pspAdShowTimeSwitch = myJson.getInt("pspAdShowTimeSwitch", 0);
                Boolean bool = Boolean.TRUE;
                this.allowPeripheralJoin = myJson.getBoolean("allowPeripheralJoin", bool).booleanValue();
                NativeActivity.tourist = myJson.getBoolean("tourist", bool).booleanValue();
                NativeActivity.channelId = myJson.getString("channelId", "");
                if (!TextUtils.isEmpty(NativeActivity.romPath)) {
                    if (TextUtils.isEmpty(NativeActivity.ugcPath)) {
                        String str2 = NativeActivity.romPath;
                        String str3 = getSDPath() + "/papa91/psp/" + str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                        NativeActivity.ugcPath = str3;
                        if (!TextUtils.isEmpty(str3)) {
                            new File(NativeActivity.ugcPath).getParentFile().mkdirs();
                        }
                        try {
                            myJson.put(BaseAppConfig.KEY_UGC_PATH, NativeActivity.ugcPath);
                        } catch (JSONException e11) {
                            e11.printStackTrace();
                        }
                    }
                    try {
                        initTotalLevel();
                        if (GameSettings.getCustomSettingEnable()) {
                            str = "5";
                        } else {
                            str = GameSettings.getGameSettingLevel() + "";
                        }
                        myJson.put("gameSettingLevel", str);
                    } catch (JSONException e12) {
                        e12.printStackTrace();
                    }
                }
            }
            this.jstring = myJson.toString();
        }
        if (NativeActivity.appPackName.equals(getPackageName())) {
            this.sp = PreferenceManager.getDefaultSharedPreferences(this);
        } else {
            this.sp = getSharedPreferences(NativeActivity.appPackName + "_preferences", 4);
        }
        this.pref = new UserPrefs(this, this.sp);
    }

    void initArgsDefault() {
        String sDPath = getSDPath();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(sDPath);
        sb2.append("/1");
        StringBuilder sb3 = new StringBuilder();
        sb3.append(sDPath);
        sb3.append("/1/lzzzwddh2");
    }

    void initReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        this.intentFilter = intentFilter;
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        NetWorkReceiver netWorkReceiver = new NetWorkReceiver();
        this.netWorkReceiver = netWorkReceiver;
        registerReceiver(netWorkReceiver, this.intentFilter);
        registerLogin();
        registerAdReceiver();
        this.receveReceiver = new EmuReceiveReceiver();
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("com.emu.ad.result");
        registerReceiver(this.receveReceiver, intentFilter2);
        registerMyReceiver();
        if (this.actionReceiver == null) {
            this.actionReceiver = new ActionReceiver();
            registerReceiver(this.actionReceiver, new IntentFilter(BAction.ACTION_REAL_NAME_RESULT));
        }
    }

    void initTimeLimitedDialog() {
        if (this.timeLimitedDialog == null) {
            this.timeLimitedDialog = new GameTimeLimitedDialog(getContext());
            this.timeLimitedDialog.setAdConfig(CContext.mShareLitener.getPspGameAdCfg());
            this.timeLimitedDialog.setOnTimeLimitedListener(new GameTimeLimitedDialog.OnTimeLimitedListener() { // from class: com.papa91.arc.EmuActivity_psp.19
                @Override // com.papa91.arc.view.GameTimeLimitedDialog.OnTimeLimitedListener
                public void onBuyVip(String str) {
                    if (EmuActivity_psp.this.isLogined()) {
                        MarketUtil.intent(EmuActivity_psp.getContext(), "4", "", str, "", "");
                    } else {
                        EmuActivity_psp.login();
                    }
                }

                @Override // com.papa91.arc.view.GameTimeLimitedDialog.OnTimeLimitedListener
                public void onExit() {
                    EmuActivity_psp.this.finish();
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0032  */
    void initTotalLevel() {
        int i10;
        if (TextUtils.isEmpty(NativeActivity.romPath)) {
            i10 = 4;
        } else {
            File parentFile = new File(NativeActivity.romPath).getParentFile();
            if (!parentFile.exists()) {
                i10 = 4;
            } else if (new File(parentFile, "psp_gamesetting5.ini").exists()) {
                i10 = 5;
            } else {
                new File(parentFile, "psp_gamesetting5.xml").exists();
                i10 = 4;
            }
        }
        GameSettings.setGameSettingTotalLevel(i10);
    }

    boolean isHideAdToday() {
        String adGamesConfig = this.pref.getAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID);
        if (TextUtils.isEmpty(adGamesConfig)) {
            return false;
        }
        long lastTime = this.pref.getLastTime(adGamesConfig);
        boolean skipAd = this.pref.getSkipAd(adGamesConfig);
        try {
            new JSONObject(adGamesConfig);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (!skipAd || !DateUtils.isToday(lastTime)) {
            return false;
        }
        hideAdCountDown();
        return true;
    }

    boolean isLogined() {
        return (TextUtils.isEmpty(NativeActivity.token) || TextUtils.isEmpty(NativeActivity.UserID) || NativeActivity.tourist) ? false : true;
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean isNetAvailable() {
        return isNetworkConnected();
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public boolean isRankAutoUpload() {
        return false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean isSPVisible() {
        return false;
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public boolean isShowCheating() {
        return true;
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public boolean isShowGate() {
        return false;
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public boolean isShowQuickSlot() {
        return true;
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void keysSetting() {
        NativeApp.enterGameSettings(2);
        this.menuView.hide();
        lastWindow = 1;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadAdVideo() {
        CContext.IVideoAdListener iVideoAdListener;
        if (getVip() > 0 || (iVideoAdListener = CContext.mVideoAdListener) == null) {
            return;
        }
        iVideoAdListener.loadAd(this, CContext.SCENE_PSP);
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadGateStage(int i10) {
    }

    @Override // org.ppsspp.ppsspp.NativeActivity
    public void loadRom() {
        if (!TextUtils.isEmpty(this.jstring)) {
            NativeApp.setJson(this.jstring);
            NativeApp.emuRestart();
        } else if (getIntent() != null) {
            String stringExtra = getIntent().getStringExtra("jsonData");
            if (TextUtils.isEmpty(stringExtra)) {
                return;
            }
            NativeApp.setJson(stringExtra);
            NativeApp.emuRestart();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadSlotState(String str) {
        NativeApp.loadState(str);
    }

    protected void loginFinish() {
        this.needCheckRealName = true;
        this.checkRealNameType = 11;
    }

    void migrate() throws Throwable {
        String strSubstring;
        try {
            File file = new File(getSDPath() + "/PSP");
            File file2 = new File(getSDPath() + "/papa91/psp/PSP");
            long jLastModified = file2.lastModified();
            if (file2.exists()) {
                boolean zRenameTo = file2.renameTo(file);
                file.setLastModified(jLastModified);
                if (zRenameTo) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("renameTo suc : ");
                    sb2.append(file);
                    sb2.append("--- ");
                    sb2.append(file2);
                    sb2.append(" time :");
                    sb2.append(jLastModified);
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("renameTo fail : ");
                    sb3.append(file);
                    sb3.append("--- ");
                    sb3.append(file2);
                    sb3.append(" time :");
                    sb3.append(jLastModified);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        changeCfgPath();
        saveDataTransfer();
        stateTransfer();
        syncState();
        createDir(getSDPath() + "/PSP/Cheats/");
        String str = NativeActivity.romPath + ".ini";
        if (TextUtils.isEmpty(NativeActivity.romPath) || !NativeActivity.romPath.contains(net.lingala.zip4j.util.e.F0)) {
            strSubstring = "";
        } else {
            String str2 = NativeActivity.romPath;
            strSubstring = str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0));
        }
        String str3 = getSDPath() + "/papa91/psp" + strSubstring + "/editCheat.json";
        String str4 = getSDPath() + "/PSP/Cheats" + strSubstring + ".ini";
        if (new File(str4).exists()) {
            return;
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("s1 : ");
        sb4.append(str);
        sb4.append(" s2 : ");
        sb4.append(str3);
        sb4.append(" s3 : ");
        sb4.append(str4);
        convert(str, str3, str4);
    }

    @Override // com.papa91.arc.view.IEmulator
    public void modifyEditCheatInfo(int i10, EditCheatInfo editCheatInfo) {
        NativeApp.modifyEditCheat(i10, editCheatInfo);
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public boolean needShowTimer() {
        return true;
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public void onAdImageClick() {
        super.onAdImageClick();
        if (this.adInfoBean != null) {
            CContext.mShareLitener.saveHasShowAdInfo(getMD5(new Gson().toJson(this.adInfoBean)));
            SubBean sub = this.adInfoBean.getSub();
            if (sub != null) {
                MarketUtil.intent(getContext(), sub.getLink_type(), sub.getJump_type(), sub.getLink_type_val(), sub.getCrc_link_type_val(), sub.getTpl_type());
            }
            MenuView menuView = this.menuView;
            if (menuView != null) {
                menuView.showAdImage(false, "");
            }
        }
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public void onChangeDisk() {
        NativeApp.ChangeDisk(getDiskPaths());
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, org.ppsspp.ppsspp.NativeActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws Throwable {
        MenuView menuView;
        MenuView menuView2;
        loadDNSURL();
        Intent intent = getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra("jsonData");
            this.jstring = stringExtra;
            if (bundle != null && TextUtils.isEmpty(stringExtra)) {
                this.jstring = bundle.getString("jsonData");
            }
        }
        initArgs();
        initReceiver();
        super.onCreate(bundle);
        if (TextUtils.isEmpty(NativeActivity.romPath)) {
            if (loadingFinished || (menuView2 = this.menuView) == null) {
                return;
            }
            menuView2.hide();
            return;
        }
        migrate();
        this.pref.setSlotTipShow(true);
        if (!loadingFinished && (menuView = this.menuView) != null) {
            menuView.hide();
        }
        bindService();
        NativeActivity.DEVICE_ID = "";
        restoreVipData();
        restoreAdData();
        startTimer();
        sendGamePlay(0);
        if (this.hasCheckRealName) {
            return;
        }
        checkRealName(11);
        this.hasCheckRealName = true;
        this.needCheckRealName = false;
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, android.app.Activity
    protected void onDestroy() {
        this.isDestroyed = true;
        stopTimer();
        unregisterReceiver(this.receveReceiver);
        unregisterLogin();
        unregisterAdReceiver();
        ActionReceiver actionReceiver = this.actionReceiver;
        if (actionReceiver != null) {
            unregisterReceiver(actionReceiver);
        }
        try {
            if (!this.isRecreate) {
                exitActivty(0);
                unbindService(this.serviceConnection);
            }
            unregisterMyReceiver();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        closeDialogWithOut(null);
        TipTwoDialog tipTwoDialog = this.dialogExit;
        if (tipTwoDialog != null) {
            if (tipTwoDialog.isShowing()) {
                this.dialogExit.dismiss();
            }
            this.dialogExit = null;
        }
        GameTimeLimitedNetworkFailedDialog gameTimeLimitedNetworkFailedDialog = this.timeLimitedNetworkFailedDialog;
        if (gameTimeLimitedNetworkFailedDialog != null) {
            if (gameTimeLimitedNetworkFailedDialog.isShowing()) {
                this.timeLimitedNetworkFailedDialog.dismiss();
            }
            this.timeLimitedNetworkFailedDialog = null;
        }
        GameTimeLimitedDialog gameTimeLimitedDialog = this.timeLimitedDialog;
        if (gameTimeLimitedDialog != null) {
            if (gameTimeLimitedDialog.isShowing()) {
                this.timeLimitedDialog.dismiss();
            }
            this.timeLimitedDialog = null;
        }
        if (!this.isRecreate) {
            loadingFinished = false;
            SettingCheatDialog settingCheatDialog = this.cheatDialog;
            if (settingCheatDialog != null) {
                settingCheatDialog.cheatReset();
            }
            unregisterMyReceiver();
        }
        unbindBridge();
        super.onDestroy();
        sendGamePlay(2);
        if (this.EXIT_CODE == 1) {
            forceExit();
        }
    }

    protected void onHandleRealName(int i10) {
        this.playTime = 0L;
        closeRealNameDialog();
        this.hasCheckRealName = false;
        checkRealName(i10);
        this.hasCheckRealName = true;
    }

    protected void onHandlerResultNameResult(Intent intent) {
        loginFinish();
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public void onHideMenu() {
        StatIntents.getInstance(getContext()).statOnclickFunction(NativeActivity.GameID, NativeActivity.UserID, 2);
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            if (!loadingFinished) {
                return true;
            }
            MenuView menuView = this.menuView;
            if (menuView != null && menuView.menuShowing()) {
                this.menuView.dismissMenu();
                gameOnResume();
                return true;
            }
        }
        return super.onKeyDown(i10, keyEvent);
    }

    void onMessengerConnected(Messenger messenger) {
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        MenuView menuView = this.menuView;
        if (menuView != null && menuView.isTimerShowing()) {
            this.menuView.pauseTimer();
        }
        gamePause(this);
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            HttpPost_Memer();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.menuView != null) {
            if (isHideAdToday() || !this.menuView.isTimerShowing() || this.isHideAdTimeView) {
                hideAdCountDown();
            } else {
                this.menuView.resumeTimer();
            }
        }
        if (this.needCheckRealName) {
            onHandleRealName(this.checkRealNameType);
            this.needCheckRealName = false;
        }
        gameResume(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putString("jsonData", this.jstring);
        super.onSaveInstanceState(bundle);
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public void onScreenShot() {
        StatIntents.getInstance(getContext()).statOnclickFunction(NativeActivity.GameID, NativeActivity.UserID, 1);
        File file = new File(getSDPath() + "/papa91/img/");
        if (!file.exists()) {
            file.mkdirs();
        }
        String str = getSDPath() + "/papa91/img/" + System.currentTimeMillis() + ".png";
        this.shareImagePath = str;
        NativeApp.saveScreenShot(str);
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void onTimerTick(long j10) {
        this.pref.setAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID, j10, this.pref.getSkipAd(this.pref.getAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID)));
        GameTimeLimitedDialog gameTimeLimitedDialog = this.timeLimitedDialog;
        if (gameTimeLimitedDialog != null && gameTimeLimitedDialog.isShowing()) {
            this.timeLimitedDialog.updateTickTime(j10);
        }
        if (j10 >= BaseCloudFileManager.ACK_TIMEOUT || this.adToastShowing) {
            return;
        }
        this.adToastShowing = true;
        ToastUtil.show(this, "即将进入广告，游戏将自动暂停");
        this.mHandler.postDelayed(new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.21
            @Override // java.lang.Runnable
            public void run() {
                EmuActivity_psp.this.adToastShowing = false;
            }
        }, 3500L);
    }

    void onVipChanged() {
        if (NativeActivity.m_VIP > 0) {
            hideAdCountDown();
            GameTimeLimitedDialog gameTimeLimitedDialog = this.timeLimitedDialog;
            if (gameTimeLimitedDialog != null && gameTimeLimitedDialog.isShowing()) {
                this.timeLimitedDialog.dismiss();
            }
        }
        SettingVipDialog settingVipDialog = this.vipDialog;
        if (settingVipDialog != null && settingVipDialog.isShowing()) {
            this.vipDialog.dismiss();
        }
        SettingVipTipDialog settingVipTipDialog = this.vipTipDialog;
        if (settingVipTipDialog != null && settingVipTipDialog.isShowing()) {
            this.vipTipDialog.dismiss();
        }
        SettingSlotDialog settingSlotDialog = this.slotDialog;
        if (settingSlotDialog != null) {
            settingSlotDialog.onVipChanged();
        }
        SettingCheatDialog settingCheatDialog = this.cheatDialog;
        if (settingCheatDialog != null) {
            settingCheatDialog.onVipChanged();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void pauseGame() {
        NativeApp.pauseGame();
        this.gameIsPause = true;
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity
    public void postCommand(final String str, final String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        runOnUiThread(new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.2
            @Override // java.lang.Runnable
            public void run() {
                EmuActivity_psp.this.processCommand(str, str2);
            }
        });
    }

    @Override // org.ppsspp.ppsspp.NativeActivity
    public boolean processCommand(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("cmd=");
        sb2.append(str);
        sb2.append(", param=");
        sb2.append(str2);
        if (str.equals("SaveState::SUCCESS")) {
            bakState();
            ToastUtil.show(getApplicationContext(), "存档保存成功！");
        } else if (str.equals("SaveState::FAILURE")) {
            ToastUtil.show(this, "存档保存失败！");
        } else if (str.equals("loadingFinished")) {
            loadingFinished = true;
            attachMenu();
            MenuView menuView = this.menuView;
            if (menuView != null) {
                menuView.requestFocus();
                this.menuView.requestLayout();
                this.menuView.show();
                showAdCountDown();
            }
            this.mHandler.postDelayed(new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.3
                @Override // java.lang.Runnable
                public void run() {
                    EmuActivity_psp.this.showVipTip();
                }
            }, 500L);
        } else if (str.equals("showLastWindow")) {
            int i10 = lastWindow;
            if (i10 == 1) {
                MenuView menuView2 = this.menuView;
                if (menuView2 != null) {
                    menuView2.show();
                    this.menuView.popupMenu();
                }
            } else if (i10 == 2) {
                MenuView menuView3 = this.menuView;
                if (menuView3 != null) {
                    menuView3.show();
                }
                showMenuPerformance();
            }
            lastWindow = 0;
        } else if (!str.equals("uistate") || !str2.equals("ingame")) {
            if (str.equals("wufan_reset")) {
                SettingCheatDialog settingCheatDialog = this.cheatDialog;
                if (settingCheatDialog != null) {
                    settingCheatDialog.cheatReset();
                }
            } else if (str.equals("graphics_restart")) {
                NativeApp.resumeGame();
            } else if (str.equals("ScreenShot::SUCCESS")) {
                showShare(this.shareImagePath);
            } else if (str.equals("ScreenShot::FAILURE")) {
                ToastUtil.show(getContext(), "图片保存失败");
            }
        }
        return super.processCommand(str, str2);
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void quickSlot() {
        MenuView menuView = this.menuView;
        if (menuView != null) {
            menuView.dismissMenu();
        }
        gameOnResume();
        this.mHandler.postDelayed(new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.8
            @Override // java.lang.Runnable
            public void run() {
                String ugcPath = EmuActivity_psp.this.getUgcPath();
                if (TextUtils.isEmpty(ugcPath)) {
                    return;
                }
                NativeApp.saveState(ugcPath + o0.f49827a + 0);
            }
        }, 80L);
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, android.app.Activity
    public void recreate() {
        super.recreate();
        this.isRecreate = true;
        SettingCheatDialog settingCheatDialog = this.cheatDialog;
        if (settingCheatDialog != null) {
            settingCheatDialog.cheatReset();
        }
    }

    void registerAdReceiver() {
        this.adResultReceiver = new AdResultReceiver();
        registerReceiver(this.adResultReceiver, new IntentFilter("com.emu.ad.result"));
    }

    void registerLogin() {
        this.loginReceiver = new LoginReceiver();
        IntentFilter intentFilter = new IntentFilter("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
        intentFilter.addAction("com.join.android.app.mgsim.wufan.mha.broadcast.action_login_success");
        intentFilter.addAction("com.join.android.app.mgsim.wufun.mha.broadcast.action_login_success");
        registerReceiver(this.loginReceiver, intentFilter);
    }

    void registerMyReceiver() {
        this.myReceiver = new MyReceiver();
        IntentFilter intentFilter = new IntentFilter("com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success");
        intentFilter.addAction("com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success");
        registerReceiver(this.myReceiver, intentFilter);
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void reload() {
        gameOnResume();
        MenuView menuView = this.menuView;
        if (menuView != null) {
            menuView.dismissMenu();
            this.mHandler.postDelayed(new Runnable() { // from class: com.papa91.arc.EmuActivity_psp.9
                @Override // java.lang.Runnable
                public void run() {
                    ((NativeActivity) EmuActivity_psp.this).menuView.hide();
                }
            }, 180L);
            SettingCheatDialog settingCheatDialog = this.cheatDialog;
            if (settingCheatDialog != null) {
                settingCheatDialog.cheatReset();
            }
            loadingFinished = false;
            NativeApp.emuRestart();
        }
        this.diskPath = "";
    }

    void renameFile(String str, String str2) {
        File file = new File(str2);
        File file2 = new File(str);
        long jLastModified = file2.lastModified();
        file2.renameTo(file);
        file.setLastModified(jLastModified);
    }

    public void restoreAdData() {
        try {
            String stringExtra = getIntent().getStringExtra("jsonData");
            if (stringExtra != null) {
                try {
                    String string = new MyJson(stringExtra).getString("dnsJson", "");
                    if (string != null && !"".equals(string)) {
                        JSONObject jSONObject = new JSONObject(string);
                        if (jSONObject.has("gameUrl")) {
                            String string2 = jSONObject.getString("gameUrl");
                            if (!TextUtils.isEmpty(string2)) {
                                this.ad_host_url = string2;
                            }
                        }
                    }
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        final String adRequestParam = getAdRequestParam();
        this.executorService.execute(new Runnable() { // from class: com.papa91.arc.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f78031b.lambda$restoreAdData$1(adRequestParam);
            }
        });
    }

    public void restoreVipData() {
        this.url = "http://anv9.ctapi.5fun.com/simulator/simulator_member_fun_type";
        try {
            this.url = this.appContent + "/simulator/simulator_member_fun_type";
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        final String requestParam = getRequestParam();
        this.executorService.execute(new Runnable() { // from class: com.papa91.arc.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f78029b.lambda$restoreVipData$0(requestParam);
            }
        });
    }

    @Override // com.papa91.arc.view.IEmulator
    public void resumeGame() {
        NativeApp.resumeGame();
        this.gameIsPause = false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void retryGetGoldFingerConfig() {
    }

    @Override // com.papa91.arc.view.IEmulator
    public String romPath() {
        return NativeActivity.romPath;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void saveBindsFileData() {
    }

    void saveDataTransfer() {
        FileUtils.copyFolder(getSDPath() + "/papa91/psp/PSP/SAVEDATA", getSDPath() + "/PSP/SAVEDATA");
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public void saveGameConfig() {
        NativeApp.saveGameConfig();
    }

    @Override // com.papa91.arc.view.IEmulator
    public void saveSlotState(String str) {
        SettingSlotDialog settingSlotDialog = this.slotDialog;
        if (settingSlotDialog != null) {
            settingSlotDialog.dismiss();
        }
        NativeApp.saveState(str);
    }

    @Override // com.papa91.arc.view.IEmulator
    public void screenMode(int i10) {
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setAutoSlotStatus(int i10) {
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setSPBindData(int i10, int i11, int i12) {
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setSPMenuVisible(boolean z10) {
    }

    void showAdCountDown() {
        if (NativeActivity.m_VIP > 0 || NativeActivity.pspAdShowTimeSwitch == 0) {
            hideAdCountDown();
            return;
        }
        this.menuView.setTime(0L);
        long remainTime = (NativeActivity.pspAdShowTime * 1000) + 1000;
        String adGamesConfig = this.pref.getAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID);
        if (!TextUtils.isEmpty(adGamesConfig)) {
            long lastTime = this.pref.getLastTime(adGamesConfig);
            boolean skipAd = this.pref.getSkipAd(adGamesConfig);
            try {
                if (new JSONObject(adGamesConfig).has("remainTime") && DateUtils.isToday(lastTime)) {
                    remainTime = this.pref.getRemainTime(adGamesConfig);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (skipAd && DateUtils.isToday(lastTime)) {
                hideAdCountDown();
                return;
            }
            this.pref.setAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID, remainTime, false);
        }
        if (remainTime / 1000 <= 1) {
            hideAdCountDown();
            showTimeLimitedDialog2();
        } else {
            this.isHideAdTimeView = false;
            this.menuView.showTimer();
            this.menuView.startTimer(remainTime);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void showAdVideo() {
        CContext.IVideoAdListener iVideoAdListener;
        if (getVip() > 0 || (iVideoAdListener = CContext.mVideoAdListener) == null) {
            return;
        }
        iVideoAdListener.showAd(this, NativeActivity.GameID, CContext.SCENE_PSP);
    }

    public void showAdView() {
        runOnUiThread(new Runnable() { // from class: com.papa91.arc.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f78064b.lambda$showAdView$2();
            }
        });
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean showGGCodeButton() {
        return false;
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void showMenuCheating() {
        StatIntents.getInstance(getContext()).statOnclickFunction(NativeActivity.GameID, NativeActivity.UserID, 0);
        NativeApp.loadPspDBCheat();
        if (this.cheatDialog == null) {
            this.cheatDialog = new SettingCheatDialog(this);
        }
        this.cheatDialog.setOnEmulatorListener(this);
        if (!this.cheatDialog.isShowing()) {
            this.cheatDialog.show();
        }
        if (this.vipBeans.size() == 0) {
            restoreVipData();
            return;
        }
        for (int i10 = 0; i10 < this.vipBeans.size(); i10++) {
            if (TextUtils.isEmpty(this.vipBeans.get(i10).getMain().getPic_remote())) {
                restoreVipData();
                return;
            }
        }
    }

    @Override // org.ppsspp.ppsspp.PpssppActivity, com.papa91.arc.view.MenuViewListener
    public void showMenuGate() {
        StatIntents.getInstance(getContext()).statOnclickFunction(NativeActivity.GameID, NativeActivity.UserID, 4);
        if (this.gateDialog == null) {
            this.gateDialog = new SettingGateDialog(this);
        }
        this.gateDialog.setOnEmulatorListener(this);
        if (this.gateDialog.isShowing()) {
            return;
        }
        this.gateDialog.show();
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void showMenuPerformance() {
        initTotalLevel();
        if (this.performanceDialog == null) {
            this.performanceDialog = new SettingPerformanceDialog(this);
        }
        this.performanceDialog.setOnEmulatorListener(this);
        SettingPerformanceDialog settingPerformanceDialog = this.performanceDialog;
        String[] strArr = new String[2];
        strArr[0] = GameSettings.getGameSettingTotalLevel() + "";
        StringBuilder sb2 = new StringBuilder();
        sb2.append(lastWindow == 2 ? 1 : 0);
        sb2.append("");
        strArr[1] = sb2.toString();
        settingPerformanceDialog.show(strArr);
        this.performanceDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.papa91.arc.EmuActivity_psp.7
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if (EmuActivity_psp.lastWindow != 2 || ((NativeActivity) EmuActivity_psp.this).menuView == null) {
                    return;
                }
                ((NativeActivity) EmuActivity_psp.this).menuView.hide();
            }
        });
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void showMenuSlot() {
        StatIntents.getInstance(getContext()).statOnclickFunction(NativeActivity.GameID, NativeActivity.UserID, 5);
        if (this.slotDialog == null) {
            this.slotDialog = new SettingSlotDialog(this);
        }
        this.slotDialog.setappContentUrl(this.appContent);
        this.slotDialog.setOnEmulatorListener(this);
        if (!this.slotDialog.isShowing()) {
            this.slotDialog.show();
        }
        if (this.vipBeans.size() == 0) {
            restoreVipData();
            return;
        }
        for (int i10 = 0; i10 < this.vipBeans.size(); i10++) {
            if (TextUtils.isEmpty(this.vipBeans.get(i10).getMain().getPic_remote())) {
                restoreVipData();
                return;
            }
        }
    }

    void showNetworkFailed() {
        if (this.timeLimitedNetworkFailedDialog == null) {
            GameTimeLimitedNetworkFailedDialog gameTimeLimitedNetworkFailedDialog = new GameTimeLimitedNetworkFailedDialog(this);
            this.timeLimitedNetworkFailedDialog = gameTimeLimitedNetworkFailedDialog;
            gameTimeLimitedNetworkFailedDialog.setOnTimeLimitedListener(new GameTimeLimitedNetworkFailedDialog.OnTimeLimitedListener() { // from class: com.papa91.arc.EmuActivity_psp.20
                @Override // com.papa91.arc.view.GameTimeLimitedNetworkFailedDialog.OnTimeLimitedListener
                public void onBuyVip() {
                }

                @Override // com.papa91.arc.view.GameTimeLimitedNetworkFailedDialog.OnTimeLimitedListener
                public void onExit() {
                    EmuActivity_psp.this.finish();
                }
            });
        }
        if (this.timeLimitedNetworkFailedDialog.isShowing()) {
            return;
        }
        this.timeLimitedNetworkFailedDialog.show();
        ToastUtil.show(this, "请联网继续游戏！");
    }

    public void showShare(final String str) {
        if (this.shareDialog == null) {
            this.shareDialog = new SettingShareDialog(this);
        }
        this.shareDialog.setOnEmulatorListener(this);
        this.shareDialog.setIamge(str);
        this.shareDialog.setShareListener(new SettingShareDialog.IShareListener() { // from class: com.papa91.arc.EmuActivity_psp.22
            @Override // com.papa91.arc.dialog.SettingShareDialog.IShareListener
            public void onShare(int i10) {
                Intent intent = new Intent(p5.a.f96208m0);
                intent.putExtra("imagePath", str);
                intent.putExtra("from", i10);
                EmuActivity_psp.send(intent);
                EmuActivity_psp.this.shareDialog.dismiss();
            }
        });
        if (this.shareDialog.isShowing()) {
            return;
        }
        this.shareDialog.show();
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void showTimeLimitedDialog1() {
        initTimeLimitedDialog();
        String adGamesConfig = this.pref.getAdGamesConfig(NativeActivity.GameID, NativeActivity.UserID);
        if (TextUtils.isEmpty(adGamesConfig)) {
            return;
        }
        if (this.pref.getRemainTime(adGamesConfig) > 0) {
            this.timeLimitedDialog.show1();
        } else {
            this.timeLimitedDialog.show2();
        }
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void showTimeLimitedDialog2() {
        this.showTimeLimitedDialog2 = true;
        GameTimeLimitedDialog gameTimeLimitedDialog = this.timeLimitedDialog;
        if (gameTimeLimitedDialog != null && gameTimeLimitedDialog.isShowing()) {
            this.timeLimitedDialog.dismiss();
        }
        if (isNetworkConnected()) {
            startVideo();
        } else {
            showNetworkFailed();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void showVip(String... strArr) {
        if (this.vipDialog == null) {
            this.vipDialog = new SettingVipDialog(this);
        }
        if (this.vipBeans.size() > 0) {
            this.vipDialog.updateVipDatas(this.vipBeans);
        } else {
            restoreVipData();
        }
        this.vipDialog.show(strArr);
    }

    public void showVipTip(int i10, int i11) {
        if (this.sp.getBoolean(NativeActivity.GameID + "_" + i10 + "_" + i11, true)) {
            StatIntents.getInstance(getContext()).statShowVippopup(NativeActivity.GameID, NativeActivity.UserID, i10);
            if (this.vipTipDialog == null) {
                this.vipTipDialog = new SettingVipTipDialog(this);
            }
            this.vipTipDialog.setOnEmulatorListener(this);
            this.vipTipDialog.setNoTipListener(new SettingVipTipDialog.INoTipListener() { // from class: com.papa91.arc.EmuActivity_psp.23
                @Override // com.papa91.arc.dialog.SettingVipTipDialog.INoTipListener
                public void onNoTipClick(int i12, int i13) {
                    EmuActivity_psp.this.sp.edit().putBoolean(NativeActivity.GameID + "_" + i12, false).commit();
                }
            });
            this.vipTipDialog.show(i10, i11);
        }
    }

    public void startTimer() {
        TimerTask timerTask;
        if (this.timer == null) {
            this.timer = new Timer();
        }
        if (this.timerTask == null) {
            this.timerTask = new TimerTask() { // from class: com.papa91.arc.EmuActivity_psp.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    if (EmuActivity_psp.this.isDestroyed) {
                        return;
                    }
                    EmuActivity_psp.this.getAutoStateTimeCount();
                }
            };
        }
        Timer timer = this.timer;
        if (timer == null || (timerTask = this.timerTask) == null) {
            return;
        }
        timer.schedule(timerTask, 0L, 1000L);
    }

    void stateTransfer() {
        String ugcPath = getUgcPath();
        String strSubstring = ugcPath.substring(ugcPath.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
        stateTransfer(ugcPath.substring(0, ugcPath.lastIndexOf(net.lingala.zip4j.util.e.F0)), strSubstring);
        if (hasExternalPermission()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("async cfg(oldVersion) src=");
            sb2.append(StoreUtils.getExternalStorageDirectory());
            sb2.append("/papa91/psp/");
            sb2.append(strSubstring);
            sb2.append(", dst=");
            sb2.append(StoreUtils.getExternalStorageDirectory(this));
            sb2.append("/papa91/psp/");
            sb2.append(strSubstring);
            FileUtils.copyFolder(StoreUtils.getExternalStorageDirectory() + "/papa91/psp/" + strSubstring, StoreUtils.getExternalStorageDirectory(this) + "/papa91/psp/" + strSubstring);
        }
    }

    public void stopTimer() {
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
            this.timer = null;
        }
        TimerTask timerTask = this.timerTask;
        if (timerTask != null) {
            timerTask.cancel();
            this.timerTask = null;
        }
    }

    void syncState() {
        new AsyncTask() { // from class: com.papa91.arc.EmuActivity_psp.12
            @Override // android.os.AsyncTask
            protected Object doInBackground(Object[] objArr) {
                try {
                    if (!new File(EmuActivity_psp.this.getUgcPath()).getParentFile().exists()) {
                        String str = "";
                        if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(EmuActivity_psp.this.getApplicationContext(), com.kuaishou.weapon.p0.g.f74785i) == 0 && ContextCompat.checkSelfPermission(EmuActivity_psp.this.getApplicationContext(), com.kuaishou.weapon.p0.g.f74786j) == 0) {
                            if (!TextUtils.isEmpty(NativeActivity.romPath)) {
                                String str2 = NativeActivity.romPath;
                                str = StoreUtils.getExternalStorageDirectory() + "/papa91/psp/" + str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                            }
                            FileUtils.copyFolder(str, new File(EmuActivity_psp.this.getUgcPath()).getParentFile().getAbsolutePath());
                        } else if (Environment.getExternalStorageState().equals("mounted")) {
                            if (!TextUtils.isEmpty(NativeActivity.romPath)) {
                                String str3 = NativeActivity.romPath;
                                str = StoreUtils.getExternalStorageDirectory() + "/papa91/psp/" + str3.substring(str3.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                            }
                            FileUtils.copyFolder(str, new File(EmuActivity_psp.this.getUgcPath()).getParentFile().getAbsolutePath());
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                FileUtils.copyFolder(new File(EmuActivity_psp.this.getUgcPath()).getParentFile().getAbsolutePath(), new File(EmuActivity_psp.this.getUgcPathInternal()).getParentFile().getAbsolutePath());
                FileUtils.copyFolder(new File(EmuActivity_psp.this.getUgcPathInternal()).getParentFile().getAbsolutePath(), new File(EmuActivity_psp.this.getUgcPath()).getParentFile().getAbsolutePath());
                return null;
            }
        }.execute(new Object[0]);
    }

    @Override // com.papa91.arc.view.IEmulator
    public String ugcPath() {
        return getUgcPath();
    }

    void unbindBridge() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        try {
            ServiceConnection serviceConnection = mServiceConnection;
            if (serviceConnection != null) {
                context.unbindService(serviceConnection);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void unregisterAdReceiver() {
        unregisterReceiver(this.adResultReceiver);
    }

    void unregisterLogin() {
        unregisterReceiver(this.loginReceiver);
    }

    void unregisterMyReceiver() {
        try {
            MyReceiver myReceiver = this.myReceiver;
            if (myReceiver != null) {
                unregisterReceiver(myReceiver);
            }
            NetWorkReceiver netWorkReceiver = this.netWorkReceiver;
            if (netWorkReceiver != null) {
                unregisterReceiver(netWorkReceiver);
            }
        } catch (Exception unused) {
        }
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void vibrate(boolean z10) {
        NativeApp.enableHapticFeedback(z10);
    }

    @Override // org.ppsspp.ppsspp.NativeActivity, com.papa91.arc.view.MenuViewListener
    public void voice(boolean z10) {
        NativeApp.enableSound(z10);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0131  */
    /* JADX WARN: Code duplicated, block: B:37:0x014f  */
    /* JADX WARN: Code duplicated, block: B:40:0x0156  */
    /* JADX WARN: Instruction removed from duplicated block: B:35:0x0131, please report this as an issue */
    public void showVipTip() {
        int i10;
        int nextTip;
        HashMap<Integer, Boolean> map = new HashMap<>();
        SharedPreferences sharedPreferences = this.sp;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(NativeActivity.GameID);
        sb2.append("_");
        sb2.append(0);
        map.put(0, Boolean.valueOf(sharedPreferences.getBoolean(sb2.toString(), true) && getCheatListData() != null && getCheatListData().size() > 0));
        SharedPreferences sharedPreferences2 = this.sp;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(NativeActivity.GameID);
        sb3.append("_");
        sb3.append(1);
        map.put(1, Boolean.valueOf(sharedPreferences2.getBoolean(sb3.toString(), true) && isShowOnekey()));
        SharedPreferences sharedPreferences3 = this.sp;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(NativeActivity.GameID);
        sb4.append("_");
        sb4.append(2);
        map.put(2, Boolean.valueOf(sharedPreferences3.getBoolean(sb4.toString(), true) && isShowGate()));
        NativeApp.loadPspDBCheat();
        if (getVip() <= 0) {
            CContext.ISharePrefrence iSharePrefrence = CContext.mShareLitener;
            int emulatorStartAdCount = iSharePrefrence != null ? iSharePrefrence.getEmulatorStartAdCount() : 0;
            int i11 = this.sp.getInt(NativeActivity.GameID + "_start_count", 1);
            StringBuilder sb5 = new StringBuilder();
            sb5.append("showVipTip: ");
            sb5.append(emulatorStartAdCount);
            sb5.append("-----");
            sb5.append(i11);
            if (emulatorStartAdCount > 0 && i11 >= emulatorStartAdCount) {
                if (this.sp.getBoolean(NativeActivity.GameID + "_has_show_tip", false)) {
                    if (this.sp.getInt(NativeActivity.GameID + "_start_time", new Date().getDay()) != new Date().getDay()) {
                        i10 = this.sp.getInt(NativeActivity.GameID + "_show_tip", -1) + 1;
                        if (i10 >= 3) {
                            i10 = 0;
                        }
                        nextTip = getNextTip(map, i10);
                        if (nextTip != -1) {
                            showVipTip(nextTip, 0);
                            i10 = nextTip;
                        }
                        this.sp.edit().putBoolean(NativeActivity.GameID + "_has_show_tip", true).putInt(NativeActivity.GameID + "_start_time", new Date().getDay()).putInt(NativeActivity.GameID + "_show_tip", i10).commit();
                    }
                } else {
                    i10 = this.sp.getInt(NativeActivity.GameID + "_show_tip", -1) + 1;
                    if (i10 >= 3) {
                        i10 = 0;
                    }
                    nextTip = getNextTip(map, i10);
                    if (nextTip != -1) {
                        showVipTip(nextTip, 0);
                        i10 = nextTip;
                    }
                    this.sp.edit().putBoolean(NativeActivity.GameID + "_has_show_tip", true).putInt(NativeActivity.GameID + "_start_time", new Date().getDay()).putInt(NativeActivity.GameID + "_show_tip", i10).commit();
                }
            }
            this.sp.edit().putInt(NativeActivity.GameID + "_start_count", i11 + 1).commit();
        }
    }

    void stateTransfer(String str, String str2) {
        String str3 = getSDPath() + "/PSP/PPSSPP_STATE/";
        File file = new File(str3);
        if (file.exists()) {
            List listAsList = Arrays.asList(file.listFiles(getOStateFilter(str2)));
            Pattern patternCompile = Pattern.compile(".+_([0-9]+)\\.ppst$");
            Iterator it2 = listAsList.iterator();
            while (it2.hasNext()) {
                Matcher matcher = patternCompile.matcher(((File) it2.next()).getAbsolutePath());
                if (matcher.find()) {
                    String strGroup = matcher.group(1);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("state index is: ");
                    sb2.append(strGroup);
                    try {
                        if (!TextUtils.isEmpty(strGroup)) {
                            int i10 = Integer.parseInt(strGroup);
                            String str4 = str3 + str2 + "_" + i10 + ".ppst";
                            String str5 = str + net.lingala.zip4j.util.e.F0 + str2 + o0.f49827a + i10;
                            if (new File(str5).lastModified() != new File(str4).lastModified()) {
                                renameFile(str4, str5);
                                renameFile(str3 + str2 + "_" + i10 + ".jpg", str + net.lingala.zip4j.util.e.F0 + str2 + o0.f49827a + i10 + ".png");
                            }
                        }
                    } catch (NumberFormatException e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
    }

    private void goVipShop(int i10) {
        SubBean sub;
        if (this.vipBeans.size() > 0) {
            if (i10 >= this.vipBeans.size() || (sub = this.vipBeans.get(i10).getSub()) == null) {
                return;
            }
            MarketUtil.intent(getContext(), sub.getLink_type(), sub.getJump_type(), sub.getLink_type_val() + "&gameId=" + NativeActivity.GameID, sub.getCrc_link_type_val(), sub.getTpl_type());
            return;
        }
        if (i10 == 0) {
            MarketUtil.intent(getContext(), "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=2&gameName=一键技能&returnStatus=1&gameId=" + NativeActivity.GameID, "2489914047", "");
            return;
        }
        if (i10 == 1) {
            MarketUtil.intent(getContext(), "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=1&gameName=金手指&returnStatus=1&gameId=" + NativeActivity.GameID, "1778130821", "");
            return;
        }
        if (i10 == 2) {
            MarketUtil.intent(getContext(), "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=3&gameName=更多存档&returnStatus=1&gameId=" + NativeActivity.GameID, "3505974813", "");
            return;
        }
        if (i10 == 3) {
            MarketUtil.intent(getContext(), "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=5&gameName=快速选关&returnStatus=1&gameId=" + NativeActivity.GameID, "461784020", "");
            return;
        }
        if (i10 != 4) {
            return;
        }
        MarketUtil.intent(getContext(), "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=4&gameName=对战畅玩&returnStatus=1&gameId=" + NativeActivity.GameID, "685248020", "");
    }
}
