package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CheckGameVersionRequestArgs {
    private List<String> gameList;
    private String token;
    private String uid;

    public List<String> getGameList() {
        return this.gameList;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setGameList(List<String> gameList) {
        this.gameList = gameList;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
