package com.haima.hmcp.beans;

import com.haima.hmcp.listeners.OnSendMessageListener;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class VirtualGamePadCacheBean implements Serializable {
    public OnSendMessageListener listener;
    public Message message;

    public OnSendMessageListener getListener() {
        return this.listener;
    }

    public Message getMessage() {
        return this.message;
    }

    public void setListener(OnSendMessageListener onSendMessageListener) {
        this.listener = onSendMessageListener;
    }

    public void setMessage(Message message) {
        this.message = message;
    }
}
