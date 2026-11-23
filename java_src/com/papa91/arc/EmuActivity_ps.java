package com.papa91.arc;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Vibrator;
import android.view.KeyEvent;
import com.czhj.sdk.common.Constants;
import com.join.mgps.Util.o0;
import com.join.mgps.joystick.map.KeyMap;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.activity.EmuMenuBaseActivity;
import com.papa91.arc.util.FileUtils;
import com.papa91.arc.util.StoreUtils;
import com.papa91.arcapp.AppConfig_ps;
import com.papa91.common.BaseAppConfig;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class EmuActivity_ps extends EmuMenuBaseActivity implements com.join.mgps.joystick.a.d {
    public static String AD_APP_KEY = "1105704756";
    public static final boolean SINGLE_MODE = false;
    private static String appId = "900017101";
    private static String appKey = "Ddff3esMlP1HtFr6";
    private static EmuActivity_ps emuActivity;
    private static Vibrator vibrtor;
    int firstKey = 0;
    private String jsonData;
    public static int[] keyVaule = {0, 0, 0, 0};
    public static String cpuFreq = getCurCpuFreq();
    public static String cpuNum = "" + Runtime.getRuntime().availableProcessors();

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
            EmuBaseActivity.gameOut(EmuBaseActivity.GameID, (int) (System.currentTimeMillis() - EmuBaseActivity.startTIme), EmuBaseActivity.UserID);
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

    static void setVibrate(int i10, int i11) {
        AppConfig_ps.logE("EmuActivity-->setVibrate : " + String.valueOf(i10) + "--" + String.valueOf(i11));
        com.join.mgps.joystick.a.g().z(i10, i11);
    }

    public static int unLockSp() {
        try {
            return EmuBaseActivity.unLockSP(EmuBaseActivity.GameID) ? 1 : 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void asyncFile(String str, String str2) {
        FileUtils.copyFolder(new File(str).getParent(), new File(str2).getParent(), new String[]{".sav", ".srm", ".mcr"});
    }

    public void createRom() {
        String str = "{\"romPath\":\"" + EmuBaseActivity.assetsPath + "/rom/sgz2bwddlfkb\",\"startMode\":0,\"userID\":\"2000\",\"gameID\":\"509474702\",\"version\":\"2\",\"roomID\":\"10000\",\"sopath\":\"" + (getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0) + "\",\"assetspath\":\"" + EmuBaseActivity.assetsPath + "\",\"classname\":\"com/papa91/arc/EmuActivity_ps\",\"serverIP\":\"121.201.0.114 \",\"serverPort\":\"5369\",\"porder\":0}";
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

    public String getCore() {
        try {
            File file = new File(BaseAppConfig.APP_PATH + "coreCrash.log");
            if (!file.exists()) {
                return "PS";
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[4];
            fileInputStream.read(bArr);
            fileInputStream.close();
            return bArr[0] == 48 ? "PS_INTERPRETER" : "PS";
        } catch (Exception e10) {
            e10.printStackTrace();
            return "PS";
        }
    }

    public void loadRom() {
        EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "version", "cpuNum", "cpuFreq", "gameMode"}, new String[]{EmuBaseActivity.screenMOde, BaseAppConfig.APP_PATH, AppConfig_ps.getLibpath(this), EmuBaseActivity.enableAudio, EmuBaseActivity.vibriorMode, EmuBaseActivity.version, cpuNum, cpuFreq, "PS"});
        createRom();
        BaseAppConfig.ROM_PATH = EmuBaseActivity.assetsPath + "/rom/sgz2bwddlfkb";
        String name = new File(BaseAppConfig.ROM_PATH).getName();
        BaseAppConfig.APK_PATH = getFilesDir().toString() + "/emus/" + BaseAppConfig.EMU_NAME + net.lingala.zip4j.util.e.F0 + name + net.lingala.zip4j.util.e.F0 + name;
        EmuBaseActivity.initEmu();
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
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
        sb3.append("/1/so_ps");
        EmuBaseActivity.assetsPath = file.getAbsolutePath() + "/1/assets_ps/";
        Intent intent = getIntent();
        if (intent != null && (stringExtra = intent.getStringExtra(BaseAppConfig.KEY_ROM_PATH)) != null && stringExtra != "") {
            EmuBaseActivity.romPath = stringExtra;
            AppConfig_ps.logE("json ........................... rompath : " + EmuBaseActivity.romPath);
        }
        AppConfig_ps.initialise(this);
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
        if (stringExtra2 != null) {
            this.jsonData = stringExtra2;
            AppConfig_ps.logE(stringExtra2);
            try {
                try {
                    com.papa91.common.MyJson myJson = new com.papa91.common.MyJson(stringExtra2);
                    EmuBaseActivity.appPackName = myJson.getString(BaseAppConfig.PA_PACKAGE_NAME, EmuBaseActivity.appPackName);
                    EmuBaseActivity.fid = myJson.getInt(BaseAppConfig.KEY_START_FID, 0);
                    EmuBaseActivity.startMode = myJson.getInt("startMode", 0);
                    EmuBaseActivity.romPath = myJson.getString(BaseAppConfig.KEY_ROM_PATH, "0");
                    EmuBaseActivity.UserID = myJson.getString(BaseAppConfig.KEY_START_USERID, "0");
                    BaseAppConfig.ROM_PATH = EmuBaseActivity.romPath;
                    String name = new File(BaseAppConfig.ROM_PATH).getName();
                    BaseAppConfig.APK_PATH = getFilesDir().toString() + "/emus/" + BaseAppConfig.EMU_NAME + net.lingala.zip4j.util.e.F0 + name + net.lingala.zip4j.util.e.F0 + name;
                    EmuBaseActivity.soPath = myJson.getString(BaseAppConfig.KEY_SO_PATH, "");
                    EmuBaseActivity.assetsPath = myJson.getString(BaseAppConfig.KEY_ASSETS_PATH, "");
                    String string = myJson.getString(BaseAppConfig.KEY_ACTIVITY_NAME, "");
                    EmuBaseActivity.className = string;
                    EmuBaseActivity.className = string.replace(o0.f49827a, net.lingala.zip4j.util.e.F0);
                    EmuBaseActivity.GameID = myJson.getString(BaseAppConfig.KEY_START_GAMEID, "0");
                    EmuBaseActivity.verCode = myJson.getString(BaseAppConfig.KEY_START_VERCODE, "");
                    EmuBaseActivity.tourist = myJson.getBoolean("tourist", Boolean.TRUE).booleanValue();
                    EmuBaseActivity.RoomID = myJson.getString(BaseAppConfig.KEY_START_ROOMID, "0");
                    EmuBaseActivity.GroupID = myJson.getString("groupId", "");
                    EmuBaseActivity.Version = myJson.getString("version", "0");
                    EmuBaseActivity.server_ip = myJson.getString(BaseAppConfig.KEY_SERVER_IP, "0");
                    EmuBaseActivity.server_port = myJson.getString(BaseAppConfig.KEY_SERVER_PORT, EmuBaseActivity.server_port);
                    BaseAppConfig.curPlayer = myJson.getInt(BaseAppConfig.KEY_START_PORDER, 0);
                    EmuBaseActivity.token = myJson.getString(Constants.TOKEN, "0");
                    this.m_SVIP = myJson.getInt(BaseAppConfig.KEY_SVIP_LEVEL, 0);
                    this.m_VIP = myJson.getInt(BaseAppConfig.KEY_VIP_LEVEL, 0);
                    JSONArray jSONArray = myJson.getJSONArray(BaseAppConfig.AD_JSON_KEY, null);
                    if (jSONArray != null) {
                        initBanner(jSONArray, AD_APP_KEY);
                    }
                    try {
                        String str2 = BaseAppConfig.APK_PATH;
                        myJson.put("device", EmuBaseActivity.getPhoneInfo());
                        myJson.put(BaseAppConfig.KEY_APK_PATH, BaseAppConfig.APK_PATH);
                        myJson.put(BaseAppConfig.KEY_CLASS_NAME, EmuBaseActivity.className);
                        myJson.put("device", EmuBaseActivity.getPhoneInfo());
                    } catch (JSONException e10) {
                        e10.printStackTrace();
                    }
                    stringExtra2 = myJson.toString();
                } catch (JSONException e11) {
                    e11.printStackTrace();
                }
                CrashReport.setUserId(EmuBaseActivity.GameID);
                asyncConfig();
                onLoadNativeLibraries();
                AppConfig_ps.logE("...................KEY_START_FID : " + String.valueOf(EmuBaseActivity.fid));
                intent.getIntExtra("startMode", 0);
                EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "version", "cpuNum", "cpuFreq", "gameMode"}, new String[]{EmuBaseActivity.screenMOde, BaseAppConfig.APP_PATH, AppConfig_ps.getLibpath(this), EmuBaseActivity.enableAudio, EmuBaseActivity.vibriorMode, EmuBaseActivity.version, cpuNum, cpuFreq, getCore()});
                EmuBaseActivity.setJson(dealSDPath(stringExtra2, BaseAppConfig.APP_PATH));
                EmuBaseActivity.initEmu();
            } catch (Throwable th) {
                CrashReport.setUserId(EmuBaseActivity.GameID);
                throw th;
            }
        } else {
            AppConfig_ps.logE("json not load");
            EmuBaseActivity.soPath = getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0;
            asyncConfig();
            onLoadNativeLibraries();
            loadRom();
        }
        super.onCreate(bundle);
        onAfterActivityCreated(bundle);
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onDestroy() {
        EmuBaseActivity.exitEmu();
        super.onDestroy();
        System.exit(0);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onGenericMotionEvent(int i10, float f10, float f11) {
    }

    @Override // com.papa91.activity.EmuBaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            AppConfig_ps.IsXperiaPlay();
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onKeyMap(int[] iArr, com.join.mgps.joystick.map.c cVar, KeyEvent keyEvent) {
        iArr[BaseAppConfig.curPlayer] = iArr[0];
        EmuBaseActivity.setJoyStickKey(iArr);
    }

    @Override // com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onPause() {
        com.join.mgps.joystick.a.g().F();
        super.onPause();
    }

    @Override // com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onResume() {
        com.join.mgps.joystick.a.g().w(this, KeyMap.EmuMap.PS);
        com.join.mgps.joystick.a.g().y(this);
        super.onResume();
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
    protected void showInvitePlayUi(String str, String str2, String str3, long j10) {
    }

    public void updateConfig() {
        SharedPreferences sharedPreferences = getSharedPreferences("core", 4);
        EmuBaseActivity.enableAudio = sharedPreferences.getString(BaseAppConfig.PREF_ENABLE_AUDIO, "1");
        EmuBaseActivity.screenMOde = sharedPreferences.getString(BaseAppConfig.PREF_SCREEN_MODE, "0");
        EmuBaseActivity.vibriorMode = sharedPreferences.getString("vibriorMode", "1");
        EmuBaseActivity.version = sharedPreferences.getString("version", "1.4.0");
    }
}
