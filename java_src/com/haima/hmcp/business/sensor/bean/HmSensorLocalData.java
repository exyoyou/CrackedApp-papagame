package com.haima.hmcp.business.sensor.bean;

import com.haima.hmcp.business.sensor.bean.report.HmSensorDataReportInfo;

/* JADX INFO: loaded from: classes5.dex */
public class HmSensorLocalData {
    public HmSensorDataReportInfo report;
    public long reportTimeStamp;
    public int sendPeriodMs;
    public long timeStamp;

    public HmSensorLocalData(int i10, HmSensorDataReportInfo hmSensorDataReportInfo) {
        this.sendPeriodMs = i10;
        this.report = hmSensorDataReportInfo;
    }
}
