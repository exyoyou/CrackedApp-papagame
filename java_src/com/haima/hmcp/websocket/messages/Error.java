package com.haima.hmcp.websocket.messages;

/* JADX INFO: loaded from: classes5.dex */
public class Error extends Message {
    public Exception mException;

    public Error(Exception exc) {
        this.mException = exc;
    }
}
