package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportGetCloudService2 extends ReportInfo implements Serializable {
    private static final long serialVersionUID = 1;
    public String apkType;
    public String streamType;

    public ReportGetCloudService2(String str, String str2) {
        this.streamType = str;
        this.apkType = str2;
    }

    public String toString() {
        return "ReportGetCloudService2{streamType='" + this.streamType + "', apkType='" + this.apkType + "', eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
