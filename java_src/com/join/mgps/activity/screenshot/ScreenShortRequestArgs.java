package com.join.mgps.activity.screenshot;

/* JADX INFO: loaded from: classes9.dex */
public class ScreenShortRequestArgs {
    private String gameId;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f58101pc;
    private int pn;
    private int typeId;

    public String getGameId() {
        return this.gameId;
    }

    public int getPc() {
        return this.f58101pc;
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
        this.f58101pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }
}
