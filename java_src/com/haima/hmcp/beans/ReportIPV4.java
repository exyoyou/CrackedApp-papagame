package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportIPV4 extends ReportInfo implements Serializable {
    private static final long serialVersionUID = 1;
    public String ipv4Address;
    public String url;

    public ReportIPV4(String str, String str2) {
        this.url = str;
        this.ipv4Address = str2;
    }

    public String toString() {
        return "ReportIPV4{url='" + this.url + "', ipv4Address='" + this.ipv4Address + "', eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
