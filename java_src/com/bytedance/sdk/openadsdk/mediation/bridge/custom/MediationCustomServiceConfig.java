package com.bytedance.sdk.openadsdk.mediation.bridge.custom;

import com.byazt.zqa.c;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 83, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME, 1625})
public final class MediationCustomServiceConfig {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f23546c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f23547n;
    private String tt;
    private int uj;
    private int ve;

    public MediationCustomServiceConfig(String str, String str2, int i10, int i11, String str3) {
        this.f23546c = str;
        this.tt = str2;
        this.ve = i10;
        this.uj = i11;
        this.f23547n = str3;
    }

    public String getADNNetworkName() {
        return this.f23546c;
    }

    public String getADNNetworkSlotId() {
        return this.tt;
    }

    public int getAdStyleType() {
        return this.ve;
    }

    public String getCustomAdapterJson() {
        return this.f23547n;
    }

    public int getSubAdtype() {
        return this.uj;
    }

    public String toString() {
        return "MediationCustomServiceConfig{mADNNetworkName='" + this.f23546c + "', mADNNetworkSlotId='" + this.tt + "', mAdStyleType=" + this.ve + ", mSubAdtype=" + this.uj + ", mCustomAdapterJson='" + this.f23547n + "'}";
    }

    public MediationCustomServiceConfig(ValueSet valueSet) {
        if (valueSet != null) {
            this.f23546c = valueSet.stringValue(8003);
            this.tt = valueSet.stringValue(2);
            this.ve = valueSet.intValue(AVMDLDataLoader.KeyIsLiveMaxTrySwitchP2pTimes);
            this.uj = valueSet.intValue(8094);
            this.f23547n = valueSet.stringValue(8547);
        }
    }
}
