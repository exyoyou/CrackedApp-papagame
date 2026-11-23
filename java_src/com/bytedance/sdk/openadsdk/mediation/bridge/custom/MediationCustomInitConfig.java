package com.bytedance.sdk.openadsdk.mediation.bridge.custom;

import com.byazt.zqa.c;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 83, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME})
public class MediationCustomInitConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f23536a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f23537c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    private String f23538da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f23539i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f23540n;
    private String sl;
    private String sp;
    private String tt;
    private String uj;
    private String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f23541x;

    public MediationCustomInitConfig(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.ve = str;
        this.f23537c = str2;
        this.tt = str3;
        this.uj = str4;
        this.f23540n = str5;
        this.f23536a = str6;
        this.sp = str7;
        this.f23541x = str8;
        this.f23539i = str9;
        this.f23538da = str10;
        this.sl = str11;
    }

    public String getADNName() {
        return this.ve;
    }

    public String getAdnInitClassName() {
        return this.uj;
    }

    public String getAppId() {
        return this.f23537c;
    }

    public String getAppKey() {
        return this.tt;
    }

    public String getBannerClassName() {
        return this.f23540n;
    }

    public String getDrawClassName() {
        return this.sl;
    }

    public String getFeedClassName() {
        return this.f23538da;
    }

    public String getFullVideoClassName() {
        return this.f23541x;
    }

    public String getInterstitialClassName() {
        return this.f23536a;
    }

    public String getRewardClassName() {
        return this.sp;
    }

    public String getSplashClassName() {
        return this.f23539i;
    }

    public String toString() {
        return "MediationCustomInitConfig{mAppId='" + this.f23537c + "', mAppKey='" + this.tt + "', mADNName='" + this.ve + "', mAdnInitClassName='" + this.uj + "', mBannerClassName='" + this.f23540n + "', mInterstitialClassName='" + this.f23536a + "', mRewardClassName='" + this.sp + "', mFullVideoClassName='" + this.f23541x + "', mSplashClassName='" + this.f23539i + "', mFeedClassName='" + this.f23538da + "', mDrawClassName='" + this.sl + "'}";
    }

    public MediationCustomInitConfig(ValueSet valueSet) {
        if (valueSet != null) {
            this.ve = valueSet.stringValue(8003);
            this.f23537c = valueSet.stringValue(8534);
            this.tt = valueSet.stringValue(8535);
            this.uj = valueSet.stringValue(8536);
            this.f23540n = valueSet.stringValue(8537);
            this.f23536a = valueSet.stringValue(8538);
            this.sp = valueSet.stringValue(8539);
            this.f23541x = valueSet.stringValue(8540);
            this.f23539i = valueSet.stringValue(8541);
            this.f23538da = valueSet.stringValue(8542);
            this.sl = valueSet.stringValue(8543);
        }
    }
}
