package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportExitQueueInBGCancelType extends ReportEventDataVer implements Serializable {
    public String type;

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportExitQueueInBGCancelType{type='" + this.type + "'}";
    }
}
