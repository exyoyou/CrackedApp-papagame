package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class EverdayLogin implements Serializable {
    private String filePath;
    private String source;
    private int uid;
    private int version;
    private long showTime = 0;
    private long hasGetGiftTime = 0;

    public String getFilePath() {
        return this.filePath;
    }

    public long getHasGetGiftTime() {
        return this.hasGetGiftTime;
    }

    public long getShowTime() {
        return this.showTime;
    }

    public String getSource() {
        return this.source;
    }

    public int getUid() {
        return this.uid;
    }

    public int getVersion() {
        return this.version;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public void setHasGetGiftTime(long hasGetGiftTime) {
        this.hasGetGiftTime = hasGetGiftTime;
    }

    public void setShowTime(long showTime) {
        this.showTime = showTime;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setVersion(int version) {
        this.version = version;
    }
}
