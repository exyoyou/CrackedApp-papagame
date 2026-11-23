package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestModuleArgs extends BaseDto {
    private int jump_type;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68098pc;
    private int pn;

    public RequestModuleArgs() {
    }

    public int getJump_type() {
        return this.jump_type;
    }

    public int getPc() {
        return this.f68098pc;
    }

    public int getPn() {
        return this.pn;
    }

    public void setJump_type(int jump_type) {
        this.jump_type = jump_type;
    }

    public void setPc(int pc2) {
        this.f68098pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public RequestModuleArgs(int jump_type, int pn, int pc2) {
        this.jump_type = jump_type;
        this.pn = pn;
        this.f68098pc = pc2;
    }
}
