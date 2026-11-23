package com.papa91.arc.util;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import org.ppsspp.ppsspp.NativeActivity;

/* JADX INFO: loaded from: classes2.dex */
public class GameSettings {
    private static Context context;

    public static boolean getCustomSettingEnable() {
        return Boolean.parseBoolean((String) queryConfig(null, "CustomSettingEnable", "false"));
    }

    public static int getGameSettingLevel() {
        String str = (String) queryConfig(null, "GameSettingLevel", getGameSettingTotalLevel() == 5 ? "4" : "1");
        return Integer.parseInt(TextUtils.isEmpty(str) ? "1" : str);
    }

    public static int getGameSettingTotalLevel() {
        String str = (String) queryConfig(null, "GameSettingTotalLevel", "4");
        return Integer.parseInt(TextUtils.isEmpty(str) ? "4" : str);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00ce A[PHI: r1
      0x00ce: PHI (r1v10 java.lang.String) = (r1v8 java.lang.String), (r1v8 java.lang.String), (r1v14 java.lang.String), (r1v14 java.lang.String) binds: [B:23:0x00c0, B:25:0x00cb, B:12:0x005f, B:14:0x006a] A[DONT_GENERATE, DONT_INLINE]] */
    private static String getSettingsPath() {
        int iIndexOf;
        String str;
        if (NativeActivity.romPath.equals("")) {
            return "";
        }
        try {
            String str2 = NativeActivity.romPath;
            if (str2.contains("wufan91")) {
                int iIndexOf2 = NativeActivity.romPath.indexOf("/wufan91");
                if (iIndexOf2 != -1 && iIndexOf2 < NativeActivity.romPath.length()) {
                    String strSubstring = NativeActivity.romPath.substring(iIndexOf2);
                    str = StoreUtils.getExternalStorageDirectory(context) + strSubstring;
                    str2 = StoreUtils.getExternalStorageDirectory() + strSubstring;
                    if (new File(str).exists() || !new File(str2).exists()) {
                        str2 = str;
                    }
                }
            } else if (NativeActivity.romPath.contains("mgpapa") && (iIndexOf = NativeActivity.romPath.indexOf("/mgpapa")) != -1 && iIndexOf < NativeActivity.romPath.length()) {
                String strSubstring2 = NativeActivity.romPath.substring(iIndexOf);
                str = StoreUtils.getExternalStorageDirectory(context) + strSubstring2;
                str2 = StoreUtils.getExternalStorageDirectory() + strSubstring2;
                if (new File(str).exists() || !new File(str2).exists()) {
                    str2 = str;
                }
            }
            File file = new File(str2);
            if (!file.exists()) {
                file.mkdirs();
            }
            return str2;
        } catch (Exception e10) {
            e10.printStackTrace();
            return NativeActivity.romPath;
        }
    }

    public static void init(Context context2) {
        context = context2;
    }

    public static Object queryConfig(String str, String str2) {
        if (str == null || str.trim().equals("")) {
            str = "GameSetting";
        }
        File file = new File(getSettingsPath());
        if (!file.exists()) {
            return "";
        }
        File file2 = new File(file.getParent(), "settings.ini");
        return file2.exists() ? new IniFile(file2).get(str, str2) : "";
    }

    public static void saveGameConfig(String str, Object obj) {
        File file = new File(getSettingsPath());
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file.getParent(), "settings.ini");
        if (file2.exists()) {
            IniFile iniFile = new IniFile(file2);
            iniFile.set("GameSetting", str, obj);
            iniFile.save();
        } else {
            IniFile iniFile2 = new IniFile();
            iniFile2.set("GameSetting", str, obj);
            iniFile2.save(file2);
        }
    }

    public static void setCustomSettingEnable(boolean z10) {
        saveGameConfig("CustomSettingEnable", Boolean.valueOf(z10));
    }

    public static void setGameSettingLevel(int i10) {
        saveGameConfig("GameSettingLevel", i10 + "");
    }

    public static void setGameSettingTotalLevel(int i10) {
        saveGameConfig("GameSettingTotalLevel", i10 + "");
    }

    public static Object queryConfig(String str, String str2, String str3) {
        if (str == null || str.trim().equals("")) {
            str = "GameSetting";
        }
        if (getSettingsPath().equals("")) {
            return str3;
        }
        File file = new File(getSettingsPath());
        if (!file.exists()) {
            return str3;
        }
        File file2 = new File(file.getParent(), "settings.ini");
        return file2.exists() ? new IniFile(file2).get(str, str2, str3) : str3;
    }
}
