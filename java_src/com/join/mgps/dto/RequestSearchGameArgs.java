package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestSearchGameArgs extends BaseDto {
    private String gameId;
    private Integer isRecommend;
    private String keyword;
    private Integer langId;
    private String pageOfFirstGameId;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private Integer f68102pc;
    private Integer pluginNum;
    private Integer pn;
    private Integer rec_pn;
    private Integer uid;

    public String getGameId() {
        return this.gameId;
    }

    public Integer getIsRecommend() {
        return this.isRecommend;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public Integer getLangId() {
        return this.langId;
    }

    public String getPageOfFirstGameId() {
        return this.pageOfFirstGameId;
    }

    public Integer getPc() {
        return this.f68102pc;
    }

    public Integer getPluginNum() {
        return this.pluginNum;
    }

    public Integer getPn() {
        return this.pn;
    }

    public Integer getRec_pn() {
        return this.rec_pn;
    }

    public Integer getUid() {
        return this.uid;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setIsRecommend(Integer isRecommend) {
        this.isRecommend = isRecommend;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public void setLangId(Integer langId) {
        this.langId = langId;
    }

    public void setPageOfFirstGameId(String pageOfFirstGameId) {
        this.pageOfFirstGameId = pageOfFirstGameId;
    }

    public void setPc(Integer pc2) {
        this.f68102pc = pc2;
    }

    public void setPluginNum(Integer pluginNum) {
        this.pluginNum = pluginNum;
    }

    public void setPn(Integer pn) {
        this.pn = pn;
    }

    public void setRec_pn(Integer rec_pn) {
        this.rec_pn = rec_pn;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}
