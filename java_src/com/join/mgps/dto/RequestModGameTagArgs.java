package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestModGameTagArgs {
    private String gameId;
    private long lastEnterTime;
    private int uid;

    public RequestModGameTagArgs() {
    }

    public String getGameId() {
        return this.gameId;
    }

    public long getLastEnterTime() {
        return this.lastEnterTime;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setLastEnterTime(long lastEnterTime) {
        this.lastEnterTime = lastEnterTime;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public RequestModGameTagArgs(String gameId, long lastEnterTime, int uid) {
        this.gameId = gameId;
        this.lastEnterTime = lastEnterTime;
        this.uid = uid;
    }
}
