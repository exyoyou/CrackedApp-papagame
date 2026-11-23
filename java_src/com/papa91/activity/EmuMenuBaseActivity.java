package com.papa91.activity;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import android.text.TextUtils;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.join.mgps.Util.o0;
import com.join.mgps.activity.GameMainActivity4;
import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.join.mgps.activity.SimulatorAreaActivity_;
import com.join.mgps.activity.posting.PostingActivity_;
import com.join.mgps.dto.Constant;
import com.join.mgps.service.CommonService_;
import com.papa91.arc.CContext;
import com.papa91.arc.MarketUtil;
import com.papa91.arc.MyJson;
import com.papa91.arc.SnkConfig;
import com.papa91.arc.bean.AdInfoBean;
import com.papa91.arc.bean.EndGameAllowBean;
import com.papa91.arc.bean.EndgameChallengeLevelBean;
import com.papa91.arc.bean.GateBean;
import com.papa91.arc.bean.MainBean;
import com.papa91.arc.bean.PaiWeiDataBean;
import com.papa91.arc.bean.SkillConfigBean;
import com.papa91.arc.bean.SkillTableDataBean;
import com.papa91.arc.bean.SpBindsDataBean;
import com.papa91.arc.bean.SubBean;
import com.papa91.arc.bean.TypeBean;
import com.papa91.arc.bean.VipBean;
import com.papa91.arc.common.constants.BAction;
import com.papa91.arc.common.constants.IntentKeys;
import com.papa91.arc.common.constants.StatIntents;
import com.papa91.arc.dialog.SettingAchievementDialog;
import com.papa91.arc.dialog.SettingCheatDialog;
import com.papa91.arc.dialog.SettingDialog;
import com.papa91.arc.dialog.SettingGateDialog;
import com.papa91.arc.dialog.SettingOneKeyDialog;
import com.papa91.arc.dialog.SettingPerformanceDialog;
import com.papa91.arc.dialog.SettingShareDialog;
import com.papa91.arc.dialog.SettingSlotDialog;
import com.papa91.arc.dialog.SettingVipDialog;
import com.papa91.arc.dialog.SettingVipTipDialog;
import com.papa91.arc.dialog.SimulatorContinueDialog;
import com.papa91.arc.dialog.SimulatorTipTwoDialog;
import com.papa91.arc.dialog.SimulatorUploadDialog;
import com.papa91.arc.http.HttpUtils;
import com.papa91.arc.util.FileUtils;
import com.papa91.arc.util.GameSettings;
import com.papa91.arc.util.StringUtils;
import com.papa91.arc.view.IEmulator;
import com.papa91.arc.view.MenuView;
import com.papa91.arc.view.MenuViewListener;
import com.papa91.arc.view.ToastUtil;
import com.papa91.common.BaseAppConfig;
import com.papa91.utils.AESUtilV2;
import com.sdk.base.module.manager.SDKManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.ppsspp.ppsspp.CheatInfo;
import org.ppsspp.ppsspp.EditCheatInfo;
import org.ppsspp.ppsspp.R;

/* JADX INFO: loaded from: classes2.dex */
public class EmuMenuBaseActivity extends EmuBaseActivity implements MenuViewListener, IEmulator {
    public static int lastWindow;
    public static int saveSnapFrom;
    SettingAchievementDialog achievementDialog;
    AdInfoBean adInfoBean;
    SettingCheatDialog cheatDialog;
    String gameDir;
    SettingGateDialog gateDialog;
    Gson gson;
    private boolean isDestroyed;
    private boolean isRecreate;
    private long lastClickStartTime;
    private int lastCountTime;
    protected MenuView menuView;
    SettingOneKeyDialog oneKeyDialog;
    SettingPerformanceDialog performanceDialog;
    protected List<PaiWeiDataBean.RolesBean> rolesBeanList;
    private ArrayList<EndgameChallengeLevelBean> rules;
    SettingShareDialog shareDialog;
    int showTip;
    SettingSlotDialog slotDialog;
    SharedPreferences sp;
    Timer timer;
    TimerTask timerTask;
    String url;
    SettingVipDialog vipDialog;
    SettingVipTipDialog vipTipDialog;
    protected int autoSlotTime = 20;
    SkillTableDataBean skillTableDataBean = null;
    Runnable timeRunnable = new Runnable() { // from class: com.papa91.activity.EmuMenuBaseActivity.3
        @Override // java.lang.Runnable
        public void run() {
            try {
                int gameTime = EmuBaseActivity.getGameTime();
                int i10 = gameTime - EmuMenuBaseActivity.this.lastCountTime;
                if (i10 > 0) {
                    EmuMenuBaseActivity.this.lastCountTime = gameTime;
                    Intent intent = new Intent(BAction.ACTION_EMU_GAME_PLAY_TIMES);
                    intent.putExtra("gameId", EmuBaseActivity.GameID);
                    intent.putExtra(CommonService_.AnonymousClass36.f72735c, ((long) i10) / 1000);
                    EmuMenuBaseActivity.this.sendBroadcast(intent);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            EmuMenuBaseActivity emuMenuBaseActivity = EmuMenuBaseActivity.this;
            if (emuMenuBaseActivity.handler == null) {
                emuMenuBaseActivity.handler = new Handler();
            }
            EmuMenuBaseActivity.this.handler.postDelayed(this, 60000L);
        }
    };
    private PackageInfo appInfo = null;
    List<VipBean> vipBeans = new ArrayList();
    private ExecutorService executorService = Executors.newFixedThreadPool(2);
    String ad_host_url = "http://anctapi.5fun.com";
    long liveTime = 0;
    LinkedHashMap<String, Long> activityQueue = new LinkedHashMap<>();

    /* JADX INFO: renamed from: com.papa91.activity.EmuMenuBaseActivity$14, reason: invalid class name */
    class AnonymousClass14 implements HttpUtils.OnResult {
        AnonymousClass14() {
        }

        @Override // com.papa91.arc.http.HttpUtils.OnResult
        public void onFailure(String str) {
        }

        void onPostExecute(String str) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    EmuMenuBaseActivity.this.adInfoBean = null;
                }
                JSONObject jSONObject = new MyJson(str).getJSONObject("data");
                if (jSONObject != null) {
                    EmuMenuBaseActivity.this.adInfoBean = new AdInfoBean();
                    JSONObject jSONObject2 = (JSONObject) jSONObject.get("main");
                    EmuMenuBaseActivity.this.adInfoBean.setMain(new MainBean(jSONObject2.getString("title"), jSONObject2.getString(PostingActivity_.LABEL_EXTRA), jSONObject2.getString("pic_remote"), jSONObject2.getString("title_type"), jSONObject2.getString("sub_title"), jSONObject2.getInt("ad_switch")));
                    JSONObject jSONObject3 = (JSONObject) ((JSONArray) jSONObject.get("sub")).get(0);
                    EmuMenuBaseActivity.this.adInfoBean.setSub(new SubBean(jSONObject3.getString("link_type"), jSONObject3.getString("link_type_val"), jSONObject3.getString("crc_link_type_val"), jSONObject3.getString("jump_type"), jSONObject3.getString("is_more"), jSONObject3.getString("tpl_type")));
                }
                EmuMenuBaseActivity.this.showAdView();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.papa91.arc.http.HttpUtils.OnResult
        public void onSuccess(final String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            EmuMenuBaseActivity.this.handler.post(new Runnable() { // from class: com.papa91.activity.EmuMenuBaseActivity.14.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass14.this.onPostExecute(str);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.papa91.activity.EmuMenuBaseActivity$4, reason: invalid class name */
    class AnonymousClass4 implements HttpUtils.OnResult {
        AnonymousClass4() {
        }

        @Override // com.papa91.arc.http.HttpUtils.OnResult
        public void onFailure(String str) {
        }

        void onPostExecute(String str) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    EmuMenuBaseActivity.this.vipBeans.clear();
                }
                JSONArray jSONArray = new MyJson(str).getJSONObject("messages").getJSONArray("data");
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObject = (JSONObject) jSONArray.get(i10);
                    VipBean vipBean = new VipBean();
                    JSONObject jSONObject2 = (JSONObject) jSONObject.get("main");
                    vipBean.setMain(new MainBean(jSONObject2.getString("title"), jSONObject2.getString(PostingActivity_.LABEL_EXTRA), jSONObject2.getString("pic_remote"), jSONObject2.getString("title_type"), jSONObject2.getString("sub_title"), jSONObject2.getInt("ad_switch")));
                    JSONObject jSONObject3 = (JSONObject) ((JSONArray) jSONObject.get("sub")).get(0);
                    vipBean.setSub(new SubBean(jSONObject3.getString("link_type"), jSONObject3.getString("link_type_val"), jSONObject3.getString("crc_link_type_val"), jSONObject3.getString("jump_type"), jSONObject3.getString("is_more"), jSONObject3.getString("tpl_type")));
                    EmuMenuBaseActivity.this.vipBeans.add(vipBean);
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            try {
                if (EmuMenuBaseActivity.this.isDestroyed) {
                    return;
                }
                for (int i11 = 0; i11 < EmuMenuBaseActivity.this.vipBeans.size(); i11++) {
                    EmuMenuBaseActivity emuMenuBaseActivity = EmuMenuBaseActivity.this;
                    EmuMenuBaseActivity.download(emuMenuBaseActivity, emuMenuBaseActivity.vipBeans.get(i11).getMain().getPic_remote());
                }
                EmuMenuBaseActivity emuMenuBaseActivity2 = EmuMenuBaseActivity.this;
                SettingVipDialog settingVipDialog = emuMenuBaseActivity2.vipDialog;
                if (settingVipDialog != null) {
                    settingVipDialog.updateVipDatas(emuMenuBaseActivity2.vipBeans);
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
            EmuMenuBaseActivity.this.handler.post(new Runnable() { // from class: com.papa91.activity.EmuMenuBaseActivity.4.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass4.this.onPostExecute(str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void download(Context context, String str) {
        Fresco.getImagePipeline().U(ImageRequestBuilder.x(Uri.parse(str)).y(true).G(ImageRequest.RequestLevel.FULL_FETCH).I(false).a(), context);
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$restoreAdData$2(String str) {
        HttpUtils.post(this.ad_host_url + "/v5/game/simulatorGameInterfaceAd", null, str, new AnonymousClass14());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$restoreVipData$0(String str) {
        HttpUtils.post(this.url, null, str, new AnonymousClass4());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAdView$3() {
        if (this.adInfoBean == null || this.menuView == null) {
            return;
        }
        String hasShowAdInfo = CContext.mShareLitener.getHasShowAdInfo();
        String md5 = getMD5(new Gson().toJson(this.adInfoBean));
        if (TextUtils.isEmpty(hasShowAdInfo) || !md5.equals(hasShowAdInfo)) {
            this.menuView.showAdImage(true, this.adInfoBean.getMain().getPic_remote());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showUploadRecordDialog$4(DialogInterface dialogInterface) {
        gameOnPause();
        this.menuView.setRankTimeStop(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showVipTip$1(int i10, int i11) {
        this.sp.edit().putBoolean(EmuBaseActivity.GameID + "_" + i10, false).commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCloseUploadRecordDialog() {
        SimulatorTipTwoDialog simulatorTipTwoDialog = new SimulatorTipTwoDialog(this);
        simulatorTipTwoDialog.setTipContent("是否上传排位赛记录？\n放弃上传则此条通关记录不被记录到排位赛内");
        simulatorTipTwoDialog.setConfirmText("返回游戏");
        simulatorTipTwoDialog.setCancelText("继续上传");
        simulatorTipTwoDialog.setListener(new SimulatorTipTwoDialog.OnOptionsListener() { // from class: com.papa91.activity.EmuMenuBaseActivity.17
            @Override // com.papa91.arc.dialog.SimulatorTipTwoDialog.OnOptionsListener
            public void onCancel() {
                EmuMenuBaseActivity.this.showUploadRecordDialog();
            }

            @Override // com.papa91.arc.dialog.SimulatorTipTwoDialog.OnOptionsListener
            public void onClose() {
                EmuMenuBaseActivity.this.gameOnResume();
                EmuMenuBaseActivity.this.menuView.setRankTimeStop(false);
            }

            @Override // com.papa91.arc.dialog.SimulatorTipTwoDialog.OnOptionsListener
            public void onConfirm() {
                EmuMenuBaseActivity.this.gameOnResume();
                EmuMenuBaseActivity.this.menuView.setRankTimeStop(false);
            }
        });
        simulatorTipTwoDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUploadRecordDialog() {
        Object objValueOf;
        Object objValueOf2;
        Object objValueOf3;
        SimulatorUploadDialog simulatorUploadDialog = new SimulatorUploadDialog(this);
        simulatorUploadDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.papa91.activity.u
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                this.f78020b.lambda$showUploadRecordDialog$4(dialogInterface);
            }
        });
        simulatorUploadDialog.setListener(new SimulatorUploadDialog.OnOptionsListener() { // from class: com.papa91.activity.EmuMenuBaseActivity.16
            @Override // com.papa91.arc.dialog.SimulatorUploadDialog.OnOptionsListener
            public void onClose() {
                EmuMenuBaseActivity.this.showCloseUploadRecordDialog();
                EmuMenuBaseActivity.this.gameOnResume();
                EmuMenuBaseActivity.this.menuView.setRankTimeStop(false);
            }

            @Override // com.papa91.arc.dialog.SimulatorUploadDialog.OnOptionsListener
            public void onConfirm(int i10, int i11) {
                int iGameCompleted = EmuBaseActivity.gameCompleted();
                Intent intent = new Intent(BAction.ACTION_RANK_RECORD_UPLOAD);
                intent.putExtra(IntentKeys.KEY_PARAMS_RANK_COIN, i10);
                intent.putExtra(IntentKeys.KEY_PARAMS_RANK_PLAY_TIME, (iGameCompleted / 60) * 1000);
                intent.putExtra(IntentKeys.KEY_PARAMS_RANK_ROLE_ID, i11);
                EmuMenuBaseActivity.this.sendBroadcast(intent);
                EmuMenuBaseActivity.this.gameOnResume();
                EmuMenuBaseActivity.this.menuView.setRankTimeStop(false);
            }
        });
        simulatorUploadDialog.setData(this.rolesBeanList);
        int rankTime = this.menuView.getRankTime();
        this.rankPlayTime = rankTime;
        int i10 = rankTime / 3600;
        int i11 = i10 * 3600;
        int i12 = (rankTime - i11) / 60;
        int i13 = (rankTime - i11) - (i12 * 60);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("通关用时：");
        if (i10 > 9) {
            objValueOf = Integer.valueOf(i10);
        } else {
            objValueOf = "0" + i10;
        }
        sb2.append(objValueOf);
        sb2.append(":");
        if (i12 > 9) {
            objValueOf2 = Integer.valueOf(i12);
        } else {
            objValueOf2 = "0" + i12;
        }
        sb2.append(objValueOf2);
        sb2.append(":");
        if (i13 > 9) {
            objValueOf3 = Integer.valueOf(i13);
        } else {
            objValueOf3 = "0" + i13;
        }
        sb2.append(objValueOf3);
        simulatorUploadDialog.setTipContent(sb2.toString());
        simulatorUploadDialog.show();
    }

    private void startTimeCount() {
        if (this.handler == null) {
            this.handler = new Handler();
        }
        this.handler.postDelayed(this.timeRunnable, 60000L);
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean IsHapticFeedbackEnable() {
        return false;
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean IsSoundEnable() {
        return false;
    }

    public String ReadFile(String str) throws Throwable {
        File file = new File(str);
        String str2 = "";
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            str2 = str2 + line;
                        } catch (IOException e10) {
                            e = e10;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return str2;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused) {
                                }
                            }
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                    bufferedReader2.close();
                } catch (IOException e11) {
                    e = e11;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused2) {
        }
        return str2;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void addEditCheatInfo(EditCheatInfo editCheatInfo) {
        EmuBaseActivity.addEditCheat(editCheatInfo);
    }

    protected void attachMenu() {
        try {
            if (this.isSingleGame || Cocos2dxActivity.mFrameLayout == null) {
                return;
            }
            MenuView menuView = new MenuView(this);
            this.menuView = menuView;
            Cocos2dxActivity.mFrameLayout.addView(menuView);
            setMenuViewListener();
            showMenuView(false);
            showAdView();
            if (EmuBaseActivity.startMode == 16) {
                endGameAllow(false, 0);
                EmuBaseActivity.setSPVisible(false);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void cheatInfoEnable(int i10, int i11) {
        EmuBaseActivity.cheatEnable(i10, i11);
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean checkCheatCodeInfo(String str, boolean z10) {
        return EmuBaseActivity.checkCheatCode(str, false);
    }

    public void closeDialogWithOut(SettingDialog settingDialog) {
        SettingCheatDialog settingCheatDialog = this.cheatDialog;
        if (settingCheatDialog != null && settingCheatDialog != settingDialog) {
            if (settingCheatDialog.isShowing()) {
                this.cheatDialog.dismissOnly();
            }
            this.cheatDialog = null;
        }
        SettingGateDialog settingGateDialog = this.gateDialog;
        if (settingGateDialog != null && settingGateDialog != settingDialog) {
            if (settingGateDialog.isShowing()) {
                this.gateDialog.dismissOnly();
            }
            this.gateDialog = null;
        }
        SettingSlotDialog settingSlotDialog = this.slotDialog;
        if (settingSlotDialog != null && settingSlotDialog != settingDialog) {
            if (settingSlotDialog.isShowing()) {
                this.slotDialog.dismissOnly();
            }
            this.slotDialog = null;
        }
        SettingVipDialog settingVipDialog = this.vipDialog;
        if (settingVipDialog != null && settingVipDialog != settingDialog) {
            if (settingVipDialog.isShowing()) {
                this.vipDialog.dismiss();
            }
            this.vipDialog = null;
        }
        SettingOneKeyDialog settingOneKeyDialog = this.oneKeyDialog;
        if (settingOneKeyDialog == null || settingOneKeyDialog == settingDialog) {
            return;
        }
        if (settingOneKeyDialog.isShowing()) {
            this.oneKeyDialog.dismiss();
        }
        this.oneKeyDialog = null;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void deleteEditCheatInfo(int i10) {
        EmuBaseActivity.deleteEditCheat(i10);
    }

    @Override // com.papa91.arc.view.IEmulator
    public void enableEidtCheat(int i10, int i11) {
        if (getVip() > 0) {
            EmuBaseActivity.enableEidtCheat(i10);
            senCommonEvent("Custom_openGoldfinger", "");
            return;
        }
        if (i11 != 1 && i11 != -1) {
            EmuBaseActivity.enableEidtCheat(i10);
            senCommonEvent("Custom_closeGoldfinger", "");
            return;
        }
        CContext.IVideoAdListener iVideoAdListener = CContext.mVideoAdListener;
        if (iVideoAdListener != null && i11 == 1) {
            iVideoAdListener.showGoldAdDialog(this, EmuBaseActivity.GameID, i10);
        } else {
            EmuBaseActivity.enableEidtCheat(i10);
            senCommonEvent("Custom_openGoldfinger", "");
        }
    }

    @Override // com.papa91.activity.EmuBaseActivity
    public void endGameStartCountDown(String str) {
        MenuView menuView = this.menuView;
        if (menuView != null) {
            menuView.showEndGameCountdown();
        }
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void exit() {
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void exitEndGame(boolean z10) {
        if (z10) {
            senCommonEvent("gameInExitVS", this.isAfterFailedEndGame ? "2" : "1");
        }
        Intent intent = new Intent();
        intent.setAction("com.emu.ad.result");
        intent.putExtra("adAction", 100);
        intent.putExtra("exit", 1);
        sendBroadcast(intent);
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void forum() {
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
                long jCurrentTimeMillis = System.currentTimeMillis() - l10.longValue();
                this.activityQueue.remove(name);
                this.liveTime += jCurrentTimeMillis;
            }
        }
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void gameOnPause() {
        EmuBaseActivity.setPause(1);
        EmuBaseActivity.gameIsPause = true;
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void gameOnResume() {
        EmuBaseActivity.setPause(0);
        EmuBaseActivity.gameIsPause = false;
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

    public String getAdRequestParam() {
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(EmuBaseActivity.appPackName, 16384);
            this.appInfo = packageInfo;
            if (packageInfo != null) {
                EmuBaseActivity.DEVICE_VERSION = this.appInfo.versionCode + "_" + this.appInfo.versionName.replace("'", "");
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        EmuBaseActivity.httpKeySign = getMD5(EmuBaseActivity.DEVICE_ID + "gzRN53VWRF9BYUXomg2014");
        MyJson myJson = new MyJson();
        try {
            myJson.put("version", EmuBaseActivity.DEVICE_VERSION);
            myJson.put("deviceid", EmuBaseActivity.DEVICE_ID);
            myJson.put(Constant.MD5, EmuBaseActivity.httpKeySign);
            myJson.put("platform", this.sp.getString("platform", ""));
            MyJson myJson2 = new MyJson();
            myJson2.put(SimulatorAreaActivity_.SIMULATOR_TYPE_EXTRA, getSimulatorType());
            myJson.put(QuarkPromptActivity_.ARGS_EXTRA, myJson2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return myJson.toString();
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean getAutoSlotStatus() {
        SharedPreferences sharedPreferences = this.sp;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.getBoolean(EmuBaseActivity.GameID + "_AUTO_SLOT_STATUS", true);
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
        } else if (!EmuBaseActivity.gameIsPause) {
            this.autoSlotTime = i10 - 1;
        }
        return this.autoSlotTime;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getAutoStateTimeGap() {
        return 1000;
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean getChangeDiskState() {
        return false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<CheatInfo> getCheatListData() {
        return EmuBaseActivity.cheatInfos;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getCheatLoaded() {
        return EmuBaseActivity.getVCLoaded();
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getCurrentChar() {
        return getCurChar();
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getCustomCheatTip(boolean z10) {
        return "";
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<EditCheatInfo> getEditCheatListData() {
        return EmuBaseActivity.getEditCheatList();
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public String getEndGameDesc() {
        return EmuBaseActivity.subTitle;
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public int getEndGameLimitTime() {
        return EmuBaseActivity.endGameTime;
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public String getEndGameScore(int i10) {
        Gson gson = new Gson();
        ArrayList<EndgameChallengeLevelBean> arrayList = this.rules;
        if (arrayList == null || arrayList.size() <= 0) {
            this.rules = new ArrayList<>();
            if (!TextUtils.isEmpty(EmuBaseActivity.endGameLevelRules)) {
                Iterator<JsonElement> it2 = JsonParser.parseString(EmuBaseActivity.endGameLevelRules).getAsJsonArray().iterator();
                while (it2.hasNext()) {
                    this.rules.add((EndgameChallengeLevelBean) gson.fromJson(it2.next(), EndgameChallengeLevelBean.class));
                }
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getEndGameScore: ");
        sb2.append(this.rules.size());
        int i11 = (i10 * 100) / (EmuBaseActivity.endGameTime * 1000);
        String level = SDKManager.ALGO_C_RFU;
        for (EndgameChallengeLevelBean endgameChallengeLevelBean : this.rules) {
            EndgameChallengeLevelBean.BoundaryBean boundary = endgameChallengeLevelBean.getBoundary();
            if (i11 >= boundary.getLower() && i11 <= boundary.getUpper()) {
                level = endgameChallengeLevelBean.getLevel();
            }
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("getEndGameScore: ");
        sb3.append(i10);
        sb3.append("  ");
        sb3.append(EmuBaseActivity.endGameTime);
        sb3.append("  ");
        sb3.append(i11);
        sb3.append("  ");
        sb3.append(level);
        return level;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getGameId() {
        return EmuBaseActivity.GameID;
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public int getGamePlayTime() {
        return EmuBaseActivity.getGameTime();
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<GateBean> getGateData() {
        return null;
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
            arrayList.add(new TypeBean(1, "自动存档", false, -1, -1));
            arrayList.add(new TypeBean(2, GameMainActivity4.TITLE_SHOP, false, R.drawable.ic_slot_store_h, R.drawable.ic_slot_store_n));
        }
        return arrayList;
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public int getMiniRankTime() {
        return this.miniRankTime;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getModSubfix() {
        return "";
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void getPassRewardPoint() {
        getVideoAward(2, false);
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getPlugVerCode() {
        return EmuBaseActivity.verCode;
    }

    public String getRequestParam() {
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(EmuBaseActivity.appPackName, 16384);
            this.appInfo = packageInfo;
            if (packageInfo != null) {
                EmuBaseActivity.DEVICE_VERSION = this.appInfo.versionCode + "_" + this.appInfo.versionName.replace("'", "");
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        EmuBaseActivity.httpKeySign = getMD5(EmuBaseActivity.DEVICE_ID + "gzRN53VWRF9BYUXomg2014");
        MyJson myJson = new MyJson();
        try {
            myJson.put("version", EmuBaseActivity.DEVICE_VERSION);
            myJson.put("deviceid", EmuBaseActivity.DEVICE_ID);
            myJson.put(Constant.MD5, EmuBaseActivity.httpKeySign);
            MyJson myJson2 = new MyJson();
            myJson2.put(QuarkPromptActivity_.ARGS_EXTRA, new JSONArray());
            myJson.put("messages", myJson2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return myJson.toString();
    }

    public String getSimulatorType() {
        return "";
    }

    @Override // com.papa91.arc.view.IEmulator
    public SkillConfigBean getSkillConfigData() throws Throwable {
        try {
            if (!TextUtils.isEmpty(BaseAppConfig.ROM_PATH)) {
                String str = BaseAppConfig.ROM_PATH;
                str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0));
            }
            String str2 = romPath().substring(0, romPath().lastIndexOf(net.lingala.zip4j.util.e.F0)) + "/skill_config.json";
            if (!isShowOnekey() || !new File(str2).exists()) {
                return null;
            }
            return (SkillConfigBean) this.gson.fromJson(ReadFile(str2), SkillConfigBean.class);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public SkillTableDataBean getSkillTableData() throws Throwable {
        try {
            if (isShowOnekey() && this.skillTableDataBean == null) {
                this.skillTableDataBean = (SkillTableDataBean) this.gson.fromJson(ReadFile(romPath().substring(0, romPath().lastIndexOf(net.lingala.zip4j.util.e.F0)) + "/skill_table.json"), SkillTableDataBean.class);
            }
        } catch (Exception unused) {
        }
        return this.skillTableDataBean;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int[] getSpBindImages(int i10) {
        if (i10 == 0) {
            return new int[]{R.drawable.ic_font_1_h, R.drawable.ic_font_2_h, R.drawable.ic_font_3_h, R.drawable.ic_font_4_h, R.drawable.ic_font_5_h};
        }
        if (i10 == 1) {
            return new int[]{R.drawable.ic_font_1_n, R.drawable.ic_font_2_n, R.drawable.ic_font_3_n, R.drawable.ic_font_4_n, R.drawable.ic_font_5_n};
        }
        if (i10 == 2) {
            return new int[]{R.drawable.ic_sp_1_h, R.drawable.ic_sp_2_h, R.drawable.ic_sp_3_h, R.drawable.ic_sp_4_h, R.drawable.ic_sp_5_h};
        }
        return i10 == 3 ? new int[]{R.drawable.ic_sp_1_n, R.drawable.ic_sp_2_n, R.drawable.ic_sp_3_n, R.drawable.ic_sp_4_n, R.drawable.ic_sp_5_n} : new int[5];
    }

    @Override // com.papa91.arc.view.IEmulator
    public SpBindsDataBean getSpBindsData() throws Throwable {
        try {
            if (!isShowOnekey()) {
                return null;
            }
            SpBindsDataBean spBindsDataBean = (SpBindsDataBean) this.gson.fromJson(ReadFile(ugcPath() + "/sp_binds.json"), SpBindsDataBean.class);
            if (spBindsDataBean == null) {
                spBindsDataBean = (SpBindsDataBean) this.gson.fromJson(ReadFile(ugcPath().substring(0, ugcPath().lastIndexOf(net.lingala.zip4j.util.e.F0)) + "/sp_binds.json"), SpBindsDataBean.class);
            }
            if (spBindsDataBean != null) {
                return spBindsDataBean;
            }
            return (SpBindsDataBean) this.gson.fromJson(ReadFile(ugcPath() + "/sp_binds.json"), SpBindsDataBean.class);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getToken() {
        return EmuBaseActivity.token;
    }

    @Override // com.papa91.arc.view.IEmulator
    public String getUserId() {
        return EmuBaseActivity.UserID;
    }

    @Override // com.papa91.arc.view.IEmulator
    public int getVip() {
        if (SnkConfig.isSnkGame(EmuBaseActivity.GameID)) {
            return 10;
        }
        return this.m_VIP;
    }

    @Override // com.papa91.arc.view.IEmulator
    public List<VipBean> getVipData() {
        return this.vipBeans;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void goLogin() {
        EmuBaseActivity.sign();
    }

    @Override // com.papa91.arc.view.IEmulator
    public void goSlotShop() {
        Context context = Cocos2dxActivity.getContext();
        String str = EmuBaseActivity.GameID;
        MarketUtil.intent(context, "3", "35", str, str, "");
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
            MarketUtil.intent(Cocos2dxActivity.getContext(), "4", "0", CContext.mShareLitener.getEmulatorOneSkillUrl() + "&gameId=" + EmuBaseActivity.GameID, "", "");
            return;
        }
        if (i10 == 1) {
            if (StringUtils.isEmpty(CContext.mShareLitener.getEmulatorGoldenFingerUrl())) {
                goVipShop(i10);
                return;
            }
            MarketUtil.intent(Cocos2dxActivity.getContext(), "4", "0", CContext.mShareLitener.getEmulatorGoldenFingerUrl() + "&gameId=" + EmuBaseActivity.GameID, "", "");
            return;
        }
        if (i10 != 3) {
            return;
        }
        if (StringUtils.isEmpty(CContext.mShareLitener.getEmulatorCheckpointUrl())) {
            goVipShop(i10);
            return;
        }
        MarketUtil.intent(Cocos2dxActivity.getContext(), "4", "0", CContext.mShareLitener.getEmulatorCheckpointUrl() + "&gameId=" + EmuBaseActivity.GameID, "", "");
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void handleAdError(Context context, Intent intent) {
        int iOptInt;
        super.handleAdError(context, intent);
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

    @Override // com.papa91.activity.EmuBaseActivity
    protected void handleAdResult(Context context, Intent intent) {
        int iOptInt;
        SettingCheatDialog settingCheatDialog;
        super.handleAdResult(context, intent);
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

    @Override // com.papa91.activity.EmuBaseActivity
    public void hideAllView() {
        MenuView menuView = this.menuView;
        if (menuView != null) {
            menuView.hideAllEndGameView();
        }
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean isEndGame() {
        return EmuBaseActivity.startMode == 16;
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean isNetAvailable() {
        return EmuBaseActivity.isNetworkConnected();
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean isRankAutoUpload() {
        return this.rankAutoUpload != 14;
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean isRankGame() {
        return EmuBaseActivity.startMode == 14;
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean isSPVisible() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isSPVisible: ");
        sb2.append(getVip());
        if (getVip() <= 0) {
            return false;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("spVisibleState: ");
        sb3.append(getVip());
        if (EmuBaseActivity.startMode == 16) {
            return false;
        }
        SharedPreferences sharedPreferences = this.sp;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(EmuBaseActivity.GameID);
        sb4.append("_isSpVisible");
        return sharedPreferences.getBoolean(sb4.toString(), true);
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean isShowAchievementIcon() {
        return EmuBaseActivity.context.getSharedPreferences("PrefDef", 0).getInt("pageVersion", 0) == 2 && EmuBaseActivity.context.getSharedPreferences("Papa_Stat_SharedPreferences", 4).getBoolean("isHasAchievement", true) && !isRankGame() && TextUtils.isEmpty(EmuBaseActivity.netState);
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean isShowCheating() {
        if (isEndGame()) {
            return false;
        }
        return !isRankGame();
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean isShowGate() {
        return false;
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean isShowOnekey() {
        if (isEndGame() || isRankGame()) {
            return false;
        }
        try {
            return new File(romPath().substring(0, romPath().lastIndexOf(net.lingala.zip4j.util.e.F0)) + "/skill_table.json").exists();
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean isShowQuickSlot() {
        if (isEndGame()) {
            return false;
        }
        return !isRankGame();
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void keysSetting() {
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadAdVideo() {
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadGateStage(int i10) {
    }

    @Override // com.papa91.activity.EmuBaseActivity
    public void loadRomFinish() {
        int i10 = EmuBaseActivity.startMode;
        if (i10 == 0 || i10 == 14 || i10 == 16) {
            attachMenu();
            if (EmuBaseActivity.startMode == 14) {
                this.menuView.showTimer();
                this.menuView.startTimer(0L);
            }
        }
        setAutoSave(getAutoSlotStatus() ? 1 : 0);
        this.handler.postDelayed(new Runnable() { // from class: com.papa91.activity.EmuMenuBaseActivity.11
            @Override // java.lang.Runnable
            public void run() {
                if (EmuMenuBaseActivity.this.getVip() <= 0) {
                    if (EmuBaseActivity.startMode == 0) {
                        EmuMenuBaseActivity.this.showVipTip();
                    }
                } else if (EmuMenuBaseActivity.this.isShowOnekey()) {
                    EmuMenuBaseActivity emuMenuBaseActivity = EmuMenuBaseActivity.this;
                    emuMenuBaseActivity.setSPMenuVisible(emuMenuBaseActivity.isSPVisible());
                }
            }
        }, 500L);
    }

    public void loadSlotCheat(String str) {
        org.ppsspp.ppsspp.d dVar;
        if (!BaseAppConfig.EMU_NAME.equals("gba") || getVip() <= 0) {
            return;
        }
        try {
            new org.ppsspp.ppsspp.d();
            File file = new File(str);
            File file2 = new File(new File(file.getParentFile(), "cheat"), file.getName());
            if (!file2.exists()) {
                String strSubstring = str.substring(0, str.lastIndexOf(o0.f49827a));
                String strSubstring2 = str.substring(str.lastIndexOf(o0.f49827a));
                if (!strSubstring.endsWith("vba")) {
                    return;
                }
                File file3 = new File(strSubstring.substring(0, strSubstring.lastIndexOf("vba")) + strSubstring2);
                file2 = new File(new File(file3.getParentFile(), "cheat"), file3.getName());
                if (!file2.exists()) {
                    return;
                }
            }
            String str2 = FileUtils.read(file2.getAbsolutePath());
            if (StringUtils.isEmpty(str2)) {
                return;
            }
            Gson gson = new Gson();
            String strDecrypt = AESUtilV2.decrypt(str2, "");
            if (TextUtils.isEmpty(strDecrypt) || (dVar = (org.ppsspp.ppsspp.d) gson.fromJson(strDecrypt, org.ppsspp.ppsspp.d.class)) == null) {
                return;
            }
            List<CheatInfo> cheatListData = getCheatListData();
            if (dVar.a() != null || dVar.a().size() > 0) {
                dVar.a().retainAll(cheatListData);
                for (CheatInfo cheatInfo : dVar.a()) {
                    int iIndexOf = cheatListData.indexOf(cheatInfo);
                    int i10 = cheatInfo.off;
                    cheatListData.get(iIndexOf).getOff();
                    cheatInfoEnable(iIndexOf, cheatInfo.off);
                    cheatListData.get(iIndexOf).setOff(cheatInfo.off);
                }
            }
            List<EditCheatInfo> editCheatListData = getEditCheatListData();
            if (dVar.b() != null || dVar.b().size() > 0) {
                dVar.b().retainAll(editCheatListData);
                for (EditCheatInfo editCheatInfo : dVar.b()) {
                    int iIndexOf2 = editCheatListData.indexOf(editCheatInfo);
                    int i11 = 1;
                    if (editCheatInfo.isEnable != editCheatListData.get(iIndexOf2).isEnable()) {
                        if (!editCheatInfo.isEnable) {
                            i11 = 0;
                        }
                        enableEidtCheat(iIndexOf2, i11);
                        editCheatListData.get(iIndexOf2).setEnable(editCheatInfo.isEnable);
                    }
                }
            }
            ToastUtil.show(this, "已为你同步开启存档时启用的金手指");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void loadSlotState(final String str) {
        EmuBaseActivity.loadState(str);
        this.handler.post(new Runnable() { // from class: com.papa91.activity.EmuMenuBaseActivity.7
            @Override // java.lang.Runnable
            public void run() {
                EmuMenuBaseActivity.this.loadSlotCheat(str);
            }
        });
    }

    @Override // com.papa91.arc.view.IEmulator
    public void modifyEditCheatInfo(int i10, EditCheatInfo editCheatInfo) {
        EmuBaseActivity.modifyEditCheat(i10, editCheatInfo);
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected boolean needResumeGame() {
        SettingVipTipDialog settingVipTipDialog = this.vipTipDialog;
        if (settingVipTipDialog == null || !settingVipTipDialog.isShowing()) {
            return super.needResumeGame();
        }
        return false;
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean needShowBottomBar() {
        return false;
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public boolean needShowTimer() {
        return isRankGame();
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void onAdImageClick() {
        if (this.adInfoBean != null) {
            CContext.mShareLitener.saveHasShowAdInfo(getMD5(new Gson().toJson(this.adInfoBean)));
            SubBean sub = this.adInfoBean.getSub();
            if (sub != null) {
                MarketUtil.intent(Cocos2dxActivity.getContext(), sub.getLink_type(), sub.getJump_type(), sub.getLink_type_val(), sub.getCrc_link_type_val(), sub.getTpl_type());
            }
            MenuView menuView = this.menuView;
            if (menuView != null) {
                menuView.showAdImage(false, "");
            }
        }
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void onChangeDisk() {
    }

    @Override // com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.gameDir = romPath().substring(romPath().lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
        this.gson = new GsonBuilder().create();
        new Thread(new Runnable() { // from class: com.papa91.activity.EmuMenuBaseActivity.2
            @Override // java.lang.Runnable
            public void run() {
                if (EmuMenuBaseActivity.this.isShowOnekey()) {
                    EmuMenuBaseActivity emuMenuBaseActivity = EmuMenuBaseActivity.this;
                    emuMenuBaseActivity.skillTableDataBean = emuMenuBaseActivity.getSkillTableData();
                }
                EmuMenuBaseActivity.this.startTimer();
            }
        }).run();
        this.sp = EmuBaseActivity.getDefaultSharedPreferences(this);
        EmuBaseActivity.DEVICE_ID = "";
        restoreVipData();
        restoreAdData();
        startTimeCount();
    }

    @Override // com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onDestroy() {
        this.isDestroyed = true;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacks(this.timeRunnable);
        }
        super.onDestroy();
        stopTimer();
        closeDialogWithOut(null);
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void onHideMenu() {
        StatIntents.getInstance(Cocos2dxActivity.getContext()).statOnclickFunction(EmuBaseActivity.GameID, EmuBaseActivity.UserID, 2);
    }

    @Override // com.papa91.activity.EmuBaseActivity
    public void onLoadStageCompleted(final int i10, final String str) {
        super.onLoadStageCompleted(i10, str);
        runOnUiThread(new Runnable() { // from class: com.papa91.activity.EmuMenuBaseActivity.5
            @Override // java.lang.Runnable
            public void run() {
                SettingGateDialog settingGateDialog = EmuMenuBaseActivity.this.gateDialog;
                if (settingGateDialog != null) {
                    settingGateDialog.hideLoading();
                    if (i10 == 1) {
                        EmuMenuBaseActivity.this.gateDialog.dismiss();
                    }
                }
                if (StringUtils.isNotEmpty(str)) {
                    ToastUtil.show(EmuMenuBaseActivity.this, str);
                }
            }
        });
    }

    @Override // com.papa91.activity.EmuBaseActivity
    void onMessengerConnected(Messenger messenger) {
        super.onMessengerConnected(messenger);
        StatIntents.getInstance(this).setMessenger(messenger);
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void onRankFinish(int i10) {
        if (i10 < this.miniRankTime) {
            SimulatorContinueDialog simulatorContinueDialog = new SimulatorContinueDialog(this);
            simulatorContinueDialog.setTipTitle("系统提示");
            simulatorContinueDialog.show();
        } else {
            SimulatorTipTwoDialog simulatorTipTwoDialog = new SimulatorTipTwoDialog(this);
            simulatorTipTwoDialog.setTipTitle("系统提示");
            simulatorTipTwoDialog.setListener(new SimulatorTipTwoDialog.OnOptionsListener() { // from class: com.papa91.activity.EmuMenuBaseActivity.15
                @Override // com.papa91.arc.dialog.SimulatorTipTwoDialog.OnOptionsListener
                public void onCancel() {
                }

                @Override // com.papa91.arc.dialog.SimulatorTipTwoDialog.OnOptionsListener
                public void onClose() {
                }

                @Override // com.papa91.arc.dialog.SimulatorTipTwoDialog.OnOptionsListener
                public void onConfirm() {
                    EmuMenuBaseActivity.this.showUploadRecordDialog();
                }
            });
            simulatorTipTwoDialog.show();
        }
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void onRankRecordEnd(int i10) {
        if (isFinishing()) {
            return;
        }
        if (EmuBaseActivity.startMode != 16) {
            if (i10 == 0) {
                ToastUtil.show(this, "记录生成失败,请重试");
                return;
            } else {
                showUploadRecordDialog();
                return;
            }
        }
        Intent intent = new Intent(BAction.ACTION_ENDGAME_RECORD_UPLOAD);
        intent.putExtra(CommonService_.AnonymousClass40.f72751b, EmuBaseActivity.challengeId);
        intent.putExtra("gameId", EmuBaseActivity.GameID);
        sendBroadcast(intent);
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void onScreenShot() {
        StatIntents.getInstance(Cocos2dxActivity.getContext()).statOnclickFunction(EmuBaseActivity.GameID, EmuBaseActivity.UserID, 1);
        saveSnapFrom = 1;
        EmuBaseActivity.saveSnap(1);
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void onTimerTick(long j10) {
    }

    @Override // com.papa91.activity.EmuBaseActivity
    public void onVipChanged() {
        restoreVipData();
        runOnUiThread(new Runnable() { // from class: com.papa91.activity.EmuMenuBaseActivity.13
            @Override // java.lang.Runnable
            public void run() {
                if (EmuMenuBaseActivity.this.getVip() <= 0 || !EmuMenuBaseActivity.this.isShowOnekey()) {
                    return;
                }
                EmuMenuBaseActivity.this.setSPMenuVisible(EmuMenuBaseActivity.this.isSPVisible());
            }
        });
        SettingVipDialog settingVipDialog = this.vipDialog;
        if (settingVipDialog != null && settingVipDialog.isShowing()) {
            this.vipDialog.dismissOnly();
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
        SettingOneKeyDialog settingOneKeyDialog = this.oneKeyDialog;
        if (settingOneKeyDialog != null) {
            settingOneKeyDialog.onVipChanged();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void pauseGame() {
        EmuBaseActivity.setPause(1);
        EmuBaseActivity.gameIsPause = true;
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void playVideoForReward() {
        EmuBaseActivity.scenario = 2;
        CContext.mVideoAdListener.showEndAd(this.sdkType, EmuBaseActivity.GameID);
        Context context = EmuBaseActivity.context;
        if (context instanceof EmuBaseActivity) {
            ((EmuBaseActivity) context).senCommonEvent("clickGameVSAdVideo", "");
        }
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void quickSlot() {
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void reload() {
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void restartEndGame() {
        EmuBaseActivity.resetEndGame(EmuBaseActivity.netState);
        endGameStart();
    }

    public void restoreAdData() {
        try {
            String str = EmuBaseActivity.dnsJson;
            if (str != null && !"".equals(str)) {
                JSONObject jSONObject = new JSONObject(EmuBaseActivity.dnsJson);
                if (jSONObject.has("gameUrl")) {
                    String string = jSONObject.getString("gameUrl");
                    if (!TextUtils.isEmpty(string)) {
                        this.ad_host_url = string;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        final String adRequestParam = getAdRequestParam();
        this.executorService.execute(new Runnable() { // from class: com.papa91.activity.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f78023b.lambda$restoreAdData$2(adRequestParam);
            }
        });
    }

    public void restoreVipData() {
        String string;
        this.url = "http://anv9.ctapi.5fun.com/simulator/simulator_member_fun_type";
        try {
            String str = EmuBaseActivity.dnsJson;
            if (str != null && !"".equals(str) && (string = new JSONObject(EmuBaseActivity.dnsJson).getString("appContent")) != null && !"".equals(string)) {
                this.url = string + "/simulator/simulator_member_fun_type";
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        final String requestParam = getRequestParam();
        this.executorService.execute(new Runnable() { // from class: com.papa91.activity.v
            @Override // java.lang.Runnable
            public final void run() {
                this.f78021b.lambda$restoreVipData$0(requestParam);
            }
        });
    }

    @Override // com.papa91.arc.view.IEmulator
    public void resumeGame() {
        EmuBaseActivity.setPause(0);
        EmuBaseActivity.gameIsPause = false;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void retryGetGoldFingerConfig() {
        EmuBaseActivity.httpPostMemberInfo();
    }

    @Override // com.papa91.arc.view.IEmulator
    public String romPath() {
        return EmuBaseActivity.romPath;
    }

    @Override // com.papa91.arc.view.IEmulator
    public void saveBindsFileData() {
        EmuBaseActivity.saveBindsFile();
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void saveGameConfig() {
    }

    public void saveSlotCheat(String str) throws Throwable {
        if (!BaseAppConfig.EMU_NAME.equals("gba") || getVip() <= 0) {
            return;
        }
        try {
            org.ppsspp.ppsspp.d dVar = new org.ppsspp.ppsspp.d();
            dVar.c(getCheatListData());
            dVar.d(getEditCheatListData());
            File file = new File(str);
            String name = file.getName();
            File file2 = new File(file.getParentFile(), "cheat");
            if (file2.exists() || file2.mkdirs()) {
                File file3 = new File(file2, name);
                FileUtils.write(file3.getAbsolutePath(), AESUtilV2.encrypt(new Gson().toJson(dVar), ""));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void saveSlotState(final String str) {
        EmuBaseActivity.jMenuSaveState(Integer.parseInt(str.substring(str.lastIndexOf(o0.f49827a) + 1)));
        this.handler.post(new Runnable() { // from class: com.papa91.activity.EmuMenuBaseActivity.8
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                EmuMenuBaseActivity.this.saveSlotCheat(str);
            }
        });
        this.handler.postDelayed(new Runnable() { // from class: com.papa91.activity.EmuMenuBaseActivity.9
            @Override // java.lang.Runnable
            public void run() {
                if (EmuMenuBaseActivity.this.isFinishing()) {
                    return;
                }
                try {
                    SettingSlotDialog settingSlotDialog = EmuMenuBaseActivity.this.slotDialog;
                    if (settingSlotDialog != null) {
                        settingSlotDialog.updateData();
                    }
                    ToastUtil.show(Cocos2dxActivity.getContext(), "存档保存成功");
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }, 300L);
    }

    @Override // com.papa91.arc.view.IEmulator
    public void screenMode(int i10) {
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setAutoSlotStatus(int i10) {
        this.sp.edit().putBoolean(EmuBaseActivity.GameID + "_AUTO_SLOT_STATUS", i10 == 1).commit();
        if (i10 == 0) {
            stopTimer();
            this.autoSlotTime = 0;
        } else {
            startTimer();
        }
        try {
            setAutoSave(i10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.papa91.activity.EmuBaseActivity
    public void setMenuDirection(int i10) {
        if (this.menuView != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("setMenuDirection ");
            sb2.append(i10);
            this.menuView.setDirection(i10);
        }
    }

    protected void setMenuViewListener() {
        MenuView menuView = this.menuView;
        if (menuView != null) {
            menuView.setMenuViewListener(this);
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setSPBindData(int i10, int i11, int i12) {
        EmuBaseActivity.setSPBind(i10, i11, i12);
    }

    @Override // com.papa91.arc.view.IEmulator
    public void setSPMenuVisible(boolean z10) {
        EmuBaseActivity.setSPVisible(z10);
        this.sp.edit().putBoolean(EmuBaseActivity.GameID + "_isSpVisible", z10).commit();
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void showAchievementDialog(int i10) {
        if (this.achievementDialog == null) {
            this.achievementDialog = new SettingAchievementDialog(this, i10, EmuBaseActivity.tourist);
        }
        this.achievementDialog.setOnEmulatorListener(this);
        this.achievementDialog.setTourist(EmuBaseActivity.tourist);
        if (this.achievementDialog.isShowing()) {
            return;
        }
        this.achievementDialog.show();
    }

    @Override // com.papa91.arc.view.IEmulator
    public void showAdVideo() {
    }

    public void showAdView() {
        if (isRankGame()) {
            return;
        }
        runOnUiThread(new Runnable() { // from class: com.papa91.activity.y
            @Override // java.lang.Runnable
            public final void run() {
                this.f78026b.lambda$showAdView$3();
            }
        });
    }

    @Override // com.papa91.activity.EmuBaseActivity
    public void showEndGameFailed(int i10, boolean z10, int i11) {
        MenuView menuView = this.menuView;
        if (menuView != null) {
            menuView.endGameFailed(i10, z10, i11);
        }
    }

    @Override // com.papa91.activity.EmuBaseActivity
    public void showEndGameStartView(boolean z10, int i10, boolean z11) {
        MenuView menuView = this.menuView;
        if (menuView != null) {
            menuView.showEndGameStart(z10, i10, z11);
            if (z10) {
                return;
            }
            senCommonEvent("showVSTaskList", "");
        }
    }

    @Override // com.papa91.arc.view.IEmulator
    public boolean showGGCodeButton() {
        return false;
    }

    @Override // com.papa91.activity.EmuBaseActivity, com.papa91.arc.view.MenuViewListener
    public void showMenuCheating() {
        StatIntents.getInstance(Cocos2dxActivity.getContext()).statOnclickFunction(EmuBaseActivity.GameID, EmuBaseActivity.UserID, 0);
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

    @Override // com.papa91.activity.EmuBaseActivity, com.papa91.arc.view.MenuViewListener
    public void showMenuGate() {
        StatIntents.getInstance(Cocos2dxActivity.getContext()).statOnclickFunction(EmuBaseActivity.GameID, EmuBaseActivity.UserID, 4);
        if (this.gateDialog == null) {
            this.gateDialog = new SettingGateDialog(this);
        }
        this.gateDialog.setOnEmulatorListener(this);
        if (this.gateDialog.isShowing()) {
            return;
        }
        this.gateDialog.show();
    }

    @Override // com.papa91.activity.EmuBaseActivity, com.papa91.arc.view.MenuViewListener
    public void showMenuOnekey() {
        StatIntents.getInstance(Cocos2dxActivity.getContext()).statOnclickFunction(EmuBaseActivity.GameID, EmuBaseActivity.UserID, 3);
        if (this.oneKeyDialog == null) {
            this.oneKeyDialog = new SettingOneKeyDialog(this);
        }
        this.oneKeyDialog.setOnEmulatorListener(this);
        if (this.oneKeyDialog.isShowing()) {
            return;
        }
        this.oneKeyDialog.show();
    }

    @Override // com.papa91.activity.EmuBaseActivity, com.papa91.arc.view.MenuViewListener
    public void showMenuPerformance() {
        if (this.performanceDialog == null) {
            GameSettings.init(this);
            this.performanceDialog = new SettingPerformanceDialog(this);
        }
        SettingPerformanceDialog settingPerformanceDialog = this.performanceDialog;
        String[] strArr = new String[2];
        strArr[0] = GameSettings.getGameSettingTotalLevel() + "";
        StringBuilder sb2 = new StringBuilder();
        sb2.append(lastWindow == 2 ? 1 : 0);
        sb2.append("");
        strArr[1] = sb2.toString();
        settingPerformanceDialog.show(strArr);
        this.performanceDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.papa91.activity.EmuMenuBaseActivity.6
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                MenuView menuView;
                if (EmuMenuBaseActivity.lastWindow != 2 || (menuView = EmuMenuBaseActivity.this.menuView) == null) {
                    return;
                }
                menuView.hide();
            }
        });
    }

    @Override // com.papa91.activity.EmuBaseActivity, com.papa91.arc.view.MenuViewListener
    public void showMenuSlot() {
        StatIntents.getInstance(Cocos2dxActivity.getContext()).statOnclickFunction(EmuBaseActivity.GameID, EmuBaseActivity.UserID, 5);
        if (this.slotDialog == null) {
            this.slotDialog = new SettingSlotDialog(this);
        }
        String str = EmuBaseActivity.dnsJson;
        if (str != null && !"".equals(str)) {
            try {
                String string = new JSONObject(EmuBaseActivity.dnsJson).getString("appContent");
                if (string != null && !"".equals(string)) {
                    this.slotDialog.setappContentUrl(string);
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
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

    @Override // com.papa91.activity.EmuBaseActivity
    public void showMenuView(boolean z10) {
        MenuView menuView = this.menuView;
        if (menuView != null) {
            if (z10) {
                menuView.setVisibility(0);
            } else {
                if (EmuBaseActivity.startMode == 16) {
                    return;
                }
                menuView.setVisibility(8);
            }
        }
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void showReceivePointDialog() {
    }

    @Override // com.papa91.activity.EmuBaseActivity
    public void showShare(final String str) {
        if (EmuBaseActivity.startMode == 0) {
            if (this.shareDialog == null) {
                this.shareDialog = new SettingShareDialog(this);
            }
            this.shareDialog.setOnEmulatorListener(this);
            this.shareDialog.setIamge(str);
            this.shareDialog.setShareListener(new SettingShareDialog.IShareListener() { // from class: com.papa91.activity.EmuMenuBaseActivity.12
                @Override // com.papa91.arc.dialog.SettingShareDialog.IShareListener
                public void onShare(int i10) {
                    Intent intent = new Intent(p5.a.f96208m0);
                    intent.putExtra("imagePath", str);
                    intent.putExtra("from", i10);
                    if (i10 == 0) {
                        StatIntents.getInstance(Cocos2dxActivity.getContext()).statShareScreenshot(EmuBaseActivity.GameID, EmuBaseActivity.UserID, 2);
                    } else if (i10 == 1) {
                        StatIntents.getInstance(Cocos2dxActivity.getContext()).statShareScreenshot(EmuBaseActivity.GameID, EmuBaseActivity.UserID, 3);
                    } else if (i10 == 2) {
                        StatIntents.getInstance(Cocos2dxActivity.getContext()).statShareScreenshot(EmuBaseActivity.GameID, EmuBaseActivity.UserID, 0);
                    } else if (i10 == 3) {
                        StatIntents.getInstance(Cocos2dxActivity.getContext()).statShareScreenshot(EmuBaseActivity.GameID, EmuBaseActivity.UserID, 1);
                    }
                    EmuBaseActivity.send(intent);
                    EmuMenuBaseActivity.this.shareDialog.dismiss();
                }
            });
            if (this.shareDialog.isShowing()) {
                return;
            }
            this.shareDialog.show();
        }
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void showTimeLimitedDialog1() {
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void showTimeLimitedDialog2() {
    }

    @Override // com.papa91.arc.view.IEmulator
    public void showVip(String... strArr) {
        if (this.vipDialog == null) {
            this.vipDialog = new SettingVipDialog(this);
        }
        this.vipDialog.setOnEmulatorListener(this);
        if (this.vipBeans.size() > 0) {
            this.vipDialog.updateVipDatas(this.vipBeans);
        } else {
            restoreVipData();
        }
        this.vipDialog.show(strArr);
    }

    @Override // com.papa91.activity.EmuBaseActivity
    public void showVipTip(int i10, int i11) {
        try {
            HashMap<Integer, Boolean> map = new HashMap<>();
            SharedPreferences sharedPreferences = this.sp;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(EmuBaseActivity.GameID);
            sb2.append("_");
            sb2.append(0);
            map.put(0, Boolean.valueOf(sharedPreferences.getBoolean(sb2.toString(), true) && getCheatListData() != null && getCheatListData().size() > 0));
            SharedPreferences sharedPreferences2 = this.sp;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(EmuBaseActivity.GameID);
            sb3.append("_");
            sb3.append(1);
            map.put(1, Boolean.valueOf(sharedPreferences2.getBoolean(sb3.toString(), true) && isShowOnekey()));
            SharedPreferences sharedPreferences3 = this.sp;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(EmuBaseActivity.GameID);
            sb4.append("_");
            sb4.append(2);
            map.put(2, Boolean.valueOf(sharedPreferences3.getBoolean(sb4.toString(), true) && isShowGate()));
            this.showTip = this.sp.getInt(EmuBaseActivity.GameID + "_show_tip", -1);
            if (this.vipTipDialog == null) {
                this.vipTipDialog = new SettingVipTipDialog(this);
            }
            this.vipTipDialog.setOnEmulatorListener(this);
            this.vipTipDialog.setNoTipListener(new SettingVipTipDialog.INoTipListener() { // from class: com.papa91.activity.EmuMenuBaseActivity.10
                @Override // com.papa91.arc.dialog.SettingVipTipDialog.INoTipListener
                public void onNoTipClick(int i12, int i13) {
                    EmuMenuBaseActivity.this.sp.edit().putBoolean(EmuBaseActivity.GameID + "_" + EmuMenuBaseActivity.this.showTip, false).commit();
                }
            });
            int i12 = this.showTip + 1;
            this.showTip = i12;
            if (i12 >= 3) {
                this.showTip = 0;
            }
            int nextTip = getNextTip(map, this.showTip);
            if (nextTip != -1) {
                this.showTip = nextTip;
                this.vipTipDialog.show(nextTip, i11);
                StatIntents.getInstance(Cocos2dxActivity.getContext()).statShowVippopup(EmuBaseActivity.GameID, EmuBaseActivity.UserID, this.showTip);
            } else {
                resumeGame();
            }
            this.sp.edit().putInt(EmuBaseActivity.GameID + "_show_tip", this.showTip).commit();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void startEndGame() {
        if (System.currentTimeMillis() - this.lastClickStartTime < 1000) {
            return;
        }
        this.lastClickStartTime = System.currentTimeMillis();
        endGameStart();
        senCommonEvent("gameInStartVS", "");
    }

    public void startTimer() {
        try {
            Timer timer = this.timer;
            if (timer != null) {
                timer.cancel();
            }
            this.timer = new Timer();
            TimerTask timerTask = this.timerTask;
            if (timerTask != null) {
                timerTask.cancel();
            }
            TimerTask timerTask2 = new TimerTask() { // from class: com.papa91.activity.EmuMenuBaseActivity.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    if (EmuMenuBaseActivity.this.isDestroyed) {
                        return;
                    }
                    EmuMenuBaseActivity.this.getAutoStateTimeCount();
                }
            };
            this.timerTask = timerTask2;
            Timer timer2 = this.timer;
            if (timer2 != null) {
                timer2.schedule(timerTask2, 0L, 1000L);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
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

    @Override // com.papa91.arc.view.IEmulator
    public String ugcPath() {
        return EmuBaseActivity.ugcPath;
    }

    @Override // com.papa91.activity.EmuBaseActivity
    public void updateEndGameResultSuccess(int i10, int i11, EndGameAllowBean endGameAllowBean) {
        MenuView menuView = this.menuView;
        if (menuView != null) {
            if (i10 == 0) {
                menuView.endGameSuccess(i11, endGameAllowBean);
                senCommonEvent("gameVSSuccess", "");
            } else {
                endGameAllow(true, i10);
                senCommonEvent("gameVSFail", "");
            }
        }
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void vibrate(boolean z10) {
    }

    @Override // com.papa91.arc.view.MenuViewListener
    public void voice(boolean z10) {
    }

    private void goVipShop(int i10) {
        SubBean sub;
        if (this.vipBeans.size() > 0) {
            if (i10 >= this.vipBeans.size() || (sub = this.vipBeans.get(i10).getSub()) == null) {
                return;
            }
            MarketUtil.intent(Cocos2dxActivity.getContext(), sub.getLink_type(), sub.getJump_type(), sub.getLink_type_val() + "&gameId=" + EmuBaseActivity.GameID, sub.getCrc_link_type_val(), sub.getTpl_type());
            return;
        }
        if (i10 == 0) {
            MarketUtil.intent(Cocos2dxActivity.getContext(), "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=2&gameName=一键技能&returnStatus=1&gameId=" + EmuBaseActivity.GameID, EmuBaseActivity.GameID, "");
            return;
        }
        if (i10 == 1) {
            MarketUtil.intent(Cocos2dxActivity.getContext(), "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=1&gameName=金手指&returnStatus=1&gameId=" + EmuBaseActivity.GameID, EmuBaseActivity.GameID, "");
            return;
        }
        if (i10 == 2) {
            MarketUtil.intent(Cocos2dxActivity.getContext(), "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=3&gameName=更多存档&returnStatus=1&gameId=" + EmuBaseActivity.GameID, EmuBaseActivity.GameID, "");
            return;
        }
        if (i10 == 3) {
            MarketUtil.intent(Cocos2dxActivity.getContext(), "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=5&gameName=快速选关&returnStatus=1&gameId=" + EmuBaseActivity.GameID, EmuBaseActivity.GameID, "");
            return;
        }
        if (i10 != 4) {
            return;
        }
        MarketUtil.intent(Cocos2dxActivity.getContext(), "4", "0", "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=4&gameName=对战畅玩&returnStatus=1&gameId=" + EmuBaseActivity.GameID, EmuBaseActivity.GameID, "");
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0115  */
    /* JADX WARN: Code duplicated, block: B:34:0x0134  */
    /* JADX WARN: Code duplicated, block: B:37:0x013b  */
    /* JADX WARN: Instruction removed from duplicated block: B:31:0x0115, please report this as an issue */
    public void showVipTip() {
        int i10;
        int nextTip;
        HashMap<Integer, Boolean> map = new HashMap<>();
        SharedPreferences sharedPreferences = this.sp;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(EmuBaseActivity.GameID);
        sb2.append("_");
        sb2.append(0);
        map.put(0, Boolean.valueOf(sharedPreferences.getBoolean(sb2.toString(), true) && getCheatListData() != null && getCheatListData().size() > 0));
        SharedPreferences sharedPreferences2 = this.sp;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(EmuBaseActivity.GameID);
        sb3.append("_");
        sb3.append(1);
        map.put(1, Boolean.valueOf(sharedPreferences2.getBoolean(sb3.toString(), true) && isShowOnekey()));
        SharedPreferences sharedPreferences3 = this.sp;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(EmuBaseActivity.GameID);
        sb4.append("_");
        sb4.append(2);
        map.put(2, Boolean.valueOf(sharedPreferences3.getBoolean(sb4.toString(), true) && isShowGate()));
        if (getVip() <= 0) {
            int emulatorStartAdCount = CContext.mShareLitener.getEmulatorStartAdCount();
            int i11 = this.sp.getInt(EmuBaseActivity.GameID + "_start_count", 1);
            if (emulatorStartAdCount > 0 && i11 >= emulatorStartAdCount) {
                if (this.sp.getBoolean(EmuBaseActivity.GameID + "_has_show_tip", false)) {
                    if (this.sp.getInt(EmuBaseActivity.GameID + "_start_time", new Date().getDay()) != new Date().getDay()) {
                        int i12 = this.sp.getInt(EmuBaseActivity.GameID + "_show_tip", -1) + 1;
                        i10 = i12 < 3 ? i12 : 0;
                        nextTip = getNextTip(map, i10);
                        if (nextTip != -1) {
                            showVipTip(nextTip);
                            i10 = nextTip;
                        }
                        this.sp.edit().putBoolean(EmuBaseActivity.GameID + "_has_show_tip", true).putInt(EmuBaseActivity.GameID + "_start_time", new Date().getDay()).putInt(EmuBaseActivity.GameID + "_show_tip", i10).commit();
                    }
                } else {
                    int i13 = this.sp.getInt(EmuBaseActivity.GameID + "_show_tip", -1) + 1;
                    if (i13 < 3) {
                    }
                    nextTip = getNextTip(map, i10);
                    if (nextTip != -1) {
                        showVipTip(nextTip);
                        i10 = nextTip;
                    }
                    this.sp.edit().putBoolean(EmuBaseActivity.GameID + "_has_show_tip", true).putInt(EmuBaseActivity.GameID + "_start_time", new Date().getDay()).putInt(EmuBaseActivity.GameID + "_show_tip", i10).commit();
                }
            }
            this.sp.edit().putInt(EmuBaseActivity.GameID + "_start_count", i11 + 1).commit();
        }
    }

    private void showVipTip(int i10) {
        try {
            if (this.sp.getBoolean(EmuBaseActivity.GameID + "_" + i10, true)) {
                StatIntents.getInstance(Cocos2dxActivity.getContext()).statShowVippopup(EmuBaseActivity.GameID, EmuBaseActivity.UserID, i10);
                if (this.vipTipDialog == null) {
                    this.vipTipDialog = new SettingVipTipDialog(this);
                }
                this.vipTipDialog.setOnEmulatorListener(this);
                this.vipTipDialog.setNoTipListener(new SettingVipTipDialog.INoTipListener() { // from class: com.papa91.activity.x
                    @Override // com.papa91.arc.dialog.SettingVipTipDialog.INoTipListener
                    public final void onNoTipClick(int i11, int i12) {
                        this.f78025a.lambda$showVipTip$1(i11, i12);
                    }
                });
                this.vipTipDialog.show(i10, 0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
