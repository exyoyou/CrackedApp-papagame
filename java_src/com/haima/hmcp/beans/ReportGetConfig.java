package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportGetConfig extends ReportInfo implements Serializable {
    private static final long serialVersionUID = 1;
    public String appChannel;
    public String pkgName;

    public ReportGetConfig(String str, String str2) {
        this.appChannel = str;
        this.pkgName = str2;
    }

    public String toString() {
        return "ReportGetConfig{appChannel='" + this.appChannel + "', pkgName='" + this.pkgName + "', eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
