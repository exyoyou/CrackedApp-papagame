package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportGetCloudServiceFailed extends ReportBaseFailed implements Serializable {
    private static final long serialVersionUID = 1;
    public int confirm;
    public int opType;

    public ReportGetCloudServiceFailed(String str, String str2, int i10, String str3, int i11, int i12, int i13) {
        super(str, str2, i10, str3, i11);
        this.confirm = i12;
        this.opType = i13;
    }

    @Override // com.haima.hmcp.beans.ReportBaseFailed
    public String toString() {
        return "ReportGetCloudServiceFailed{confirm=" + this.confirm + ", opType=" + this.opType + ", errorCode='" + this.errorCode + "', errorMsg='" + this.errorMsg + "', httpStatusCode=" + this.httpStatusCode + ", httpMsg='" + this.httpMsg + "', timeoutMS=" + this.timeoutMS + ", eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
