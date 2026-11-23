package com.haima.hmcp.input;

import android.text.TextUtils;
import com.haima.hmcp.Constants;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class HMInputConfig implements Serializable {
    public static final int DEFAULT_INPUT_CONNECT_TIMEOUT_SEC = 6;
    public static final int PING_INTERVAL = 10;
    public static final int PING_TIME_OUT_COUNT_MAX = 3;
    private static final long serialVersionUID = 1;
    public String addressUrl;
    public int inputPingInternal = 10;
    public int pingpongTimeout = 10;
    public int connectTimeoutMS = 6000;
    public int inputPingTimeoutCountMax = 3;
    public String pingpongConfig = Constants.DEFAULT_PING2_INTERVAL_TIMES;

    public String getAddressUrl() {
        return this.addressUrl;
    }

    public int getConnectTimeoutMS() {
        return this.connectTimeoutMS;
    }

    public int getInputPingInternal() {
        return this.inputPingInternal;
    }

    public int getInputPingTimeoutCountMax() {
        return this.inputPingTimeoutCountMax;
    }

    public String getPingpongConfig() {
        return this.pingpongConfig;
    }

    public int getPingpongTimeout() {
        return this.pingpongTimeout;
    }

    public void setAddressUrl(String str) {
        this.addressUrl = str;
    }

    public void setConnectTimeoutMS(int i10) {
        if (i10 <= 0) {
            i10 = 6;
        }
        this.connectTimeoutMS = i10 * 1000;
    }

    public void setInputPingInternal(int i10) {
        if (i10 <= 0) {
            i10 = 10;
        }
        this.inputPingInternal = i10;
    }

    public void setInputPingTimeoutCountMax(int i10) {
        if (i10 <= 0) {
            i10 = 3;
        }
        this.inputPingTimeoutCountMax = i10;
    }

    public void setPingpongConfig(String str) {
        if (TextUtils.isEmpty(str)) {
            str = Constants.DEFAULT_PING2_INTERVAL_TIMES;
        }
        this.pingpongConfig = str;
    }

    public void setPingpongTimeout(int i10) {
        if (i10 <= 0) {
            i10 = 10;
        }
        this.pingpongTimeout = i10;
    }

    public String toString() {
        return "HMInputConfig{addressUrl='" + this.addressUrl + "', pingpongInternal=" + this.inputPingInternal + ", pingpongTimeout=" + this.pingpongTimeout + ", connectTimeout=" + this.connectTimeoutMS + ", inputPingTimeoutCountMax=" + this.inputPingTimeoutCountMax + ", pingpongConfig=" + this.pingpongConfig + '}';
    }
}
