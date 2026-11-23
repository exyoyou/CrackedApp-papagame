package com.papa91.arc;

import android.app.Activity;

/* JADX INFO: loaded from: classes2.dex */
public class CContext {
    public static final String SCENE_ENDGAME = "ENDGAME";
    public static final String SCENE_FBA = "FBA";
    public static final String SCENE_FC = "FC";
    public static final String SCENE_GBA = "GBA";
    public static final String SCENE_PSP = "PSP";
    public static int TARGET_VERSION = 26;
    public static IActivityLifeCycleListener mLifeListener;
    public static ISharePrefrence mShareLitener;
    public static IVideoAdListener mVideoAdListener;

    public interface IActivityLifeCycleListener {
        void onCreated();
    }

    public interface ISharePrefrence {
        String getEmulatorCheckpointUrl();

        String getEmulatorGoldenFingerUrl();

        String getEmulatorOneSkillUrl();

        int getEmulatorStartAdCount();

        String getHasShowAdInfo();

        String getPspGameAdCfg();

        void saveHasShowAdInfo(String str);
    }

    public interface IVideoAdListener {
        void loadAd(Activity activity, String str);

        void loadEndAd(int i10, String str, String str2);

        void showAd(Activity activity, String str, String str2);

        void showEndAd(int i10, String str);

        void showGoldAdDialog(Activity activity, String str, int i10);
    }

    public static void setLifeListener(IActivityLifeCycleListener iActivityLifeCycleListener) {
        mLifeListener = iActivityLifeCycleListener;
    }

    public static void setVideoAdListener(IVideoAdListener iVideoAdListener) {
        mVideoAdListener = iVideoAdListener;
    }
}
