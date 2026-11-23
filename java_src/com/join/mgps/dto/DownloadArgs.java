package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class DownloadArgs implements Serializable {
    private int cpu_type;
    private DownloadTask downloadTask;
    private int from = 0;
    private CollectionBeanSub gameInfo;
    private WebDiskInfo webDiskInfo;

    public DownloadArgs(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    public int getCpu_type() {
        return this.cpu_type;
    }

    public DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    public int getFrom() {
        return this.from;
    }

    public CollectionBeanSub getGameInfo() {
        return this.gameInfo;
    }

    public WebDiskInfo getWebDiskInfo() {
        return this.webDiskInfo;
    }

    public void setCpu_type(int cpu_type) {
        this.cpu_type = cpu_type;
    }

    public void setDownloadTask(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    public void setFrom(int from) {
        this.from = from;
    }

    public void setGameInfo(CollectionBeanSub gameInfo) {
        this.gameInfo = gameInfo;
    }

    public void setWebDiskInfo(WebDiskInfo webDiskInfo) {
        this.webDiskInfo = webDiskInfo;
    }

    public DownloadArgs() {
    }
}
