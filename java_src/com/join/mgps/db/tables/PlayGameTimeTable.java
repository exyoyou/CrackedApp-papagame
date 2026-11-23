package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class PlayGameTimeTable {

    @DatabaseField
    private String gameId;

    @DatabaseField
    private long gamePlayRecentlyTime;

    @DatabaseField
    private long gamePlayTotalTime;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67261id;

    @DatabaseField
    private String uId;

    public PlayGameTimeTable() {
    }

    public String getGameId() {
        return this.gameId;
    }

    public long getGamePlayRecentlyTime() {
        return this.gamePlayRecentlyTime;
    }

    public long getGamePlayTotalTime() {
        return this.gamePlayTotalTime;
    }

    public int getId() {
        return this.f67261id;
    }

    public String getuId() {
        return this.uId;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setGamePlayRecentlyTime(long gamePlayRecentlyTime) {
        this.gamePlayRecentlyTime = gamePlayRecentlyTime;
    }

    public void setGamePlayTotalTime(long gamePlayTotalTime) {
        this.gamePlayTotalTime = gamePlayTotalTime;
    }

    public void setId(int id2) {
        this.f67261id = id2;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    public PlayGameTimeTable(String uId, String gameId, long gamePlayTotalTime, long gamePlayRecentlyTime) {
        setuId(uId);
        setGameId(gameId);
        setGamePlayTotalTime(gamePlayTotalTime);
        setGamePlayRecentlyTime(gamePlayRecentlyTime);
    }
}
