package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestSimulatorArgs extends BaseDto {

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68103pc;
    private int pn;

    public RequestSimulatorArgs() {
    }

    public int getPc() {
        return this.f68103pc;
    }

    public int getPn() {
        return this.pn;
    }

    public void setPc(int pc2) {
        this.f68103pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public RequestSimulatorArgs(int pn) {
        this.pn = pn;
    }

    public RequestSimulatorArgs(int pn, int pc2) {
        this.pn = pn;
        this.f68103pc = pc2;
    }
}
