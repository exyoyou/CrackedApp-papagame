package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportChangeResolutionEnd extends ReportEventDataVer implements Serializable {
    public String curPeakBitRate;
    public String curResolutionId;
    public String interval;
    public String prePeakBitRate;
    public String preResolutionId;

    public ReportChangeResolutionEnd(String str, String str2, String str3, String str4, String str5) {
        this.curResolutionId = str;
        this.curPeakBitRate = str2;
        this.preResolutionId = str3;
        this.prePeakBitRate = str4;
        this.interval = str5;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportChangeResolutionEnd{curResolutionId='" + this.curResolutionId + "', curPeakBitRate='" + this.curPeakBitRate + "', preResolutionId='" + this.preResolutionId + "', prePeakBitRate='" + this.prePeakBitRate + "', interval='" + this.interval + "', eventDataVer='" + this.eventDataVer + "'}";
    }
}
