package com.haima.hmcp.websocket.interfaces;

/* JADX INFO: loaded from: classes5.dex */
public interface IThreadMessenger {

    public interface OnMessageListener {
        void onMessage(Object obj);
    }

    void cleanup();

    void notify(Object obj);

    void postDelayed(Runnable runnable, long j10);

    void setOnMessageListener(OnMessageListener onMessageListener);
}
