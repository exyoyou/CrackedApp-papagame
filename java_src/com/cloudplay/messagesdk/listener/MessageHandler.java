package com.cloudplay.messagesdk.listener;

import com.cloudplay.messagesdk.socket.websocket.schedulers.MessageSchedulerType;

/* JADX INFO: loaded from: classes9.dex */
public interface MessageHandler {
    MessageSchedulerType getSchedulerMessageHandlerObserveOn();

    void onBinaryMessage(byte[] bArr);

    void onReady();

    void onTextMessage(String str);
}
