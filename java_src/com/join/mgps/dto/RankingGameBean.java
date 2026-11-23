package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;

/* JADX INFO: loaded from: classes3.dex */
public class RankingGameBean extends CollectionBeanSub {
    private int index;
    private DownloadTask task;

    @Override // com.join.mgps.dto.CollectionBeanSub
    public int getIndex() {
        return this.index;
    }

    public DownloadTask getTask() {
        return this.task;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setIndex(int index) {
        this.index = index;
    }

    public void setTask(DownloadTask task) {
        this.task = task;
    }
}
