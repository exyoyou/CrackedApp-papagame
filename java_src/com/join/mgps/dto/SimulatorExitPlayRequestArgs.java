package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorExitPlayRequestArgs {
    private List<Integer> battleUidList;
    private String gameId;
    private String token;
    private String uid;

    public List<Integer> getBattleUidList() {
        return this.battleUidList;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setBattleUidList(List<Integer> battleUidList) {
        this.battleUidList = battleUidList;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
