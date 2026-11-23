package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class HaveGameListArgs {
    private String game_id;
    private String token;
    private String uid;

    public HaveGameListArgs() {
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public HaveGameListArgs(String uid, String token, String game_id) {
        this.uid = uid;
        this.token = token;
        this.game_id = game_id;
    }
}
