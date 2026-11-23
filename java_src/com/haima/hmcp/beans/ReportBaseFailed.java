package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportBaseFailed extends ReportInfo implements Serializable {
    private static final long serialVersionUID = 1;
    public String errorCode;
    public String errorMsg;
    public String httpMsg;
    public int httpStatusCode;
    public int timeoutMS;

    public ReportBaseFailed(String str, String str2, int i10, String str3, int i11) {
        this.errorCode = str;
        this.errorMsg = str2;
        this.httpStatusCode = i10;
        this.httpMsg = str3;
        this.timeoutMS = i11;
    }

    public String toString() {
        return "ReportBaseFailed{errorCode='" + this.errorCode + "', errorMsg='" + this.errorMsg + "', httpStatusCode=" + this.httpStatusCode + ", httpMsg='" + this.httpMsg + "', timeoutMS=" + this.timeoutMS + ", eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
