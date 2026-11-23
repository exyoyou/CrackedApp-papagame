package com.cloudplay.messagesdk.entity;

/* JADX INFO: loaded from: classes9.dex */
public class CidInfo {
    private String cid;
    private String mtoken;
    private String serviceId;

    public CidInfo(String str, String str2, String str3) {
        this.cid = str;
        this.mtoken = str2;
        this.serviceId = str3;
    }

    public String getCid() {
        return this.cid;
    }

    public String getMtoken() {
        return this.mtoken;
    }

    public String getServiceId() {
        return this.serviceId;
    }

    public void setCid(String str) {
        this.cid = str;
    }

    public void setMtoken(String str) {
        this.mtoken = str;
    }

    public void setServiceId(String str) {
        this.serviceId = str;
    }

    public String toString() {
        return "CidInfo{cid='" + this.cid + "', mtoken='" + this.mtoken + "', serviceId='" + this.serviceId + "'}";
    }
}
