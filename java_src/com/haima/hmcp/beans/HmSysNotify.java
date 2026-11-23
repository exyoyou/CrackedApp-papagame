package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class HmSysNotify {
    String cli;
    String currentTimeMillis;
    String hm_sys_config_notify;
    String socketId;

    public String getCli() {
        return this.cli;
    }

    public String getCurrentTimeMillis() {
        return this.currentTimeMillis;
    }

    public String getHm_sys_config_notify() {
        return this.hm_sys_config_notify;
    }

    public String getSocketId() {
        return this.socketId;
    }

    public void setCli(String str) {
        this.cli = str;
    }

    public void setCurrentTimeMillis(String str) {
        this.currentTimeMillis = str;
    }

    public void setHm_sys_config_notify(String str) {
        this.hm_sys_config_notify = str;
    }

    public void setSocketId(String str) {
        this.socketId = str;
    }

    public String toString() {
        return "HmSysNotify{hm_sys_config_notify='" + this.hm_sys_config_notify + "', cli='" + this.cli + "', socketId='" + this.socketId + "', currentTimeMillis='" + this.currentTimeMillis + "'}";
    }
}
