package com.papa91.arc;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import android.view.KeyEvent;
import com.czhj.sdk.common.Constants;
import com.join.mgps.Util.o0;
import com.join.mgps.joystick.map.KeyMap;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.activity.EmuMenuBaseActivity;
import com.papa91.arc.util.StoreUtils;
import com.papa91.arcapp.AppConfig_gba;
import com.papa91.common.BaseAppConfig;
import com.sdk.base.framework.utils.log.LogFile;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class EmuActivity_gba extends EmuMenuBaseActivity implements com.join.mgps.joystick.a.d {
    public static String AD_APP_KEY = "1105599035";
    public static final boolean SINGLE_MODE = false;
    private static String appId = "900009441";
    private static String appKey = "IjQhR76mHASzP31j";
    private static EmuActivity_gba emuActivity;
    public static String romName;
    private static Vibrator vibrtor;
    private int firstKey = 0;
    String[] gbaLibRom = {"ftsc3", "lkrexe2"};
    private String jsonData;
    static Handler handler = new Handler() { // from class: com.papa91.arc.EmuActivity_gba.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            EmuBaseActivity.startAPPActivity();
            super.handleMessage(message);
        }
    };
    public static int[] keyVaule = {0, 0, 0, 0};
    public static String screenMOde = "1";
    public static String enableAudio = "1";
    public static String vibriorMode = "1";
    public static String version = "1.5.0";
    public static String cpuFreq = getCurCpuFreq();
    public static String cpuNum = "" + Runtime.getRuntime().availableProcessors();
    public static String netState = "";
    public static String coreName = "VBA";

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
            EmuBaseActivity.uploadEfficiencyData();
            int iCurrentTimeMillis = (int) (System.currentTimeMillis() - EmuBaseActivity.startTIme);
            boolean zGameOut = EmuBaseActivity.gameOut(EmuBaseActivity.GameID, iCurrentTimeMillis, EmuBaseActivity.UserID);
            EmuBaseActivity.sendGameExit();
            String externalStorageDirectory = StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext());
            if (!zGameOut) {
                EmuBaseActivity.createDir(externalStorageDirectory + "/mgpapa/aidlservice/Game_out_" + EmuBaseActivity.GameID + "_" + iCurrentTimeMillis + "_" + EmuBaseActivity.UserID);
            }
            EmuBaseActivity.startTIme = System.currentTimeMillis();
            if (EmuBaseActivity.startMode == 0 && !zGameOut) {
                EmuBaseActivity.createDir(externalStorageDirectory + "/mgpapa/aidlservice/Game_start15_" + EmuBaseActivity.GameID + "_" + EmuBaseActivity.UserID);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        killGbaProProcess();
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

    public static String getRecordInfo(String str) {
        return EmuBaseActivity.getRecordInfo(str + (coreName.equals("VBA") ? "vba" : ""));
    }

    static void killGbaProProcess() {
        try {
            if (Cocos2dxActivity.getContext() == null) {
                return;
            }
            Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu_exit");
            intent.putExtra("exit", 1);
            intent.putExtra("pkgName", EmuBaseActivity.getHostPackageName());
            EmuBaseActivity.send(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
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
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("zcylog15 printLogCat a=");
        sb2.append(i10);
        sb2.append("b=");
        sb2.append(i11);
        sb2.append("c=");
        sb2.append(i12);
        sb2.append("d=");
        sb2.append(i13);
        String str2 = "";
        if (i10 == 2) {
            str = "SIGINT";
        } else if (i10 == 4) {
            str = "SIGILL";
        } else if (i10 == 8) {
            str = "SIGFPE";
        } else if (i10 == 11) {
            str = "SIGSEGV";
        } else if (i10 == 15) {
            str = "SIGTERM";
        } else if (i10 != 21) {
            str = i10 != 22 ? "" : "SIGABRT";
        } else {
            str = "SIGBREAK";
        }
        try {
            String packageName = Cocos2dxActivity.getContext().getPackageName();
            try {
                str2 = Cocos2dxActivity.getContext().getPackageManager().getPackageInfo(packageName, 0).versionName;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
            }
            EmuBaseActivity.emuLogCat(EmuBaseActivity.GameID, EmuBaseActivity.UserID, packageName, str2, str);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
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
        handler.sendMessage(new Message());
    }

    public static int unLockSp() {
        try {
            return EmuBaseActivity.unLockSP(EmuBaseActivity.GameID) ? 1 : 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public void createRom() {
        String str = "{\"romPath\":\"" + EmuBaseActivity.assetsPath + "/rom/kdygqhdmy\",\"startMode\":0,\"userID\":\"2000\",\"gameID\":\"509474702\",\"version\":\"2\",\"roomID\":\"10000\",\"sopath\":\"" + (getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0) + "\",\"assetspath\":\"" + EmuBaseActivity.assetsPath + "\",\"classname\":\"com/papa91/arc/EmuActivity_gba\",\"serverIP\":\"121.201.0.114 \",\"serverPort\":\"5369\",\"porder\":0}";
        if (str != null) {
            EmuBaseActivity.setJson(dealSDPath(str, BaseAppConfig.APP_PATH));
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

    String getCore(String str) {
        String str2 = netState;
        if (str2 != "") {
            return str2.contains("vba.") ? "VBA" : CContext.SCENE_GBA;
        }
        for (String str3 : this.gbaLibRom) {
            if (str.endsWith(File.separator + str3)) {
                return CContext.SCENE_GBA;
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return "VBA";
        }
        StringBuilder sb2 = new StringBuilder();
        String str4 = File.separator;
        sb2.append(str4);
        sb2.append("kdygmyhbs3");
        if (str.endsWith(sb2.toString())) {
            return "VBA";
        }
        if (str.substring(str.lastIndexOf(str4) + 1).startsWith("kdyg")) {
            return CContext.SCENE_GBA;
        }
        Date date = null;
        Date date2 = null;
        for (int i10 = 0; i10 <= 100; i10++) {
            File file = new File(str + o0.f49827a + i10);
            if (file.exists()) {
                Date date3 = new Date(file.lastModified());
                if (date2 == null || date3.after(date2)) {
                    date2 = date3;
                }
            }
        }
        for (int i11 = 0; i11 <= 100; i11++) {
            File file2 = new File(str + "vba." + i11);
            if (file2.exists()) {
                Date date4 = new Date(file2.lastModified());
                if (date == null || date4.after(date)) {
                    date = date4;
                }
            }
        }
        if (date2 == null || date == null) {
            return date2 == null ? "VBA" : CContext.SCENE_GBA;
        }
        return date2.after(date) ? CContext.SCENE_GBA : "VBA";
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public String getCustomCheatTip(boolean z10) {
        return z10 ? "仅支持gameshark_v3的金手指码\n第一部分:8位数字、字母\n第二部分:8位数字、字母\n两部分中间请用【空格】分割，例:22002758 0098967F" : "第一部分:8位数字、字母\n第二部分:2或4或8位数字、字母\n两部分中间请用【空格】分割，例:22002758 0098967F";
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public String getModSubfix() {
        return coreName.equals("VBA") ? "vba" : "";
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity
    public String getSimulatorType() {
        return "gba";
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

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public void loadAdVideo() {
        CContext.IVideoAdListener iVideoAdListener;
        if (getVip() > 0 || (iVideoAdListener = CContext.mVideoAdListener) == null) {
            return;
        }
        iVideoAdListener.loadAd(this, CContext.SCENE_GBA);
    }

    public void loadRom() {
        EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "version", "cpuNum", "cpuFreq", "gameMode"}, new String[]{screenMOde, BaseAppConfig.APP_PATH, AppConfig_gba.getLibpath(this), enableAudio, vibriorMode, version, cpuNum, cpuFreq, "VBA"});
        createRom();
        BaseAppConfig.ROM_PATH = EmuBaseActivity.assetsPath + "/rom/kdygqhdmy";
        String name = new File(BaseAppConfig.ROM_PATH).getName();
        BaseAppConfig.APK_PATH = getFilesDir().toString() + "/emus/" + BaseAppConfig.EMU_NAME + net.lingala.zip4j.util.e.F0 + name + net.lingala.zip4j.util.e.F0 + name;
        EmuBaseActivity.initEmu();
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws Throwable {
        com.papa91.common.MyJson myJson;
        JSONException e10;
        String stringExtra;
        emuActivity = this;
        CrashReport.initCrashReport(getApplicationContext(), appId, true);
        vibrtor = (Vibrator) getSystemService("vibrator");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getDir("jniLibs", 0).getAbsolutePath());
        sb2.append(net.lingala.zip4j.util.e.F0);
        File file = new File(StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()));
        StringBuilder sb3 = new StringBuilder();
        sb3.append(file.getAbsolutePath());
        sb3.append("/1/so_gba");
        EmuBaseActivity.assetsPath = file.getAbsolutePath() + "/1/assets_gba/";
        Intent intent = getIntent();
        if (intent != null && (stringExtra = intent.getStringExtra(BaseAppConfig.KEY_ROM_PATH)) != null && stringExtra != "") {
            EmuBaseActivity.romPath = stringExtra;
            AppConfig_gba.logE("json ........................... rompath : " + EmuBaseActivity.romPath);
        }
        AppConfig_gba.initialise(this);
        updateConfig();
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
        extractAsset(new File(BaseAppConfig.APP_PATH, "gba_bios.bin"));
        extractAsset(new File(BaseAppConfig.APP_PATH, "game_config.txt"));
        if (stringExtra2 != null) {
            this.jsonData = stringExtra2;
            AppConfig_gba.logE(stringExtra2);
            try {
                try {
                    myJson = new com.papa91.common.MyJson(stringExtra2);
                    try {
                        EmuBaseActivity.appPackName = myJson.getString(BaseAppConfig.PA_PACKAGE_NAME, EmuBaseActivity.appPackName);
                        EmuBaseActivity.startMode = myJson.getInt("startMode", 0);
                        String string = myJson.getString(BaseAppConfig.KEY_ROM_PATH, "");
                        EmuBaseActivity.romPath = string;
                        BaseAppConfig.ROM_PATH = string;
                        String name = new File(BaseAppConfig.ROM_PATH).getName();
                        BaseAppConfig.APK_PATH = getFilesDir().toString() + "/emus/" + BaseAppConfig.EMU_NAME + net.lingala.zip4j.util.e.F0 + name + net.lingala.zip4j.util.e.F0 + name;
                        EmuBaseActivity.soPath = myJson.getString(BaseAppConfig.KEY_SO_PATH, "");
                        EmuBaseActivity.assetsPath = myJson.getString(BaseAppConfig.KEY_ASSETS_PATH, "");
                        String string2 = myJson.getString(BaseAppConfig.KEY_ACTIVITY_NAME, "");
                        EmuBaseActivity.className = string2;
                        EmuBaseActivity.className = string2.replace(o0.f49827a, net.lingala.zip4j.util.e.F0);
                        EmuBaseActivity.UserID = myJson.getString(BaseAppConfig.KEY_START_USERID, "");
                        EmuBaseActivity.GameID = myJson.getString(BaseAppConfig.KEY_START_GAMEID, "");
                        EmuBaseActivity.verCode = myJson.getString(BaseAppConfig.KEY_START_VERCODE, "");
                        EmuBaseActivity.tourist = myJson.getBoolean("tourist", Boolean.TRUE).booleanValue();
                        EmuBaseActivity.fid = myJson.getInt(BaseAppConfig.KEY_START_FID, 0);
                        EmuBaseActivity.RoomID = myJson.getString(BaseAppConfig.KEY_START_ROOMID, "");
                        EmuBaseActivity.GroupID = myJson.getString("groupId", "");
                        EmuBaseActivity.Version = myJson.getString("version", "");
                        EmuBaseActivity.server_ip = myJson.getString(BaseAppConfig.KEY_SERVER_IP, "");
                        EmuBaseActivity.server_port = myJson.getString(BaseAppConfig.KEY_SERVER_PORT, "");
                        BaseAppConfig.curPlayer = myJson.getInt(BaseAppConfig.KEY_START_PORDER, 0);
                        EmuBaseActivity.token = myJson.getString(Constants.TOKEN, "0");
                        EmuBaseActivity.spLock = myJson.getInt(BaseAppConfig.KEY_SP_LOCK, 0);
                        this.m_SVIP = myJson.getInt(BaseAppConfig.KEY_SVIP_LEVEL, 0);
                        this.m_VIP = myJson.getInt(BaseAppConfig.KEY_VIP_LEVEL, 0);
                        netState = myJson.getString(BaseAppConfig.KEY_NET_STATE, "");
                        JSONArray jSONArray = myJson.getJSONArray(BaseAppConfig.AD_JSON_KEY, null);
                        if (jSONArray != null) {
                            initBanner(jSONArray, AD_APP_KEY);
                        }
                        try {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("AppConfig.KEY_APK_PATH ");
                            sb4.append(BaseAppConfig.APK_PATH);
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("AppConfig.KEY_CLASS_NAME ");
                            sb5.append(EmuBaseActivity.className);
                            myJson.put("device", EmuBaseActivity.getPhoneInfo());
                            myJson.put(BaseAppConfig.KEY_APK_PATH, BaseAppConfig.APK_PATH);
                            myJson.put(BaseAppConfig.KEY_CLASS_NAME, EmuBaseActivity.className);
                        } catch (JSONException e11) {
                            e11.printStackTrace();
                        }
                    } catch (JSONException e12) {
                        e10 = e12;
                        e10.printStackTrace();
                    }
                } catch (JSONException e13) {
                    myJson = null;
                    e10 = e13;
                }
                CrashReport.setUserId(EmuBaseActivity.GameID);
                AppConfig_gba.logE("...................KEY_START_FID : " + String.valueOf(EmuBaseActivity.fid));
                String string3 = myJson.toString();
                saveLog(EmuBaseActivity.romPath + LogFile.LOG_SUFFIX, string3);
                intent.getIntExtra("startMode", 0);
                coreName = getCore(EmuBaseActivity.romPath);
                String[] strArr = {BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "version", "cpuNum", "cpuFreq", "gameMode"};
                String[] strArr2 = {screenMOde, BaseAppConfig.APP_PATH, AppConfig_gba.getLibpath(this), enableAudio, vibriorMode, version, cpuNum, cpuFreq, coreName};
                asyncConfig();
                onLoadNativeLibraries();
                EmuBaseActivity.initLaunchConfig(strArr, strArr2);
                EmuBaseActivity.setJson(dealSDPath(string3, BaseAppConfig.APP_PATH));
                EmuBaseActivity.initEmu();
            } catch (Throwable th) {
                CrashReport.setUserId(EmuBaseActivity.GameID);
                throw th;
            }
        } else {
            AppConfig_gba.logE("json not load");
            EmuBaseActivity.soPath = getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0;
            asyncConfig();
            onLoadNativeLibraries();
            loadRom();
        }
        super.onCreate(bundle);
        com.join.mgps.joystick.a.g().w(this, KeyMap.EmuMap.GBA);
        com.join.mgps.joystick.a.g().y(this);
        onAfterActivityCreated(bundle);
        CContext.IActivityLifeCycleListener iActivityLifeCycleListener = CContext.mLifeListener;
        if (iActivityLifeCycleListener != null) {
            iActivityLifeCycleListener.onCreated();
        }
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.joystick.a.g().F();
        EmuBaseActivity.exitEmu();
        super.onDestroy();
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

    @Override // com.papa91.activity.EmuBaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            AppConfig_gba.IsXperiaPlay();
        }
        return super.onKeyDown(i10, keyEvent);
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

    public void saveLog(String str, String str2) {
        File file = new File(str);
        if (!file.exists()) {
            try {
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                file.createNewFile();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(str2.getBytes());
            fileOutputStream.close();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public void showAdVideo() {
        CContext.IVideoAdListener iVideoAdListener;
        if (getVip() > 0 || (iVideoAdListener = CContext.mVideoAdListener) == null) {
            return;
        }
        iVideoAdListener.showAd(this, EmuBaseActivity.GameID, CContext.SCENE_GBA);
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public boolean showGGCodeButton() {
        return true;
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void showInvitePlayUi(String str, String str2, String str3, long j10) {
    }

    public void updateConfig() {
        SharedPreferences sharedPreferences = getSharedPreferences("core", 4);
        enableAudio = sharedPreferences.getString(BaseAppConfig.PREF_ENABLE_AUDIO, "1");
        screenMOde = sharedPreferences.getString(BaseAppConfig.PREF_SCREEN_MODE, "1");
        vibriorMode = sharedPreferences.getString("vibriorMode", "1");
        version = sharedPreferences.getString("version", "1.4.0");
    }
}
