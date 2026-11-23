package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestCommitArgs extends BaseDto {
    private int[] comment_type;
    private String game_id;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68095pc;
    private int pn;
    private int uid;

    public RequestCommitArgs() {
    }

    public int[] getComment_type() {
        return this.comment_type;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getPc() {
        return this.f68095pc;
    }

    public int getPn() {
        return this.pn;
    }

    public int getUid() {
        return this.uid;
    }

    public void setComment_type(int[] comment_type) {
        this.comment_type = comment_type;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setPc(int pc2) {
        this.f68095pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public RequestCommitArgs(int[] comment_type, int pn, int pc2, String game_id, int uid) {
        this.comment_type = comment_type;
        this.pn = pn;
        this.f68095pc = pc2;
        this.game_id = game_id;
        this.uid = uid;
    }
}
