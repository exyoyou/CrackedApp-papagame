package com.haima.hmcp.business;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DownloadFileInfo {
    private List<String> contentTypeList;
    private long downloadedSize;
    private String filePath;
    private long fileSize;
    private long interval;
    private String url;

    public DownloadFileInfo(long j10, long j11, String str, String str2, long j12) {
        this.fileSize = j10;
        this.downloadedSize = j11;
        this.filePath = str;
        this.url = str2;
        this.interval = j12;
    }

    public List<String> getContentTypeList() {
        return this.contentTypeList;
    }

    public long getDownloadedSize() {
        return this.downloadedSize;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public long getFileSize() {
        return this.fileSize;
    }

    public long getInterval() {
        return this.interval;
    }

    public String getUrl() {
        return this.url;
    }

    public void setContentTypeList(List<String> list) {
        this.contentTypeList = list;
    }

    public void setDownloadedSize(long j10) {
        this.downloadedSize = j10;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setFileSize(long j10) {
        this.fileSize = j10;
    }

    public void setInterval(long j10) {
        this.interval = j10;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
