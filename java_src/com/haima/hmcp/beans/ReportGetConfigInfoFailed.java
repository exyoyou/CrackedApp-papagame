package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportGetConfigInfoFailed extends ReportBaseFailed implements Serializable {
    public String appChannel;
    public String pkgName;

    public ReportGetConfigInfoFailed(String str, String str2, int i10, String str3, int i11, String str4, String str5) {
        super(str, str2, i10, str3, i11);
        this.appChannel = str4;
        this.pkgName = str5;
    }

    @Override // com.haima.hmcp.beans.ReportBaseFailed
    public String toString() {
        return "ReportGetConfigInfoFailed{appChannel='" + this.appChannel + "', pkgName='" + this.pkgName + "', errorCode='" + this.errorCode + "', errorMsg='" + this.errorMsg + "', httpStatusCode=" + this.httpStatusCode + ", httpMsg='" + this.httpMsg + "', timeoutMS=" + this.timeoutMS + ", eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
