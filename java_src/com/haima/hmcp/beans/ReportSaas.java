package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportSaas extends ReportInfo implements Serializable {
    public String opType;
    public String saasUrl;

    public ReportSaas(String str, String str2) {
        this.saasUrl = str;
        this.opType = str2;
    }

    public String toString() {
        return "ReportSaas{saasUrl='" + this.saasUrl + "', opType='" + this.opType + "', eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
