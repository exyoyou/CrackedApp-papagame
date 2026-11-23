package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GiftPackageArgs extends BaseDto {
    private String game_id;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68074pc;
    private int pn;
    private int uid;

    public GiftPackageArgs() {
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getPc() {
        return this.f68074pc;
    }

    public int getPn() {
        return this.pn;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setPc(int pc2) {
        this.f68074pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public GiftPackageArgs(int uid, int pn, int pc2, String game_id) {
        this.uid = uid;
        this.pn = pn;
        this.f68074pc = pc2;
        this.game_id = game_id;
    }
}
