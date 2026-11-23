package com.haima.hmcp.business;

import com.haima.hmcp.beans.Message;
import com.haima.hmcp.enums.MessageType;
import com.haima.hmcp.listeners.OnSendMessageListener;

/* JADX INFO: loaded from: classes5.dex */
public interface IMessage {
    OnSendMessageListener removeSendMessage(Message message);

    void removeSendMessage(boolean z10, Message message);

    void sendMessage(String str, String str2, String str3, MessageType messageType, OnSendMessageListener onSendMessageListener);

    void stopRetrySendMessage();
}
