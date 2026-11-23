package com.beizi.fusion.model;

/* JADX INFO: loaded from: classes6.dex */
public class ChannelBidResult {
    private String bidType;
    private String channelName;
    private double ecpm;
    private int reason;

    public String getBidType() {
        return this.bidType;
    }

    public String getChannelName() {
        return this.channelName;
    }

    public double getEcpm() {
        return this.ecpm;
    }

    public int getReason() {
        return this.reason;
    }

    public void setBidType(String str) {
        this.bidType = str;
    }

    public void setChannelName(String str) {
        this.channelName = str;
    }

    public void setEcpm(double d10) {
        this.ecpm = d10;
    }

    public void setReason(int i10) {
        this.reason = i10;
    }

    public String toString() {
        return "ChannelBidResult{ecpm=" + this.ecpm + ", channelName='" + this.channelName + "', bidType='" + this.bidType + "', reason=" + this.reason + '}';
    }
}
