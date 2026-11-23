package com.join.mgps.activity.vipzone.bean;

import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class LuckHistoryrequest {
    private int action;
    private String gameId;
    private String gameType;
    private int page;
    private List<String> positionMark;
    private int type;
    private int uid;
    private String userToken;
    private String platformType = "ANDROID";
    private String apiVersion = "V3";

    public int getAction() {
        return this.action;
    }

    public String getApiVersion() {
        return this.apiVersion;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getGameType() {
        return this.gameType;
    }

    public int getPage() {
        return this.page;
    }

    public String getPlatformType() {
        return this.platformType;
    }

    public List<String> getPositionMark() {
        return this.positionMark;
    }

    public int getType() {
        return this.type;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUserToken() {
        return this.userToken;
    }

    public void setAction(int action) {
        this.action = action;
    }

    public void setApiVersion(String apiVersion) {
        this.apiVersion = apiVersion;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setGameType(String gameType) {
        this.gameType = gameType;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setPlatformType(String platformType) {
        this.platformType = platformType;
    }

    public void setPositionMark(List<String> positionMark) {
        this.positionMark = positionMark;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setUserToken(String userToken) {
        this.userToken = userToken;
    }
}
