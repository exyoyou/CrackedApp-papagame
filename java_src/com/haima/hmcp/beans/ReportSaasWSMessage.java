package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportSaasWSMessage extends ReportEventDataVer implements Serializable {
    public String operation;
    public String payload;
    public String type;

    public ReportSaasWSMessage(String str, String str2, String str3) {
        this.type = str;
        this.operation = str2;
        this.payload = str3;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportSaasWSMessage{type='" + this.type + "', operation='" + this.operation + "', payload='" + this.payload + "', eventDataVer='" + this.eventDataVer + "'}";
    }
}
