package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestSimulatorMomentListArgs {
    private String gameId;
    private int page;
    private String plugVersion;
    private int selectCondition;
    private String uid;

    public String getGameId() {
        return this.gameId;
    }

    public int getPage() {
        return this.page;
    }

    public String getPlugVersion() {
        return this.plugVersion;
    }

    public int getSelectCondition() {
        return this.selectCondition;
    }

    public String getUid() {
        return this.uid;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setPlugVersion(String plugVersion) {
        this.plugVersion = plugVersion;
    }

    public void setSelectCondition(int selectCondition) {
        this.selectCondition = selectCondition;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
