package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportRemoteCapture extends ReportEventDataVer implements Serializable {
    private static final long serialVersionUID = 1;
    public String interval;
    public int opType;

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportRemoteCapture{eventDataVer='" + this.eventDataVer + "', opType=" + this.opType + ", interval='" + this.interval + "'}";
    }
}
