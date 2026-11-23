package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class GetCloudServiceResult extends BaseResult {
    public PlayStreamPayloadData addressInfo;
    public GSMAddressInfo gsmAddressInfo;
    public String resultId;
    public String stateChangeReason;
    public int status;
    public WebRtcInfo wWebRtcInfo;

    @Override // com.haima.hmcp.beans.BaseResult
    public String toString() {
        return "GetCloudServiceResult{status=" + this.status + ", resultId='" + this.resultId + "', addressInfo=" + this.addressInfo + ", wWebRtcInfo=" + this.wWebRtcInfo + ", stateChangeReason='" + this.stateChangeReason + "', gsmAddressInfo=" + this.gsmAddressInfo + ", code=" + this.code + ", msg='" + this.msg + "', errorCode='" + this.errorCode + "', errorMsg='" + this.errorMsg + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
