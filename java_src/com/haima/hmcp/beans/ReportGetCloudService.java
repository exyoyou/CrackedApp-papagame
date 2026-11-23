package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportGetCloudService extends ReportInfo implements Serializable {
    private static final long serialVersionUID = 1;
    public int confirm;
    public int opType;

    public ReportGetCloudService(int i10, int i11) {
        this.confirm = i10;
        this.opType = i11;
    }

    public String toString() {
        return "ReportGetCloudService{confirm=" + this.confirm + ", opType=" + this.opType + ", eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
