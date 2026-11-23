package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestEndGameDetailArgs {
    private String endgameId;
    private String gameId;
    private int page;
    private String uid;

    public String getEndgameId() {
        return this.endgameId;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getPage() {
        return this.page;
    }

    public String getUid() {
        return this.uid;
    }

    public void setEndgameId(String endgameId) {
        this.endgameId = endgameId;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
