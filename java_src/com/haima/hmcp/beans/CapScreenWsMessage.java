package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class CapScreenWsMessage extends BaseWsMessage<CapScreenData> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.haima.hmcp.beans.BaseWsMessage
    public boolean dataIsValid() {
        return CapScreenData.isValid((CapScreenData) this.data);
    }
}
