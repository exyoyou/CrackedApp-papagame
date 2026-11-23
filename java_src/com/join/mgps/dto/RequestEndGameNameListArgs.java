package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestEndGameNameListArgs {
    private int modelType;
    private int page;
    private String uid;
    private boolean withEndGame;

    public int getModelType() {
        return this.modelType;
    }

    public int getPage() {
        return this.page;
    }

    public String getUid() {
        return this.uid;
    }

    public boolean isWithEndGame() {
        return this.withEndGame;
    }

    public void setModelType(int modelType) {
        this.modelType = modelType;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public void setWithEndGame(boolean withEndGame) {
        this.withEndGame = withEndGame;
    }
}
