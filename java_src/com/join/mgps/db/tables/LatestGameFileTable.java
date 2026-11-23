package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class LatestGameFileTable {

    @DatabaseField
    private String absolutePath;

    @DatabaseField
    private String basePath;

    @DatabaseField
    private int completeSize;

    @DatabaseField
    private String crc_link_type_val;

    @DatabaseField
    private long createTime;

    @DatabaseField
    private String describe;

    @DatabaseField
    private short downloading;

    @DatabaseField
    private String dtype;

    @DatabaseField
    private String fileType;

    @DatabaseField
    private String finishTime;

    @DatabaseField
    private short finished;

    @DatabaseField
    private String gameZipPath;

    @DatabaseField
    private String gid;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67258id;

    @DatabaseField
    private short isAutoPause;

    @DatabaseField
    private short isOpen;

    @DatabaseField
    private String name;

    @DatabaseField
    private String packageName;

    @DatabaseField
    private String percentage;

    @DatabaseField
    private String portraitURL;

    @DatabaseField
    private String romType;

    @DatabaseField
    private String screenshot_pic;

    @DatabaseField
    private String showName;

    @DatabaseField
    private int showType;

    @DatabaseField
    private String starNumber;

    @DatabaseField
    private String tag;

    @DatabaseField
    private String tips;

    @DatabaseField
    private int totalSize;

    @DatabaseField
    private String url;

    @DatabaseField
    private String ver;

    @DatabaseField
    private String ver_name;

    public LatestGameFileTable() {
        this.showType = -1;
    }

    public String getAbsolutePath() {
        return this.absolutePath;
    }

    public String getBasePath() {
        return this.basePath;
    }

    public int getCompleteSize() {
        return this.completeSize;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public String getDescribe() {
        return this.describe;
    }

    public short getDownloading() {
        return this.downloading;
    }

    public String getDtype() {
        return this.dtype;
    }

    public String getFileType() {
        return this.fileType;
    }

    public String getFinishTime() {
        return this.finishTime;
    }

    public short getFinished() {
        return this.finished;
    }

    public String getGameZipPath() {
        return this.gameZipPath;
    }

    public String getGid() {
        return this.gid;
    }

    public int getId() {
        return this.f67258id;
    }

    public short getIsAutoPause() {
        return this.isAutoPause;
    }

    public short getIsOpen() {
        return this.isOpen;
    }

    public String getName() {
        return this.name;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPercentage() {
        return this.percentage;
    }

    public String getPortraitURL() {
        return this.portraitURL;
    }

    public String getRomType() {
        return this.romType;
    }

    public String getScreenshot_pic() {
        return this.screenshot_pic;
    }

    public String getShowName() {
        return this.showName;
    }

    public int getShowType() {
        return this.showType;
    }

    public String getStarNumber() {
        return this.starNumber;
    }

    public String getTag() {
        return this.tag;
    }

    public String getTips() {
        return this.tips;
    }

    public int getTotalSize() {
        return this.totalSize;
    }

    public String getUrl() {
        return this.url;
    }

    public String getVer() {
        return this.ver;
    }

    public String getVer_name() {
        return this.ver_name;
    }

    public void setAbsolutePath(String absolutePath) {
        this.absolutePath = absolutePath;
    }

    public void setBasePath(String basePath) {
        this.basePath = basePath;
    }

    public void setCompleteSize(int completeSize) {
        this.completeSize = completeSize;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setCreateTime(long createTime) {
        this.createTime = createTime;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public void setDownloading(short downloading) {
        this.downloading = downloading;
    }

    public void setDtype(String dtype) {
        this.dtype = dtype;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public void setFinishTime(String finishTime) {
        this.finishTime = finishTime;
    }

    public void setFinished(short finished) {
        this.finished = finished;
    }

    public void setGameZipPath(String gameZipPath) {
        this.gameZipPath = gameZipPath;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    public void setId(int id2) {
        this.f67258id = id2;
    }

    public void setIsAutoPause(short isAutoPause) {
        this.isAutoPause = isAutoPause;
    }

    public void setIsOpen(short isOpen) {
        this.isOpen = isOpen;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setPercentage(String percentage) {
        this.percentage = percentage;
    }

    public void setPortraitURL(String portraitURL) {
        this.portraitURL = portraitURL;
    }

    public void setRomType(String romType) {
        this.romType = romType;
    }

    public void setScreenshot_pic(String screenshot_pic) {
        this.screenshot_pic = screenshot_pic;
    }

    public void setShowName(String showName) {
        this.showName = showName;
    }

    public void setShowType(int showType) {
        this.showType = showType;
    }

    public void setStarNumber(String starNumber) {
        this.starNumber = starNumber;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public void setTips(String tips) {
        this.tips = tips;
    }

    public void setTotalSize(int totalSize) {
        this.totalSize = totalSize;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setVer(String ver) {
        this.ver = ver;
    }

    public void setVer_name(String ver_name) {
        this.ver_name = ver_name;
    }

    public LatestGameFileTable(int id2, String tag, String url, String basePath, String name, String absolutePath, String gameZipPath, int totalSize, int completeSize, short downloading, String showName, long createTime, String dtype, short finished, String fileType, String finishTime, String packageName, String tips, String portraitURL, String percentage, short isAutoPause, String crc_link_type_val, String ver, String ver_name, String gid, String starNumber, String romType, short isOpen, String describe, int showType, String screenshot_pic) {
        this.f67258id = id2;
        this.tag = tag;
        this.url = url;
        this.basePath = basePath;
        this.name = name;
        this.absolutePath = absolutePath;
        this.gameZipPath = gameZipPath;
        this.totalSize = totalSize;
        this.completeSize = completeSize;
        this.downloading = downloading;
        this.showName = showName;
        this.createTime = createTime;
        this.dtype = dtype;
        this.finished = finished;
        this.fileType = fileType;
        this.finishTime = finishTime;
        this.packageName = packageName;
        this.tips = tips;
        this.portraitURL = portraitURL;
        this.percentage = percentage;
        this.isAutoPause = isAutoPause;
        this.crc_link_type_val = crc_link_type_val;
        this.ver = ver;
        this.ver_name = ver_name;
        this.gid = gid;
        this.starNumber = starNumber;
        this.romType = romType;
        this.isOpen = isOpen;
        this.describe = describe;
        this.showType = showType;
        this.screenshot_pic = screenshot_pic;
    }
}
