package com.haima.hmcp.business.sensor.bean.report;

import com.haima.hmcp.beans.ReportInfo;

/* JADX INFO: loaded from: classes5.dex */
public class HmSensorAccuracyReportInfo extends ReportInfo {
    public int accuracy;
    public int type;

    public HmSensorAccuracyReportInfo(int i10, int i11) {
        this.type = i10;
        this.accuracy = i11;
    }
}
