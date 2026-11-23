package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class CloudBackupsDataTable {

    @DatabaseField
    private boolean downFinish;

    @DatabaseField
    private String filePath;

    @DatabaseField
    private String gameId;

    @DatabaseField
    private boolean hasRecoverd;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67239id;

    public String getFilePath() {
        return this.filePath;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getId() {
        return this.f67239id;
    }

    public boolean isDownFinish() {
        return this.downFinish;
    }

    public boolean isHasRecoverd() {
        return this.hasRecoverd;
    }

    public void setDownFinish(boolean downFinish) {
        this.downFinish = downFinish;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setHasRecoverd(boolean hasRecoverd) {
        this.hasRecoverd = hasRecoverd;
    }

    public void setId(int id2) {
        this.f67239id = id2;
    }
}
