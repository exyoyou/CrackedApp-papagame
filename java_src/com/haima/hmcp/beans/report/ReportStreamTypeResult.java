package com.haima.hmcp.beans.report;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportStreamTypeResult extends ReportStreamTypeCall implements Serializable {
    private static final long serialVersionUID = 1;
    private int errorCode;
    private String errorMsg;
    private boolean success;

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMsg() {
        return this.errorMsg;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setErrorCode(int i10) {
        this.errorCode = i10;
    }

    public void setErrorMsg(String str) {
        this.errorMsg = str;
    }

    public void setSuccess(boolean z10) {
        this.success = z10;
    }

    @Override // com.haima.hmcp.beans.report.ReportStreamTypeCall, com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportStreamTypeResult{eventDataVer='" + this.eventDataVer + "', streamType='" + this.streamType + "', switchCode=" + this.switchCode + ", success=" + this.success + ", errorCode=" + this.errorCode + ", errorMsg='" + this.errorMsg + "'}";
    }
}
