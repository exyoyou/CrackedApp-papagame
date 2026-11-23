package com.beizi.ad.model;

/* JADX INFO: loaded from: classes6.dex */
public class BeiZiLocation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f9225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f9226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f9227c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f9228d;

    public BeiZiLocation() {
    }

    public String getLatitude() {
        return this.f9226b;
    }

    public String getLongitude() {
        return this.f9225a;
    }

    public long getTime() {
        return this.f9228d;
    }

    public String getType() {
        return this.f9227c;
    }

    public void setLatitude(String str) {
        this.f9226b = str;
    }

    public void setLongitude(String str) {
        this.f9225a = str;
    }

    public void setTime(long j10) {
        this.f9228d = j10;
    }

    public void setType(String str) {
        this.f9227c = str;
    }

    public BeiZiLocation(String str, String str2, String str3, long j10) {
        this.f9225a = str;
        this.f9226b = str2;
        this.f9227c = str3;
        this.f9228d = j10;
    }
}
