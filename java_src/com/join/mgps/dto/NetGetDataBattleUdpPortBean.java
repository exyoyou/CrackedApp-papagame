package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class NetGetDataBattleUdpPortBean implements Serializable {
    private String error;
    private String ip;
    private int port;

    public String getError() {
        return this.error;
    }

    public String getIp() {
        return this.ip;
    }

    public int getPort() {
        return this.port;
    }

    public void setError(String error) {
        this.error = error;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public String toString() {
        return "NetGetDataBattleUdpPortBean{ip='" + this.ip + "', port=" + this.port + ", error='" + this.error + "'}";
    }
}
