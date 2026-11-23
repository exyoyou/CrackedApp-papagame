package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ArchievePathMultiArgs {
    private List<String> downloadedGameIdList;
    private String uid;

    public List<String> getDownloadedGameIdList() {
        return this.downloadedGameIdList;
    }

    public String getUid() {
        return this.uid;
    }

    public void setDownloadedGameIdList(List<String> downloadedGameIdList) {
        this.downloadedGameIdList = downloadedGameIdList;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
