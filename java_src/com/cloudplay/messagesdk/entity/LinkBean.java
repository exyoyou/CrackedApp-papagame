package com.cloudplay.messagesdk.entity;

/* JADX INFO: loaded from: classes9.dex */
public class LinkBean {
    String bId;
    String sign;
    String socketUrl;

    public String getSign() {
        return this.sign;
    }

    public String getSocketUrl() {
        return this.socketUrl;
    }

    public String getbId() {
        return this.bId;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setSocketUrl(String str) {
        this.socketUrl = str;
    }

    public void setbId(String str) {
        this.bId = str;
    }

    public String toString() {
        return "LinkBean{socketUrl='" + this.socketUrl + "', bId='" + this.bId + "', sign='" + this.sign + "'}";
    }
}
