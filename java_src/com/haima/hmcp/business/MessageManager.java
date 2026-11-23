package com.haima.hmcp.business;

import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.beans.FutureCount;
import com.haima.hmcp.beans.Message;
import com.haima.hmcp.beans.report.CountlyEventId;
import com.haima.hmcp.beans.report.ReportVirtualGamePadPayPullResult;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.MessageType;
import com.haima.hmcp.listeners.OnSendMessageListener;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.Utils;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class MessageManager extends BaseManager implements IMessage {
    private static final String TAG = "MessageManager";
    private ScheduledExecutorService executorService;
    private final IWebSocket mWebSocketManager;
    private ConcurrentHashMap<String, FutureCount> messageFutureMap;
    private ConcurrentHashMap<String, OnSendMessageListener> sendListenerList;

    public MessageManager(Context context, IWebSocket iWebSocket) {
        super(context);
        this.sendListenerList = new ConcurrentHashMap<>();
        this.messageFutureMap = new ConcurrentHashMap<>();
        this.executorService = Executors.newSingleThreadScheduledExecutor();
        this.mWebSocketManager = iWebSocket;
    }

    private Future resendMessage(final WebSocketManager.WebSocketType webSocketType, final Message message, final OnSendMessageListener onSendMessageListener) {
        ScheduledExecutorService scheduledExecutorService = this.executorService;
        if (scheduledExecutorService != null) {
            return scheduledExecutorService.schedule(new Runnable() { // from class: com.haima.hmcp.business.MessageManager.1
                @Override // java.lang.Runnable
                public void run() {
                    MessageManager.this.sendMessage(webSocketType, message, onSendMessageListener);
                }
            }, 2000L, TimeUnit.MILLISECONDS);
        }
        return null;
    }

    @Override // com.haima.hmcp.business.IMessage
    public void removeSendMessage(boolean z10, Message message) {
        Future future;
        LogUtils.i(TAG, "sendMessageResult-" + z10 + "-" + message.mid);
        if (this.messageFutureMap.containsKey(message.mid) && (future = this.messageFutureMap.get(message.mid).future) != null) {
            future.cancel(true);
            this.messageFutureMap.remove(message.mid);
        }
        if (this.sendListenerList.containsKey(message.mid)) {
            this.sendListenerList.get(message.mid).result(z10, message.mid);
            this.sendListenerList.remove(message.mid);
        }
    }

    @Override // com.haima.hmcp.business.IMessage
    public void sendMessage(String str, String str2, String str3, MessageType messageType, OnSendMessageListener onSendMessageListener) {
        if (onSendMessageListener == null) {
            LogUtils.e(TAG, "listener is null");
            return;
        }
        if (messageType == MessageType.SYSTEM_TYPE) {
            LogUtils.e(TAG, "Application can not send system message");
            onSendMessageListener.result(false, "");
            return;
        }
        if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str2)) {
            LogUtils.e(TAG, "uid or cId empty.cId:" + str2);
            onSendMessageListener.result(false, "");
            return;
        }
        LogUtils.i(TAG, "sendPayMessage == >" + str + "==type==" + messageType.ordinal());
        Message message = new Message();
        message.from = str2;
        message.to = Constants.TAG_TO_MESSAGE_SDK + str2;
        message.payload = str;
        message.mid = "A" + System.currentTimeMillis();
        message.uid = str3;
        message.ack = 0;
        message.type = messageType.ordinal();
        if (messageType == MessageType.TYPE_VIRTUAL_GAME_PAD) {
            message.to = ConstantsInternal.TAG_TO_VIRTUAL_GAMEPAD_SDK + str2;
            message.type = 5;
        }
        if (MessageType.TRANSFER != messageType) {
            sendMessage(WebSocketManager.WebSocketType.TYPE_ACCESS, message, onSendMessageListener);
        } else {
            message.type = MessageType.PAY_TYPE.ordinal();
            sendMessage(WebSocketManager.WebSocketType.TYPE_TRANSFER, message, onSendMessageListener);
        }
    }

    @Override // com.haima.hmcp.business.IMessage
    public void stopRetrySendMessage() {
        ScheduledExecutorService scheduledExecutorService = this.executorService;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
            this.sendListenerList.clear();
            this.sendListenerList = null;
            this.messageFutureMap.clear();
            this.messageFutureMap = null;
            this.executorService = null;
            this.mPlayerListener = null;
        }
    }

    @Override // com.haima.hmcp.business.IMessage
    public OnSendMessageListener removeSendMessage(Message message) {
        FutureCount futureCount;
        Future future;
        LogUtils.i(TAG, "mId:" + message.mid);
        if (this.messageFutureMap.containsKey(message.mid) && (futureCount = this.messageFutureMap.get(message.mid)) != null && (future = futureCount.future) != null) {
            future.cancel(true);
            this.messageFutureMap.remove(message.mid);
        }
        if (!this.sendListenerList.containsKey(message.mid)) {
            return null;
        }
        OnSendMessageListener onSendMessageListener = this.sendListenerList.get(message.mid);
        this.sendListenerList.remove(message.mid);
        return onSendMessageListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage(WebSocketManager.WebSocketType webSocketType, Message message, OnSendMessageListener onSendMessageListener) {
        String str = TAG;
        LogUtils.d(str, "socketType:" + webSocketType + ",message:" + message);
        ConcurrentHashMap<String, FutureCount> concurrentHashMap = this.messageFutureMap;
        if (concurrentHashMap != null) {
            FutureCount futureCount = concurrentHashMap.get(message.mid);
            if (futureCount != null) {
                int i10 = futureCount.count;
                if (i10 >= 3) {
                    LogUtils.e(str, "tried three times,stop sending messageId：" + message.mid);
                    removeSendMessage(false, message);
                    if (5 == message.type && Utils.checkIsVirtualGamePadPullPayMessage(message.payload)) {
                        CountlyUtil.recordEvent(CountlyEventId.EVENT_ID_VIRTUAL_GAME_PAD_PULL_UP_PAY_FAILED, JsonUtil.toJsonString(new ReportVirtualGamePadPayPullResult(message.mid, "tried three times,stop sending")));
                        return;
                    }
                    return;
                }
                futureCount.count = i10 + 1;
            } else {
                futureCount = new FutureCount();
            }
            futureCount.future = resendMessage(webSocketType, message, onSendMessageListener);
            if (this.messageFutureMap.size() < 100) {
                this.messageFutureMap.put(message.mid, futureCount);
                ConcurrentHashMap<String, OnSendMessageListener> concurrentHashMap2 = this.sendListenerList;
                if (concurrentHashMap2 != null && onSendMessageListener != null) {
                    concurrentHashMap2.put(message.mid, onSendMessageListener);
                }
            } else {
                LogUtils.e(str, "messageFutureMap size big than max count");
            }
        }
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket != null) {
            iWebSocket.sendTextMessage(webSocketType, com.alibaba.fastjson.a.toJSONString(message));
        }
    }
}
