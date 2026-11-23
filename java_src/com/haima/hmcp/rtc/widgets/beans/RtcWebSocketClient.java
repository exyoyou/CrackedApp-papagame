package com.haima.hmcp.rtc.widgets.beans;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.websocket.WebSocketConnection;
import com.haima.hmcp.websocket.WebSocketConnectionHandler;
import com.haima.hmcp.websocket.exceptions.WebSocketException;
import com.haima.hmcp.websocket.types.WebSocketOptions;
import org.webrtc.haima.WebSocketSignalClient;

/* JADX INFO: loaded from: classes5.dex */
public class RtcWebSocketClient implements WebSocketSignalClient {
    private static final int PING_INTERVAL = 2;
    private static final int PING_TIME_OUT_COUNT_MAX = 5;
    private static final String TAG = "RtcWebSocketClient";
    private Context mContext;
    private WebSocketSignalClient.IWebSocketConnectionEvent mEvents;
    private final Handler mHandler;
    private String mHostUri;
    private final RtcWebSocketConnectOptions mOptions;
    private WebSocketConnection webSocketConnection;
    private boolean mIsDisconnected = false;
    private Runnable mReConnectRunable = new Runnable() { // from class: com.haima.hmcp.rtc.widgets.beans.RtcWebSocketClient.1
        @Override // java.lang.Runnable
        public void run() {
            RtcWebSocketClient.this.innerDisconnect();
            RtcWebSocketClient.this.innerConnect();
            RtcWebSocketClient.access$108(RtcWebSocketClient.this);
            RtcWebSocketClient.this.mEvents.onWebSocketConnectStatus("RTC Signal WebSocket reconnecting");
        }
    };
    private WebSocketConnectionHandler webSocketHandler = new WebSocketConnectionHandler() { // from class: com.haima.hmcp.rtc.widgets.beans.RtcWebSocketClient.3
        @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
        public void onClose(int i10, String str) {
            if (i10 != 2) {
                if (RtcWebSocketClient.this.mEvents != null) {
                    RtcWebSocketClient.this.mEvents.onWebSocketDisconnected(i10);
                }
            } else {
                if (RtcWebSocketClient.this.mReConnectNum < RtcWebSocketClient.this.mOptions.mReConnectCount) {
                    RtcWebSocketClient.this.mHandler.postDelayed(RtcWebSocketClient.this.mReConnectRunable, RtcWebSocketClient.this.mOptions.mReConnectDelay);
                    return;
                }
                RtcWebSocketClient.this.mHandler.removeCallbacks(RtcWebSocketClient.this.mReConnectRunable);
                if (RtcWebSocketClient.this.mEvents != null) {
                    RtcWebSocketClient.this.mEvents.onWebSocketConnectStatus("RTC Signal WebSocket connect error");
                }
                RtcWebSocketClient.this.mReConnectNum = 0;
            }
        }

        @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
        public void onMessage(final String str) {
            LogUtils.d(RtcWebSocketClient.TAG, "rtcmessage onMessage " + str);
            RtcWebSocketClient.this.mHandler.post(new Runnable() { // from class: com.haima.hmcp.rtc.widgets.beans.RtcWebSocketClient.3.2
                @Override // java.lang.Runnable
                public void run() {
                    if (RtcWebSocketClient.this.mEvents != null) {
                        RtcWebSocketClient.this.mEvents.onWebSocketRecvMessage(str);
                    }
                }
            });
        }

        @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
        public void onOpen() {
            if (RtcWebSocketClient.this.mReConnectNum > 0) {
                RtcWebSocketClient.this.mHandler.removeCallbacks(RtcWebSocketClient.this.mReConnectRunable);
                RtcWebSocketClient.this.mReConnectNum = 0;
            }
            LogUtils.i(RtcWebSocketClient.TAG, "onOpen:" + RtcWebSocketClient.this.mReConnectNum);
            RtcWebSocketClient.this.mHandler.post(new Runnable() { // from class: com.haima.hmcp.rtc.widgets.beans.RtcWebSocketClient.3.1
                @Override // java.lang.Runnable
                public void run() {
                    if (RtcWebSocketClient.this.mEvents != null) {
                        RtcWebSocketClient.this.mEvents.onWebSocketConnected();
                    }
                }
            });
        }
    };
    private int mReConnectNum = 0;

    public static class RtcWebSocketConnectOptions {
        public int mReConnectCount = 2;
        public int mReConnectDelay = TTAdConstant.STYLE_SIZE_RADIO_3_2;
        public int mReHandShakeCount = 2;
        public int mReHandShakeDelay = 1000;
        public int mHeartBeatDelay = TTAdConstant.STYLE_SIZE_RADIO_3_2;
    }

    public RtcWebSocketClient(Context context, String str, RtcWebSocketConnectOptions rtcWebSocketConnectOptions, WebSocketSignalClient.IWebSocketConnectionEvent iWebSocketConnectionEvent) {
        this.mContext = context;
        this.mHostUri = str + "&proto=6&act=1";
        this.mOptions = rtcWebSocketConnectOptions;
        this.mEvents = iWebSocketConnectionEvent;
        LogUtils.d(TAG, "rtcmessage create mHostUri:" + this.mHostUri);
        HandlerThread handlerThread = new HandlerThread(TAG);
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper());
    }

    static /* synthetic */ int access$108(RtcWebSocketClient rtcWebSocketClient) {
        int i10 = rtcWebSocketClient.mReConnectNum;
        rtcWebSocketClient.mReConnectNum = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void innerDisconnect() {
        LogUtils.d(TAG, "rtcmessage innerDisconnect");
        this.mHandler.removeCallbacks(this.mReConnectRunable);
        this.mIsDisconnected = true;
        synchronized (this) {
            if (this.webSocketConnection != null) {
                LogUtils.d(TAG, "rtcmessage cutOff");
                this.webSocketConnection.cutOff(false);
                LogUtils.d(TAG, "rtcmessage cutOff end");
                this.webSocketConnection = null;
            }
        }
        WebSocketSignalClient.IWebSocketConnectionEvent iWebSocketConnectionEvent = this.mEvents;
        if (iWebSocketConnectionEvent != null) {
            iWebSocketConnectionEvent.onWebSocketDisconnected(0);
        }
    }

    private void setTLSEnabledProtocols(WebSocketOptions webSocketOptions) {
    }

    @Override // org.webrtc.haima.WebSocketSignalClient
    public void connect() {
        if (TextUtils.isEmpty(this.mHostUri)) {
            return;
        }
        if (this.webSocketConnection == null) {
            this.webSocketConnection = new WebSocketConnection("rtcmessage", this.mContext);
        }
        if (this.webSocketConnection.isConnected()) {
            this.mHandler.post(new Runnable() { // from class: com.haima.hmcp.rtc.widgets.beans.RtcWebSocketClient.2
                @Override // java.lang.Runnable
                public void run() {
                    if (RtcWebSocketClient.this.mEvents != null) {
                        RtcWebSocketClient.this.mEvents.onWebSocketConnected();
                    }
                }
            });
            this.mIsDisconnected = false;
            return;
        }
        WebSocketOptions webSocketOptions = new WebSocketOptions();
        webSocketOptions.setAutoPingInterval(2);
        webSocketOptions.setAutoPingTimeout(2);
        webSocketOptions.setAutoPingTimeoutCountMax(5);
        setTLSEnabledProtocols(webSocketOptions);
        try {
            this.webSocketConnection.connect(this.mHostUri, this.webSocketHandler, webSocketOptions);
        } catch (WebSocketException e10) {
            LogUtils.d(TAG, " rtcmessage connect error = " + e10.getMessage());
            e10.printStackTrace();
        }
        this.mIsDisconnected = false;
        LogUtils.d(TAG, "rtcmessage connect to " + this.mHostUri);
        this.mEvents.onWebSocketConnectStatus("RTC Signal WebSocket connecting");
    }

    @Override // org.webrtc.haima.WebSocketSignalClient
    public void disconnect() {
        LogUtils.d(TAG, "rtcmessage disconnect " + this.mHostUri);
        innerDisconnect();
    }

    void innerConnect() {
        LogUtils.d(TAG, "rtcmessage innerConnect");
        connect();
    }

    @Override // org.webrtc.haima.WebSocketSignalClient
    public void sendMessage(String str) {
        synchronized (this) {
            WebSocketConnection webSocketConnection = this.webSocketConnection;
            if (webSocketConnection != null && webSocketConnection.isConnected()) {
                LogUtils.d(TAG, "rtcmessage sendMessage " + str);
                this.webSocketConnection.sendMessage(str);
            }
        }
    }
}
