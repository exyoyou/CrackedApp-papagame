package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestScreenshortListArgs {
    private String gameId;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68101pc = 20;
    private int pn;
    private int typeId;

    public RequestScreenshortListArgs(int typeId, String gameId, int pn) {
        this.typeId = typeId;
        this.gameId = gameId;
        this.pn = pn;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getPc() {
        return this.f68101pc;
    }

    public int getPn() {
        return this.pn;
    }

    public int getTypeId() {
        return this.typeId;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setPc(int pc2) {
        this.f68101pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }
}
