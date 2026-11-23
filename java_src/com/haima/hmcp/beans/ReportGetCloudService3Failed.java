package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportGetCloudService3Failed extends ReportBaseFailed implements Serializable {
    private static final long serialVersionUID = 1;
    public String apkType;
    public String appChannel;
    public String pkgName;
    public String streamType;

    public ReportGetCloudService3Failed(String str, String str2, int i10, String str3, int i11, String str4, String str5, String str6, String str7) {
        super(str, str2, i10, str3, i11);
        this.appChannel = str4;
        this.pkgName = str5;
        this.streamType = str6;
        this.apkType = str7;
    }

    @Override // com.haima.hmcp.beans.ReportBaseFailed
    public String toString() {
        return "ReportGetCloudService3Failed{appChannel='" + this.appChannel + "', pkgName='" + this.pkgName + "', streamType='" + this.streamType + "', apkType='" + this.apkType + "', errorCode='" + this.errorCode + "', errorMsg='" + this.errorMsg + "', httpStatusCode=" + this.httpStatusCode + ", httpMsg='" + this.httpMsg + "', timeoutMS=" + this.timeoutMS + ", eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
