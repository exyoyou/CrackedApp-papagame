package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestMiniGameArgs extends BaseDto {
    private String gameId;
    private int page;
    private int pageSize;
    private int uid;

    public String getGameId() {
        return this.gameId;
    }

    public int getPage() {
        return this.page;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
