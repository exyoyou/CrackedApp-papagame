package com.papa91.arc.bean;

/* JADX INFO: loaded from: classes2.dex */
public class Slot {
    private String date;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f78028id = -1;
    private String name;
    private String path;
    private String thumb;
    private long timestamp;

    public String getDate() {
        return this.date;
    }

    public int getId() {
        return this.f78028id;
    }

    public String getName() {
        return this.name;
    }

    public String getPath() {
        return this.path;
    }

    public String getThumb() {
        return this.thumb;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public void setId(int i10) {
        this.f78028id = i10;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setThumb(String str) {
        this.thumb = str;
    }

    public void setTimestamp(long j10) {
        this.timestamp = j10;
    }
}
