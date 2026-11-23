package com.haima.hmcp.business.sensor.bean.report;

import com.haima.hmcp.beans.ReportInfo;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class HmSensorDataReportInfo extends ReportInfo {
    public List<InnerData> data = new ArrayList();
    public int type;

    public static class InnerData {
        public long timestamp;
        public float[] value;
    }
}
