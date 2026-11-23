package com.cloudplay.messagesdk.entity;

/* JADX INFO: loaded from: classes9.dex */
public class PayInfo {
    private int clientType;
    private String payStr;

    public PayInfo(int i10, String str) {
        this.payStr = str;
        this.clientType = i10;
    }

    public int getClientType() {
        return this.clientType;
    }

    public String getPayStr() {
        return this.payStr;
    }

    public void setClientType(int i10) {
        this.clientType = i10;
    }

    public void setPayStr(String str) {
        this.payStr = str;
    }

    public String toString() {
        return "PayStrInfo{payStr='" + this.payStr + "', clientType=" + this.clientType + '}';
    }
}
