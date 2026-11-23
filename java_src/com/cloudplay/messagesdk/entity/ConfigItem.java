package com.cloudplay.messagesdk.entity;

/* JADX INFO: loaded from: classes9.dex */
public class ConfigItem {
    private String configName;
    private String data;

    public String getConfigName() {
        return this.configName;
    }

    public String getData() {
        return this.data;
    }

    public void setConfigName(String str) {
        this.configName = str;
    }

    public void setData(String str) {
        this.data = str;
    }

    public String toString() {
        return "ConfigItem{configName='" + this.configName + "', data='" + this.data + "'}";
    }
}
