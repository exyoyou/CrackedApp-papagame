package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportBaseError extends ReportEventDataVer implements Serializable {
    public String errorCode;
    public String errorMsg;

    public ReportBaseError(String str, String str2) {
        this.errorCode = str;
        this.errorMsg = str2;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportBaseError{errorCode='" + this.errorCode + "', errorMsg='" + this.errorMsg + "', eventDataVer='" + this.eventDataVer + "'}";
    }
}
