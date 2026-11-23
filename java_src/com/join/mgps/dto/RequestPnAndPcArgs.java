package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestPnAndPcArgs extends BaseDto {

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68100pc;
    private int pn;

    public RequestPnAndPcArgs() {
    }

    public int getPc() {
        return this.f68100pc;
    }

    public int getPn() {
        return this.pn;
    }

    public void setPc(int pc2) {
        this.f68100pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public RequestPnAndPcArgs(int pn, int pc2) {
        this.pn = pn;
        this.f68100pc = pc2;
    }
}
