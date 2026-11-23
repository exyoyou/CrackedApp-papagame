package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameSortRequestBean {
    private String deviceid;
    private String version;

    public GameSortRequestBean() {
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public String getVersion() {
        return this.version;
    }

    public void setDeviceid(String deviceid) {
        this.deviceid = deviceid;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public GameSortRequestBean(String version, String deviceid) {
        this.version = version;
        this.deviceid = deviceid;
    }
}
