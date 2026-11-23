package com.byazt.yl;

import android.text.TextUtils;
import com.byazt.nbs.da;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kwad.components.offline.api.explore.model.ExploreConstants;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 509, 20})
public final class c {
    public static String c(int i10) {
        if (i10 == 3) {
            return MediationConstant.ADN_GDT;
        }
        if (i10 == 1) {
            return MediationConstant.ADN_PANGLE;
        }
        if (i10 == 4) {
            return MediationConstant.ADN_MINTEGRAL;
        }
        if (i10 == 5) {
            return MediationConstant.ADN_UNITY;
        }
        if (i10 == 6) {
            return "baidu";
        }
        if (i10 == 7) {
            return MediationConstant.ADN_KS;
        }
        if (i10 == 8) {
            return "sigmob";
        }
        if (i10 == 9) {
            return MediationConstant.ADN_KLEVIN;
        }
        if (i10 == 10) {
            return MediationConstant.ADN_XIAOMI;
        }
        return i10 == -1 ? "custom" : "";
    }

    public static String tt(int i10) {
        switch (i10) {
            case 1:
                return "Banner";
            case 2:
                return ExploreConstants.SCENE_INTERSTITIAL;
            case 3:
            case 4:
                return ExploreConstants.SCENE_SPLASH;
            case 5:
                return "Native";
            case 6:
            default:
                return "UnKnow";
            case 7:
                return "RewardVideo";
            case 8:
                return "FullVideo";
            case 9:
                return "Draw";
            case 10:
                return "InterstitialFull";
        }
    }

    public static String c(int i10, int i11) {
        switch (i10) {
            case 1:
                return "Banner";
            case 2:
                return ExploreConstants.SCENE_INTERSTITIAL;
            case 3:
            case 4:
                return ExploreConstants.SCENE_SPLASH;
            case 5:
                if (i11 == 4) {
                    return "Native";
                }
                if (i11 == 5) {
                    return "Draw";
                }
                return i11 == 3 ? "Banner" : "Native";
            case 6:
            default:
                return null;
            case 7:
                if (i11 == 6) {
                    return "RewardVideo";
                }
                if (i11 == 7) {
                    return "FullVideo";
                }
                return i11 == 8 ? ExploreConstants.SCENE_INTERSTITIAL : "RewardVideo";
            case 8:
                return "FullVideo";
            case 9:
                return "Draw";
            case 10:
                if (i11 == 1) {
                    return ExploreConstants.SCENE_INTERSTITIAL;
                }
                if (i11 == 2) {
                    return "FullVideo";
                }
                return null;
        }
    }

    public static int tt(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if (str.startsWith(MediationConstant.ADN_GDT)) {
            return 3;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_PANGLE)) {
            return 1;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_MINTEGRAL)) {
            return 4;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_UNITY)) {
            return 5;
        }
        if (str.equalsIgnoreCase("baidu")) {
            return 6;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_KS)) {
            return 7;
        }
        if (str.equalsIgnoreCase("sigmob")) {
            return 8;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_KLEVIN)) {
            return 9;
        }
        return str.equalsIgnoreCase(MediationConstant.ADN_XIAOMI) ? 10 : -1;
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_GDT)) {
            return MediationConstant.ADN_GDT;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_PANGLE)) {
            return MediationConstant.ADN_PANGLE;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_MINTEGRAL)) {
            return MediationConstant.ADN_MINTEGRAL;
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_UNITY)) {
            return MediationConstant.ADN_UNITY;
        }
        if (str.equalsIgnoreCase("baidu")) {
            return "baidu";
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_KS)) {
            return MediationConstant.ADN_KS;
        }
        if (str.equalsIgnoreCase("sigmob")) {
            return "sigmob";
        }
        if (str.equalsIgnoreCase(MediationConstant.ADN_KLEVIN)) {
            return MediationConstant.ADN_KLEVIN;
        }
        return str.equalsIgnoreCase(MediationConstant.ADN_XIAOMI) ? MediationConstant.ADN_XIAOMI : str;
    }

    public static String c(int i10, int i11, da daVar) {
        switch (i10) {
            case 1:
                return "Banner";
            case 2:
                return ExploreConstants.SCENE_INTERSTITIAL;
            case 3:
            case 4:
                return ExploreConstants.SCENE_SPLASH;
            case 5:
                if (i11 != 4) {
                    if (i11 == 5) {
                        return "NativeDraw";
                    }
                    return i11 == 3 ? "Banner" : "Native-自渲染";
                }
                if (daVar == null) {
                    return "Native-自渲染";
                }
                int iDa = daVar.da();
                if (TextUtils.equals(daVar.nu(), "baidu") && (iDa == 1 || iDa == 2)) {
                    return "Native-自渲染";
                }
                return (iDa == 1 || iDa == 3) ? "Native-模板渲染" : "Native-自渲染";
            case 6:
            default:
                return null;
            case 7:
                if (i11 == 6) {
                    return "Reward_RewardVideo";
                }
                if (i11 == 7) {
                    return "Reward_FullVideo";
                }
                return i11 == 8 ? "Reward_Interstitial" : "Reward_RewardVideo";
            case 8:
                return "FullVideo";
            case 9:
                return "NativeDraw";
            case 10:
                if (i11 == 1) {
                    return "InterstitialFull—Interstitial";
                }
                if (i11 == 2) {
                    return "InterstitialFull—FullVideo";
                }
                return null;
        }
    }
}
