package com.php25.PDownload;

import com.join.mgps.dto.TipBean;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadFile implements Serializable {
    private String absolutePath;
    private String basePath;
    private long completeSize;
    private String crc_link_type_val;
    private String createTime;
    private String discribe;
    private boolean downloading;
    private String dtype;
    private String fileType;
    private String finishTime;
    private boolean finished;
    private String gameZipPath;
    private String gid;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private Long f78095id;
    private boolean isAutoPause;
    private boolean isDownloadingNow;
    private boolean isOpen;
    private long lastCompleteSize;
    private long lastTime;
    private String name;
    private String packageName;
    private String percent;
    private String portraitURL;
    private int progress;
    private String romType;
    private String showName;
    private int showType;
    private String starNumber;
    private String tag;
    private List<TipBean> tipBeans;
    private Integer totalSize;
    private String transStat;
    private String url;
    private String ver;
    private String ver_name;

    public DownloadFile(Long id2, String tag, String url, String basePath, String name, String showName, String absolutePath, String gameZipPath, Integer totalSize, boolean downloading, boolean finished, String createTime, String finishTime, String packageName, String portraitURL, String dtype, String fileType, boolean isDownloadingNow, String percent, boolean isAutoPause, long lastTime, long completeSize, long lastCompleteSize, List<TipBean> tipBeans, String crc_link_type_val, String romType, int progress, String transStat, Boolean plugInFlag, Boolean checkedFlag, String ver, String ver_name, String gid, String starNumber, boolean isOpen, String discribe) {
        this.showType = -1;
        this.f78095id = id2;
        this.tag = tag;
        this.url = url;
        this.basePath = basePath;
        this.name = name;
        this.showName = showName;
        this.absolutePath = absolutePath;
        this.gameZipPath = gameZipPath;
        this.totalSize = totalSize;
        this.downloading = downloading;
        this.finished = finished;
        this.createTime = createTime;
        this.finishTime = finishTime;
        this.packageName = packageName;
        this.portraitURL = portraitURL;
        this.dtype = dtype;
        this.fileType = fileType;
        this.isDownloadingNow = isDownloadingNow;
        this.percent = percent;
        this.isAutoPause = isAutoPause;
        this.lastTime = lastTime;
        this.completeSize = completeSize;
        this.lastCompleteSize = lastCompleteSize;
        this.tipBeans = tipBeans;
        this.crc_link_type_val = crc_link_type_val;
        this.romType = romType;
        this.progress = progress;
        this.transStat = transStat;
        this.ver = ver;
        this.ver_name = ver_name;
        this.gid = gid;
        this.starNumber = starNumber;
        this.isOpen = isOpen;
        this.discribe = discribe;
    }

    public String getAbsolutePath() {
        return this.absolutePath;
    }

    public String getBasePath() {
        return this.basePath;
    }

    public long getCompleteSize() {
        return this.completeSize;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public String getDiscribe() {
        return this.discribe;
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

    public boolean getFinished() {
        return this.finished;
    }

    public String getGameZipPath() {
        return this.gameZipPath;
    }

    public String getGid() {
        return this.gid;
    }

    public Long getId() {
        return this.f78095id;
    }

    public long getLastCompleteSize() {
        return this.lastCompleteSize;
    }

    public long getLastTime() {
        return this.lastTime;
    }

    public String getName() {
        return this.name;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPercent() {
        return this.percent;
    }

    public String getPortraitURL() {
        return this.portraitURL;
    }

    public int getProgress() {
        return this.progress;
    }

    public String getRomType() {
        return this.romType;
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

    public List<TipBean> getTipBeans() {
        return this.tipBeans;
    }

    public Integer getTotalSize() {
        return this.totalSize;
    }

    public String getTransStat() {
        return this.transStat;
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

    public boolean isAutoPause() {
        return this.isAutoPause;
    }

    public boolean isDownloading() {
        return this.downloading;
    }

    public boolean isDownloadingNow() {
        return this.isDownloadingNow;
    }

    public boolean isFinished() {
        return this.finished;
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    public void setAbsolutePath(String absolutePath) {
        this.absolutePath = absolutePath;
    }

    public void setAutoPause(boolean isAutoPause) {
        this.isAutoPause = isAutoPause;
    }

    public void setBasePath(String basePath) {
        this.basePath = basePath;
    }

    public void setCompleteSize(long completeSize) {
        this.completeSize = completeSize;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public void setDiscribe(String discribe) {
        this.discribe = discribe;
    }

    public void setDownloading(boolean downloading) {
        this.downloading = downloading;
    }

    public void setDownloadingNow(boolean isDownloadingNow) {
        this.isDownloadingNow = isDownloadingNow;
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

    public void setFinished(boolean finished) {
        this.finished = finished;
    }

    public void setGameZipPath(String gameZipPath) {
        this.gameZipPath = gameZipPath;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    public void setId(Long id2) {
        this.f78095id = id2;
    }

    public void setLastCompleteSize(long lastCompleteSize) {
        this.lastCompleteSize = lastCompleteSize;
    }

    public void setLastTime(long lastTime) {
        this.lastTime = lastTime;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setOpen(boolean isOpen) {
        this.isOpen = isOpen;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setPercent(String percent) {
        this.percent = percent;
    }

    public void setPortraitURL(String portraitURL) {
        this.portraitURL = portraitURL;
    }

    public void setProgress(int progress) {
        this.progress = progress;
    }

    public void setRomType(String romType) {
        this.romType = romType;
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

    public void setTipBeans(List<TipBean> tipBeans) {
        this.tipBeans = tipBeans;
    }

    public void setTotalSize(Integer totalSize) {
        this.totalSize = totalSize;
    }

    public void setTransStat(String transStat) {
        this.transStat = transStat;
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

    public DownloadFile() {
        this.totalSize = 0;
        this.completeSize = 0L;
        this.showType = -1;
    }
}
