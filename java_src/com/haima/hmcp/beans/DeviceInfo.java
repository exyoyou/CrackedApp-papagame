package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceInfo implements Serializable {
    public AndroidInfo androidInfo;
    public String brand;
    public String isWifi;
    public String language;
    public String model;
    public String networkType;
    public String osName;
    public int osType;
    public String osVersion;
    public ScreenInfo screenInfo;

    public String toString() {
        return "DeviceInfo{, osType=" + this.osType + ", osVersion='" + this.osVersion + "', brand='" + this.brand + "', model='" + this.model + "', language='" + this.language + "', isWifi='" + this.isWifi + "', networkType='" + this.networkType + "', androidInfo=" + this.androidInfo + ", screenInfo=" + this.screenInfo + ", osName='" + this.osName + "'}";
    }
}
