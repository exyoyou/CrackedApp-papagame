package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportPingPong extends ReportEventDataVer implements Serializable {
    public String pingpongCost;

    public ReportPingPong(String str) {
        this.pingpongCost = str;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportPingPong{pingpongCost='" + this.pingpongCost + "', eventDataVer='" + this.eventDataVer + "'}";
    }
}
