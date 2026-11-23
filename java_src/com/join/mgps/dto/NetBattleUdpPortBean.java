package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class NetBattleUdpPortBean implements Serializable {
    private String ip;
    private int port;

    public String getIp() {
        return this.ip;
    }

    public int getPort() {
        return this.port;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public void setPort(int port) {
        this.port = port;
    }
}
