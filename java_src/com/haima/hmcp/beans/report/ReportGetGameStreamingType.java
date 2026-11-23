package com.haima.hmcp.beans.report;

import com.haima.hmcp.beans.GameStreamingType;
import com.haima.hmcp.beans.ReportInfo;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportGetGameStreamingType extends ReportInfo implements Serializable {
    private static final long serialVersionUID = 1;
    public GameStreamingType gameStreamingType;

    public ReportGetGameStreamingType(GameStreamingType gameStreamingType) {
        this.gameStreamingType = gameStreamingType;
    }

    public String toString() {
        return "ReportGetGameStreamingType{gameStreamingType=" + this.gameStreamingType + '}';
    }
}
