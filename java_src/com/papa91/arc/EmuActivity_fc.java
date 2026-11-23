package com.papa91.arc;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.czhj.sdk.common.Constants;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.join.mgps.Util.o0;
import com.join.mgps.activity.GamePaiWeiActivty_;
import com.join.mgps.joystick.map.KeyMap;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.activity.EmuMenuBaseActivity;
import com.papa91.arc.bean.GateBean;
import com.papa91.arc.bean.PaiWeiDataBean;
import com.papa91.arc.util.StoreUtils;
import com.papa91.arc.util.XZip;
import com.papa91.arcapp.AppConfig_fc;
import com.papa91.common.BaseAppConfig;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class EmuActivity_fc extends EmuMenuBaseActivity implements com.join.mgps.joystick.a.d {
    public static String AD_APP_KEY = "1105704794";
    public static final boolean SINGLE_MODE = false;
    private static String appId = "900010112";
    private static String appKey = "m6eE8CcLThk7FMEg";
    public static String cpuFreq = getCurCpuFreq();
    public static String cpuNum = "" + Runtime.getRuntime().availableProcessors();
    private static EmuActivity_fc emuActivity;
    private static Vibrator vibrtor;
    int firstKey = 0;
    private String jsonData;

    public static void complainPlayer(String str, int i10, int i11) {
        EmuBaseActivity.complain(i10, i11);
    }

    public static void copyFolder(String str, String str2) {
        try {
            new File(str2).mkdirs();
            File file = new File(str);
            File file2 = new File(str2);
            if (file.isDirectory() && !file2.exists()) {
                file2.mkdirs();
            }
            String[] list = file.list();
            for (int i10 = 0; i10 < list.length; i10++) {
                String str3 = File.separator;
                File file3 = str.endsWith(str3) ? new File(str + list[i10]) : new File(str + str3 + list[i10]);
                if (file3.isFile()) {
                    FileInputStream fileInputStream = new FileInputStream(file3);
                    FileOutputStream fileOutputStream = new FileOutputStream(str2 + net.lingala.zip4j.util.e.F0 + file3.getName().toString());
                    byte[] bArr = new byte[5120];
                    while (true) {
                        int i11 = fileInputStream.read(bArr);
                        if (i11 == -1) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i11);
                        }
                    }
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    fileInputStream.close();
                }
                if (file3.isDirectory()) {
                    copyFolder(str + net.lingala.zip4j.util.e.F0 + list[i10], str2);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void exitActivty(int i10) {
        try {
            EmuBaseActivity.send(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse("file://" + StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()) + "papa91/img")));
        } catch (Exception unused) {
        }
        try {
            int iCurrentTimeMillis = (int) (System.currentTimeMillis() - EmuBaseActivity.startTIme);
            String externalStorageDirectory = StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext());
            boolean zGameOut = EmuBaseActivity.gameOut(EmuBaseActivity.GameID, iCurrentTimeMillis, EmuBaseActivity.UserID);
            EmuBaseActivity.sendGameExit();
            if (!zGameOut) {
                EmuBaseActivity.createDir(externalStorageDirectory + "/mgpapa/aidlservice/Game_out_" + EmuBaseActivity.GameID + "_" + iCurrentTimeMillis + "_" + EmuBaseActivity.UserID);
            }
            EmuBaseActivity.startTIme = System.currentTimeMillis();
            int i11 = EmuBaseActivity.startMode;
            if (i11 == 0) {
                if (!zGameOut) {
                    EmuBaseActivity.createDir(externalStorageDirectory + "/mgpapa/aidlservice/Game_start15_" + EmuBaseActivity.GameID + "_" + EmuBaseActivity.UserID);
                }
            } else if (i11 == 2 || i11 == 1) {
                if (!zGameOut) {
                    EmuBaseActivity.createDir(externalStorageDirectory + "/mgpapa/aidlservice/Game_startBattle15_" + EmuBaseActivity.GameID + "_" + EmuBaseActivity.UserID);
                }
            } else if (!zGameOut) {
                EmuBaseActivity.createDir(externalStorageDirectory + "/mgpapa/aidlservice/Game_start160_" + EmuBaseActivity.GameID + "_" + EmuBaseActivity.UserID + "_" + EmuBaseActivity.startMode);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        EmuBaseActivity.exitActivity(i10);
    }

    public static String getCurCpuFreq() {
        String str;
        try {
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            byte[] bArr = new byte[24];
            str = "";
            while (inputStream.read(bArr) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
        } catch (IOException e10) {
            e10.printStackTrace();
            str = "N/A";
        }
        return str.trim();
    }

    private String getGateZipPath(String str) {
        if (TextUtils.isEmpty(getModSubfix())) {
            return romPath().substring(0, romPath().lastIndexOf(net.lingala.zip4j.util.e.F0)) + "/combine_stage" + str;
        }
        return romPath().substring(0, romPath().lastIndexOf(net.lingala.zip4j.util.e.F0)) + "/combine_stage_" + getModSubfix() + str;
    }

    private static void openUrl() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("http://h5.papa91.com/sp_jiesuo.html"));
        emuActivity.startActivity(intent);
    }

    public static void playerVibrtor() {
        vibrtor.vibrate(50L);
    }

    public static void printLogCat(int i10, int i11, int i12, int i13) {
    }

    public static void saveConfig(String str, String str2) {
        SharedPreferences.Editor editorEdit = Cocos2dxActivity.getContext().getSharedPreferences("core", 4).edit();
        editorEdit.putString(str, String.valueOf(str2));
        editorEdit.commit();
    }

    static void setBlueTooth() {
        com.join.mgps.joystick.a.g().v();
    }

    public static boolean setImageToMEDIA(String str) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(new File(str)));
        EmuBaseActivity.send(intent);
        return true;
    }

    public static void startForumsActivity() {
        EmuBaseActivity.sendHandleEmptyMessage(0);
    }

    public static int unLockSp() {
        try {
            return EmuBaseActivity.unLockSP(EmuBaseActivity.GameID) ? 1 : 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public void createRom() {
        String str = "{\"romPath\":\"" + EmuBaseActivity.assetsPath + "rom/hdl1\",\"startMode\":0,\"userID\":\"2000\",\"gameID\":\"509474702\",\"version\":\"2\",\"roomID\":\"10000\",\"sopath\":\"" + (getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0) + "\",\"assetspath\":\"" + EmuBaseActivity.assetsPath + "\",\"classname\":\"com/papa91/arc/EmuActivity_fc\",\"serverIP\":\"121.201.0.114 \",\"serverPort\":\"5369\",\"porder\":0}";
        if (str != null) {
            EmuBaseActivity.setJson(str);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zDispatchKeyEvent;
        boolean zP;
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 24 || keyCode == 25) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (this.firstKey == keyCode && keyEvent.getAction() == 1) {
            if (keyCode == 4) {
                EmuBaseActivity.showDailog(0);
            }
            zDispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
            zP = !com.join.mgps.joystick.a.g().p(keyEvent);
        } else {
            this.firstKey = keyCode;
            zDispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
            zP = com.join.mgps.joystick.a.g().p(keyEvent);
        }
        return zP | zDispatchKeyEvent;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x003e A[Catch: IOException -> 0x0041, TRY_LEAVE, TryCatch #2 {IOException -> 0x0041, blocks: (B:23:0x0039, B:25:0x003e), top: B:39:0x0039 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x004a A[Catch: IOException -> 0x004d, TRY_LEAVE, TryCatch #3 {IOException -> 0x004d, blocks: (B:29:0x0045, B:31:0x004a), top: B:41:0x0045 }] */
    protected boolean extractAsset(File file) throws Throwable {
        InputStream inputStreamOpen;
        if (file.exists()) {
            return true;
        }
        FileOutputStream fileOutputStream = null;
        try {
            inputStreamOpen = getAssets().open(file.getName());
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i10 = inputStreamOpen.read(bArr);
                        if (i10 <= 0) {
                            try {
                                fileOutputStream2.close();
                                inputStreamOpen.close();
                                return true;
                            } catch (IOException unused) {
                                return true;
                            }
                        }
                        fileOutputStream2.write(bArr, 0, i10);
                    }
                } catch (Exception unused2) {
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                            if (inputStreamOpen != null) {
                                inputStreamOpen.close();
                            }
                        } catch (IOException unused3) {
                            return false;
                        }
                    } else if (inputStreamOpen != null) {
                        inputStreamOpen.close();
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                            if (inputStreamOpen != null) {
                                inputStreamOpen.close();
                            }
                        } catch (IOException unused4) {
                            throw th;
                        }
                    } else if (inputStreamOpen != null) {
                        inputStreamOpen.close();
                    }
                    throw th;
                }
            } catch (Exception unused5) {
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused6) {
            inputStreamOpen = null;
        } catch (Throwable th3) {
            th = th3;
            inputStreamOpen = null;
        }
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public String getCustomCheatTip(boolean z10) {
        return z10 ? "请输入6或8位数字、字母\n例:SXOKVVSE" : "金手指码分为两部分:\n第一部分:4位数字、字母\n第二部分:2或4位数字、字母\n两部分中间请用【中线】分割，例:030B-63";
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public List<GateBean> getGateData() {
        ArrayList arrayList = new ArrayList();
        try {
            File file = new File(getGateZipPath(""));
            if (!file.exists() || file.list().length <= 0) {
                XZip.upZipFile(new File(getGateZipPath(".zip")), getGateZipPath(""));
            }
            for (String str : file.list(new FilenameFilter() { // from class: com.papa91.arc.EmuActivity_fc.2
                @Override // java.io.FilenameFilter
                public boolean accept(File file2, String str2) {
                    return str2.endsWith(".jpg");
                }
            })) {
                GateBean gateBean = new GateBean();
                gateBean.setGateMaskPath(getGateZipPath("") + net.lingala.zip4j.util.e.F0 + str);
                gateBean.setGateName(str.substring(0, str.length() + (-4)));
                gateBean.setGateIndex(Integer.parseInt(gateBean.getGateName().substring(gateBean.getGateName().lastIndexOf(o0.f49827a) + 1)));
                arrayList.add(gateBean);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        Collections.sort(arrayList, new Comparator<GateBean>() { // from class: com.papa91.arc.EmuActivity_fc.3
            @Override // java.util.Comparator
            public int compare(GateBean gateBean2, GateBean gateBean3) {
                if (gateBean2.getGateIndex() > gateBean3.getGateIndex()) {
                    return 1;
                }
                return gateBean2.getGateIndex() < gateBean3.getGateIndex() ? -1 : 0;
            }
        });
        return arrayList;
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity
    public String getSimulatorType() {
        return "fc";
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity
    protected void handleAdResult(Context context, Intent intent) {
        super.handleAdResult(context, intent);
        int intExtra = intent.getIntExtra("adAction", 1003);
        if (intExtra == 1003) {
            pauseGame();
        } else if (intExtra == 1004) {
            resumeGame();
        }
    }

    @Override // com.papa91.activity.EmuBaseActivity
    public void hideMenuDialog() {
        super.hideMenuDialog();
        closeDialogWithOut(null);
        gameOnResume();
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.MenuViewListener
    public boolean isShowGate() {
        try {
            if (isEndGame() || isRankGame()) {
                return false;
            }
            return new File(getGateZipPath(".zip")).exists();
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public void loadAdVideo() {
        CContext.IVideoAdListener iVideoAdListener;
        if (getVip() > 0 || (iVideoAdListener = CContext.mVideoAdListener) == null) {
            return;
        }
        iVideoAdListener.loadAd(this, CContext.SCENE_FC);
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public void loadGateStage(int i10) {
        EmuBaseActivity.loadStageData(i10);
    }

    public void loadRom() {
        EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "gameMode"}, new String[]{EmuBaseActivity.screenMOde, BaseAppConfig.APP_PATH, AppConfig_fc.getLibpath(this), EmuBaseActivity.enableAudio, EmuBaseActivity.vibriorMode, CContext.SCENE_FC});
        createRom();
        BaseAppConfig.ROM_PATH = EmuBaseActivity.assetsPath + "rom/hdl1";
        String name = new File(BaseAppConfig.ROM_PATH).getName();
        BaseAppConfig.APK_PATH = getFilesDir().toString() + "/emus/" + BaseAppConfig.EMU_NAME + net.lingala.zip4j.util.e.F0 + name + net.lingala.zip4j.util.e.F0 + name;
        EmuBaseActivity.initEmu();
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void loginFinish() {
        try {
            EmuBaseActivity.onLoginFinish();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws Throwable {
        com.papa91.common.MyJson myJson;
        String string;
        String stringExtra;
        EmuBaseActivity.hasRewardBanana = true;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getDir("jniLibs", 0).getAbsolutePath());
        sb2.append(net.lingala.zip4j.util.e.F0);
        File file = new File(StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()));
        StringBuilder sb3 = new StringBuilder();
        sb3.append(file.getAbsolutePath());
        sb3.append("/1/so_fc");
        EmuBaseActivity.assetsPath = file.getAbsolutePath() + "/1/assets_fc/";
        updateConfig();
        emuActivity = this;
        CrashReport.initCrashReport(getApplicationContext(), appId, true);
        vibrtor = (Vibrator) getSystemService("vibrator");
        Intent intent = getIntent();
        if (intent != null && (stringExtra = intent.getStringExtra(BaseAppConfig.KEY_ROM_PATH)) != null && stringExtra != "") {
            EmuBaseActivity.romPath = stringExtra;
            AppConfig_fc.logE("json ........................... rompath : " + EmuBaseActivity.romPath);
        }
        AppConfig_fc.initialise(this);
        extractAsset(new File(BaseAppConfig.APP_PATH, "nesromdb.dat"));
        extractAsset(new File(BaseAppConfig.APP_PATH, "Disksys.rom"));
        String stringExtra2 = intent.getStringExtra("jsonData");
        if (bundle != null) {
            String str = EmuBaseActivity.romPath;
            if (str == null || "".equals(str)) {
                EmuBaseActivity.romPath = bundle.getString(BaseAppConfig.KEY_ROM_PATH);
            }
            if (stringExtra2 == null || "".equals(stringExtra2)) {
                stringExtra2 = bundle.getString("jsonData");
            }
        }
        if (stringExtra2 != null) {
            this.jsonData = stringExtra2;
            try {
                try {
                    myJson = new com.papa91.common.MyJson(stringExtra2);
                    CrashReport.setUserId(EmuBaseActivity.GameID);
                } catch (JSONException e10) {
                    e10.printStackTrace();
                    CrashReport.setUserId(EmuBaseActivity.GameID);
                    myJson = null;
                }
                if (myJson != null) {
                    EmuBaseActivity.appPackName = myJson.getString(BaseAppConfig.PA_PACKAGE_NAME, EmuBaseActivity.appPackName);
                    EmuBaseActivity.startMode = myJson.getInt("startMode", 0);
                    String string2 = myJson.getString(BaseAppConfig.KEY_ROM_PATH, "");
                    EmuBaseActivity.romPath = string2;
                    BaseAppConfig.ROM_PATH = string2;
                    String name = new File(BaseAppConfig.ROM_PATH).getName();
                    BaseAppConfig.APK_PATH = getFilesDir().toString() + "/emus/" + BaseAppConfig.EMU_NAME + net.lingala.zip4j.util.e.F0 + name + net.lingala.zip4j.util.e.F0 + name;
                    EmuBaseActivity.soPath = myJson.getString(BaseAppConfig.KEY_SO_PATH, "");
                    EmuBaseActivity.assetsPath = myJson.getString(BaseAppConfig.KEY_ASSETS_PATH, "");
                    String string3 = myJson.getString(BaseAppConfig.KEY_ACTIVITY_NAME, "");
                    EmuBaseActivity.className = string3;
                    EmuBaseActivity.className = string3.replace(o0.f49827a, net.lingala.zip4j.util.e.F0);
                    EmuBaseActivity.UserID = myJson.getString(BaseAppConfig.KEY_START_USERID, "");
                    EmuBaseActivity.GameID = myJson.getString(BaseAppConfig.KEY_START_GAMEID, "");
                    EmuBaseActivity.verCode = myJson.getString(BaseAppConfig.KEY_START_VERCODE, "");
                    EmuBaseActivity.fid = myJson.getInt(BaseAppConfig.KEY_START_FID, 0);
                    EmuBaseActivity.RoomID = myJson.getString(BaseAppConfig.KEY_START_ROOMID, "");
                    EmuBaseActivity.GroupID = myJson.getString("groupId", "");
                    EmuBaseActivity.Version = myJson.getString("version", "");
                    EmuBaseActivity.server_ip = myJson.getString(BaseAppConfig.KEY_SERVER_IP, "");
                    EmuBaseActivity.server_port = myJson.getString(BaseAppConfig.KEY_SERVER_PORT, "");
                    BaseAppConfig.curPlayer = myJson.getInt(BaseAppConfig.KEY_START_PORDER, 0);
                    EmuBaseActivity.token = myJson.getString(Constants.TOKEN, "0");
                    EmuBaseActivity.tourist = myJson.getBoolean("tourist", Boolean.TRUE).booleanValue();
                    EmuBaseActivity.spLock = myJson.getInt(BaseAppConfig.KEY_SP_LOCK, 0);
                    this.m_SVIP = myJson.getInt(BaseAppConfig.KEY_SVIP_LEVEL, 0);
                    this.m_VIP = myJson.getInt(BaseAppConfig.KEY_VIP_LEVEL, 0);
                    EmuBaseActivity.DEVICE_ID = myJson.getString("device_id", "");
                    EmuBaseActivity.netState = myJson.getString(BaseAppConfig.KEY_NET_STATE, "");
                    EmuBaseActivity.endGameId = myJson.getInt("endGameId", -1);
                    EmuBaseActivity.endGameTime = myJson.getInt(BaseAppConfig.KEY_END_GAME_TIME, 0);
                    EmuBaseActivity.endId = myJson.getString("endId", "");
                    EmuBaseActivity.subTitle = myJson.getString(BaseAppConfig.KEY_END_GAME_SUBTITLE, "");
                    EmuBaseActivity.endGameLevelRules = myJson.getString(BaseAppConfig.KEY_END_GAME_LEVEL_RULES, "");
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("endGameLevelRules: ");
                    sb4.append(EmuBaseActivity.endGameLevelRules);
                    JSONArray jSONArray = myJson.getJSONArray(BaseAppConfig.AD_JSON_KEY, null);
                    if (jSONArray != null) {
                        initBanner(jSONArray, AD_APP_KEY);
                    }
                    try {
                        myJson.put("device", EmuBaseActivity.getPhoneInfo());
                    } catch (JSONException e11) {
                        e11.printStackTrace();
                    }
                    this.miniRankTime = myJson.getInt("rankMiniTime", 0);
                    this.rankAutoUpload = myJson.getInt(GamePaiWeiActivty_.R1, 0);
                    try {
                        if (!isRankAutoUpload() && myJson.has("rolesJson") && (string = myJson.getString("rolesJson")) != null) {
                            this.rolesBeanList = (List) new Gson().fromJson(string, new TypeToken<List<PaiWeiDataBean.RolesBean>>() { // from class: com.papa91.arc.EmuActivity_fc.1
                            }.getType());
                        }
                    } catch (JSONException e12) {
                        e12.printStackTrace();
                    }
                }
                setMenuViewListener();
                asyncConfig();
                onLoadNativeLibraries();
                EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "version", "cpuNum", "cpuFreq", "gameMode"}, new String[]{EmuBaseActivity.screenMOde, BaseAppConfig.APP_PATH, AppConfig_fc.getLibpath(this), EmuBaseActivity.enableAudio, EmuBaseActivity.vibriorMode, EmuBaseActivity.version, cpuNum, cpuFreq, CContext.SCENE_FC});
                try {
                    myJson.put(BaseAppConfig.KEY_APK_PATH, BaseAppConfig.APK_PATH);
                    myJson.put(BaseAppConfig.KEY_CLASS_NAME, EmuBaseActivity.className);
                } catch (JSONException e13) {
                    e13.printStackTrace();
                }
                EmuBaseActivity.setJson(dealSDPath(myJson.toString(), BaseAppConfig.APP_PATH));
                EmuBaseActivity.initEmu();
            } catch (Throwable th) {
                CrashReport.setUserId(EmuBaseActivity.GameID);
                throw th;
            }
        } else {
            EmuBaseActivity.soPath = getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0;
            onLoadNativeLibraries();
            loadRom();
        }
        super.onCreate(bundle);
        com.join.mgps.joystick.a.g().w(this, KeyMap.EmuMap.FC);
        com.join.mgps.joystick.a.g().y(this);
        onAfterActivityCreated(bundle);
        CContext.IActivityLifeCycleListener iActivityLifeCycleListener = CContext.mLifeListener;
        if (iActivityLifeCycleListener != null) {
            iActivityLifeCycleListener.onCreated();
        }
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        EmuBaseActivity.exitEmu();
        System.exit(0);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onGenericMotionEvent(int i10, float f10, float f11) {
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void onHandleGameExit(Intent intent) {
        super.onHandleGameExit(intent);
        gameDestroy(this);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onKeyMap(int[] iArr, com.join.mgps.joystick.map.c cVar, KeyEvent keyEvent) {
        EmuBaseActivity.setJoyStickKey(iArr);
    }

    @Override // com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        gamePause(this);
    }

    @Override // com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        gameResume(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putString("jsonData", this.jsonData);
        bundle.putString(BaseAppConfig.KEY_ROM_PATH, EmuBaseActivity.romPath);
        super.onSaveInstanceState(bundle);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onVirtualKeyboard(boolean z10) {
        if (z10) {
            EmuBaseActivity.setPadVisible(0);
        } else {
            EmuBaseActivity.setPadVisible(1);
        }
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void setUserStateUi(int i10) {
        EmuBaseActivity.setUserState(i10);
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public void showAdVideo() {
        CContext.IVideoAdListener iVideoAdListener;
        if (getVip() > 0 || (iVideoAdListener = CContext.mVideoAdListener) == null) {
            return;
        }
        iVideoAdListener.showAd(this, EmuBaseActivity.GameID, CContext.SCENE_FC);
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public boolean showGGCodeButton() {
        return true;
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void showInvitePlayUi(String str, String str2, String str3, long j10) {
        EmuBaseActivity.showInvitePlay(str, str2, str3, j10);
        EmuBaseActivity.sendReceiveInvitation();
        hideMenuDialog();
    }

    public void updateConfig() {
        SharedPreferences sharedPreferences = getSharedPreferences("core", 4);
        EmuBaseActivity.enableAudio = sharedPreferences.getString(BaseAppConfig.PREF_ENABLE_AUDIO, "1");
        EmuBaseActivity.screenMOde = sharedPreferences.getString(BaseAppConfig.PREF_SCREEN_MODE, "1");
        EmuBaseActivity.vibriorMode = sharedPreferences.getString("vibriorMode", "1");
        EmuBaseActivity.version = sharedPreferences.getString("version", "1.4.0");
    }
}
