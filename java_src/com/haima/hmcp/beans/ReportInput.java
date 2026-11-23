package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportInput extends ReportEventDataVer implements Serializable {
    public String inputUrl;

    public ReportInput(String str) {
        this.inputUrl = str;
    }

    @Override // com.haima.hmcp.beans.ReportEventDataVer
    public String toString() {
        return "ReportInput{eventDataVer='" + this.eventDataVer + "', inputUrl='" + this.inputUrl + "'}";
    }
}
