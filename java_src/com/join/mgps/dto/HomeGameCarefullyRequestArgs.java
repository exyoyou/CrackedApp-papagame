package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class HomeGameCarefullyRequestArgs {
    private int first;
    private String game_id;
    private int pn;

    public HomeGameCarefullyRequestArgs() {
    }

    public int getFirst() {
        return this.first;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getPn() {
        return this.pn;
    }

    public void setFirst(int first) {
        this.first = first;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public HomeGameCarefullyRequestArgs(int pn, int first, String game_id) {
        this.pn = pn;
        this.first = first;
        this.game_id = game_id;
    }
}
