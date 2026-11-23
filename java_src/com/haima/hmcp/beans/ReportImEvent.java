package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class ReportImEvent extends ReportEventDataVer {
    public String imeType;
    public String inputData;
    public String statusType;

    public ReportImEvent() {
    }

    public String getImeType() {
        return this.imeType;
    }

    public String getInputData() {
        return this.inputData;
    }

    public String getStatusType() {
        return this.statusType;
    }

    public void setImeType(String str) {
        this.imeType = str;
    }

    public void setInputData(String str) {
        this.inputData = str;
    }

    public void setStatusType(String str) {
        this.statusType = str;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportImEvent{inputData='" + this.inputData + "', statusType='" + this.statusType + "', imeType='" + this.imeType + "', eventDataVer='" + this.eventDataVer + "'}";
    }

    public ReportImEvent(String str) {
        this.inputData = str;
    }
}
