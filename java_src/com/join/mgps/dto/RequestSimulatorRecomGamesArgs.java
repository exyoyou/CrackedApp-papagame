package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RequestSimulatorRecomGamesArgs {
    private String appVersion;
    private List<Long> downloadedGameIds;
    private String gameId;
    private String uid;

    public String getAppVersion() {
        return this.appVersion;
    }

    public List<Long> getDownloadedGameIds() {
        return this.downloadedGameIds;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getUid() {
        return this.uid;
    }

    public void setAppVersion(String appVersion) {
        this.appVersion = appVersion;
    }

    public void setDownloadedGameIds(List<Long> downloadedGameIds) {
        this.downloadedGameIds = downloadedGameIds;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
