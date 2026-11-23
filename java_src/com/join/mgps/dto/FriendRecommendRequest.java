package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FriendRecommendRequest {
    private String gameId;
    private String gameSeries;
    private List<String> localDownloadGameIds;
    private String locationPageType;
    private int page;
    private String token;
    private int uid;

    public String getGameId() {
        return this.gameId;
    }

    public String getGameSeries() {
        return this.gameSeries;
    }

    public List<String> getLocalDownloadGameIds() {
        return this.localDownloadGameIds;
    }

    public String getLocationPageType() {
        return this.locationPageType;
    }

    public int getPage() {
        return this.page;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setGameSeries(String gameSeries) {
        this.gameSeries = gameSeries;
    }

    public void setLocalDownloadGameIds(List<String> localDownloadGameIds) {
        this.localDownloadGameIds = localDownloadGameIds;
    }

    public void setLocationPageType(String locationPageType) {
        this.locationPageType = locationPageType;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
