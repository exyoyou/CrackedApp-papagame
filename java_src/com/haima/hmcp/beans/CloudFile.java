package com.haima.hmcp.beans;

import com.haima.hmcp.enums.CloudFileProtocol;

/* JADX INFO: loaded from: classes5.dex */
public class CloudFile {
    public static final int IMAGE_TYPE_DEFAULT = 0;
    public static final int IMAGE_TYPE_QRCODE = 1;
    public static final int TARGET_TYPE_FILE = 0;
    public static final int TARGET_TYPE_URL = 1;
    protected CloudFileProtocol cloudFileProtocol;
    protected String cloudPath;
    protected long downloadTime = 0;
    protected String downloadedFileName = null;
    protected String fileType;
    protected int imageType;
    protected String name;
    protected String path;
    protected long size;
    protected int targetType;
    protected String url;
    protected double videoDuration;

    public String getCloudPath() {
        return this.cloudPath;
    }

    public long getDownloadTime() {
        return this.downloadTime;
    }

    public String getDownloadedName() {
        return this.downloadedFileName;
    }

    public String getFileType() {
        return this.fileType;
    }

    public int getImageType() {
        return this.imageType;
    }

    public String getName() {
        return this.name;
    }

    public CloudFileProtocol getOperationMode() {
        return this.cloudFileProtocol;
    }

    public String getPath() {
        return this.path;
    }

    public long getSize() {
        return this.size;
    }

    public int getTargetType() {
        return this.targetType;
    }

    public String getUrl() {
        return this.url;
    }

    public double getVideoDuration() {
        return this.videoDuration;
    }

    public void setCloudPath(String str) {
        this.cloudPath = str;
    }

    public void setDownloadTime(long j10) {
        this.downloadTime = j10;
    }

    public void setDownloadedName(String str) {
        this.downloadedFileName = str;
    }

    public void setFileType(String str) {
        this.fileType = str;
    }

    public void setImageType(int i10) {
        this.imageType = i10;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOperationMode(CloudFileProtocol cloudFileProtocol) {
        this.cloudFileProtocol = cloudFileProtocol;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setSize(long j10) {
        this.size = j10;
    }

    public void setTargetType(int i10) {
        this.targetType = i10;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setVideoDuration(double d10) {
        this.videoDuration = d10;
    }

    public String toString() {
        return "CloudFile{name=" + this.name + ", downloadedFileName=" + this.downloadedFileName + ", path=" + this.path + ", url=" + this.url + ", fileType=" + this.fileType + ", cloudPath=" + this.cloudPath + ", imageType=" + this.imageType + ", cloudFileAction=" + this.cloudFileProtocol + ", videoDuration=" + this.videoDuration + ", size=" + this.size + ", downloadTime=" + this.downloadTime + ", targetType=" + this.targetType + '}';
    }
}
