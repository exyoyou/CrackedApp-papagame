package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class PspBattleServer implements Serializable {
    private String ip;
    private String people;
    private int port;
    private String server_name;

    public String getIp() {
        return this.ip;
    }

    public String getPeople() {
        return this.people;
    }

    public int getPort() {
        return this.port;
    }

    public String getServer_name() {
        return this.server_name;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public void setPeople(String people) {
        this.people = people;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public void setServer_name(String server_name) {
        this.server_name = server_name;
    }
}
