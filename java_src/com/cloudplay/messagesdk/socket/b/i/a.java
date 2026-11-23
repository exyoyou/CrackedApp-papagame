package com.cloudplay.messagesdk.socket.b.i;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.cloudplay.messagesdk.socket.b.g.l;
import com.cloudplay.messagesdk.socket.b.g.o;
import com.cloudplay.messagesdk.socket.websocket.interfaces.IThreadMessenger;
import com.cloudplay.messagesdk.socket.websocket.schedulers.MessageSchedulerType;

/* JADX INFO: loaded from: classes9.dex */
public class a implements IThreadMessenger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f24224a = new HandlerC0530a(Looper.getMainLooper(), null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IThreadMessenger.OnMessageListener f24225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private MessageSchedulerType f24226c;

    /* JADX INFO: renamed from: com.cloudplay.messagesdk.socket.b.i.a$a, reason: collision with other inner class name */
    class HandlerC0530a extends Handler {
        HandlerC0530a(Looper looper, Handler.Callback callback) {
            super(looper, callback);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (a.this.f24225b != null) {
                a.this.f24225b.onMessage(message.obj);
            }
        }
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IThreadMessenger
    public void cleanup() {
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IThreadMessenger
    public void messageHandleObserverOn(MessageSchedulerType messageSchedulerType) {
        this.f24226c = messageSchedulerType;
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IThreadMessenger
    public void notify(Object obj) {
        if (this.f24226c != MessageSchedulerType.SUB_THREAD || !a(obj)) {
            Message messageObtainMessage = this.f24224a.obtainMessage();
            messageObtainMessage.obj = obj;
            this.f24224a.sendMessage(messageObtainMessage);
        } else {
            IThreadMessenger.OnMessageListener onMessageListener = this.f24225b;
            if (onMessageListener != null) {
                onMessageListener.onMessage(obj);
            }
        }
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IThreadMessenger
    public void postDelayed(Runnable runnable, long j10) {
        this.f24224a.postDelayed(runnable, j10);
    }

    @Override // com.cloudplay.messagesdk.socket.websocket.interfaces.IThreadMessenger
    public void setOnMessageListener(IThreadMessenger.OnMessageListener onMessageListener) {
        this.f24225b = onMessageListener;
    }

    private boolean a(Object obj) {
        return (obj instanceof com.cloudplay.messagesdk.socket.b.g.a) || (obj instanceof o) || (obj instanceof l);
    }
}
