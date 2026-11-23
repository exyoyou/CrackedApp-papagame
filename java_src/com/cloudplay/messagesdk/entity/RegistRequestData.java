package com.cloudplay.messagesdk.entity;

/* JADX INFO: loaded from: classes9.dex */
public class RegistRequestData {
    private String cid;
    private String cpid;
    private String mtoken;
    private String packageName;
    private String serviceId;
    private String uid;

    public String getCid() {
        return this.cid;
    }

    public String getCpid() {
        return this.cpid;
    }

    public String getMtoken() {
        return this.mtoken;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getServiceId() {
        return this.serviceId;
    }

    public String getUid() {
        return this.uid;
    }

    public void setCid(String str) {
        this.cid = str;
    }

    public void setCpid(String str) {
        this.cpid = str;
    }

    public void setMtoken(String str) {
        this.mtoken = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setServiceId(String str) {
        this.serviceId = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public String toString() {
        return "RegistRequestData{cid='" + this.cid + "', uid='" + this.uid + "', serviceId='" + this.serviceId + "', cpid='" + this.cpid + "', packageName='" + this.packageName + "', mtoken='" + this.mtoken + "'}";
    }
}
