package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportStopCloudServiceFailed extends ReportBaseFailed implements Serializable {
    public String appChannel;
    public String cid;
    public String pkgName;

    public ReportStopCloudServiceFailed(String str, String str2, int i10, String str3, int i11, String str4, String str5, String str6) {
        super(str, str2, i10, str3, i11);
        this.cid = str4;
        this.pkgName = str5;
        this.appChannel = str6;
    }

    @Override // com.haima.hmcp.beans.ReportBaseFailed
    public String toString() {
        return "ReportStopCloudServiceFailed{cid='" + this.cid + "', pkgName='" + this.pkgName + "', appChannel='" + this.appChannel + "', errorCode='" + this.errorCode + "', errorMsg='" + this.errorMsg + "', httpStatusCode=" + this.httpStatusCode + ", httpMsg='" + this.httpMsg + "', timeoutMS=" + this.timeoutMS + ", eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
