package org.webrtc.haima.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes10.dex */
public class ReportPingPong extends ReportEventDataVer implements Serializable {
    public String pingpongCost;

    public ReportPingPong(String str) {
        this.pingpongCost = str;
    }

    @Override // org.webrtc.haima.beans.ReportEventDataVer
    public String toString() {
        return "ReportPingPong{pingpongCost='" + this.pingpongCost + "', eventDataVer='" + this.eventDataVer + "'}";
    }
}
