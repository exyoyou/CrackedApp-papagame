package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class JoinBattleResult extends BaseResult {
    public PlayStreamPayloadData addressInfo;
    public String cid;
    public String encryption;
    public String instructionSet;
    public boolean isTvRtcBlackList;
    public MessageServerInfo msgServInfo;
    public String resolutionId;
    public String secretKey;
    public String sign;
    public String streamType;
    public WebRtcInfo webRtcInfo;

    @Override // com.haima.hmcp.beans.BaseResult
    public String toString() {
        return "JoinBattleResult{code=" + this.code + ", msg='" + this.msg + "', errorCode='" + this.errorCode + "', errorMsg='" + this.errorMsg + "', retryRequestCount=" + this.retryRequestCount + ", cid='" + this.cid + "', resolutionId='" + this.resolutionId + "', secretKey='" + this.secretKey + "', sign='" + this.sign + "', msgServInfo=" + this.msgServInfo + ", encryption='" + this.encryption + "', streamType='" + this.streamType + "', instructionSet='" + this.instructionSet + "', addressInfo=" + this.addressInfo + ", webRtcInfo=" + this.webRtcInfo + ", isTvRtcBlackList=" + this.isTvRtcBlackList + '}';
    }
}
