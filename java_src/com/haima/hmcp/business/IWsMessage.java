package com.haima.hmcp.business;

import com.haima.hmcp.beans.BaseWsMessage;
import com.haima.hmcp.enums.WsMessageType;
import com.haima.hmcp.listeners.OnSendWsMessageListener;

/* JADX INFO: loaded from: classes5.dex */
public interface IWsMessage {
    void cancelCountDownTimer(boolean z10, String str);

    void notifyResponse(String str, String str2, String str3);

    void notifyResponse(String str, String str2, String str3, String str4, String str5);

    void removeSendWsMessage(boolean z10, String str);

    void sendWsMessage(BaseWsMessage baseWsMessage, WsMessageType wsMessageType, OnSendWsMessageListener onSendWsMessageListener);

    void stopRetrySendWsMessage();
}
