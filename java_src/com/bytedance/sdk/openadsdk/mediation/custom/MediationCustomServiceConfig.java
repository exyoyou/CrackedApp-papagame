package com.bytedance.sdk.openadsdk.mediation.custom;

import com.byazt.zqa.c;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 83, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME, 1625})
public final class MediationCustomServiceConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, Object> f23572a = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f23573c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f23574n;
    private String tt;
    private int uj;
    private int ve;

    public MediationCustomServiceConfig(String str, String str2, int i10, int i11, String str3) {
        this.f23573c = str;
        this.tt = str2;
        this.ve = i10;
        this.uj = i11;
        this.f23574n = str3;
    }

    public String getADNNetworkName() {
        return this.f23573c;
    }

    public String getADNNetworkSlotId() {
        return this.tt;
    }

    public int getAdStyleType() {
        return this.ve;
    }

    public String getCustomAdapterJson() {
        return this.f23574n;
    }

    public Map<String, Object> getExtraData() {
        return this.f23572a;
    }

    public int getSubAdtype() {
        return this.uj;
    }

    public String toString() {
        return "MediationCustomServiceConfig{mADNNetworkName='" + this.f23573c + "', mADNNetworkSlotId='" + this.tt + "', mAdStyleType=" + this.ve + ", mSubAdtype=" + this.uj + ", mCustomAdapterJson='" + this.f23574n + "'}";
    }

    public MediationCustomServiceConfig(ValueSet valueSet) {
        if (valueSet != null) {
            this.f23573c = valueSet.stringValue(8003);
            this.tt = valueSet.stringValue(2);
            this.ve = valueSet.intValue(AVMDLDataLoader.KeyIsLiveMaxTrySwitchP2pTimes);
            this.uj = valueSet.intValue(8094);
            this.f23574n = valueSet.stringValue(8547);
            Map<? extends String, ? extends Object> map = (Map) valueSet.objectValue(8075, Map.class);
            if (map == null || map.size() <= 0) {
                return;
            }
            this.f23572a.putAll(map);
        }
    }
}
