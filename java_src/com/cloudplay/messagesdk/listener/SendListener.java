package com.cloudplay.messagesdk.listener;

import com.cloudplay.messagesdk.socket.websocket.schedulers.MessageSchedulerType;

/* JADX INFO: loaded from: classes9.dex */
public interface SendListener {
    MessageSchedulerType getSchedulerObserveOn();

    void onResult(boolean z10, String str);
}
