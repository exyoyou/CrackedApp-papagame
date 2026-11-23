package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ArchiveListBean implements Serializable {
    private String addTime;
    private String archiveCoin;
    private String archiveCover;
    private String archiveCoverFilePath;
    private String archiveDesc;
    private String archiveFile;
    private String archiveFileName;
    private String archiveFilePath;
    private String archiveId;
    private String archiveName;
    private String avatar;
    private int downNum;
    private String fileMd5;
    private long fileSize;
    private String goodrate;
    private int highComment;
    private int highRate;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68015id;
    private int isComment;
    private int isVip;
    private String nickname;
    private int status;
    private String tag;
    private int todayCoin;
    private int totalCoin;
    private String uid;
    private int isCheck = 0;
    private boolean isSelectCheck = false;

    public String getAddTime() {
        return this.addTime;
    }

    public String getArchiveCoin() {
        return this.archiveCoin;
    }

    public String getArchiveCover() {
        return this.archiveCover;
    }

    public String getArchiveCoverFilePath() {
        return this.archiveCoverFilePath;
    }

    public String getArchiveDesc() {
        return this.archiveDesc;
    }

    public String getArchiveFile() {
        return this.archiveFile;
    }

    public String getArchiveFileName() {
        return this.archiveFileName;
    }

    public String getArchiveFilePath() {
        return this.archiveFilePath;
    }

    public String getArchiveId() {
        return this.archiveId;
    }

    public String getArchiveName() {
        return this.archiveName;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public int getDownNum() {
        return this.downNum;
    }

    public String getFileMd5() {
        return this.fileMd5;
    }

    public long getFileSize() {
        return this.fileSize;
    }

    public String getGoodrate() {
        return this.goodrate;
    }

    public int getHighComment() {
        return this.highComment;
    }

    public int getHighRate() {
        return this.highRate;
    }

    public String getId() {
        return this.f68015id;
    }

    public int getIsCheck() {
        return this.isCheck;
    }

    public int getIsComment() {
        return this.isComment;
    }

    public int getIsVip() {
        return this.isVip;
    }

    public String getNickname() {
        return this.nickname;
    }

    public int getStatus() {
        return this.status;
    }

    public String getTag() {
        return this.tag;
    }

    public int getTodayCoin() {
        return this.todayCoin;
    }

    public int getTotalCoin() {
        return this.totalCoin;
    }

    public String getUid() {
        return this.uid;
    }

    public boolean isSelectCheck() {
        return this.isSelectCheck;
    }

    public void setAddTime(String addTime) {
        this.addTime = addTime;
    }

    public void setArchiveCoin(String archiveCoin) {
        this.archiveCoin = archiveCoin;
    }

    public void setArchiveCover(String archiveCover) {
        this.archiveCover = archiveCover;
    }

    public void setArchiveCoverFilePath(String archiveCoverFilePath) {
        this.archiveCoverFilePath = archiveCoverFilePath;
    }

    public void setArchiveDesc(String archiveDesc) {
        this.archiveDesc = archiveDesc;
    }

    public void setArchiveFile(String archiveFile) {
        this.archiveFile = archiveFile;
    }

    public void setArchiveFileName(String archiveFileName) {
        this.archiveFileName = archiveFileName;
    }

    public void setArchiveFilePath(String archiveFilePath) {
        this.archiveFilePath = archiveFilePath;
    }

    public void setArchiveId(String archiveId) {
        this.archiveId = archiveId;
    }

    public void setArchiveName(String archiveName) {
        this.archiveName = archiveName;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setDownNum(int downNum) {
        this.downNum = downNum;
    }

    public void setFileMd5(String fileMd5) {
        this.fileMd5 = fileMd5;
    }

    public void setFileSize(long fileSize) {
        this.fileSize = fileSize;
    }

    public void setGoodrate(String goodrate) {
        this.goodrate = goodrate;
    }

    public void setHighComment(int highComment) {
        this.highComment = highComment;
    }

    public void setHighRate(int highRate) {
        this.highRate = highRate;
    }

    public void setId(String id2) {
        this.f68015id = id2;
    }

    public void setIsCheck(int isCheck) {
        this.isCheck = isCheck;
    }

    public void setIsComment(int isComment) {
        this.isComment = isComment;
    }

    public void setIsVip(int isVip) {
        this.isVip = isVip;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setSelectCheck(boolean selectCheck) {
        this.isSelectCheck = selectCheck;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public void setTodayCoin(int todayCoin) {
        this.todayCoin = todayCoin;
    }

    public void setTotalCoin(int totalCoin) {
        this.totalCoin = totalCoin;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String toString() {
        return "CloudListDataBean{archiveName='" + this.archiveName + "', archiveCover='" + this.archiveCover + "', archiveFile='" + this.archiveFile + "', fileMd5='" + this.fileMd5 + "', fileSize=" + this.fileSize + ", addTime='" + this.addTime + "', archiveFilePath='" + this.archiveFilePath + "', archiveCoverFilePath='" + this.archiveCoverFilePath + "', archiveFileName='" + this.archiveFileName + "', status=" + this.status + ", isCheck=" + this.isCheck + ", isSelectCheck=" + this.isSelectCheck + '}';
    }
}
