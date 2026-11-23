package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class GSMAddressInfo implements Serializable {
    private static final long serialVersionUID = 1;
    private String gsmUrl;
    public GSMUsbNatData gsmUsbNatData;
    private String instanceAccessUrl;
    private String ipV6TurnUrl;
    private GSMResolutionInfo resolutionInfo;
    private String roomId;
    private String signalUrl;
    private String turnPassword;
    private String turnUrl;
    private String turnUserName;

    public class GSMResolutionInfo {
        private long bitRate;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f33818id;
        private String resolution;

        public GSMResolutionInfo() {
        }

        public long getBitRate() {
            return this.bitRate;
        }

        public String getId() {
            return this.f33818id;
        }

        public String getResolution() {
            return this.resolution;
        }

        public void setBitRate(long j10) {
            this.bitRate = j10;
        }

        public void setId(String str) {
            this.f33818id = str;
        }

        public void setResolution(String str) {
            this.resolution = str;
        }

        public String toString() {
            return "GSMResolutionInfo{bitRate=" + this.bitRate + ", id='" + this.f33818id + "', resolution='" + this.resolution + "'}";
        }
    }

    public String getGsmUrl() {
        return this.gsmUrl;
    }

    public GSMUsbNatData getGsmUsbNatData() {
        return this.gsmUsbNatData;
    }

    public String getInstanceAccessUrl() {
        return this.instanceAccessUrl;
    }

    public String getIpV6TurnUrl() {
        return this.ipV6TurnUrl;
    }

    public GSMResolutionInfo getResolutionInfo() {
        return this.resolutionInfo;
    }

    public String getRoomId() {
        return this.roomId;
    }

    public String getSignalUrl() {
        return this.signalUrl;
    }

    public String getTurnPassword() {
        return this.turnPassword;
    }

    public String getTurnUrl() {
        return this.turnUrl;
    }

    public String getTurnUserName() {
        return this.turnUserName;
    }

    public void setGsmUrl(String str) {
        this.gsmUrl = str;
    }

    public void setGsmUsbNatData(GSMUsbNatData gSMUsbNatData) {
        this.gsmUsbNatData = gSMUsbNatData;
    }

    public void setInstanceAccessUrl(String str) {
        this.instanceAccessUrl = str;
    }

    public void setIpV6TurnUrl(String str) {
        this.ipV6TurnUrl = str;
    }

    public void setResolutionInfo(GSMResolutionInfo gSMResolutionInfo) {
        this.resolutionInfo = gSMResolutionInfo;
    }

    public void setRoomId(String str) {
        this.roomId = str;
    }

    public void setSignalUrl(String str) {
        this.signalUrl = str;
    }

    public void setTurnPassword(String str) {
        this.turnPassword = str;
    }

    public void setTurnUrl(String str) {
        this.turnUrl = str;
    }

    public void setTurnUserName(String str) {
        this.turnUserName = str;
    }

    public String toString() {
        return "GSMAddressInfo{gsmUrl='" + this.gsmUrl + "', signalUrl='" + this.signalUrl + "', roomId='" + this.roomId + "', turnUrl='" + this.turnUrl + "', turnUserName='" + this.turnUserName + "', turnPassword='" + this.turnPassword + "', resolutionInfo=" + this.resolutionInfo + ", gsmUsbNatData=" + this.gsmUsbNatData + ", instanceAccessUrl=" + this.instanceAccessUrl + '}';
    }
}
