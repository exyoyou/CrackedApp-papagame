package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestBbsRecommendArgs {
    private Boolean firstReqInCurPage;
    private String gameId;
    private Integer page;
    private Integer postId;
    private Integer uid;

    public Boolean getFirstReqInCurPage() {
        return this.firstReqInCurPage;
    }

    public String getGameId() {
        return this.gameId;
    }

    public Integer getPage() {
        return this.page;
    }

    public Integer getPostId() {
        return this.postId;
    }

    public Integer getUid() {
        return this.uid;
    }

    public void setFirstReqInCurPage(Boolean firstReqInCurPage) {
        this.firstReqInCurPage = firstReqInCurPage;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public void setPostId(Integer postId) {
        this.postId = postId;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}
