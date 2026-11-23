package com.join.mgps.dto;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RequestModGameRecommendAdArgs {
    private List<Long> downloadedGameIdList;
    private long gameId;
    private int uid;

    public RequestModGameRecommendAdArgs() {
    }

    public List<Long> getDownloadedGameIdList() {
        return this.downloadedGameIdList;
    }

    public long getGameId() {
        return this.gameId;
    }

    public int getUid() {
        return this.uid;
    }

    public void setDownloadedGameIdList(List<Long> downloadedGameIdList) {
        this.downloadedGameIdList = downloadedGameIdList;
    }

    public void setGameId(long gameId) {
        this.gameId = gameId;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public RequestModGameRecommendAdArgs(ArrayList<Long> downloadedGameIdList, int uid, long gameId) {
        this.downloadedGameIdList = downloadedGameIdList;
        this.uid = uid;
        this.gameId = gameId;
    }
}
