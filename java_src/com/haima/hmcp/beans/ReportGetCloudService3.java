package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportGetCloudService3 extends ReportInfo implements Serializable {
    private static final long serialVersionUID = 1;
    public String apkType;
    public String appChannel;
    public String pkgName;
    public String streamType;

    public ReportGetCloudService3(String str, String str2, String str3, String str4) {
        this.appChannel = str;
        this.pkgName = str2;
        this.streamType = str3;
        this.apkType = str4;
    }

    public String toString() {
        return "ReportGetCloudService3{appChannel='" + this.appChannel + "', pkgName='" + this.pkgName + "', streamType='" + this.streamType + "', apkType='" + this.apkType + "', eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
