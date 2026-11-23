package com.haima.hmcp.input.sender;

import android.util.Log;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.input.HMInput;
import com.haima.hmcp.input.listener.HMInputCallback;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.websocket.WebSocketConnection;
import com.haima.hmcp.websocket.WebSocketConnectionHandler;
import com.haima.hmcp.websocket.types.WebSocketOptions;
import com.haima.hmcp.widgets.AbsIjkVideoView;

/* JADX INFO: loaded from: classes5.dex */
public class WebSocketInputSender extends AbsHMInputSender {
    private static final String TAG = "WebSocketInputSender";
    private boolean isInputStopByUser;
    protected WebSocketConnection mInstanceSocket;

    public WebSocketInputSender(AbsIjkVideoView absIjkVideoView) {
        super(absIjkVideoView);
    }

    @Override // com.haima.hmcp.input.sender.IHMInputSender
    public void connect() {
        this.isInputStopByUser = false;
        WebSocketOptions webSocketOptions = new WebSocketOptions();
        webSocketOptions.setAutoPingInterval(this.mHmInputConfig.inputPingInternal);
        webSocketOptions.setAutoPingTimeout(this.mHmInputConfig.inputPingInternal);
        webSocketOptions.setAutoPingTimeoutCountMax(this.mHmInputConfig.inputPingTimeoutCountMax);
        webSocketOptions.setSocketConnectTimeout(this.mHmInputConfig.connectTimeoutMS);
        webSocketOptions.setTLSEnabledProtocols(webSocketOptions);
        if (this.mInstanceSocket == null) {
            this.mInstanceSocket = new WebSocketConnection("input", this.mIjkVideoView.getContext());
        }
        this.mInstanceSocket.setTag(Long.toString(System.currentTimeMillis()));
        this.mInstanceSocket.setReconnected(true);
        if (this.mInstanceSocket.isConnected()) {
            LogUtils.d(TAG, "connect2Instance connected");
            return;
        }
        try {
            LogUtils.d(TAG, "start connect2Instance, Url=" + this.mHmInputConfig.addressUrl);
            this.mInstanceSocket.connect(this.mHmInputConfig.addressUrl, new String[]{Constants.WEBSOCKET_SUB_PROTOCOL}, new WebSocketConnectionHandler() { // from class: com.haima.hmcp.input.sender.WebSocketInputSender.1
                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onClose(int i10, String str) {
                    LogUtils.d(WebSocketInputSender.TAG, "timeframe--connectToInstance=>onClose=code=>" + i10 + "=reason=>" + str);
                    WebSocketInputSender webSocketInputSender = WebSocketInputSender.this;
                    if (webSocketInputSender.mHmInputSenderCallback == null || webSocketInputSender.isInputStopByUser) {
                        return;
                    }
                    WebSocketInputSender.this.mHmInputSenderCallback.onDisconnect(i10, str, false);
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onMessage(String str) {
                    LogUtils.d(WebSocketInputSender.TAG, "onTextMessage==>" + str);
                    HMInputCallback hMInputCallback = WebSocketInputSender.this.mHmInputSenderCallback;
                    if (hMInputCallback != null) {
                        hMInputCallback.onTextMessage(str);
                    }
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onOpen() {
                    LogUtils.d(WebSocketInputSender.TAG, "timeframe--connectToInstance=>onOpen");
                    HMInputCallback hMInputCallback = WebSocketInputSender.this.mHmInputSenderCallback;
                    if (hMInputCallback != null) {
                        hMInputCallback.onConnect(false);
                    }
                }
            }, webSocketOptions, null);
        } catch (Exception e10) {
            CountlyUtil.recordErrorEvent("timeframe--WebSocketManager::connect2Instance::" + Log.getStackTraceString(e10));
        }
    }

    @Override // com.haima.hmcp.input.sender.IHMInputSender
    public void disConnected() {
        HMInput hMInput;
        LogUtils.d(TAG, "===disconnect2Instance===");
        AbsIjkVideoView absIjkVideoView = this.mIjkVideoView;
        if (absIjkVideoView != null && (hMInput = absIjkVideoView.mHMInput) != null) {
            hMInput.stopSendPing();
        }
        this.isInputStopByUser = true;
        WebSocketConnection webSocketConnection = this.mInstanceSocket;
        if (webSocketConnection != null) {
            if (webSocketConnection.isConnected()) {
                this.mInstanceSocket.cutOff();
                LogUtils.i(TAG, "===mInstanceSocket  disconnect===");
            }
            this.mInstanceSocket = null;
        }
    }

    @Override // com.haima.hmcp.input.sender.IHMInputSender
    public boolean isConnected() {
        WebSocketConnection webSocketConnection = this.mInstanceSocket;
        return webSocketConnection != null && webSocketConnection.isConnected();
    }

    @Override // com.haima.hmcp.input.sender.IHMInputSender
    public boolean sendMessage(String str, boolean z10) {
        LogUtils.d(TAG, "sendMessage payload:" + str + ",isDiscardable:" + z10);
        WebSocketConnection webSocketConnection = this.mInstanceSocket;
        if (webSocketConnection == null || !webSocketConnection.isConnected()) {
            return false;
        }
        this.mInstanceSocket.sendMessage(str);
        return true;
    }
}
