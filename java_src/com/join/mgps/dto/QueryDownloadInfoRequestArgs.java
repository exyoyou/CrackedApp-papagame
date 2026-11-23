package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class QueryDownloadInfoRequestArgs {
    private String dataType;
    private String gameId;
    private List<String> gameIdList;
    private String isRecommend;
    private int location;
    private String token;
    private String uid;

    public String getDataType() {
        return this.dataType;
    }

    public String getGameId() {
        return this.gameId;
    }

    public List<String> getGameIdList() {
        return this.gameIdList;
    }

    public String getIsRecommend() {
        return this.isRecommend;
    }

    public int getLocation() {
        return this.location;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setDataType(String dataType) {
        this.dataType = dataType;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setGameIdList(List<String> gameIdList) {
        this.gameIdList = gameIdList;
    }

    public void setIsRecommend(String isRecommend) {
        this.isRecommend = isRecommend;
    }

    public void setLocation(int location) {
        this.location = location;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
