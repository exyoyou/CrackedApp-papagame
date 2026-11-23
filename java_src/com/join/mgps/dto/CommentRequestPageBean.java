package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CommentRequestPageBean {
    private String game_id;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68038pc;
    private int pn;

    public CommentRequestPageBean() {
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getPc() {
        return this.f68038pc;
    }

    public int getPn() {
        return this.pn;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setPc(int pc2) {
        this.f68038pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public CommentRequestPageBean(String game_id, int pn, int pc2) {
        this.game_id = game_id;
        this.pn = pn;
        this.f68038pc = pc2;
    }
}
