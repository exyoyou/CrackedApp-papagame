package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestBbsListArgs {
    private String gameId;
    private Integer page;
    private Integer tagId;
    private Integer uid;

    public String getGameId() {
        return this.gameId;
    }

    public Integer getPage() {
        return this.page;
    }

    public Integer getTagId() {
        return this.tagId;
    }

    public Integer getUid() {
        return this.uid;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public void setTagId(Integer tagId) {
        this.tagId = tagId;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}
