package com.join.kotlin.ui.cloudarchive.data;

/* JADX INFO: loaded from: classes4.dex */
public class ModGameArchivePathDataV2 {
    private String archiveFileSuffix;
    private int archiveType;
    private String gameId;
    private String mainLocalPath;
    private String subLocalPath;

    public String getArchiveFileSuffix() {
        return this.archiveFileSuffix;
    }

    public int getArchiveType() {
        return this.archiveType;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getMainLocalPath() {
        return this.mainLocalPath;
    }

    public String getSubLocalPath() {
        return this.subLocalPath;
    }

    public void setArchiveFileSuffix(String archiveFileSuffix) {
        this.archiveFileSuffix = archiveFileSuffix;
    }

    public void setArchiveType(int archiveType) {
        this.archiveType = archiveType;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setMainLocalPath(String mainLocalPath) {
        this.mainLocalPath = mainLocalPath;
    }

    public void setSubLocalPath(String subLocalPath) {
        this.subLocalPath = subLocalPath;
    }
}
