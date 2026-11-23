package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportScreenUrl extends ReportEventDataVer implements Serializable {
    public String screenUrl;

    public ReportScreenUrl(String str) {
        this.screenUrl = str;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportScreenUrl{screenUrl='" + this.screenUrl + "', eventDataVer='" + this.eventDataVer + "'}";
    }
}
