package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportInitFailed extends ReportBaseFailed implements Serializable {
    private static final long serialVersionUID = 1;
    public String accessKeyId;
    public String channelId;

    public ReportInitFailed(String str, String str2, int i10, String str3, int i11, String str4, String str5) {
        super(str, str2, i10, str3, i11);
        this.accessKeyId = str4;
        this.channelId = str5;
    }

    @Override // com.haima.hmcp.beans.ReportBaseFailed
    public String toString() {
        return "ReportInitFailed{accessKeyId='" + this.accessKeyId + "', channelId='" + this.channelId + "', errorCode='" + this.errorCode + "', errorMsg='" + this.errorMsg + "', httpStatusCode=" + this.httpStatusCode + ", httpMsg='" + this.httpMsg + "', timeoutMS=" + this.timeoutMS + ", eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
