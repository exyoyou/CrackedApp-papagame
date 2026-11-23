package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportGetCloudService2Failed extends ReportBaseFailed implements Serializable {
    private static final long serialVersionUID = 1;
    public String apkType;
    public String streamType;

    public ReportGetCloudService2Failed(String str, String str2, int i10, String str3, int i11, String str4, String str5) {
        super(str, str2, i10, str3, i11);
        this.streamType = str4;
        this.apkType = str5;
    }

    @Override // com.haima.hmcp.beans.ReportBaseFailed
    public String toString() {
        return "ReportGetCloudService2Failed{streamType='" + this.streamType + "', apkType='" + this.apkType + "', errorCode='" + this.errorCode + "', errorMsg='" + this.errorMsg + "', httpStatusCode=" + this.httpStatusCode + ", httpMsg='" + this.httpMsg + "', timeoutMS=" + this.timeoutMS + ", eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
