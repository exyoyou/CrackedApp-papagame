package com.haima.hmcp.beans;

import com.haima.hmcp.cloud.video.bean.DownloadTransferData;
import com.haima.hmcp.enums.StreamType;
import com.haima.hmcp.listeners.OnSwitchStreamTypeListener;

/* JADX INFO: loaded from: classes5.dex */
public class SwitchStreamTypeData {
    public static final int SWITCH_NORMAL = 1;
    public static final int SWITCH_RTC_FAILED = 2;
    public int apkType;
    public BattleMode battleMode;
    public ClientImeType clientImeType;
    public CloudPlayInfo cloudPlayInfo;
    public DownloadTransferData downloadTransferData;
    public String extParam;
    public GamePlatformType gamePlatformType;
    public String mCloudId;
    public OnSwitchStreamTypeListener mOnSwitchStreamTypeListener;
    public PlayStreamPayloadData playData;
    public String resolutionId;
    public StreamType streamType;
    public int switchCode = 1;
    public Boolean enableHighBitrate = null;

    public int getApkType() {
        return this.apkType;
    }

    public String getCloudId() {
        return this.mCloudId;
    }

    public CloudPlayInfo getCloudPlayInfo() {
        return this.cloudPlayInfo;
    }

    public String getExtParam() {
        return this.extParam;
    }

    public GamePlatformType getGamePlatformType() {
        return this.gamePlatformType;
    }

    public OnSwitchStreamTypeListener getOnSwitchStreamTypeListener() {
        return this.mOnSwitchStreamTypeListener;
    }

    public PlayStreamPayloadData getPlayData() {
        return this.playData;
    }

    public StreamType getStreamType() {
        return this.streamType;
    }

    public void setApkType(int i10) {
        this.apkType = i10;
    }

    public void setCloudId(String str) {
        this.mCloudId = str;
    }

    public void setCloudPlayInfo(CloudPlayInfo cloudPlayInfo) {
        this.cloudPlayInfo = cloudPlayInfo;
    }

    public void setExtParam(String str) {
        this.extParam = str;
    }

    public void setGamePlatformType(GamePlatformType gamePlatformType) {
        this.gamePlatformType = gamePlatformType;
    }

    public void setOnSwitchStreamTypeListener(OnSwitchStreamTypeListener onSwitchStreamTypeListener) {
        this.mOnSwitchStreamTypeListener = onSwitchStreamTypeListener;
    }

    public void setPlayData(PlayStreamPayloadData playStreamPayloadData) {
        this.playData = playStreamPayloadData;
    }

    public void setStreamType(StreamType streamType) {
        this.streamType = streamType;
    }

    public String toString() {
        return "SwitchStreamTypeData{mCloudId='" + this.mCloudId + "', type='" + this.streamType + "', apkType=" + this.apkType + ", playData=" + this.playData + ", cloudPlayInfo=" + this.cloudPlayInfo + ", clientImeType=" + this.clientImeType + ", downloadTransferData=" + this.downloadTransferData + ", switchCode=" + this.switchCode + ", resolutionId='" + this.resolutionId + "', extParam='" + this.extParam + "', gamePlatformType=" + this.gamePlatformType + ", enableHighBitrate=" + this.enableHighBitrate + ", battleMode=" + this.battleMode + ", mOnSwitchStreamTypeListener=" + this.mOnSwitchStreamTypeListener + '}';
    }
}
