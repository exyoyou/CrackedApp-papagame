package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportChangeResolutionInfo extends ReportEventDataVer implements Serializable {
    public String curPeakBitRate;
    public String curResolutionId;
    public String resolutionId;
    public String resolutionPeakBitRate;

    public ReportChangeResolutionInfo(String str, String str2, String str3, String str4) {
        this.curResolutionId = str;
        this.curPeakBitRate = str2;
        this.resolutionId = str3;
        this.resolutionPeakBitRate = str4;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportChangeResolutionInfo{curResolutionId='" + this.curResolutionId + "', curPeakBitRate='" + this.curPeakBitRate + "', resolutionId='" + this.resolutionId + "', resolutionPeakBitRate='" + this.resolutionPeakBitRate + "', eventDataVer='" + this.eventDataVer + "'}";
    }
}
