package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ServiceState {
    private long add_time;
    private String title;
    private int type;

    public long getAdd_time() {
        return this.add_time * 1000;
    }

    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public void setAdd_time(long add_time) {
        this.add_time = add_time;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setType(int type) {
        this.type = type;
    }
}
