package com.haima.hmcp.websocket.messages;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class ServerHandshake extends Message {
    public Map<String, String> headers;

    public ServerHandshake(Map<String, String> map) {
        this.headers = map;
    }
}
