package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestSearchPageArgs {
    private String game_id;
    private String token;
    private int uid;

    public RequestSearchPageArgs(int uid, String token) {
        this.uid = uid;
        this.token = token;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public RequestSearchPageArgs(int uid, String token, String game_id) {
        this.uid = uid;
        this.token = token;
        this.game_id = game_id;
    }

    public RequestSearchPageArgs() {
    }
}
