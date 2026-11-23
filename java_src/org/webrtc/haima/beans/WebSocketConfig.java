package org.webrtc.haima.beans;

/* JADX INFO: loaded from: classes10.dex */
public class WebSocketConfig {
    public static final int PING_INTERVAL = 10;
    public static final int PING_TIME_OUT_COUNT_MAX = 3;
    private int delay;
    private int interval;
    private int pingInterval = 10;
    private int pingTimeOutCountMax = 3;
    private int trace;

    public int getDelay() {
        return this.delay;
    }

    public int getInterval() {
        return this.interval;
    }

    public int getPingInterval() {
        return this.pingInterval;
    }

    public int getPingTimeOutCountMax() {
        return this.pingTimeOutCountMax;
    }

    public int getTrace() {
        return this.trace;
    }

    public void setDelay(int i10) {
        this.delay = i10;
    }

    public void setInterval(int i10) {
        this.interval = i10;
    }

    public void setPingInterval(int i10) {
        this.pingInterval = i10;
    }

    public void setPingTimeOutCountMax(int i10) {
        this.pingTimeOutCountMax = i10;
    }

    public void setTrace(int i10) {
        this.trace = i10;
    }

    public String toString() {
        return "WebSocketConfig{interval=" + this.interval + ", delay=" + this.delay + ", trace=" + this.trace + ", pingInterval=" + this.pingInterval + ", pingTimeOutCountMax=" + this.pingTimeOutCountMax + '}';
    }
}
