package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class GetCloudServiceResult2 extends BaseResult {
    public PlayStreamPayloadData addressInfo;
    public String apkType;
    public String cid;
    public boolean disableAutoStream;
    public DistanceLimit distanceLimit;
    public GSMAddressInfo gsmAddressInfo;
    public boolean hasConfirmed;
    public boolean inTvRtcBlackList;
    public String instructionSet;
    public String maintainBegin;
    public String maintainEnd;
    public String minimumBitRate;
    public MessageServerInfo msgServInfo;
    public String resolutionId;
    public String resultErrorMsg;
    public String secretKey;
    public String sign;
    public String stateChangeReason;
    public String streamType;
    public WebRtcInfo webRtcInfo;
    public int battleOnlineType = 0;
    public Integer gamePad = null;

    @Override // com.haima.hmcp.beans.BaseResult
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("GetCloudServiceResult2{ ");
        sb2.append(super.toString());
        sb2.append(", cloudId = ");
        sb2.append(this.cid);
        sb2.append(", secretKey = ");
        sb2.append(this.secretKey);
        sb2.append(", inTvRtcBlackList = ");
        sb2.append(this.inTvRtcBlackList);
        sb2.append(", instructionSet='");
        sb2.append(this.instructionSet);
        sb2.append('\'');
        sb2.append(", gsmAddressInfo=");
        GSMAddressInfo gSMAddressInfo = this.gsmAddressInfo;
        sb2.append(gSMAddressInfo == null ? "null" : gSMAddressInfo.toString());
        sb2.append(", resolutionId = ");
        sb2.append(this.resolutionId);
        String string = sb2.toString();
        if (this.distanceLimit != null) {
            string = string + ", distanceLimitExceeded = " + this.distanceLimit.distanceLimitExceeded + ", minDistance = " + this.distanceLimit.minDistance;
        }
        if (this.msgServInfo == null) {
            return string;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(string);
        sb3.append(", ip: ");
        sb3.append(this.msgServInfo.serverIp);
        sb3.append(", serverPort = ");
        sb3.append(this.msgServInfo.serverPort);
        sb3.append(", socketUrl = ");
        sb3.append(this.msgServInfo.socketUrl);
        sb3.append(", socketUrlList = ");
        sb3.append(this.msgServInfo.socketUrlList);
        sb3.append(", battleOnlineType = ");
        sb3.append(this.battleOnlineType);
        sb3.append(", gamePad = ");
        Integer num = this.gamePad;
        sb3.append(num != null ? Integer.valueOf(num.intValue()) : "null");
        sb3.append('}');
        return sb3.toString();
    }
}
