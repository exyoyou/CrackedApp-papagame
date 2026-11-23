package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RequestEndGameListArgs {
    private List<Long> downloadGameIdList;
    private String ext;
    private String gameId;
    private int page;
    private int type;
    private String uid;

    public List<Long> getDownloadGameIdList() {
        return this.downloadGameIdList;
    }

    public String getExt() {
        return this.ext;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getPage() {
        return this.page;
    }

    public int getType() {
        return this.type;
    }

    public String getUid() {
        return this.uid;
    }

    public void setDownloadGameIdList(List<Long> downloadGameIdList) {
        this.downloadGameIdList = downloadGameIdList;
    }

    public void setExt(String ext) {
        this.ext = ext;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
