package com.cloudplay.messagesdk.entity;

/* JADX INFO: loaded from: classes9.dex */
public class Action {
    private int actId;
    private String did;
    private String protocol;
    private String transId;

    public int getActId() {
        return this.actId;
    }

    public String getDid() {
        return this.did;
    }

    public String getProtocol() {
        return this.protocol;
    }

    public String getTransId() {
        return this.transId;
    }

    public void setActId(int i10) {
        this.actId = i10;
    }

    public void setDid(String str) {
        this.did = str;
    }

    public void setProtocol(String str) {
        this.protocol = str;
    }

    public void setTransId(String str) {
        this.transId = str;
    }

    public String toString() {
        return "Action{actId=" + this.actId + ", protocol='" + this.protocol + "', transId='" + this.transId + "', did='" + this.did + "'}";
    }
}
