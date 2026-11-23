package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestPnAndPcAndUidArgs extends BaseDto {
    private boolean is_vip;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68099pc;
    private int pn;
    private int uid;

    public RequestPnAndPcAndUidArgs() {
    }

    public int getPc() {
        return this.f68099pc;
    }

    public int getPn() {
        return this.pn;
    }

    public int getUid() {
        return this.uid;
    }

    public boolean isIs_vip() {
        return this.is_vip;
    }

    public void setIs_vip(boolean is_vip) {
        this.is_vip = is_vip;
    }

    public void setPc(int pc2) {
        this.f68099pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public RequestPnAndPcAndUidArgs(int pn, int pc2, int uid) {
        this.pn = pn;
        this.f68099pc = pc2;
        this.uid = uid;
    }

    public RequestPnAndPcAndUidArgs(boolean is_vip, int uid) {
        this.is_vip = is_vip;
        this.uid = uid;
    }
}
