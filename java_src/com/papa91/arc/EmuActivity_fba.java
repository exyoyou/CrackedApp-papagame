package com.papa91.arc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.Toast;
import androidx.core.view.MotionEventCompat;
import com.czhj.sdk.common.Constants;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.join.mgps.Util.o0;
import com.join.mgps.activity.GameMainActivity4;
import com.join.mgps.activity.GamePaiWeiActivty_;
import com.join.mgps.joystick.map.KeyMap;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.activity.EmuMenuBaseActivity;
import com.papa91.arc.bean.GateBean;
import com.papa91.arc.bean.PaiWeiDataBean;
import com.papa91.arc.bean.TypeBean;
import com.papa91.arc.util.FileUtils;
import com.papa91.arc.util.StoreUtils;
import com.papa91.arc.util.XZip;
import com.papa91.arcapp.AppConfig_fba;
import com.papa91.common.BaseAppConfig;
import com.tencent.bugly.crashreport.CrashReport;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.json.JSONArray;
import org.json.JSONException;
import org.ppsspp.ppsspp.R;

/* JADX INFO: loaded from: classes2.dex */
public class EmuActivity_fba extends EmuMenuBaseActivity implements com.join.mgps.joystick.a.d, Runnable {
    public static String AD_APP_KEY = "1105599035";
    public static String APP_KEY = "CvjvU1occ4UCTVEe";
    public static String BUGLY_ID = "900009495";
    private static final boolean IS_USER_V1 = false;
    public static final boolean SINGLE_MODE = false;
    private static EmuActivity_fba emuActivity;
    private static Vibrator vibrtor;
    AudioManager audioManager;
    private String core;
    int firstKey = 0;
    AudioFocusRequest focusRequest;
    private String jsonData;
    AudioAttributes playbackAttributes;
    private int roomSilent;
    ShareResultReceiver shareResultReceiver;
    private Socket socket;
    public static String cpuFreq = getCurCpuFreq(1);
    public static String cpuNum = "" + Runtime.getRuntime().availableProcessors();
    private static String recordfn = "";
    public static String coreName = "FBA_V2";

    public class ShareResultReceiver extends BroadcastReceiver {
        public ShareResultReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            intent.getIntExtra("shareResult", 1);
        }
    }

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

    public static void delayStatistics(String str) {
        try {
            AppConfig_fba.logD(str);
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
            int iCurrentTimeMillis = (int) (System.currentTimeMillis() - EmuBaseActivity.startTIme);
            String externalStorageDirectory = StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext());
            boolean zGameOut = EmuBaseActivity.gameOut(EmuBaseActivity.GameID, iCurrentTimeMillis, EmuBaseActivity.UserID);
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
        if (coreName.equals("FBA_V2")) {
            StringBuilder sb2 = new StringBuilder();
            String str = EmuBaseActivity.romPath;
            sb2.append(str.substring(0, str.lastIndexOf(net.lingala.zip4j.util.e.F0)));
            sb2.append("/combine_stage_v2");
            FileUtils.deleteDirs(sb2.toString());
        }
        if (coreName.equals("FBA_V3")) {
            StringBuilder sb3 = new StringBuilder();
            String str2 = EmuBaseActivity.romPath;
            sb3.append(str2.substring(0, str2.lastIndexOf(net.lingala.zip4j.util.e.F0)));
            sb3.append("/combine_stage_v3");
            FileUtils.deleteDirs(sb3.toString());
        } else {
            StringBuilder sb4 = new StringBuilder();
            String str3 = EmuBaseActivity.romPath;
            sb4.append(str3.substring(0, str3.lastIndexOf(net.lingala.zip4j.util.e.F0)));
            sb4.append("/combine_stage");
            FileUtils.deleteDirs(sb4.toString());
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

    private String getGateZipPath(String str) {
        if (TextUtils.isEmpty(getModSubfix())) {
            return romPath().substring(0, romPath().lastIndexOf(net.lingala.zip4j.util.e.F0)) + "/combine_stage" + str;
        }
        return romPath().substring(0, romPath().lastIndexOf(net.lingala.zip4j.util.e.F0)) + "/combine_stage" + getModSubfix() + str;
    }

    public static String getRecordInfo(String str) {
        String str2;
        if (coreName.equals("FBA_V2")) {
            str2 = "_v2";
        } else {
            str2 = coreName.equals("FBA_V3") ? "_v3" : "";
        }
        return EmuBaseActivity.getRecordInfo(str + str2);
    }

    private static void openUrl() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("http://h5.5fun.com/sp_jiesuo.html"));
        emuActivity.startActivity(intent);
    }

    public static void playerVibrtor() {
        Vibrator vibrator = vibrtor;
        if (vibrator != null) {
            vibrator.vibrate(50L);
        }
    }

    private void requestAudio() {
        try {
            this.audioManager = (AudioManager) getSystemService("audio");
            int i10 = Build.VERSION.SDK_INT;
            AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.papa91.arc.EmuActivity_fba.2
                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public void onAudioFocusChange(int i11) {
                }
            };
            this.playbackAttributes = new AudioAttributes.Builder().setUsage(14).setContentType(2).build();
            if (i10 >= 26) {
                b.a();
                AudioFocusRequest audioFocusRequestBuild = r0.h.a(1).setAudioAttributes(this.playbackAttributes).setAcceptsDelayedFocusGain(true).setOnAudioFocusChangeListener(onAudioFocusChangeListener, this.handler).build();
                this.focusRequest = audioFocusRequestBuild;
                AudioManager audioManager = this.audioManager;
                if (audioManager != null) {
                    audioManager.requestAudioFocus(audioFocusRequestBuild);
                }
            } else {
                AudioManager audioManager2 = this.audioManager;
                if (audioManager2 != null) {
                    audioManager2.requestAudioFocus(onAudioFocusChangeListener, 3, 1);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void saveConfig(String str, String str2) {
        SharedPreferences.Editor editorEdit = Cocos2dxActivity.getContext().getSharedPreferences("core", 4).edit();
        editorEdit.putString(str, String.valueOf(str2));
        editorEdit.commit();
    }

    static void setBlueTooth() {
        try {
            if (emuActivity.isSingleGame) {
                return;
            }
            com.join.mgps.joystick.a.g().v();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static boolean setImageToMEDIA(String str) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(new File(str)));
        EmuBaseActivity.send(intent);
        return true;
    }

    public static void startForumsActivity() {
        EmuBaseActivity.sendHandleMessage(new Message());
    }

    public static void startShare(String str) {
        Intent intent = new Intent("papa_broadcast_share_message");
        intent.putExtra("shareJson", str);
        EmuBaseActivity.send(intent);
    }

    public void createRom() {
        String str = "{\"romPath\":\"" + EmuBaseActivity.assetsPath + "/rom/kof97\",\"startMode\":0,\"userID\":\"2000\",\"gameID\":\"509474702\",\"version\":\"2\",\"roomID\":\"10000\",\"sopath\":\"" + (getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0) + "\",\"assetspath\":\"" + EmuBaseActivity.assetsPath + "\",\"classname\":\"com/papa91/arc/EmuActivity_fba\",\"serverIP\":\"121.201.0.114 \",\"serverPort\":\"5369\",\"porder\":0}";
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

    String getCore(String str) {
        if (!TextUtils.isEmpty(this.core) && this.core.equals("3")) {
            return "FBA_V3";
        }
        String str2 = EmuBaseActivity.netState;
        if (str2 != "") {
            return str2.contains("_v2") ? "FBA_V2" : CContext.SCENE_FBA;
        }
        int i10 = EmuBaseActivity.startMode;
        if (i10 == 15) {
            return recordfn.indexOf("_v2") == -1 ? CContext.SCENE_FBA : "FBA_V2";
        }
        if (i10 != 0 || this.roomSilent != 0) {
            return 14 == i10 ? "FBA_V2" : CContext.SCENE_FBA;
        }
        String strSubstring = str.substring(str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1, str.length());
        EmuBaseActivity.romName = strSubstring;
        if (AppConfig_fba.isPgmGame(strSubstring)) {
            String str3 = BaseAppConfig.APP_PATH + EmuBaseActivity.romName + net.lingala.zip4j.util.e.F0 + EmuBaseActivity.romName;
            for (int i11 = 0; i11 <= 100; i11++) {
                if (new File(str3 + o0.f49827a + i11).exists()) {
                    return CContext.SCENE_FBA;
                }
            }
        }
        return "FBA_V2";
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public List<GateBean> getGateData() {
        ArrayList arrayList = new ArrayList();
        try {
            if (isShowGate()) {
                File file = new File(getGateZipPath(""));
                if (!file.exists() || file.list().length <= 0) {
                    XZip.upZipFile(new File(getGateZipPath(".zip")), getGateZipPath(""));
                }
                for (String str : file.list(new FilenameFilter() { // from class: com.papa91.arc.EmuActivity_fba.3
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
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        Collections.sort(arrayList, new Comparator<GateBean>() { // from class: com.papa91.arc.EmuActivity_fba.4
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

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public List<TypeBean> getMenuTypes(int i10) {
        ArrayList arrayList = new ArrayList();
        if (i10 == 0) {
            int i11 = R.drawable.ic_cheat_vip;
            arrayList.add(new TypeBean(0, "悟饭定制", true, i11, i11));
        } else if (i10 == 1) {
            arrayList.add(new TypeBean(0, "我的存档", true, -1, -1));
            arrayList.add(new TypeBean(1, "自动存档", false, -1, -1));
            arrayList.add(new TypeBean(2, GameMainActivity4.TITLE_SHOP, false, R.drawable.ic_slot_store_h, R.drawable.ic_slot_store_n));
        }
        return arrayList;
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public String getModSubfix() {
        if (coreName.equals("FBA_V2")) {
            return "_v2";
        }
        return coreName.equals("FBA_V3") ? "_v3" : "";
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity
    public String getSimulatorType() {
        return "fba";
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity
    protected void handleAdResult(Context context, Intent intent) {
        super.handleAdResult(context, intent);
        if (this.isSingleGame) {
            return;
        }
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
        if (isEndGame() || isRankGame()) {
            return false;
        }
        try {
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
        iVideoAdListener.loadAd(this, CContext.SCENE_FBA);
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.arc.view.IEmulator
    public void loadGateStage(int i10) {
        EmuBaseActivity.loadStageData(i10);
    }

    public void loadRom() {
        EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "gameMode"}, new String[]{EmuBaseActivity.screenMOde, BaseAppConfig.APP_PATH, AppConfig_fba.getLibpath(this), EmuBaseActivity.enableAudio, EmuBaseActivity.vibriorMode, CContext.SCENE_FBA});
        createRom();
        BaseAppConfig.ROM_PATH = EmuBaseActivity.assetsPath + "/rom/kof97";
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
    public void onCreate(Bundle bundle) {
        MyJson myJson;
        EmuBaseActivity.assetsPath = StoreUtils.getExternalStorageDirectory(Cocos2dxActivity.getContext()) + "/1/assets/";
        emuActivity = this;
        CrashReport.initCrashReport(getApplicationContext(), BUGLY_ID, false);
        vibrtor = (Vibrator) getSystemService("vibrator");
        Intent intent = getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra(BaseAppConfig.KEY_ROM_PATH);
            if (!TextUtils.isEmpty(stringExtra)) {
                EmuBaseActivity.romPath = stringExtra;
                AppConfig_fba.logD("json ........................... rompath : " + EmuBaseActivity.romPath);
            }
        }
        AppConfig_fba.initialise(this);
        updateConfig();
        String stringExtra2 = intent.getStringExtra("jsonData");
        if (bundle != null) {
            String str = EmuBaseActivity.romPath;
            if (str == null || str.isEmpty()) {
                EmuBaseActivity.romPath = bundle.getString(BaseAppConfig.KEY_ROM_PATH);
            }
            if (stringExtra2 == null || stringExtra2.isEmpty()) {
                stringExtra2 = bundle.getString("jsonData");
            }
        }
        if (stringExtra2 != null) {
            this.jsonData = stringExtra2;
            try {
                myJson = new MyJson(stringExtra2);
            } catch (JSONException e10) {
                e10.printStackTrace();
                myJson = null;
            }
            if (myJson != null) {
                EmuBaseActivity.appPackName = myJson.getString(BaseAppConfig.PA_PACKAGE_NAME, EmuBaseActivity.appPackName);
                EmuBaseActivity.startMode = myJson.getInt("startMode", 0);
                String string = myJson.getString(BaseAppConfig.KEY_ROM_PATH, "");
                EmuBaseActivity.romPath = string;
                BaseAppConfig.ROM_PATH = string;
                String name = new File(EmuBaseActivity.romPath).getName();
                BaseAppConfig.APK_PATH = getFilesDir().toString() + "/emus/" + BaseAppConfig.EMU_NAME + net.lingala.zip4j.util.e.F0 + name + net.lingala.zip4j.util.e.F0 + name;
                EmuBaseActivity.soPath = myJson.getString(BaseAppConfig.KEY_SO_PATH, "");
                EmuBaseActivity.assetsPath = myJson.getString(BaseAppConfig.KEY_ASSETS_PATH, "");
                String string2 = myJson.getString(BaseAppConfig.KEY_ACTIVITY_NAME, "");
                EmuBaseActivity.className = string2;
                EmuBaseActivity.className = string2.replace(o0.f49827a, net.lingala.zip4j.util.e.F0);
                EmuBaseActivity.UserID = myJson.getString(BaseAppConfig.KEY_START_USERID, "");
                EmuBaseActivity.GameID = myJson.getString(BaseAppConfig.KEY_START_GAMEID, "");
                EmuBaseActivity.verCode = myJson.getString(BaseAppConfig.KEY_START_VERCODE, "");
                Boolean bool = Boolean.TRUE;
                EmuBaseActivity.tourist = myJson.getBoolean("tourist", bool).booleanValue();
                EmuBaseActivity.fid = myJson.getInt(BaseAppConfig.KEY_START_FID, 0);
                EmuBaseActivity.RoomID = myJson.getString(BaseAppConfig.KEY_START_ROOMID, "");
                EmuBaseActivity.GroupID = myJson.getString("groupId", "");
                EmuBaseActivity.Version = myJson.getString("version", "");
                EmuBaseActivity.server_ip = myJson.getString(BaseAppConfig.KEY_SERVER_IP, "");
                EmuBaseActivity.server_port = myJson.getString(BaseAppConfig.KEY_SERVER_PORT, "");
                BaseAppConfig.curPlayer = myJson.getInt(BaseAppConfig.KEY_START_PORDER, 0);
                EmuBaseActivity.token = myJson.getString(Constants.TOKEN, "0");
                this.core = myJson.getString("core", "");
                EmuBaseActivity.spLock = myJson.getInt(BaseAppConfig.KEY_SP_LOCK, 0);
                this.m_SVIP = myJson.getInt(BaseAppConfig.KEY_SVIP_LEVEL, 0);
                this.m_VIP = myJson.getInt(BaseAppConfig.KEY_VIP_LEVEL, 0);
                this.roomSilent = myJson.getInt("", 0);
                EmuBaseActivity.netState = myJson.getString(BaseAppConfig.KEY_NET_STATE, "");
                EmuBaseActivity.endGameId = myJson.getInt("endGameId", -1);
                EmuBaseActivity.endGameTime = myJson.getInt(BaseAppConfig.KEY_END_GAME_TIME, 0);
                EmuBaseActivity.endId = myJson.getString("endId", "");
                EmuBaseActivity.subTitle = myJson.getString(BaseAppConfig.KEY_END_GAME_SUBTITLE, "");
                EmuBaseActivity.endGameLevelRules = myJson.getString(BaseAppConfig.KEY_END_GAME_LEVEL_RULES, "");
                this.allowPeripheralJoin = myJson.getBoolean("allowPeripheralJoin", bool).booleanValue();
                this.miniRankTime = myJson.getInt("rankMiniTime", 0);
                this.rankAutoUpload = myJson.getInt(GamePaiWeiActivty_.R1, 0);
                this.isSingleGame = myJson.getBoolean("isSingleGame", Boolean.FALSE).booleanValue();
                try {
                    if (!isRankAutoUpload()) {
                        String string3 = myJson.getString("rolesJson");
                        if (!TextUtils.isEmpty(string3)) {
                            this.rolesBeanList = (List) new Gson().fromJson(string3, new TypeToken<List<PaiWeiDataBean.RolesBean>>() { // from class: com.papa91.arc.EmuActivity_fba.1
                            }.getType());
                        }
                    }
                } catch (JSONException e11) {
                    e11.printStackTrace();
                }
                setMenuViewListener();
                JSONArray jSONArray = myJson.getJSONArray(BaseAppConfig.AD_JSON_KEY, null);
                if (jSONArray != null) {
                    initBanner(jSONArray, AD_APP_KEY);
                }
                try {
                    myJson.put("device", EmuBaseActivity.getPhoneInfo());
                } catch (JSONException e12) {
                    e12.printStackTrace();
                }
                if (EmuBaseActivity.startMode == 15) {
                    recordfn = myJson.getString(BaseAppConfig.KEY_NET_STATE, "");
                }
            }
            CrashReport.setUserId(EmuBaseActivity.GameID);
            AppConfig_fba.logE("...................KEY_START_FID : " + String.valueOf(EmuBaseActivity.fid));
            asyncConfig();
            onLoadNativeLibraries();
            coreName = getCore(EmuBaseActivity.romPath);
            AppConfig_fba.logE("getCore " + coreName);
            EmuBaseActivity.initLaunchConfig(new String[]{BaseAppConfig.PREF_SCREEN_MODE, "appPath", "libPath", BaseAppConfig.PREF_ENABLE_AUDIO, "vibriorMode", "version", "cpuNum", "cpuFreq", BaseAppConfig.KEY_SP_LOCK, "gameMode"}, new String[]{EmuBaseActivity.screenMOde, BaseAppConfig.APP_PATH, AppConfig_fba.getLibpath(this), EmuBaseActivity.enableAudio, EmuBaseActivity.vibriorMode, EmuBaseActivity.version, cpuNum, cpuFreq, EmuBaseActivity.spLock + "", coreName});
            try {
                myJson.put("startMode", EmuBaseActivity.startMode);
                myJson.put(BaseAppConfig.KEY_APK_PATH, BaseAppConfig.APK_PATH);
                myJson.put(BaseAppConfig.KEY_CLASS_NAME, EmuBaseActivity.className);
            } catch (JSONException e13) {
                e13.printStackTrace();
            }
            String string4 = myJson.toString();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCreateTEST: ");
            sb2.append(string4);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("onCreateTEST: ");
            sb3.append(dealSDPath(string4, BaseAppConfig.APP_PATH));
            EmuBaseActivity.setJson(dealSDPath(string4, BaseAppConfig.APP_PATH));
            EmuBaseActivity.initEmu();
        } else {
            EmuBaseActivity.soPath = getDir("jniLibs", 0).getAbsolutePath() + net.lingala.zip4j.util.e.F0;
            onLoadNativeLibraries();
            loadRom();
        }
        super.onCreate(bundle);
        if (this.allowPeripheralJoin) {
            com.join.mgps.joystick.a.g().w(this, KeyMap.EmuMap.FBA);
            com.join.mgps.joystick.a.g().y(this);
        }
        this.shareResultReceiver = new ShareResultReceiver();
        registerReceiver(this.shareResultReceiver, new IntentFilter("com.emu.share.result"));
        onAfterActivityCreated(bundle);
        CContext.IActivityLifeCycleListener iActivityLifeCycleListener = CContext.mLifeListener;
        if (iActivityLifeCycleListener != null) {
            iActivityLifeCycleListener.onCreated();
        }
    }

    @Override // com.papa91.activity.EmuMenuBaseActivity, com.papa91.activity.EmuBaseActivity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.joystick.a.g().F();
        super.onDestroy();
        EmuBaseActivity.exitEmu();
        ShareResultReceiver shareResultReceiver = this.shareResultReceiver;
        if (shareResultReceiver != null) {
            unregisterReceiver(shareResultReceiver);
        }
        System.exit(0);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onGenericMotionEvent(int i10, float f10, float f11) {
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void onHandleEmuExit() {
        super.onHandleEmuExit();
        gameDestroy(this);
    }

    @Override // com.papa91.activity.EmuBaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            AppConfig_fba.IsXperiaPlay();
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // com.join.mgps.joystick.a.d
    public void onKeyMap(int[] iArr, com.join.mgps.joystick.map.c cVar, KeyEvent keyEvent) {
        if (this.allowPeripheralJoin) {
            EmuBaseActivity.setJoyStickKey(iArr);
        }
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
        boolean z11 = this.allowPeripheralJoin;
        if (z10) {
            EmuBaseActivity.setPadVisible(0, z11 ? 1 : 0);
        } else {
            EmuBaseActivity.setPadVisible(1, z11 ? 1 : 0);
        }
    }

    public byte[] readBytes(byte[] bArr, InputStream inputStream) throws IOException {
        int i10 = 0;
        while (i10 < bArr.length) {
            int i11 = inputStream.read(bArr, i10, bArr.length - i10);
            if (i11 < 0) {
                throw new IOException();
            }
            i10 += i11;
        }
        return bArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        startKeyDemo();
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
        iVideoAdListener.showAd(this, EmuBaseActivity.GameID, CContext.SCENE_FBA);
    }

    @Override // com.papa91.activity.EmuBaseActivity
    protected void showInvitePlayUi(String str, String str2, String str3, long j10) {
        EmuBaseActivity.showInvitePlay(str, str2, str3, j10);
        EmuBaseActivity.sendReceiveInvitation();
        hideMenuDialog();
    }

    protected void startKeyDemo() {
        try {
            this.socket = new Socket("192.168.71.163", 12345);
            byte[] bytes = new byte[4];
            new BufferedReader(new InputStreamReader(this.socket.getInputStream()));
            while (true) {
                bytes = readBytes(bytes, this.socket.getInputStream());
                int i10 = ((bytes[3] << 8) & (-16777216)) | ((bytes[2] << 8) & 16711680) | ((bytes[1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bytes[0] & 255);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("res == ");
                sb2.append(i10);
                if (i10 >= 0) {
                    int[] iArr = new int[4];
                    iArr[0] = i10;
                    EmuBaseActivity.setJoyStickKey(iArr);
                }
            }
        } catch (IOException e10) {
            Toast.makeText(this, "连接失败", 1).show();
            e10.printStackTrace();
        }
    }

    public void updateConfig() {
        SharedPreferences sharedPreferences = getSharedPreferences("core", 4);
        EmuBaseActivity.enableAudio = sharedPreferences.getString(BaseAppConfig.PREF_ENABLE_AUDIO, "1");
        EmuBaseActivity.screenMOde = sharedPreferences.getString(BaseAppConfig.PREF_SCREEN_MODE, "1");
        EmuBaseActivity.vibriorMode = sharedPreferences.getString("vibriorMode", "1");
        EmuBaseActivity.version = sharedPreferences.getString("version", "1.4.0");
    }
}
