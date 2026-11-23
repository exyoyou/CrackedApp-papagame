package com.papa91.arcapp;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import android.preference.PreferenceManager;
import android.view.Display;
import android.view.InputDevice;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.arc.util.StoreUtils;
import com.papa91.common.BaseAppConfig;
import com.windmill.sdk.WMConstants;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class AppConfig_fc extends BaseAppConfig {
    private static final char[] HEX_DIGITS;
    public static String PATH = "/papa91/fc/";
    public static String[] deviceDescrip;
    public static int[] deviceID;
    public static String[] deviceName;

    static {
        BaseAppConfig.EMU_NAME = "fc";
        initPath(null);
        HEX_DIGITS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        deviceName = new String[]{"?", "?", "?", "?"};
        deviceDescrip = new String[]{"?", "?", "?", "?"};
        deviceID = new int[]{0, 0, 0, 0};
    }

    public static boolean IsXperiaPlay() {
        String str = Build.MODEL;
        return str.equals("R800a") || str.equals("R800i") || str.equals("R800x") || str.equals("R800at") || str.equals("SO-01D") || str.equals("zeus");
    }

    public static void createAppDir(Context context) {
        createFolder(BaseAppConfig.APP_PATH);
        createFolder(BaseAppConfig.ROM_PATH);
        createFolder(BaseAppConfig.CONFIG_PATH);
        createFolder(BaseAppConfig.IPS_PATH);
        createFolder(BaseAppConfig.TMP_PATH);
    }

    static boolean createFolder(String str) {
        File file = new File(str);
        if (file.exists()) {
            return true;
        }
        if (file.mkdirs()) {
            logD("mkdir: ok" + str);
            return true;
        }
        logD("mkdir: failed" + str);
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0036 A[Catch: IOException -> 0x006b, TryCatch #0 {IOException -> 0x006b, blocks: (B:9:0x0019, B:12:0x0036, B:13:0x0057, B:15:0x005d, B:16:0x0061), top: B:21:0x0019 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x005d A[Catch: IOException -> 0x006b, LOOP:1: B:13:0x0057->B:15:0x005d, LOOP_END, TryCatch #0 {IOException -> 0x006b, blocks: (B:9:0x0019, B:12:0x0036, B:13:0x0057, B:15:0x005d, B:16:0x0061), top: B:21:0x0019 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0061 A[EDGE_INSN: B:27:0x0061->B:16:0x0061 BREAK  A[LOOP:1: B:13:0x0057->B:15:0x005d], SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:12:0x0036, please report this as an issue */
    static void createResFile(Context context, String str, String[] strArr, boolean z10) {
        InputStream inputStreamOpen;
        FileOutputStream fileOutputStream;
        byte[] bArr;
        int i10;
        File file = new File(str);
        if (!file.exists()) {
            file.mkdir();
        }
        AssetManager assets = context.getAssets();
        for (int i11 = 0; i11 < strArr.length; i11++) {
            if (z10) {
                inputStreamOpen = assets.open(strArr[i11], 3);
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
            } else {
                try {
                    if (!new File(str + strArr[i11]).exists()) {
                        inputStreamOpen = assets.open(strArr[i11], 3);
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
                } catch (IOException unused) {
                    logE("cant install bios file");
                }
            }
        }
    }

    public static String filePathToURL(String str) {
        return "file://" + str;
    }

    public static int getAnalogDZ(Context context) {
        return Integer.valueOf(getDefaultSharedPreferences(context).getString(BaseAppConfig.PREF_ANALOG_DZ, "1")).intValue();
    }

    public static int getAnalogEZ(Context context) {
        return Integer.valueOf(getDefaultSharedPreferences(context).getString(BaseAppConfig.PREF_ANALOG_EZ, "1")).intValue();
    }

    public static int getButtonEZ(Context context) {
        return Integer.valueOf(getDefaultSharedPreferences(context).getString(BaseAppConfig.PREF_BUTTON_EZ, "1")).intValue();
    }

    public static SharedPreferences getDefaultSharedPreferences(Context context) {
        String str = EmuBaseActivity.appPackName;
        if (context.getPackageName().equals(str)) {
            return PreferenceManager.getDefaultSharedPreferences(context);
        }
        return context.getSharedPreferences(str + "_preferences", 4);
    }

    static String getLastDir(Context context) {
        SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(context);
        String str = BaseAppConfig.ROM_PATH;
        return defaultSharedPreferences.getString(BaseAppConfig.KEY_LAST_DIR, str.substring(0, str.length() - 1));
    }

    public static String getLibpath(Context context) {
        return context.getCacheDir().getAbsolutePath().replace("cache", "lib");
    }

    public static String getNameNoExt(String str) {
        int iLastIndexOf = str.lastIndexOf(47);
        int iLastIndexOf2 = str.lastIndexOf(46);
        if (iLastIndexOf2 == -1) {
            iLastIndexOf2 = str.length();
        }
        if (iLastIndexOf == -1) {
            return str.substring(0, iLastIndexOf2);
        }
        return iLastIndexOf2 < iLastIndexOf ? str.substring(iLastIndexOf + 1, str.length()) : str.substring(iLastIndexOf + 1, iLastIndexOf2);
    }

    public static String getNameNoExtWithPath(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf == -1) {
            iLastIndexOf = str.length();
        }
        return str.substring(0, iLastIndexOf);
    }

    public static String getNameWithExt(String str) {
        return str.substring(str.lastIndexOf(47) + 1, str.length());
    }

    static int getNumCores() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new FileFilter() { // from class: com.papa91.arcapp.AppConfig_fc.1CpuFilter
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return Pattern.matches("cpu[0-9]", file.getName());
                }
            }).length;
        } catch (Exception unused) {
            return 1;
        }
    }

    public static String getRomPath(String str) {
        return str.substring(0, str.lastIndexOf(47));
    }

    public static String getStringPref(Context context, String str, String str2) {
        return getDefaultSharedPreferences(context).getString(str, str2);
    }

    public static int getTiltDZ(Context context) {
        return Integer.valueOf(getDefaultSharedPreferences(context).getString(BaseAppConfig.PREF_TILT_DZ, "1")).intValue();
    }

    public static int getTiltSensitivity(Context context) {
        return getDefaultSharedPreferences(context).getInt(BaseAppConfig.PREF_TILT_SENSITIVITY, 6);
    }

    public static int getVpadStyle(Context context) {
        return getDefaultSharedPreferences(context).getInt(BaseAppConfig.PREF_VPAD_STYLE, 0);
    }

    public static int getscrOrientation(Activity activity) {
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        int i10 = activity.getResources().getConfiguration().orientation;
        if (i10 != 0) {
            return i10;
        }
        int i11 = activity.getResources().getConfiguration().orientation;
        if (i11 != 0) {
            return i11;
        }
        if (defaultDisplay.getWidth() == defaultDisplay.getHeight()) {
            return 3;
        }
        return defaultDisplay.getWidth() < defaultDisplay.getHeight() ? 1 : 2;
    }

    public static boolean hideAds(Context context) {
        return getDefaultSharedPreferences(context).getBoolean(BaseAppConfig.PREF_HIDE_ADS, false);
    }

    public static void initPath(Context context) {
        String externalStorageDirectory = StoreUtils.getExternalStorageDirectory(context);
        BaseAppConfig.PRIVATE_PATH = externalStorageDirectory + PATH;
        String str = externalStorageDirectory + PATH;
        BaseAppConfig.APP_PATH = str;
        BaseAppConfig.ROM_PATH = str;
        BaseAppConfig.CONFIG_PATH = BaseAppConfig.PRIVATE_PATH + "config/";
        BaseAppConfig.INFO_PATH = BaseAppConfig.PRIVATE_PATH + "rominfo/";
        BaseAppConfig.IPS_PATH = BaseAppConfig.PRIVATE_PATH + "ips/";
        BaseAppConfig.TMP_PATH = BaseAppConfig.PRIVATE_PATH + "tmp/";
        BaseAppConfig.ROMDATA_PATH = BaseAppConfig.PRIVATE_PATH + "romdata/";
        BaseAppConfig.LOG_PATH = BaseAppConfig.PRIVATE_PATH + "log/";
    }

    public static void initialise(Context context) {
        initPath(context);
        boolean zIsFirstRun = isFirstRun(context);
        try {
            BaseAppConfig.versionCode = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
        }
        createAppDir(context);
        BaseAppConfig.copyGuide(context);
        if (zIsFirstRun) {
            setFirstRun(context, false);
        }
    }

    public static int inputDeviceToPlayer(InputDevice inputDevice) {
        if (inputDevice == null) {
            return -1;
        }
        for (int i10 = 0; i10 < 4; i10++) {
        }
        for (int i11 = 0; i11 < 4; i11++) {
            if (deviceName[i11].equals(inputDevice.getName())) {
                int[] iArr = deviceID;
                int i12 = iArr[i11];
                if (i12 != 0) {
                    if (i12 == inputDevice.getId()) {
                        return i11;
                    }
                } else if (i12 == 0) {
                    iArr[i11] = inputDevice.getId();
                    return i11;
                }
            }
        }
        return 0;
    }

    public static boolean isAnalogPretty(Context context) {
        return true;
    }

    static boolean isFirstRun(Context context) {
        SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(context);
        boolean z10 = true;
        boolean z11 = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_FIRST_RUN, true);
        try {
            int i10 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            if (defaultSharedPreferences.getInt("version", 0) < i10) {
                SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
                editorEdit.putInt("version", i10);
                editorEdit.commit();
            } else {
                z10 = z11;
            }
            return z10;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return z11;
        }
    }

    static boolean isGameFile(String str) {
        return ((!str.endsWith(".fba") && !str.endsWith(".zip") && !str.endsWith(".iso")) || str.endsWith("pgm.zip") || str.endsWith("neogeo.zip")) ? false : true;
    }

    public static boolean isTiltSensor(Context context) {
        return getDefaultSharedPreferences(context).getBoolean(BaseAppConfig.PREF_TILT_SENSOR, false);
    }

    public static void lockScreenOrientation(Context context, int i10) {
        Activity activity = (Activity) context;
        if (i10 == 1) {
            activity.setRequestedOrientation(0);
            return;
        }
        if (i10 == 2) {
            activity.setRequestedOrientation(1);
        } else if (i10 == 3) {
            activity.setRequestedOrientation(8);
        } else {
            if (i10 != 4) {
                return;
            }
            activity.setRequestedOrientation(9);
        }
    }

    public static void logD(String str) {
    }

    public static void logE(String str) {
    }

    public static String md5string(String str) {
        char[] charArray = str.toCharArray();
        byte[] bArr = new byte[charArray.length];
        for (int i10 = 0; i10 < charArray.length; i10++) {
            bArr[i10] = (byte) charArray[i10];
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr, 0, charArray.length);
            return toHexString(messageDigest.digest());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String md5sum(String str) {
        if (!new File(str).exists()) {
            return null;
        }
        byte[] bArr = new byte[1024];
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            while (true) {
                int i10 = fileInputStream.read(bArr);
                if (i10 <= 0) {
                    fileInputStream.close();
                    return toHexString(messageDigest.digest());
                }
                messageDigest.update(bArr, 0, i10);
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public static void saveLastDir(Context context, String str) {
        SharedPreferences.Editor editorEdit = getDefaultSharedPreferences(context).edit();
        editorEdit.putString(BaseAppConfig.KEY_LAST_DIR, str);
        editorEdit.commit();
    }

    public static void saveScreenModeConfig(Context context) {
        SharedPreferences.Editor editorEdit = getDefaultSharedPreferences(context).edit();
        editorEdit.putString(BaseAppConfig.PREF_SCREEN_MODE, String.valueOf(BaseAppConfig.screenMode));
        editorEdit.putString(BaseAppConfig.PREF_FRAME_SKIP, String.valueOf(BaseAppConfig.frameSkip));
        editorEdit.commit();
    }

    public static void saveStringPref(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = getDefaultSharedPreferences(context).edit();
        editorEdit.putString(str, str2);
        editorEdit.commit();
    }

    static void saveTurboSpeed(Context context, int i10) {
        SharedPreferences.Editor editorEdit = getDefaultSharedPreferences(context).edit();
        editorEdit.putInt(BaseAppConfig.PREF_TURBO_SPEED, i10);
        editorEdit.commit();
    }

    static boolean setDefaultConfig(Context context) {
        setVpadStyle(context, 0);
        SharedPreferences.Editor editorEdit = getDefaultSharedPreferences(context).edit();
        BaseAppConfig.enableAudio = true;
        BaseAppConfig.renderMode = 1;
        BaseAppConfig.renderQuality = true;
        BaseAppConfig.frameSkip = -1;
        BaseAppConfig.screenOrientation = 1;
        BaseAppConfig.screenMode = 0;
        BaseAppConfig.enablePad = true;
        BaseAppConfig.enableVibrator = false;
        BaseAppConfig.enablePhysicalKey = true;
        BaseAppConfig.cpuCores = 2;
        editorEdit.putBoolean(BaseAppConfig.PREF_ENABLE_AUDIO, true);
        if (BaseAppConfig.renderMode == 1) {
            editorEdit.putBoolean(BaseAppConfig.PREF_RENDER_MODE, true);
        } else {
            editorEdit.putBoolean(BaseAppConfig.PREF_RENDER_MODE, false);
        }
        editorEdit.putBoolean(BaseAppConfig.PREF_RENDER_QUALITY, BaseAppConfig.renderQuality);
        editorEdit.putString(BaseAppConfig.PREF_SCREENT_ORIENT, String.valueOf(BaseAppConfig.screenOrientation));
        editorEdit.putString(BaseAppConfig.PREF_FRAME_SKIP, String.valueOf(BaseAppConfig.frameSkip));
        editorEdit.putString(BaseAppConfig.PREF_SCREEN_MODE, String.valueOf(BaseAppConfig.screenMode));
        editorEdit.putBoolean(BaseAppConfig.PREF_ENABLE_VPAD, BaseAppConfig.enablePad);
        editorEdit.putBoolean(BaseAppConfig.PREF_ENABLE_VIBRATOR, BaseAppConfig.enableVibrator);
        editorEdit.putBoolean(BaseAppConfig.PREF_ENABLE_PHYSICAL_KEY, BaseAppConfig.enablePhysicalKey);
        editorEdit.putBoolean(BaseAppConfig.PREF_HIDE_ADS, false);
        editorEdit.putBoolean(BaseAppConfig.PREF_VPAD_PLAYER, true);
        editorEdit.putBoolean(BaseAppConfig.PREF_AUTO_THREADING, true);
        editorEdit.putBoolean(BaseAppConfig.PREF_ANALOG_PRETTY, false);
        editorEdit.putBoolean(BaseAppConfig.PREF_ENABLE_ONE_CONTROLLER, false);
        editorEdit.putString(BaseAppConfig.PREF_ANALOG_DZ, "1");
        editorEdit.putString(BaseAppConfig.PREF_ANALOG_EZ, "2");
        editorEdit.putString(BaseAppConfig.PREF_BUTTON_EZ, "2");
        editorEdit.commit();
        return true;
    }

    static void setFirstRun(Context context, boolean z10) {
        SharedPreferences.Editor editorEdit = getDefaultSharedPreferences(context).edit();
        editorEdit.putBoolean(BaseAppConfig.PREF_FIRST_RUN, z10);
        editorEdit.commit();
    }

    static void setKeyResFile(Context context, String str, String[] strArr, boolean z10) {
    }

    public static void setVpadStyle(Context context, int i10) {
        SharedPreferences.Editor editorEdit = getDefaultSharedPreferences(context).edit();
        editorEdit.putInt(BaseAppConfig.PREF_VPAD_STYLE, i10);
        editorEdit.commit();
    }

    public static boolean showPlayerButton(Context context) {
        return getDefaultSharedPreferences(context).getBoolean(BaseAppConfig.PREF_VPAD_PLAYER, true);
    }

    public static String toHexString(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (int i10 = 0; i10 < bArr.length; i10++) {
            char[] cArr = HEX_DIGITS;
            sb2.append(cArr[(bArr[i10] & 240) >>> 4]);
            sb2.append(cArr[bArr[i10] & 15]);
        }
        return sb2.toString();
    }

    public static void updateConfig(Context context) {
        if (context.getResources().getConfiguration().locale.getLanguage().equalsIgnoreCase("zh") || context.getResources().getConfiguration().locale.getCountry().equals("CN")) {
            BaseAppConfig.language = 1;
        } else {
            BaseAppConfig.language = 0;
        }
        SharedPreferences defaultSharedPreferences = getDefaultSharedPreferences(context);
        BaseAppConfig.enableAudio = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_AUDIO, true);
        BaseAppConfig.IsXperiaPlay = IsXperiaPlay();
        if (getNumCores() <= 1 || !defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_AUTO_THREADING, true)) {
            BaseAppConfig.cpuCores = 1;
        } else {
            BaseAppConfig.cpuCores = getNumCores();
        }
        if (defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_RENDER_MODE, true)) {
            BaseAppConfig.renderMode = 1;
        } else {
            BaseAppConfig.renderMode = 0;
        }
        BaseAppConfig.renderQuality = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_RENDER_QUALITY, true);
        BaseAppConfig.screenMode = Integer.parseInt(defaultSharedPreferences.getString(BaseAppConfig.PREF_SCREEN_MODE, "0"));
        BaseAppConfig.frameSkip = Integer.parseInt(defaultSharedPreferences.getString(BaseAppConfig.PREF_FRAME_SKIP, WMConstants.TIMER_STAGE_NONE));
        BaseAppConfig.turboSpeed = defaultSharedPreferences.getInt(BaseAppConfig.PREF_TURBO_SPEED, 8);
        BaseAppConfig.enableVibrator = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_VIBRATOR, true);
        BaseAppConfig.enablePad = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_VPAD, true);
        BaseAppConfig.bAutoLayoutBtn = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_VPAD_AUTOLAYOUT, true);
        BaseAppConfig.enablePhysicalKey = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_PHYSICAL_KEY, true);
        BaseAppConfig.oneController = defaultSharedPreferences.getBoolean(BaseAppConfig.PREF_ENABLE_ONE_CONTROLLER, true);
        logD(BaseAppConfig.autoSearchRom + " " + BaseAppConfig.enableAudio + " " + BaseAppConfig.enableVibrator + " " + BaseAppConfig.renderMode + " " + BaseAppConfig.screenMode + " " + BaseAppConfig.vkeypadLayout + " " + BaseAppConfig.controlScale + " " + BaseAppConfig.enablePhysicalKey);
    }

    public static void logD(String str, String str2) {
    }
}
