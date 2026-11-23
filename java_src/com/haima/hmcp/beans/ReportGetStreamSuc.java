package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class ReportGetStreamSuc extends ReportInfo {
    public String streamInfo;
    public String streamType;

    public ReportGetStreamSuc(String str, String str2) {
        this.streamInfo = str;
        this.streamType = str2;
    }

    public String toString() {
        return "ReportGetStreamSuc{streamInfo='" + this.streamInfo + "', streamType='" + this.streamType + "', eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
