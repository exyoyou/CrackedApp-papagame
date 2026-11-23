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
import com.papa91.arc.util.StoreUtils;
import com.papa91.arcapp.AppConfig_wsc;
import com.papa91.common.BaseAppConfig;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class EmuActivity_wsc extends EmuMenuBaseActivity implements com.join.mgps.joystick.a.d {
    public static String APP_KEY = "Ke7EZVCc6j7mWdBi";
    public static String BUGLY_ID = "900029320";
    public static final boolean SINGLE_MODE = false;
    public static String cpuFreq = getCurCpuFreq(1);
    public static String cpuNum = "" + Runtime.getRuntime().availableProcessors();
    private static EmuActivity_wsc emuActivity;
    private static Vibrator vibrtor;
    int firstKey = 0;
    private String jsonData;

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

    public static void delayStatistics(String str) {
        try {
            AppConfig_wsc.logD(str);
            EmuBaseActivity.netBattleMatchEfficiency(EmuBaseActivity.GameID, str, EmuBaseActivity.UserID);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void exitActivty(int i10) {
        if (EmuBaseActivity.startMode == 7) {
            Intent intent = new Intent("papa_broadcast_continue_match_fight");
            intent.putExtra("game_end_state", i10);
            EmuBaseActivity.send(intent);
        }
        try {
            EmuBaseActivity.uploadEfficiencyData();
            EmuBaseActivity.gameOut(EmuBaseActivity.GameID, (int) (System.currentTimeMillis() - EmuBaseActivity.startTIme), EmuBaseActivity.UserID);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        EmuBaseActivity.exitActivity(i10);
    }

    public static String getCurCpuFreq(int i10) {
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

    public static void startForumsActivity() {
        EmuBaseActivity.sendHandleEmptyMessage(0);
    }

    public void createRom() {
        String str = "{\"romPath\":\"" + EmuBaseActivity.assetsPath + "/rom/elsfk\",\"startMode\":0,\"userID\":\"2000\",\"gameID\":\"509474702\",\"version\":\"2\",\"roomID\":\"10000\",\"sopath\":\"" + (getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0) + "\",\"assetspath\":\"" + EmuBaseActivity.assetsPath + "\",\"classname\":\"com/papa91/arc/EmuActivity_wsc\",\"serverIP\":\"121.201.0.114 \",\"serverPort\":\"5369\",\"porder\":0}";
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

    public void loadRom() {
        EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "gameMode"}, new String[]{EmuBaseActivity.screenMOde, BaseAppConfig.APP_PATH, AppConfig_wsc.getLibpath(this), EmuBaseActivity.enableAudio, EmuBaseActivity.vibriorMode, "WSC"});
        createRom();
        BaseAppConfig.ROM_PATH = EmuBaseActivity.assetsPath + "/rom/elsfk";
        String name = new File(BaseAppConfig.ROM_PATH).getName();
        BaseAppConfig.APK_PATH = getFilesDir().toString() + "/emus/" + BaseAppConfig.EMU_NAME + net.lingala.zip4j.util.e.F0 + name + net.lingala.zip4j.util.e.F0 + name;
        EmuBaseActivity.initEmu();
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        com.papa91.common.MyJson myJson;
        String stringExtra;
        setVolumeControlStream(3);
        emuActivity = this;
        CrashReport.initCrashReport(getApplicationContext(), BUGLY_ID, true);
        vibrtor = (Vibrator) getSystemService("vibrator");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getDir("jniLibs", 0).getAbsolutePath());
        sb2.append(net.lingala.zip4j.util.e.F0);
        File file = new File(StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()));
        StringBuilder sb3 = new StringBuilder();
        sb3.append(file.getAbsolutePath());
        sb3.append("/1/so_wsc");
        EmuBaseActivity.assetsPath = file.getAbsolutePath() + "/1/assets_wsc/";
        Intent intent = getIntent();
        if (intent != null && (stringExtra = intent.getStringExtra(BaseAppConfig.KEY_ROM_PATH)) != null && stringExtra != "") {
            EmuBaseActivity.romPath = stringExtra;
            AppConfig_wsc.logD("json ........................... rompath : " + EmuBaseActivity.romPath);
        }
        AppConfig_wsc.initialise(this);
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
            AppConfig_wsc.logD(stringExtra2);
            this.jsonData = stringExtra2;
            AppConfig_wsc.logE("...................json  : " + stringExtra2);
            try {
                myJson = new com.papa91.common.MyJson(stringExtra2);
            } catch (JSONException e10) {
                e10.printStackTrace();
                myJson = null;
            }
            com.papa91.common.MyJson myJson2 = myJson;
            if (myJson2 != null) {
                EmuBaseActivity.appPackName = myJson2.getString(BaseAppConfig.PA_PACKAGE_NAME, EmuBaseActivity.appPackName);
                EmuBaseActivity.startMode = myJson2.getInt("startMode", 0);
                EmuBaseActivity.romPath = myJson2.getString(BaseAppConfig.KEY_ROM_PATH, "");
                EmuBaseActivity.UserID = myJson2.getString(BaseAppConfig.KEY_START_USERID, "");
                BaseAppConfig.ROM_PATH = EmuBaseActivity.romPath;
                String name = new File(BaseAppConfig.ROM_PATH).getName();
                BaseAppConfig.APK_PATH = getFilesDir().toString() + "/emus/" + BaseAppConfig.EMU_NAME + net.lingala.zip4j.util.e.F0 + name + net.lingala.zip4j.util.e.F0 + name;
                EmuBaseActivity.soPath = myJson2.getString(BaseAppConfig.KEY_SO_PATH, "");
                EmuBaseActivity.assetsPath = myJson2.getString(BaseAppConfig.KEY_ASSETS_PATH, "");
                String string = myJson2.getString(BaseAppConfig.KEY_ACTIVITY_NAME, "");
                EmuBaseActivity.className = string;
                EmuBaseActivity.className = string.replace(o0.f49827a, net.lingala.zip4j.util.e.F0);
                EmuBaseActivity.GameID = myJson2.getString(BaseAppConfig.KEY_START_GAMEID, "");
                EmuBaseActivity.verCode = myJson2.getString(BaseAppConfig.KEY_START_VERCODE, "");
                EmuBaseActivity.tourist = myJson2.getBoolean("tourist", Boolean.TRUE).booleanValue();
                EmuBaseActivity.fid = myJson2.getInt(BaseAppConfig.KEY_START_FID, 0);
                EmuBaseActivity.RoomID = myJson2.getString(BaseAppConfig.KEY_START_ROOMID, "");
                EmuBaseActivity.GroupID = myJson2.getString("groupId", "");
                EmuBaseActivity.Version = myJson2.getString("version", "");
                EmuBaseActivity.server_ip = myJson2.getString(BaseAppConfig.KEY_SERVER_IP, "");
                EmuBaseActivity.server_port = myJson2.getString(BaseAppConfig.KEY_SERVER_PORT, "");
                BaseAppConfig.curPlayer = myJson2.getInt(BaseAppConfig.KEY_START_PORDER, 0);
                EmuBaseActivity.token = myJson2.getString(Constants.TOKEN, "0");
                EmuBaseActivity.spLock = myJson2.getInt(BaseAppConfig.KEY_SP_LOCK, 0);
                this.m_SVIP = myJson2.getInt(BaseAppConfig.KEY_SVIP_LEVEL, 0);
                this.m_VIP = myJson2.getInt(BaseAppConfig.KEY_VIP_LEVEL, 0);
            }
            CrashReport.setUserId(EmuBaseActivity.GameID);
            try {
                String str2 = BaseAppConfig.APK_PATH;
                myJson2.put("device", EmuBaseActivity.getPhoneInfo());
                myJson2.put(BaseAppConfig.KEY_APK_PATH, BaseAppConfig.APK_PATH);
                myJson2.put(BaseAppConfig.KEY_CLASS_NAME, EmuBaseActivity.className);
                myJson2.put("device", EmuBaseActivity.getPhoneInfo());
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
            String string2 = myJson2.toString();
            AppConfig_wsc.logE("...................KEY_START_FID : " + String.valueOf(EmuBaseActivity.fid));
            asyncConfig();
            onLoadNativeLibraries();
            intent.getIntExtra("startMode", 0);
            EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "version", "cpuNum", "cpuFreq", BaseAppConfig.KEY_SP_LOCK, "gameMode"}, new String[]{EmuBaseActivity.screenMOde, BaseAppConfig.APP_PATH, AppConfig_wsc.getLibpath(this), EmuBaseActivity.enableAudio, EmuBaseActivity.vibriorMode, EmuBaseActivity.version, cpuNum, cpuFreq, EmuBaseActivity.spLock + "", "WSC"});
            EmuBaseActivity.setJson(dealSDPath(string2, BaseAppConfig.APP_PATH));
            EmuBaseActivity.initEmu();
        } else {
            AppConfig_wsc.logE("json not load");
            EmuBaseActivity.soPath = getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0;
            asyncConfig();
            onLoadNativeLibraries();
            loadRom();
        }
        super.onCreate(bundle);
        com.join.mgps.joystick.a.g().w(this, KeyMap.EmuMap.WSC);
        com.join.mgps.joystick.a.g().y(this);
        onAfterActivityCreated(bundle);
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.joystick.a.g().F();
        super.onDestroy();
        EmuBaseActivity.exitEmu();
        System.exit(0);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onGenericMotionEvent(int i10, float f10, float f11) {
    }

    @Override // com.join.mgps.joystick.a.d
    public void onKeyMap(int[] iArr, com.join.mgps.joystick.map.c cVar, KeyEvent keyEvent) {
        iArr[BaseAppConfig.curPlayer] = iArr[0];
        EmuBaseActivity.setJoyStickKey(iArr);
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
        EmuBaseActivity.screenMOde = sharedPreferences.getString(BaseAppConfig.PREF_SCREEN_MODE, "1");
        EmuBaseActivity.vibriorMode = sharedPreferences.getString("vibriorMode", "1");
        EmuBaseActivity.version = sharedPreferences.getString("version", "1.4.0");
    }
}
