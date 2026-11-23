package com.cloudplay.messagesdk.entity;

/* JADX INFO: loaded from: classes9.dex */
public class ObserverItem {
    private String configFile;
    private String configName;
    private ConfigType configType;

    public String getConfigFile() {
        return this.configFile;
    }

    public String getConfigName() {
        return this.configName;
    }

    public ConfigType getConfigType() {
        return this.configType;
    }

    public void setConfigFile(String str) {
        this.configFile = str;
    }

    public void setConfigName(String str) {
        this.configName = str;
    }

    public void setConfigType(ConfigType configType) {
        this.configType = configType;
    }

    public String toString() {
        return "ObserverItem{configType=" + this.configType + ", configName='" + this.configName + "', configFile='" + this.configFile + "'}";
    }
}
