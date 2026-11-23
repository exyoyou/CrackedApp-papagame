package com.cloudplay.messagesdk.entity;

/* JADX INFO: loaded from: classes9.dex */
public class HMTxtMessage extends HMMessage {
    private int ack;
    private String from;
    public String mid;
    private String payload;
    private String to;
    private int type;
    private String uid;

    public int getAck() {
        return this.ack;
    }

    public String getFrom() {
        return this.from;
    }

    public String getMid() {
        return this.mid;
    }

    public String getPayload() {
        return this.payload;
    }

    public String getTo() {
        return this.to;
    }

    public int getType() {
        return this.type;
    }

    public String getUid() {
        return this.uid;
    }

    public void setAck(int i10) {
        this.ack = i10;
    }

    public void setFrom(String str) {
        this.from = str;
    }

    public void setMid(String str) {
        this.mid = str;
    }

    public void setPayload(String str) {
        this.payload = str;
    }

    public void setTo(String str) {
        this.to = str;
    }

    public void setType(int i10) {
        this.type = i10;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public String toString() {
        return "HMTxtMessage{mid='" + this.mid + "', type=" + this.type + ", to='" + this.to + "', from='" + this.from + "', uid='" + this.uid + "', ack=" + this.ack + ", payload='" + this.payload + "'}";
    }
}
