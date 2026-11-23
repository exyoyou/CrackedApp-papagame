package com.haima.hmcp.websocket.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.haima.hmcp.websocket.interfaces.IThreadMessenger;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidThreadMessenger implements IThreadMessenger {
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.haima.hmcp.websocket.utils.AndroidThreadMessenger.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (AndroidThreadMessenger.this.mListener != null) {
                AndroidThreadMessenger.this.mListener.onMessage(message.obj);
            }
        }
    };
    private IThreadMessenger.OnMessageListener mListener;

    @Override // com.haima.hmcp.websocket.interfaces.IThreadMessenger
    public void cleanup() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.haima.hmcp.websocket.interfaces.IThreadMessenger
    public void notify(Object obj) {
        Message messageObtainMessage = this.mHandler.obtainMessage();
        messageObtainMessage.obj = obj;
        this.mHandler.sendMessage(messageObtainMessage);
    }

    @Override // com.haima.hmcp.websocket.interfaces.IThreadMessenger
    public void postDelayed(Runnable runnable, long j10) {
        this.mHandler.postDelayed(runnable, j10);
    }

    @Override // com.haima.hmcp.websocket.interfaces.IThreadMessenger
    public void setOnMessageListener(IThreadMessenger.OnMessageListener onMessageListener) {
        this.mListener = onMessageListener;
    }
}
