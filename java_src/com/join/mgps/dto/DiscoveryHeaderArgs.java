package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DiscoveryHeaderArgs {
    private List<Long> downloadGameIdList;
    private String uid;

    public List<Long> getDownloadGameIdList() {
        return this.downloadGameIdList;
    }

    public String getUid() {
        return this.uid;
    }

    public void setDownloadGameIdList(List<Long> downloadGameIdList) {
        this.downloadGameIdList = downloadGameIdList;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
