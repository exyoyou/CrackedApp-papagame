package com.haima.hmcp.beans;

import com.haima.hmcp.cloud.BaseCloudFileManager;

/* JADX INFO: loaded from: classes5.dex */
public class CloudFileConfig {
    public String bid;
    public String cid;
    public String url;
    private int fileCacheSize = 1;
    private int fileSegmentCount = 2;
    private int fileSegmentCoefficient = 2;
    private long stokenValidTime = BaseCloudFileManager.STOKEN_VALID_TIME;
    private long ackTimeout = BaseCloudFileManager.ACK_TIMEOUT;

    public long getAckTimeout() {
        long j10 = this.ackTimeout;
        return j10 <= 0 ? BaseCloudFileManager.ACK_TIMEOUT : j10;
    }

    public int getFileCacheSize() {
        int i10 = this.fileCacheSize;
        if (i10 < 1) {
            return 1;
        }
        if (i10 > 2) {
            return 2;
        }
        return i10;
    }

    public int getFileSegmentCoefficient() {
        int i10 = this.fileSegmentCoefficient;
        if (i10 <= 0) {
            return 2;
        }
        return i10;
    }

    public int getFileSegmentCount() {
        int i10 = this.fileSegmentCount;
        if (i10 <= 0) {
            return 2;
        }
        if (i10 >= 128) {
            return 128;
        }
        return i10;
    }

    public long getStokenValidTime() {
        long j10 = this.stokenValidTime;
        return j10 <= 0 ? BaseCloudFileManager.STOKEN_VALID_TIME : j10;
    }

    public void setAckTimeout(long j10) {
        this.ackTimeout = j10;
    }

    public void setFileCacheSize(int i10) {
        this.fileCacheSize = i10;
    }

    public void setFileSegmentCoefficient(int i10) {
        this.fileSegmentCoefficient = i10;
    }

    public void setFileSegmentCount(int i10) {
        this.fileSegmentCount = i10;
    }

    public void setStokenValidTime(long j10) {
        this.stokenValidTime = j10;
    }
}
