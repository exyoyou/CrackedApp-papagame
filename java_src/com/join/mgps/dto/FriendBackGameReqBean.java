package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FriendBackGameReqBean {
    private List<Integer> battleUids;
    private String gameId;
    private String token;
    private int uid;

    public List<Integer> getBattleUids() {
        return this.battleUids;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setBattleUids(List<Integer> battleUids) {
        this.battleUids = battleUids;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
