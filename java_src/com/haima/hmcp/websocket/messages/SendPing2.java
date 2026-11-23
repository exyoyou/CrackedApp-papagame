package com.haima.hmcp.websocket.messages;

/* JADX INFO: loaded from: classes5.dex */
public class SendPing2 extends Message {
    private long sendTime;

    public SendPing2(long j10) {
        this.sendTime = j10;
    }

    public long getSendTime() {
        return this.sendTime;
    }
}
