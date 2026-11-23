package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportChangeResolutionStart extends ReportChangeResolutionInfo implements Serializable {
    public String autoSwitchDetectInterval;
    public String autoSwitchDuration;
    public String autoSwitchFrozenTime;
    public String percent;

    public ReportChangeResolutionStart(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        super(str, str2, str3, str4);
        this.autoSwitchDuration = str5;
        this.autoSwitchFrozenTime = str6;
        this.autoSwitchDetectInterval = str7;
        this.percent = str8;
    }

    @Override // com.haima.hmcp.beans.ReportChangeResolutionInfo, com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportChangeResolutionStart{autoSwitchDuration='" + this.autoSwitchDuration + "', autoSwitchFrozenTime='" + this.autoSwitchFrozenTime + "', autoSwitchDetectInterval='" + this.autoSwitchDetectInterval + "', percent='" + this.percent + "', curResolutionId='" + this.curResolutionId + "', curPeakBitRate='" + this.curPeakBitRate + "', preResolutionId='" + this.resolutionId + "', prePeakBitRate='" + this.resolutionPeakBitRate + "', eventDataVer='" + this.eventDataVer + "'}";
    }
}
