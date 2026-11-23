package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class WebSocketConfig {
    private int accessPingInterval;
    private int accessPingTimeoutCountMax;
    private int framePayloadMaxSize;
    private int inputPingInterval;
    private int inputPingTimeoutCountMax;
    private int instancePingPongCost;
    private int messagePayloadMaxSize;
    private int ping2Interval;
    private int saasLinktTimeOutSec;
    private int trace;
    private int wsLinkTimeOutSec;

    public WebSocketConfig() {
        this.accessPingInterval = 10;
        this.accessPingTimeoutCountMax = 3;
        this.framePayloadMaxSize = 128;
        this.messagePayloadMaxSize = 128;
    }

    public int getAccessPingInterval() {
        return this.accessPingInterval;
    }

    public int getAccessPingTimeoutCountMax() {
        return this.accessPingTimeoutCountMax;
    }

    public int getFramePayloadMaxSize() {
        return this.framePayloadMaxSize;
    }

    public int getInputPingInterval() {
        return this.inputPingInterval;
    }

    public int getInputPingTimeoutCountMax() {
        return this.inputPingTimeoutCountMax;
    }

    public int getInstancePingPongCost() {
        return this.instancePingPongCost;
    }

    public int getMessagePayloadMaxSize() {
        return this.messagePayloadMaxSize;
    }

    public int getPing2Interval() {
        return this.ping2Interval;
    }

    public int getSaasLinkTimeOutSec() {
        return this.saasLinktTimeOutSec;
    }

    public int getTrace() {
        return this.trace;
    }

    public int getWsLinkTimeOutSec() {
        return this.wsLinkTimeOutSec;
    }

    public void setAccessPingInterval(int i10) {
        this.accessPingInterval = i10;
    }

    public void setAccessPingTimeoutCountMax(int i10) {
        this.accessPingTimeoutCountMax = i10;
    }

    public void setFramePayloadMaxSize(int i10) {
        this.framePayloadMaxSize = i10;
    }

    public void setInputPingInterval(int i10) {
        this.inputPingInterval = i10;
    }

    public void setInputPingTimeoutCountMax(int i10) {
        this.inputPingTimeoutCountMax = i10;
    }

    public void setInstancePingPongCost(int i10) {
        this.instancePingPongCost = i10;
    }

    public void setMessagePayloadMaxSize(int i10) {
        this.messagePayloadMaxSize = i10;
    }

    public void setPing2Interval(int i10) {
        this.ping2Interval = i10;
    }

    public void setSaasLinkTimeOutSec(int i10) {
        this.saasLinktTimeOutSec = i10;
    }

    public void setTrace(int i10) {
        this.trace = i10;
    }

    public void setWsLinkTimeOutSec(int i10) {
        this.wsLinkTimeOutSec = i10;
    }

    public WebSocketConfig(WebSocketConfig webSocketConfig) {
        this.accessPingInterval = 10;
        this.accessPingTimeoutCountMax = 3;
        this.framePayloadMaxSize = 128;
        this.messagePayloadMaxSize = 128;
        this.ping2Interval = webSocketConfig.ping2Interval;
        this.instancePingPongCost = webSocketConfig.instancePingPongCost;
        this.trace = webSocketConfig.trace;
        this.accessPingInterval = webSocketConfig.accessPingInterval;
        this.accessPingTimeoutCountMax = webSocketConfig.accessPingTimeoutCountMax;
        this.inputPingInterval = webSocketConfig.inputPingInterval;
        this.inputPingTimeoutCountMax = webSocketConfig.inputPingTimeoutCountMax;
        this.framePayloadMaxSize = webSocketConfig.framePayloadMaxSize;
        this.messagePayloadMaxSize = webSocketConfig.messagePayloadMaxSize;
        this.saasLinktTimeOutSec = webSocketConfig.saasLinktTimeOutSec;
        this.wsLinkTimeOutSec = webSocketConfig.wsLinkTimeOutSec;
    }
}
