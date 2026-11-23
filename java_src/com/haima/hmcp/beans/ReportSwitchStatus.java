package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportSwitchStatus extends ReportEventDataVer implements Serializable {
    private static final long serialVersionUID = 1;
    public String name;
    public String status;

    public ReportSwitchStatus(String str, String str2) {
        this.name = str;
        this.status = str2;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportSwitchStatus{name='" + this.name + "', status='" + this.status + "', eventDataVer='" + this.eventDataVer + "'}";
    }
}
