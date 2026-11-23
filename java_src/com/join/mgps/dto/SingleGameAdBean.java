package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class SingleGameAdBean {
    private int counts;
    private long time;

    public SingleGameAdBean() {
    }

    public int getCounts() {
        return this.counts;
    }

    public long getTime() {
        return this.time;
    }

    public void setCounts(int counts) {
        this.counts = counts;
    }

    public void setTime(long time) {
        this.time = time;
    }

    public SingleGameAdBean(int counts, long time) {
        this.counts = counts;
        this.time = time;
    }
}
