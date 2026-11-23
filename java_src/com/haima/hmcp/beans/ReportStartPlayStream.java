package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportStartPlayStream extends ReportEventDataVer implements Serializable {
    public String frameRate;
    public String peakBitrate;
    public String resolutionId;

    public ReportStartPlayStream(String str, String str2, String str3) {
        this.resolutionId = str;
        this.peakBitrate = str2;
        this.frameRate = str3;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportStartPlayStream{resolutionId='" + this.resolutionId + "', peakBitrate='" + this.peakBitrate + "', frameRate='" + this.frameRate + "', eventDataVer='" + this.eventDataVer + "'}";
    }
}
