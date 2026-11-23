package com.qq.e.comm.constants;

import android.text.TextUtils;
import com.qq.e.ads.ADActivity;
import com.qq.e.ads.LandscapeADActivity;
import com.qq.e.ads.PortraitADActivity;
import com.qq.e.ads.RewardvideoLandscapeADActivity;
import com.qq.e.ads.RewardvideoPortraitADActivity;
import com.qq.e.comm.DownloadService;
import com.qq.e.comm.managers.setting.GlobalSetting;

/* JADX INFO: loaded from: classes2.dex */
public class CustomPkgConstants {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f78290a = DownloadService.class.getName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f78291b = ADActivity.class.getName();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f78292c = PortraitADActivity.class.getName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f78293d = RewardvideoPortraitADActivity.class.getName();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f78294e = LandscapeADActivity.class.getName();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f78295f = RewardvideoLandscapeADActivity.class.getName();

    public static String getADActivityName() {
        String customADActivityClassName = GlobalSetting.getCustomADActivityClassName();
        return !TextUtils.isEmpty(customADActivityClassName) ? customADActivityClassName : f78291b;
    }

    public static String getAssetPluginXorKey() {
        return "";
    }

    public static String getDownLoadServiceName() {
        return f78290a;
    }

    public static String getLandscapeADActivityName() {
        String customLandscapeActivityClassName = GlobalSetting.getCustomLandscapeActivityClassName();
        return !TextUtils.isEmpty(customLandscapeActivityClassName) ? customLandscapeActivityClassName : f78294e;
    }

    public static String getPortraitADActivityName() {
        String customPortraitActivityClassName = GlobalSetting.getCustomPortraitActivityClassName();
        return !TextUtils.isEmpty(customPortraitActivityClassName) ? customPortraitActivityClassName : f78292c;
    }

    public static String getRewardvideoLandscapeADActivityName() {
        String customRewardvideoLandscapeActivityClassName = GlobalSetting.getCustomRewardvideoLandscapeActivityClassName();
        return !TextUtils.isEmpty(customRewardvideoLandscapeActivityClassName) ? customRewardvideoLandscapeActivityClassName : f78295f;
    }

    public static String getRewardvideoPortraitADActivityName() {
        String customRewardvideoPortraitActivityClassName = GlobalSetting.getCustomRewardvideoPortraitActivityClassName();
        return !TextUtils.isEmpty(customRewardvideoPortraitActivityClassName) ? customRewardvideoPortraitActivityClassName : f78293d;
    }
}
