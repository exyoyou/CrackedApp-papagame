package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class DownlodTaskCopyTable {

    @DatabaseField
    private String downloadTask;

    @DatabaseField
    private String gameId;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67244id;

    public DownlodTaskCopyTable() {
    }

    public String getDownloadTask() {
        return this.downloadTask;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getId() {
        return this.f67244id;
    }

    public void setDownloadTask(String downloadTask) {
        this.downloadTask = downloadTask;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setId(int id2) {
        this.f67244id = id2;
    }

    public DownlodTaskCopyTable(int id2, String gameId, String downloadTask) {
        this.f67244id = id2;
        this.gameId = gameId;
        this.downloadTask = downloadTask;
    }
}
