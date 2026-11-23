package com.haima.hmcp.websocket.types;

/* JADX INFO: loaded from: classes5.dex */
public class WebSocketOptions {
    private int mAutoPingInterval;
    private int mAutoPingTimeout;
    private int mAutoPingTimeoutCountMax;
    private int mHandShakeTimeoutSec;
    private boolean mMaskClientFrames;
    private int mMaxFramePayloadSize;
    private int mMaxMessagePayloadSize;
    private boolean mReceiveTextMessagesRaw;
    private int mReconnectInterval;
    private int mSocketConnectTimeout;
    private int mSocketReceiveTimeout;
    private boolean mTcpNoDelay;
    private String[] mTlsProtocols;
    private boolean mValidateIncomingUtf8;

    public WebSocketOptions() {
        this.mMaxFramePayloadSize = 131072;
        this.mMaxMessagePayloadSize = 131072;
        this.mReceiveTextMessagesRaw = false;
        this.mTcpNoDelay = true;
        this.mSocketReceiveTimeout = 0;
        this.mSocketConnectTimeout = 6000;
        this.mValidateIncomingUtf8 = true;
        this.mMaskClientFrames = true;
        this.mReconnectInterval = 0;
        this.mTlsProtocols = null;
        this.mAutoPingInterval = 0;
        this.mAutoPingTimeout = 0;
        this.mAutoPingTimeoutCountMax = 0;
        this.mHandShakeTimeoutSec = 3;
    }

    public int getAutoPingInterval() {
        return this.mAutoPingInterval;
    }

    public int getAutoPingTimeout() {
        return this.mAutoPingTimeout;
    }

    public int getAutoPingTimeoutCountMax() {
        return this.mAutoPingTimeoutCountMax;
    }

    public int getHandShakeTimeoutSec() {
        return this.mHandShakeTimeoutSec;
    }

    public boolean getMaskClientFrames() {
        return this.mMaskClientFrames;
    }

    public int getMaxFramePayloadSize() {
        return this.mMaxFramePayloadSize;
    }

    public int getMaxMessagePayloadSize() {
        return this.mMaxMessagePayloadSize;
    }

    public boolean getReceiveTextMessagesRaw() {
        return this.mReceiveTextMessagesRaw;
    }

    public int getReconnectInterval() {
        int i10 = this.mReconnectInterval * 2;
        this.mReconnectInterval = i10;
        if (i10 > 32000) {
            this.mReconnectInterval = 0;
        }
        return this.mReconnectInterval;
    }

    public int getSocketConnectTimeout() {
        return this.mSocketConnectTimeout;
    }

    public int getSocketReceiveTimeout() {
        return this.mSocketReceiveTimeout;
    }

    public String[] getTLSEnabledProtocols() {
        return this.mTlsProtocols;
    }

    public boolean getTcpNoDelay() {
        return this.mTcpNoDelay;
    }

    public boolean getValidateIncomingUtf8() {
        return this.mValidateIncomingUtf8;
    }

    public void setAutoPingInterval(int i10) {
        this.mAutoPingInterval = i10;
    }

    public void setAutoPingTimeout(int i10) {
        this.mAutoPingTimeout = i10;
    }

    public void setAutoPingTimeoutCountMax(int i10) {
        if (i10 <= 0) {
            return;
        }
        this.mAutoPingTimeoutCountMax = i10;
    }

    public void setHandShakeTimeoutSec(int i10) {
        if (i10 <= 0) {
            return;
        }
        this.mHandShakeTimeoutSec = i10;
    }

    public void setMaskClientFrames(boolean z10) {
        this.mMaskClientFrames = z10;
    }

    public void setMaxFramePayloadSize(int i10) {
        if (i10 > 0) {
            this.mMaxFramePayloadSize = i10;
            if (this.mMaxMessagePayloadSize < i10) {
                this.mMaxMessagePayloadSize = i10;
            }
        }
    }

    public void setMaxMessagePayloadSize(int i10) {
        if (i10 > 0) {
            this.mMaxMessagePayloadSize = i10;
            if (i10 < this.mMaxFramePayloadSize) {
                this.mMaxFramePayloadSize = i10;
            }
        }
    }

    public void setReceiveTextMessagesRaw(boolean z10) {
        this.mReceiveTextMessagesRaw = z10;
    }

    public void setReconnectInterval(int i10) {
        this.mReconnectInterval = i10;
    }

    public void setSocketConnectTimeout(int i10) {
        if (i10 >= 0) {
            this.mSocketConnectTimeout = i10;
        }
    }

    public void setSocketReceiveTimeout(int i10) {
        if (i10 >= 0) {
            this.mSocketReceiveTimeout = i10;
        }
    }

    public void setTLSEnabledProtocols(WebSocketOptions webSocketOptions) {
    }

    public void setTcpNoDelay(boolean z10) {
        this.mTcpNoDelay = z10;
    }

    public void setValidateIncomingUtf8(boolean z10) {
        this.mValidateIncomingUtf8 = z10;
    }

    public void setTLSEnabledProtocols(String[] strArr) {
        this.mTlsProtocols = strArr;
    }

    public WebSocketOptions(WebSocketOptions webSocketOptions) {
        this.mMaxFramePayloadSize = webSocketOptions.mMaxFramePayloadSize;
        this.mMaxMessagePayloadSize = webSocketOptions.mMaxMessagePayloadSize;
        this.mReceiveTextMessagesRaw = webSocketOptions.mReceiveTextMessagesRaw;
        this.mTcpNoDelay = webSocketOptions.mTcpNoDelay;
        this.mSocketReceiveTimeout = webSocketOptions.mSocketReceiveTimeout;
        this.mSocketConnectTimeout = webSocketOptions.mSocketConnectTimeout;
        this.mValidateIncomingUtf8 = webSocketOptions.mValidateIncomingUtf8;
        this.mMaskClientFrames = webSocketOptions.mMaskClientFrames;
        this.mReconnectInterval = webSocketOptions.mReconnectInterval;
        this.mTlsProtocols = webSocketOptions.mTlsProtocols;
        this.mAutoPingInterval = webSocketOptions.mAutoPingInterval;
        this.mAutoPingTimeout = webSocketOptions.mAutoPingTimeout;
        this.mAutoPingTimeoutCountMax = webSocketOptions.mAutoPingTimeoutCountMax;
        this.mHandShakeTimeoutSec = webSocketOptions.mHandShakeTimeoutSec;
    }
}
