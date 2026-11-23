package com.join.kotlin.ui.userrecom;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class UserRecomRequestArgs {
    List<String> downloadedGameIdList;
    long duration;
    int uid;

    public List<String> getDownloadedGameIdList() {
        return this.downloadedGameIdList;
    }

    public long getDuration() {
        return this.duration;
    }

    public int getUid() {
        return this.uid;
    }

    public void setDownloadedGameIdList(List<String> downloadedGameIdList) {
        this.downloadedGameIdList = downloadedGameIdList;
    }

    public void setDuration(long duration) {
        this.duration = duration;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
