package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class AppTimeDataTable {

    @DatabaseField
    private String appName;

    @DatabaseField
    private String atartTime;

    @DatabaseField
    private String endTime;

    @DatabaseField
    private String gameId;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67234id;

    @DatabaseField
    private boolean isUped;

    @DatabaseField
    private String packageName;

    @DatabaseField
    private int timeLength;

    public AppTimeDataTable() {
    }

    public String getAppName() {
        return this.appName;
    }

    public String getAtartTime() {
        return this.atartTime;
    }

    public String getEndTime() {
        return this.endTime;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int getTimeLength() {
        return this.timeLength;
    }

    public boolean isUped() {
        return this.isUped;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }

    public void setAtartTime(String atartTime) {
        this.atartTime = atartTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setTimeLength(int timeLength) {
        this.timeLength = timeLength;
    }

    public void setUped(boolean uped) {
        this.isUped = uped;
    }

    public AppTimeDataTable(String packageName, String appName, String gameId, String atartTime, String endTime, int timeLength, boolean isUped) {
        this.packageName = packageName;
        this.appName = appName;
        this.gameId = gameId;
        this.atartTime = atartTime;
        this.endTime = endTime;
        this.timeLength = timeLength;
        this.isUped = isUped;
    }
}
