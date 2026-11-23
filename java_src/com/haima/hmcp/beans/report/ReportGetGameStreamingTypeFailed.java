package com.haima.hmcp.beans.report;

import com.haima.hmcp.beans.GameStreamingType;
import com.haima.hmcp.beans.ReportBaseFailed;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportGetGameStreamingTypeFailed extends ReportBaseFailed implements Serializable {
    public GameStreamingType gameStreamingType;

    public ReportGetGameStreamingTypeFailed(String str, String str2, int i10, String str3, int i11, GameStreamingType gameStreamingType) {
        super(str, str2, i10, str3, i11);
        this.gameStreamingType = gameStreamingType;
    }

    @Override // com.haima.hmcp.beans.ReportBaseFailed
    public String toString() {
        return "ReportGetGameStreamingTypeFailed{errorCode='" + this.errorCode + "', errorMsg='" + this.errorMsg + "', httpStatusCode=" + this.httpStatusCode + ", httpMsg='" + this.httpMsg + "', timeoutMS=" + this.timeoutMS + ", gameStreamingType=" + this.gameStreamingType + ", eventDataVer='" + this.eventDataVer + "', retryRequestCount=" + this.retryRequestCount + '}';
    }
}
