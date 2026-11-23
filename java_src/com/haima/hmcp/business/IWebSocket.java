package com.haima.hmcp.business;

import com.haima.hmcp.beans.WebSocketConfig;
import com.haima.hmcp.listeners.WebSocketObserver;

/* JADX INFO: loaded from: classes5.dex */
public interface IWebSocket {
    void addObserver(WebSocketManager.WebSocketType webSocketType, WebSocketObserver webSocketObserver);

    void cleanObserver();

    void connect2Access(String str, WebSocketManager.SimpleAccessConnectionHandler simpleAccessConnectionHandler);

    void connect2Download(String str, WebSocketManager.SimpleTransmissionConnectionHandler simpleTransmissionConnectionHandler);

    void connect2InstanceWsServer(String str, WebSocketManager.SimpleInstanceConnectionHandler simpleInstanceConnectionHandler);

    void connect2Transfer(String str, TransferHelper transferHelper);

    void connect2Upload(String str, WebSocketManager.SimpleTransmissionConnectionHandler simpleTransmissionConnectionHandler);

    void disconnect();

    void disconnect2Access();

    void disconnect2Download();

    void disconnect2InstanceWsServer();

    void disconnect2Transfer();

    void disconnect2Upload();

    boolean isConnect(WebSocketManager.WebSocketType webSocketType);

    boolean isHearBeatNormal(WebSocketManager.WebSocketType webSocketType);

    void removeObserver(WebSocketManager.WebSocketType webSocketType, WebSocketObserver webSocketObserver);

    void sendBinaryMessage(WebSocketManager.WebSocketType webSocketType, byte[] bArr);

    void sendTextMessage(WebSocketManager.WebSocketType webSocketType, String str);

    void sendTextMessage(WebSocketManager.WebSocketType webSocketType, String str, boolean z10);

    void setConfig(WebSocketConfig webSocketConfig);
}
