package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class NetBattleGetMatchAvailableServerBean implements Serializable {
    private String error;
    private String ip;
    private String port;

    public NetBattleGetMatchAvailableServerBean() {
    }

    public String getError() {
        return this.error;
    }

    public String getIp() {
        return this.ip;
    }

    public String getPort() {
        return this.port;
    }

    public void setError(String error) {
        this.error = error;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public void setPort(String port) {
        this.port = port;
    }

    public NetBattleGetMatchAvailableServerBean(String error, String ip, String port) {
        this.error = error;
        this.ip = ip;
        this.port = port;
    }
}
