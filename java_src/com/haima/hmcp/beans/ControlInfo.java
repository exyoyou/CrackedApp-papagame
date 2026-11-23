package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class ControlInfo implements IParameter {
    private long cid;
    private int position;

    public long getCid() {
        return this.cid;
    }

    public int getPosition() {
        return this.position;
    }

    public void setCid(long j10) {
        this.cid = j10;
    }

    public void setPosition(int i10) {
        this.position = i10;
    }

    public String toString() {
        return "ControlInfo{cid=" + this.cid + ", position=" + this.position + '}';
    }
}
