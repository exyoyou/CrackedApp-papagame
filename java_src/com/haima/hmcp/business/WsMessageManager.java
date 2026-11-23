package com.haima.hmcp.business;

import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.R;
import com.haima.hmcp.beans.BaseWsMessage;
import com.haima.hmcp.beans.CapScreenData;
import com.haima.hmcp.beans.FutureCount;
import com.haima.hmcp.beans.WsMessage;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.WsMessageType;
import com.haima.hmcp.listeners.OnSendWsMessageListener;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.StringUtils;
import com.haima.hmcp.widgets.CountDownTimer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class WsMessageManager extends BaseManager implements IWsMessage {
    private static final String TAG = "WsMessageManager";
    private ConcurrentHashMap<String, CountDownTimer> countDownMap;
    private ScheduledExecutorService executorService;
    private Map<String, Object> jsonMap;
    private final IWebSocket mWebSocketManager;
    private ConcurrentHashMap<String, FutureCount> messageFutureMap;
    private ConcurrentHashMap<String, OnSendWsMessageListener> sendListenerList;

    public WsMessageManager(Context context, IWebSocket iWebSocket) {
        super(context);
        this.sendListenerList = new ConcurrentHashMap<>();
        this.messageFutureMap = new ConcurrentHashMap<>();
        this.countDownMap = new ConcurrentHashMap<>();
        this.executorService = Executors.newSingleThreadScheduledExecutor();
        this.jsonMap = new HashMap();
        this.mWebSocketManager = iWebSocket;
    }

    private Future resendMessage(final WsMessage wsMessage, final OnSendWsMessageListener onSendWsMessageListener) {
        ScheduledExecutorService scheduledExecutorService = this.executorService;
        if (scheduledExecutorService != null) {
            return scheduledExecutorService.schedule(new Runnable() { // from class: com.haima.hmcp.business.WsMessageManager.2
                @Override // java.lang.Runnable
                public void run() {
                    LogUtils.i(WsMessageManager.TAG, "====sendWsMessage====resendMessage=" + wsMessage.payload);
                    WsMessageManager.this.sendWsMessageRetry(wsMessage, onSendWsMessageListener);
                }
            }, 2000L, TimeUnit.MILLISECONDS);
        }
        return null;
    }

    private void sendWsMessageCountDown(final WsMessage wsMessage, OnSendWsMessageListener onSendWsMessageListener) {
        String str = TAG;
        LogUtils.i(str, "====sendWsMessageCountDown=====" + wsMessage.payload);
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket == null || this.countDownMap == null) {
            LogUtils.i(str, "====mWebSocketManager or countDownMap == null ====");
            return;
        }
        iWebSocket.sendTextMessage(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER, wsMessage.payload);
        CountDownTimer countDownTimer = new CountDownTimer(10000L, 10000L) { // from class: com.haima.hmcp.business.WsMessageManager.1
            @Override // com.haima.hmcp.widgets.CountDownTimer
            public void onFinish() {
                WsMessageManager.this.cancelCountDownTimer(false, wsMessage.mid);
            }

            @Override // com.haima.hmcp.widgets.CountDownTimer
            public void onTick(long j10) {
            }
        };
        if (this.countDownMap.size() < 100) {
            countDownTimer.start();
            this.countDownMap.put(wsMessage.mid, countDownTimer);
            ConcurrentHashMap<String, OnSendWsMessageListener> concurrentHashMap = this.sendListenerList;
            if (concurrentHashMap == null || onSendWsMessageListener == null) {
                return;
            }
            concurrentHashMap.put(wsMessage.mid, onSendWsMessageListener);
        }
    }

    private void sendWsMessageNormal(WsMessage wsMessage, OnSendWsMessageListener onSendWsMessageListener) {
        LogUtils.i(TAG, "====sendWsMessageNormal=====" + wsMessage.payload);
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket != null) {
            iWebSocket.sendTextMessage(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER, wsMessage.payload);
            if (onSendWsMessageListener != null) {
                CountlyUtil.recordEvent(Constants.COUNTLY_WS_MSG_SEND_SUCCESS, getMessage("===sendWsMessageNormal success====mid=" + wsMessage.mid + "=payload=" + wsMessage.payload));
                onSendWsMessageListener.sendWsMessageSuccess();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendWsMessageRetry(WsMessage wsMessage, OnSendWsMessageListener onSendWsMessageListener) {
        String str = TAG;
        LogUtils.i(str, "====sendWsMessage=====" + wsMessage.payload);
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket != null) {
            iWebSocket.sendTextMessage(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER, wsMessage.payload);
        }
        ConcurrentHashMap<String, FutureCount> concurrentHashMap = this.messageFutureMap;
        if (concurrentHashMap != null) {
            FutureCount futureCount = concurrentHashMap.get(wsMessage.mid);
            if (futureCount != null) {
                int i10 = futureCount.count;
                if (i10 >= 3) {
                    LogUtils.e(str, "tried 3 times, stop sending messageId：" + wsMessage.mid);
                    removeSendWsMessage(false, wsMessage.mid);
                    return;
                }
                futureCount.count = i10 + 1;
            } else {
                futureCount = new FutureCount();
            }
            futureCount.future = resendMessage(wsMessage, onSendWsMessageListener);
            if (this.messageFutureMap.size() < 100) {
                this.messageFutureMap.put(wsMessage.mid, futureCount);
                ConcurrentHashMap<String, OnSendWsMessageListener> concurrentHashMap2 = this.sendListenerList;
                if (concurrentHashMap2 == null || onSendWsMessageListener == null) {
                    return;
                }
                concurrentHashMap2.put(wsMessage.mid, onSendWsMessageListener);
            }
        }
    }

    @Override // com.haima.hmcp.business.IWsMessage
    public void cancelCountDownTimer(boolean z10, String str) {
        CountDownTimer countDownTimer;
        LogUtils.i(TAG, "====sendWsMessageCountDown====cancelCountDownTimer===mid=" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ConcurrentHashMap<String, CountDownTimer> concurrentHashMap = this.countDownMap;
        if (concurrentHashMap != null && concurrentHashMap.containsKey(str) && (countDownTimer = this.countDownMap.get(str)) != null) {
            countDownTimer.cancel();
        }
        ConcurrentHashMap<String, OnSendWsMessageListener> concurrentHashMap2 = this.sendListenerList;
        if (concurrentHashMap2 == null || !concurrentHashMap2.containsKey(str)) {
            return;
        }
        OnSendWsMessageListener onSendWsMessageListener = this.sendListenerList.get(str);
        if (z10) {
            onSendWsMessageListener.sendWsMessageSuccess();
            CountlyUtil.recordEvent(Constants.COUNTLY_WS_MSG_SEND_SUCCESS, getMessage("===sendWsMessageCountDown success====mid=" + str));
        } else {
            onSendWsMessageListener.sendWsMessageFail(getMessage(ResourceManager.getString(R.string.haima_hmcp_message_send_fail)));
            CountlyUtil.recordEvent(Constants.COUNTLY_WS_MSG_SEND_FAILURE, getMessage("===sendWsMessageCountDown failure====mid=" + str));
        }
        this.sendListenerList.remove(str);
    }

    protected String getMessage(String str) {
        this.jsonMap.clear();
        this.jsonMap.put("message", str);
        return JsonUtil.getJsonObj(this.jsonMap).toString();
    }

    @Override // com.haima.hmcp.business.IWsMessage
    public void notifyResponse(String str, String str2, String str3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cid", str);
            jSONObject.put(Constants.WS_MSG_KEY_BID, str2);
            jSONObject.put("mid", str3);
            jSONObject.put("code", 1000);
            jSONObject.put("message", Constants.WS_MSG_RECEIVED);
            jSONObject.put("type", Constants.WS_MESSAGE_TYPE_INTENT);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        if (this.mWebSocketManager != null) {
            LogUtils.i(TAG, "====sendWsMessage=====" + jSONObject.toString());
            this.mWebSocketManager.sendTextMessage(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER, jSONObject.toString());
        }
    }

    @Override // com.haima.hmcp.business.IWsMessage
    public void removeSendWsMessage(boolean z10, String str) {
        Future future;
        LogUtils.i(TAG, "====sendWsMessage====removeSendWsMessage===mid=" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.messageFutureMap.containsKey(str) && (future = this.messageFutureMap.get(str).future) != null) {
            future.cancel(true);
            this.messageFutureMap.remove(str);
        }
        if (this.sendListenerList.containsKey(str)) {
            OnSendWsMessageListener onSendWsMessageListener = this.sendListenerList.get(str);
            if (z10) {
                CountlyUtil.recordEvent(Constants.COUNTLY_WS_MSG_SEND_SUCCESS, getMessage("===sendWsMessageRetry success====mid=" + str));
                onSendWsMessageListener.sendWsMessageSuccess();
            } else {
                CountlyUtil.recordEvent(Constants.COUNTLY_WS_MSG_SEND_FAILURE, getMessage("===sendWsMessageRetry failure====mid=" + str));
                onSendWsMessageListener.sendWsMessageFail(getMessage(ResourceManager.getString(R.string.haima_hmcp_message_send_fail)));
            }
            this.sendListenerList.remove(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.haima.hmcp.business.IWsMessage
    public void sendWsMessage(BaseWsMessage baseWsMessage, WsMessageType wsMessageType, OnSendWsMessageListener onSendWsMessageListener) {
        WsMessage wsMessage;
        if (baseWsMessage == null) {
            if (onSendWsMessageListener != null) {
                onSendWsMessageListener.sendWsMessageFail(getMessage(ResourceManager.getString(R.string.haima_hmcp_parameter_error)));
                return;
            }
            return;
        }
        if (!baseWsMessage.dataIsValid()) {
            LogUtils.i(TAG, "====sendWsMessage===== parameter is not valid");
            if (onSendWsMessageListener != null) {
                CountlyUtil.recordEvent(Constants.COUNTLY_WS_MSG_SEND_FAILURE, getMessage("====sendWsMessage===== parameter is not valid" + JsonUtil.toJsonString(baseWsMessage)));
                onSendWsMessageListener.sendWsMessageFail(getMessage(ResourceManager.getString(R.string.haima_hmcp_parameter_error)));
                return;
            }
            return;
        }
        WsMessageType wsMessageType2 = WsMessageType.CAP_SCREEN_TYPE;
        if (wsMessageType == wsMessageType2 && (baseWsMessage.data instanceof CapScreenData)) {
            wsMessage = new WsMessage();
            wsMessage.payload = ((CapScreenData) baseWsMessage.data).toString();
        } else {
            wsMessage = new WsMessage();
            wsMessage.payload = JsonUtil.toJsonString(baseWsMessage);
            wsMessage.mid = baseWsMessage.mid;
        }
        CountlyUtil.recordEvent(Constants.COUNTLY_WS_MSG_SEND, getMessage("===sendWsMessage  send====mid=" + wsMessage.mid + "==payload==" + StringUtils.encodeToBase64String(wsMessage.payload)));
        if (wsMessageType == WsMessageType.INTENT_TYPE || wsMessageType == WsMessageType.UPDATE_VIEW_TYPE || wsMessageType == WsMessageType.MISC_TYPE) {
            sendWsMessageRetry(wsMessage, onSendWsMessageListener);
            return;
        }
        if (wsMessageType == WsMessageType.GPS_TYPE || wsMessageType == wsMessageType2) {
            sendWsMessageNormal(wsMessage, onSendWsMessageListener);
        } else if (wsMessageType == WsMessageType.CLIPBOARD_TYPE) {
            sendWsMessageCountDown(wsMessage, onSendWsMessageListener);
        }
    }

    @Override // com.haima.hmcp.business.IWsMessage
    public void stopRetrySendWsMessage() {
        ScheduledExecutorService scheduledExecutorService = this.executorService;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
            this.sendListenerList.clear();
            this.sendListenerList = null;
            this.messageFutureMap.clear();
            this.messageFutureMap = null;
            this.executorService = null;
            this.countDownMap = null;
        }
    }

    @Override // com.haima.hmcp.business.IWsMessage
    public void notifyResponse(String str, String str2, String str3, String str4, String str5) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cid", str);
            jSONObject.put(Constants.WS_MSG_KEY_BID, str2);
            jSONObject.put("mid", str3);
            jSONObject.put("code", 1000);
            jSONObject.put("message", str4);
            jSONObject.put("type", str5);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        if (this.mWebSocketManager != null) {
            LogUtils.i(TAG, "====sendWsMessage=====" + jSONObject);
            this.mWebSocketManager.sendTextMessage(WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER, jSONObject.toString());
        }
    }
}
