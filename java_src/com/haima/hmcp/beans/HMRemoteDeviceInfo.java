package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class HMRemoteDeviceInfo implements Serializable {
    private static final long serialVersionUID = 1;
    String countlyAccessKeyId;
    String countlyAppKey;
    String countlyChannelId;
    String countlyCloudId;
    String countlyDeviceID;
    String countlyServerTimestamp;
    String countlyTransId;
    String countlyUrl;
    String ip;
    int port;
    String tag = "HM_MISC_MSG_TYPE_REMOTE_DEVICE_INFO";

    public void build(String str, String str2, String str3, String str4) {
        this.countlyUrl = str;
        this.countlyAppKey = str2;
        this.countlyServerTimestamp = str3;
        this.countlyDeviceID = str4;
    }

    public String getCountlyAccessKeyId() {
        return this.countlyAccessKeyId;
    }

    public String getCountlyAppKey() {
        return this.countlyAppKey;
    }

    public String getCountlyChannelId() {
        return this.countlyChannelId;
    }

    public String getCountlyCloudId() {
        return this.countlyCloudId;
    }

    public String getCountlyDeviceID() {
        return this.countlyDeviceID;
    }

    public String getCountlyServerTimestamp() {
        return this.countlyServerTimestamp;
    }

    public String getCountlyTransId() {
        return this.countlyTransId;
    }

    public String getCountlyUrl() {
        return this.countlyUrl;
    }

    public String getIp() {
        return this.ip;
    }

    public int getPort() {
        return this.port;
    }

    public String getTAG() {
        return this.tag;
    }

    public void setCountlyAccessKeyId(String str) {
        this.countlyAccessKeyId = str;
    }

    public void setCountlyAppKey(String str) {
        this.countlyAppKey = str;
    }

    public void setCountlyChannelId(String str) {
        this.countlyChannelId = str;
    }

    public void setCountlyCloudId(String str) {
        this.countlyCloudId = str;
    }

    public void setCountlyDeviceID(String str) {
        this.countlyDeviceID = str;
    }

    public void setCountlyServerTimestamp(String str) {
        this.countlyServerTimestamp = str;
    }

    public void setCountlyTransId(String str) {
        this.countlyTransId = str;
    }

    public void setCountlyUrl(String str) {
        this.countlyUrl = str;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setPort(int i10) {
        this.port = i10;
    }

    public void setTAG(String str) {
        this.tag = str;
    }

    public String toString() {
        return "RemoteDeviceInfo{countlyUrl='" + this.countlyUrl + "', countlyAppKey='" + this.countlyAppKey + "', countlyTransId='" + this.countlyTransId + "', countlyDeviceID='" + this.countlyDeviceID + "', countlyCloudId='" + this.countlyCloudId + "', countlyAccessKeyId='" + this.countlyAccessKeyId + "', countlyChannelId='" + this.countlyChannelId + "', countlyServerTimestamp='" + this.countlyServerTimestamp + "', ip='" + this.ip + "', port='" + this.port + "'}";
    }

    public void build(String str, String str2, int i10) {
        this.countlyTransId = str;
        this.ip = str2;
        this.port = i10;
    }
}
