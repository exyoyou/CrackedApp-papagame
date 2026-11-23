package com.haima.hmcp.beans.report;

import com.haima.hmcp.beans.ReportEventDataVer;

/* JADX INFO: loaded from: classes5.dex */
public class ReportVirtualGamePadPayPullResult extends ReportEventDataVer {
    public String mId;
    public String msg;

    public ReportVirtualGamePadPayPullResult(String str, String str2) {
        this.mId = str;
        this.msg = str2;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportVirtualGamePadPayPullResult{mId='" + this.mId + "', msg='" + this.msg + "', eventDataVer='" + this.eventDataVer + "'}";
    }
}
