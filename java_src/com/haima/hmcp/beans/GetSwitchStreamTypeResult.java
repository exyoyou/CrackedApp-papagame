package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class GetSwitchStreamTypeResult extends BaseResult {
    public PlayStreamPayloadData addressInfo;
    public String apkType;
    public boolean inTvRtcBlackList;
    public MessageServerInfo msgServInfo;
    public String resolutionId;
    public String sign;
    public String streamType;
    public WebRtcInfo webRtcInfo;

    @Override // com.haima.hmcp.beans.BaseResult
    public String toString() {
        return "GetSwitchStreamTypeResult{addressInfo=" + this.addressInfo + ", webRtcInfo=" + this.webRtcInfo + ", msgServInfo=" + this.msgServInfo + ", streamType='" + this.streamType + "', apkType='" + this.apkType + "', inTvRtcBlackList=" + this.inTvRtcBlackList + '}';
    }
}
