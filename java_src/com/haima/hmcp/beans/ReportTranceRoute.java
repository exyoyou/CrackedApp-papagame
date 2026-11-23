package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportTranceRoute extends ReportEventDataVer implements Serializable {
    public String instanceUrl;
    public String traceRouteLog;

    public ReportTranceRoute(String str, String str2) {
        this.instanceUrl = str;
        this.traceRouteLog = str2;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportTranceRoute{instanceUrl='" + this.instanceUrl + "', traceRouteLog='" + this.traceRouteLog + "', eventDataVer='" + this.eventDataVer + "'}";
    }
}
