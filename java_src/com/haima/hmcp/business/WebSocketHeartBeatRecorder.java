package com.haima.hmcp.business;

/* JADX INFO: loaded from: classes5.dex */
class WebSocketHeartBeatRecorder {
    private int pingCount;
    private int pongCount;

    WebSocketHeartBeatRecorder() {
    }

    boolean isNormal() {
        return this.pingCount == this.pongCount;
    }

    void ping() {
        this.pingCount++;
    }

    void pong() {
        this.pongCount++;
    }
}
