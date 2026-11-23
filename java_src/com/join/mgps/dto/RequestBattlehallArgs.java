package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestBattlehallArgs extends BaseDto {
    private int collection_type;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68090pc;
    private int pn;

    public RequestBattlehallArgs() {
    }

    public int getCollection_type() {
        return this.collection_type;
    }

    public int getPc() {
        return this.f68090pc;
    }

    public int getPn() {
        return this.pn;
    }

    public void setCollection_type(int collection_type) {
        this.collection_type = collection_type;
    }

    public void setPc(int pc2) {
        this.f68090pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public RequestBattlehallArgs(int collection_type, int pn, int pc2) {
        this.collection_type = collection_type;
        this.pn = pn;
        this.f68090pc = pc2;
    }
}
