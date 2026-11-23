package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class GPSWsMessage extends BaseWsMessage<GPSData> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.haima.hmcp.beans.BaseWsMessage
    public boolean dataIsValid() {
        return GPSData.isValid((GPSData) this.data);
    }
}
