package com.windmill.sdk.models;

/* JADX INFO: loaded from: classes8.dex */
public class FreEntity {
    private int channelId;
    private int day;
    private int hour;
    private int month;
    private String placementId;
    private long tameStamp;
    private String tbPlacementId;

    public FreEntity(int channelId, String tbPlacementId, String placementId) {
        this.channelId = channelId;
        this.tbPlacementId = tbPlacementId;
        this.placementId = placementId;
    }

    public int getChannelId() {
        return this.channelId;
    }

    public int getDay() {
        return this.day;
    }

    public int getHour() {
        return this.hour;
    }

    public int getMonth() {
        return this.month;
    }

    public String getPlacementId() {
        return this.placementId;
    }

    public long getTameStamp() {
        return this.tameStamp;
    }

    public String getTbPlacementId() {
        return this.tbPlacementId;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public void setHour(int hour) {
        this.hour = hour;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public void setTameStamp(long tameStamp) {
        this.tameStamp = tameStamp;
    }

    public FreEntity(int channelId, String tbPlacementId, String placementId, int month, int day, int hour, long tameStamp) {
        this.channelId = channelId;
        this.tbPlacementId = tbPlacementId;
        this.placementId = placementId;
        this.month = month;
        this.day = day;
        this.hour = hour;
        this.tameStamp = tameStamp;
    }
}
