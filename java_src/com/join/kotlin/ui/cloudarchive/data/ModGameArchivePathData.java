package com.join.kotlin.ui.cloudarchive.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class ModGameArchivePathData implements Serializable {
    private String archiveFileSuffix;
    private int archiveType;
    private String gameId;
    private String mainArchiveLocalPath;
    private String mainGamePackageName;
    private String modPackageName;
    private String subArchiveLocalPath;

    public String getArchiveFileSuffix() {
        return this.archiveFileSuffix;
    }

    public int getArchiveType() {
        return this.archiveType;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getMainArchiveLocalPath() {
        return this.mainArchiveLocalPath;
    }

    public String getMainGamePackageName() {
        return this.mainGamePackageName;
    }

    public String getModPackageName() {
        return this.modPackageName;
    }

    public String getSubArchiveLocalPath() {
        return this.subArchiveLocalPath;
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

    public void setMainArchiveLocalPath(String mainArchiveLocalPath) {
        this.mainArchiveLocalPath = mainArchiveLocalPath;
    }

    public void setMainGamePackageName(String mainGamePackageName) {
        this.mainGamePackageName = mainGamePackageName;
    }

    public void setModPackageName(String modPackageName) {
        this.modPackageName = modPackageName;
    }

    public void setSubArchiveLocalPath(String subArchiveLocalPath) {
        this.subArchiveLocalPath = subArchiveLocalPath;
    }
}
