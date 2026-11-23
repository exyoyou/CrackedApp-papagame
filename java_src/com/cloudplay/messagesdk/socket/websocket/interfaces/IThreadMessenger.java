package com.cloudplay.messagesdk.socket.websocket.interfaces;

import com.cloudplay.messagesdk.socket.websocket.schedulers.MessageSchedulerType;

/* JADX INFO: loaded from: classes9.dex */
public interface IThreadMessenger {

    public interface OnMessageListener {
        void onMessage(Object obj);
    }

    void cleanup();

    void messageHandleObserverOn(MessageSchedulerType messageSchedulerType);

    void notify(Object obj);

    void postDelayed(Runnable runnable, long j10);

    void setOnMessageListener(OnMessageListener onMessageListener);
}
