package com.qq.e.comm.managers.setting;

import android.text.TextUtils;
import com.qq.e.comm.util.GDTLogger;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class GlobalSetting {
    public static final String ADMOB_SDK_WRAPPER = "ADMOB";
    public static final String AGREE_PRIVACY_KEY = "agree_privacy";
    public static final String AGREE_READ_AAID = "allow_read_aaid";
    public static final String APPLOVIN_SDK_WRAPPER = "APPLOVIN";
    public static final String BD_SDK_WRAPPER = "BD";
    public static final String CCPA = "ccpa";
    public static final String CONV_OPTIMIZE_KEY = "conv_opt_info";
    public static final String COPPA = "coppa";
    public static final String CUSTOM_INFO_KEY = "custom_info";
    public static final String DARK_MODE_KEY = "dark_mode_info";
    public static final String FACEBOOK_SDK_WRAPPER = "FACEBOOK";
    public static final String GDPR = "gdpr";
    public static final String KS_SDK_WRAPPER = "KS";
    public static final String NATIVE_EXPRESS_AD = "4";
    public static final String NATIVE_UNIFIED_AD = "6";
    public static final String OVERSEA_PRIVACY_INFO = "oversea_privacy_info";
    public static final String PAG_SDK_WRAPPER = "PAG";
    public static final String REWARD_VIDEO_AD = "5";
    public static final String SPLASH_AD = "3";
    public static final String TT_SDK_WRAPPER = "TT";
    public static final String UNIFIED_BANNER_AD = "7";
    public static final String UNIFIED_INTERSTITIAL_FS_AD = "9";
    public static final String UNIFIED_INTERSTITIAL_HS_AD = "8";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile Integer f78354a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile boolean f78355b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile boolean f78356c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile Integer f78357d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile Boolean f78358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile Boolean f78359f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile Boolean f78360g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static volatile Map<String, String> f78361h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static volatile Map<String, String> f78362i = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Map<String, String> f78363j = new HashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final JSONObject f78364k = new JSONObject();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static volatile String f78365l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static volatile String f78366m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static volatile String f78367n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static volatile String f78368o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static volatile String f78369p = null;

    public static Boolean getAgreeReadAndroidId() {
        return f78360g;
    }

    public static Boolean getAgreeReadDeviceId() {
        return f78359f;
    }

    public static Integer getChannel() {
        return f78354a;
    }

    public static String getCustomADActivityClassName() {
        return f78365l;
    }

    public static String getCustomLandscapeActivityClassName() {
        return f78368o;
    }

    public static String getCustomPortraitActivityClassName() {
        return f78366m;
    }

    public static String getCustomRewardvideoLandscapeActivityClassName() {
        return f78369p;
    }

    public static String getCustomRewardvideoPortraitActivityClassName() {
        return f78367n;
    }

    public static Map<String, String> getExtraUserData() {
        return Collections.unmodifiableMap(f78361h);
    }

    public static Integer getPersonalizedState() {
        return f78357d;
    }

    public static Map<String, String> getPreloadAdapterMaps() {
        return f78363j;
    }

    public static JSONObject getSettings() {
        return f78364k;
    }

    public static boolean isAgreePrivacyStrategy() {
        return f78358e == null || f78358e.booleanValue();
    }

    public static boolean isAgreeReadAndroidId() {
        if (f78360g == null) {
            return true;
        }
        return f78360g.booleanValue();
    }

    public static boolean isAgreeReadDeviceId() {
        if (f78359f == null) {
            return true;
        }
        return f78359f.booleanValue();
    }

    public static boolean isEnableMediationTool() {
        return f78355b;
    }

    public static boolean isEnableVideoDownloadingCache() {
        return f78356c;
    }

    public static void setAgreePrivacyStrategy(boolean z10) {
        if (f78358e == null) {
            f78358e = Boolean.valueOf(z10);
        }
    }

    @Deprecated
    public static void setAgreeReadAndroidId(boolean z10) {
        f78360g = Boolean.valueOf(z10);
    }

    @Deprecated
    public static void setAgreeReadDeviceId(boolean z10) {
        f78359f = Boolean.valueOf(z10);
    }

    public static void setAgreeReadPrivacyInfo(Map<String, Boolean> map) {
        if (map == null || map.size() == 0) {
            return;
        }
        try {
            f78364k.putOpt(AGREE_PRIVACY_KEY, new JSONObject(map));
        } catch (Exception e10) {
            GDTLogger.e("setAgreeReadPrivacyInfo错误：" + e10.toString());
        }
    }

    public static void setChannel(int i10) {
        if (f78354a == null) {
            f78354a = Integer.valueOf(i10);
        }
    }

    public static void setConvOptimizeInfo(Map<String, Boolean> map) {
        if (map == null || map.size() == 0) {
            return;
        }
        try {
            f78364k.putOpt(CONV_OPTIMIZE_KEY, new JSONObject(map));
        } catch (Exception e10) {
            GDTLogger.e("setConvOptimizeInfo错误：" + e10.toString());
        }
    }

    public static void setCustomADActivityClassName(String str) {
        f78365l = str;
    }

    public static void setCustomInfo(Map<String, Map<String, String>> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        try {
            f78364k.putOpt("custom_info", new JSONObject(map));
        } catch (Exception e10) {
            GDTLogger.e("setCustomInfo：" + e10);
        }
    }

    public static void setCustomLandscapeActivityClassName(String str) {
        f78368o = str;
    }

    public static void setCustomPortraitActivityClassName(String str) {
        f78366m = str;
    }

    public static void setCustomRewardvideoLandscapeActivityClassName(String str) {
        f78369p = str;
    }

    public static void setCustomRewardvideoPortraitActivityClassName(String str) {
        f78367n = str;
    }

    public static void setEnableCollectAppInstallStatus(boolean z10) {
        try {
            f78364k.putOpt("ecais", Boolean.valueOf(z10));
        } catch (JSONException unused) {
        }
    }

    public static void setEnableMediationTool(boolean z10) {
        f78355b = z10;
    }

    public static void setEnableVideoDownloadingCache(boolean z10) {
        f78356c = z10;
    }

    public static void setExtraUserData(Map<String, String> map) {
        if (map == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (TextUtils.isEmpty(entry.getKey()) || TextUtils.isEmpty(entry.getValue())) {
                GDTLogger.e("参数key和value不能为空！");
                return;
            }
        }
        f78361h = map;
    }

    public static void setMediaExtData(Map<String, String> map, boolean z10) {
        if (map == null) {
            return;
        }
        if (z10) {
            f78362i = new HashMap();
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (!TextUtils.isEmpty(entry.getKey()) && !TextUtils.isEmpty(entry.getValue())) {
                f78362i.put(entry.getKey(), entry.getValue());
            }
        }
        try {
            f78364k.putOpt("media_ext", new JSONObject(f78362i));
        } catch (JSONException unused) {
            GDTLogger.e("setMediaExtData失败，请检查");
        }
    }

    public static void setPersonalizedState(int i10) {
        f78357d = Integer.valueOf(i10);
    }

    public static void setPreloadAdapters(Map<String, String> map) {
        if (map == null) {
            return;
        }
        f78363j.putAll(map);
    }
}
