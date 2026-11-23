package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class ClipBoardWsMessage extends BaseWsMessage<ClipBoardData> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.haima.hmcp.beans.BaseWsMessage
    public boolean dataIsValid() {
        return ClipBoardData.isDataValid((ClipBoardData) this.data);
    }
}
