package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class ReportSysNotifyStatus extends ReportEventDataVer {
    public String cli;

    public String getCli() {
        return this.cli;
    }

    public void setCli(String str) {
        this.cli = str;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportSysNotifyStatus{cli='" + this.cli + "'}";
    }
}
