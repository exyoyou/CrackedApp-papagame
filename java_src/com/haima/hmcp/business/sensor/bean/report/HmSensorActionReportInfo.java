package com.haima.hmcp.business.sensor.bean.report;

import com.haima.hmcp.beans.ReportInfo;

/* JADX INFO: loaded from: classes5.dex */
public class HmSensorActionReportInfo extends ReportInfo {
    public int from;
    public int samplingPeriodUs;
    public int sendPeriodMs;
    public int type;

    public HmSensorActionReportInfo(int i10) {
        this.type = i10;
    }

    public String toString() {
        return "HmSensorActionReport{type=" + this.type + ", samplingPeriodUs=" + this.samplingPeriodUs + ", sendPeriodMs=" + this.sendPeriodMs + ", from=" + this.from + '}';
    }

    public HmSensorActionReportInfo(int i10, int i11, int i12) {
        this(i10);
        this.samplingPeriodUs = i11;
        this.sendPeriodMs = i12;
    }

    public HmSensorActionReportInfo(int i10, int i11, int i12, int i13) {
        this(i10, i11, i12);
        this.from = i13;
    }
}
