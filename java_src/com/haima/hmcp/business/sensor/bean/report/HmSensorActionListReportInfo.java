package com.haima.hmcp.business.sensor.bean.report;

import com.haima.hmcp.beans.ReportInfo;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class HmSensorActionListReportInfo extends ReportInfo {
    public List<HmSensorActionReportInfo> sensors = new ArrayList();

    public String toString() {
        return "HmSensorActionListReport{sensors=" + this.sensors + '}';
    }
}
