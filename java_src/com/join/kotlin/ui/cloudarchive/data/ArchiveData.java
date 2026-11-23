package com.join.kotlin.ui.cloudarchive.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class ArchiveData implements Serializable, Cloneable {
    private long addTime;
    private String archiveDesc;
    private String archiveFileSuffix;
    private String archiveLocalPath;
    private String archiveLocalZipPath;
    private String archiveLocation;
    private long archiveSize;
    private String archiveZipPath;
    private String avatar;
    private String coverLocation;
    private int downloadCount;
    private String game_id;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f48945id;
    private int isChoice;
    private int isDownloadArchive;
    private int isLike;
    private int isUnLike;
    private int likeCount;
    private String mainArchiveLocalPath;
    private String mainArchiveLocalPath2;
    private int negativeCount;
    private String nickname;
    private String packageName;
    private int showType;
    private int uid;
    private int userId;
    private String showText = "下载";
    private int status = 0;
    private String playTime = "";
    private int isFirstRun = 0;
    private int auditStatus = 0;
    private int checkStatus = 0;
    private long runingArchiveId = 0;
    private int showMoreStatus = 0;

    public long getAddTime() {
        return this.addTime;
    }

    public String getArchiveDesc() {
        return this.archiveDesc;
    }

    public String getArchiveFileSuffix() {
        return this.archiveFileSuffix;
    }

    public String getArchiveLocalPath() {
        return this.archiveLocalPath;
    }

    public String getArchiveLocalZipPath() {
        return this.archiveLocalZipPath;
    }

    public String getArchiveLocation() {
        return this.archiveLocation;
    }

    public long getArchiveSize() {
        return this.archiveSize;
    }

    public String getArchiveZipPath() {
        return this.archiveZipPath;
    }

    public int getAuditStatus() {
        return this.auditStatus;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public int getCheckStatus() {
        return this.checkStatus;
    }

    public String getCoverLocation() {
        return this.coverLocation;
    }

    public int getDownloadCount() {
        return this.downloadCount;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getId() {
        return this.f48945id;
    }

    public int getIsChoice() {
        return this.isChoice;
    }

    public int getIsDownloadArchive() {
        return this.isDownloadArchive;
    }

    public int getIsFirstRun() {
        return this.isFirstRun;
    }

    public int getIsLike() {
        return this.isLike;
    }

    public int getIsUnLike() {
        return this.isUnLike;
    }

    public int getLikeCount() {
        return this.likeCount;
    }

    public String getMainArchiveLocalPath() {
        return this.mainArchiveLocalPath;
    }

    public String getMainArchiveLocalPath2() {
        return this.mainArchiveLocalPath2;
    }

    public int getNegativeCount() {
        return this.negativeCount;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPlayTime() {
        return this.playTime;
    }

    public long getRuningArchiveId() {
        return this.runingArchiveId;
    }

    public int getShowMoreStatus() {
        return this.showMoreStatus;
    }

    public String getShowText() {
        return this.showText;
    }

    public int getShowType() {
        return this.showType;
    }

    public int getStatus() {
        return this.status;
    }

    public int getUid() {
        return this.uid;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setAddTime(long addTime) {
        this.addTime = addTime;
    }

    public void setArchiveDesc(String archiveDesc) {
        this.archiveDesc = archiveDesc;
    }

    public void setArchiveFileSuffix(String archiveFileSuffix) {
        this.archiveFileSuffix = archiveFileSuffix;
    }

    public void setArchiveLocalPath(String archiveLocalPath) {
        this.archiveLocalPath = archiveLocalPath;
    }

    public void setArchiveLocalZipPath(String archiveLocalZipPath) {
        this.archiveLocalZipPath = archiveLocalZipPath;
    }

    public void setArchiveLocation(String archiveLocation) {
        this.archiveLocation = archiveLocation;
    }

    public void setArchiveSize(long archiveSize) {
        this.archiveSize = archiveSize;
    }

    public void setArchiveZipPath(String archiveZipPath) {
        this.archiveZipPath = archiveZipPath;
    }

    public void setAuditStatus(int auditStatus) {
        this.auditStatus = auditStatus;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setCheckStatus(int checkStatus) {
        this.checkStatus = checkStatus;
    }

    public void setCoverLocation(String coverLocation) {
        this.coverLocation = coverLocation;
    }

    public void setDownloadCount(int downloadCount) {
        this.downloadCount = downloadCount;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setId(String id2) {
        this.f48945id = id2;
    }

    public void setIsChoice(int isChoice) {
        this.isChoice = isChoice;
    }

    public void setIsDownloadArchive(int isDownloadArchive) {
        this.isDownloadArchive = isDownloadArchive;
    }

    public void setIsFirstRun(int isFirstRun) {
        this.isFirstRun = isFirstRun;
    }

    public void setIsLike(int isLike) {
        this.isLike = isLike;
    }

    public void setIsUnLike(int isUnLike) {
        this.isUnLike = isUnLike;
    }

    public void setLikeCount(int likeCount) {
        this.likeCount = likeCount;
    }

    public void setMainArchiveLocalPath(String mainArchiveLocalPath) {
        this.mainArchiveLocalPath = mainArchiveLocalPath;
    }

    public void setMainArchiveLocalPath2(String mainArchiveLocalPath2) {
        this.mainArchiveLocalPath2 = mainArchiveLocalPath2;
    }

    public void setNegativeCount(int negativeCount) {
        this.negativeCount = negativeCount;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setPlayTime(String playTime) {
        this.playTime = playTime;
    }

    public void setRuningArchiveId(long runingArchiveId) {
        this.runingArchiveId = runingArchiveId;
    }

    public void setShowMoreStatus(int showMoreStatus) {
        this.showMoreStatus = showMoreStatus;
    }

    public void setShowText(String showText) {
        this.showText = showText;
    }

    public void setShowType(int showType) {
        this.showType = showType;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String toString() {
        return "ArchiveData{archiveDesc='" + this.archiveDesc + "', addTime=" + this.addTime + ", archiveSize=" + this.archiveSize + ", archiveLocation='" + this.archiveLocation + "', archiveLocalPath='" + this.archiveLocalPath + "', archiveLocalZipPath='" + this.archiveLocalZipPath + "', mainArchiveLocalPath='" + this.mainArchiveLocalPath + "', mainArchiveLocalPath2='" + this.mainArchiveLocalPath2 + "', avatar='" + this.avatar + "', coverLocation='" + this.coverLocation + "', downloadCount=" + this.downloadCount + ", game_id='" + this.game_id + "', id='" + this.f48945id + "', isDownloadArchive=" + this.isDownloadArchive + ", isLike=" + this.isLike + ", likeCount=" + this.likeCount + ", isUnLike=" + this.isUnLike + ", negativeCount=" + this.negativeCount + ", nickname='" + this.nickname + "', uid=" + this.uid + ", packageName='" + this.packageName + "', archiveZipPath='" + this.archiveZipPath + "', showType=" + this.showType + ", showText='" + this.showText + "', status=" + this.status + ", playTime='" + this.playTime + "', isFirstRun=" + this.isFirstRun + ", auditStatus=" + this.auditStatus + ", checkStatus=" + this.checkStatus + ", runingArchiveId=" + this.runingArchiveId + ", userId=" + this.userId + ", showMoreStatus=" + this.showMoreStatus + ", isChoice=" + this.isChoice + '}';
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ArchiveData m27clone() {
        try {
            return (ArchiveData) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
