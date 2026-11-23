package com.haima.hmcp.beans.report;

import com.haima.hmcp.beans.ReportEventDataVer;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportStreamTypeCall extends ReportEventDataVer implements Serializable {
    private static final long serialVersionUID = 1;
    public String streamType;
    public int switchCode;

    public String getStreamType() {
        return this.streamType;
    }

    public int getSwitchCode() {
        return this.switchCode;
    }

    public void setStreamType(String str) {
        this.streamType = str;
    }

    public void setSwitchCode(int i10) {
        this.switchCode = i10;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportStreamTypeResult{eventDataVer='" + this.eventDataVer + "', streamType='" + this.streamType + "', code=" + this.switchCode + '}';
    }
}
