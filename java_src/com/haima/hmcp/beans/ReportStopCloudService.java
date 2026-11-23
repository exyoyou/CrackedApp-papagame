package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportStopCloudService extends ReportEventDataVer implements Serializable {
    public String appChannel;
    public String cid;
    public String pkgName;

    public ReportStopCloudService(String str, String str2, String str3) {
        this.cid = str;
        this.pkgName = str2;
        this.appChannel = str3;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportStopCloudService{cid='" + this.cid + "', pkgName='" + this.pkgName + "', appChannel='" + this.appChannel + "', eventDataVer='" + this.eventDataVer + "'}";
    }
}
