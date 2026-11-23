package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class CloudArchiveTable {

    @DatabaseField
    private String archiveDataJson;

    @DatabaseField
    private String archiveFiles;

    @DatabaseField
    private String archiveFolder;

    @DatabaseField
    private String archiveId;

    @DatabaseField
    private String archiveName;

    @DatabaseField
    private String archiveScreenShort;

    @DatabaseField
    private String archiveType;

    @DatabaseField
    private String archiveZipPath;

    @DatabaseField
    private String gameId;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67238id;

    @DatabaseField
    private int isFirstRun = 1;

    @DatabaseField
    private String mainArchiveLocalPath2;

    @DatabaseField
    private String packageName;

    @DatabaseField
    private String uid;

    @DatabaseField
    private int userId;

    public String getArchiveDataJson() {
        return this.archiveDataJson;
    }

    public String getArchiveFiles() {
        return this.archiveFiles;
    }

    public String getArchiveFolder() {
        return this.archiveFolder;
    }

    public String getArchiveId() {
        return this.archiveId;
    }

    public String getArchiveName() {
        return this.archiveName;
    }

    public String getArchiveScreenShort() {
        return this.archiveScreenShort;
    }

    public String getArchiveType() {
        return this.archiveType;
    }

    public String getArchiveZipPath() {
        return this.archiveZipPath;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getId() {
        return this.f67238id;
    }

    public int getIsFirstRun() {
        return this.isFirstRun;
    }

    public String getMainArchiveLocalPath2() {
        return this.mainArchiveLocalPath2;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getUid() {
        return this.uid;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setArchiveDataJson(String archiveDataJson) {
        this.archiveDataJson = archiveDataJson;
    }

    public void setArchiveFiles(String archiveFiles) {
        this.archiveFiles = archiveFiles;
    }

    public void setArchiveFolder(String archiveFolder) {
        this.archiveFolder = archiveFolder;
    }

    public void setArchiveId(String archiveId) {
        this.archiveId = archiveId;
    }

    public void setArchiveName(String archiveName) {
        this.archiveName = archiveName;
    }

    public void setArchiveScreenShort(String archiveScreenShort) {
        this.archiveScreenShort = archiveScreenShort;
    }

    public void setArchiveType(String archiveType) {
        this.archiveType = archiveType;
    }

    public void setArchiveZipPath(String archiveZipPath) {
        this.archiveZipPath = archiveZipPath;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setId(int id2) {
        this.f67238id = id2;
    }

    public void setIsFirstRun(int isFirstRun) {
        this.isFirstRun = isFirstRun;
    }

    public void setMainArchiveLocalPath2(String mainArchiveLocalPath2) {
        this.mainArchiveLocalPath2 = mainArchiveLocalPath2;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
